import { Routes } from '@angular/router';
import { AboutComponent } from './components/about/about.component';
import { FooterComponent } from './components/footer/footer.component';

export const routes: Routes = [
    
    {
        path: 'about', component:AboutComponent
    },
    {
        path: 'footer', component:FooterComponent
    }
];
