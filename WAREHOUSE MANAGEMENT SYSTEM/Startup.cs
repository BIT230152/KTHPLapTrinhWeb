using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WAREHOUSE_MANAGEMENT_SYSTEM.Data;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.AspNetCore.Authentication.Facebook;
using WAREHOUSE_MANAGEMENT_SYSTEM.AI_model;

namespace WAREHOUSE_MANAGEMENT_SYSTEM
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddHttpClient<FlaskApiService>();
            services.AddRazorPages();
            services.AddControllersWithViews();

            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(
                    Configuration.GetConnectionString("DefaultConnection")));
            services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddDefaultIdentity<IdentityUser>()
                .AddEntityFrameworkStores<ApplicationDbContext>();
            

         
            services.AddAuthentication()
                    .AddGoogle(googleOptions =>
                    {
                        // Đọc thông tin Authentication:Google từ appsettings.json
                        IConfigurationSection googleAuthNSection = Configuration.GetSection("Authentication:Google");

                        // Thiết lập ClientID và ClientSecret để truy cập API google
                        googleOptions.ClientId = googleAuthNSection["ClientId"];
                        googleOptions.ClientSecret = googleAuthNSection["ClientSecret"];
                        // Cấu hình Url callback lại từ Google (không thiết lập thì mặc định là /signin-google)
                        googleOptions.CallbackPath = "/dang-nhap-tu-google";
                        googleOptions.Events.OnRedirectToAuthorizationEndpoint = context =>
                        {
                            // Thay đổi đường dẫn redirect về trang đăng nhập của ứng dụng
                            context.Response.Redirect(context.RedirectUri + "&prompt=select_account");
                            return System.Threading.Tasks.Task.CompletedTask;
                        };


                    });

            // Thêm CORS
            services.AddCors(options =>
            {
                options.AddPolicy("AllowAll",
                    builder =>
                    {
                        builder.AllowAnyOrigin()
                               .AllowAnyMethod()
                               .AllowAnyHeader();
                    });
            });

        }

        //This method gets called by the runtime.Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseMigrationsEndPoint();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            // Thêm CORS middleware
            app.UseCors("AllowAll");

            app.UseAuthentication(); // Phục hồi thông tin đăng nhập (xác thực)
            app.UseAuthorization(); // Phục hồi thông tinn về quyền của User


            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });
        }
    }
}
