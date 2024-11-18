import { Component } from '@angular/core';
import { CommonModule } from '@angular/common'; // Import CommonModule

@Component({
  selector: 'app-about',
  standalone: true,
  imports: [CommonModule], // Add CommonModule here
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent {
  title: string[] = ['About Me', 'Certificates'];

  description: string[] = [
    "I'm Bennet Nkolele, a Full-stack Developer passionate about crafting innovative and scalable solutions.",
    "Python, HTML & CSS, JavaScript, Front-end Development, Full-stack Development,Introduction to Data Analytics,Introduction to Cloud Computing,Introduction to DevOps,Introduction to Software Engineering, TEFL Certification"
  ];

  // Method to split certificates into a list
  getCertificates(certificates: string): string[] {
    return certificates.split(',').map(cert => cert.trim());
  }
}
