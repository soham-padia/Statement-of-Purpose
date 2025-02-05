# Statement of Purpose Template

This repository provides a customizable LaTeX template for creating your Statement of Purpose (or Personal Statement) for graduate school applications. The template is designed with a modern, professional look and even a touch of futuristic humor.

## Files

- **main.tex**  
  The main file that sets personal details such as your name, program, university, email, statement title, and term. It then includes the content from `base.tex` and prints the footer.

- **statement.cls**  
  A custom class file that defines the layout, typography, header, footer, and overall style of the document.

- **base.tex**  
  The body of the statement. This file contains the personalized content (in a futuristic and humorous tone) that will appear in your final document.

- **Statement_of_Purpose.pdf**  
  A sample two-page PDF generated using this template.

- **Statement_of_Purpose-1.jpg** and **Statement_of_Purpose-2.jpg**  
  Images of the PDF pages for quick preview.

## How to Use

1. **Customize Your Details:**  
   Open `main.tex` and update the variables:
   ```latex
   \studentName{FirstName LastName}
   \program{MS in Program}
   \university{Great University}
   \email{email@example.com}
   \statement{Statement of Purpose}
   \term{Fall 3335}
