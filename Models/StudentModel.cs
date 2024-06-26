using System.ComponentModel.DataAnnotations;
using RequiredAttribute = System.ComponentModel.DataAnnotations.RequiredAttribute;

namespace StudentsInfo.Models
{
   public class Students
   {
      public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public required string Name { get; set; }
        [Required]
        [Range(1, 1000)]
        public required string Contact { get; set; }
   }
}