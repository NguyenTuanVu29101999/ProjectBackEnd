using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.BackEnd.Model.IdentityModel
{
    public class AppUser : IdentityUser<Guid>
    {
        [Required]
        [StringLength(maximumLength: 250)]
        public string FullName { get; set; }
        public string Avatar { get; set; }
        [Required]
        public int Gender { get; set; }
        [NotMapped]
        [Required(ErrorMessage = "Password is required")]
        public string Password { get; set; }
        [NotMapped]
        [Compare("Password", ErrorMessage = "Confirm password doesn't match, Type again !")]
        public string PasswordConfirm { get; set; }
    }
}
