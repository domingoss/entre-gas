import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { AuthPage } from './auth.page';

const routes: Routes = [
  {
    path: '',
    component: AuthPage,
    children: [
      {
        path: 'registar',
        loadChildren: './registar/registar.module#RegistarPageModule'
      },
      {
         path: 'login',
         loadChildren: './login/login.module#LoginPageModule'
       }
    ]
  },

  {
    path: 'conta',
    loadChildren: './conta/conta.module#ContaPageModule'
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [AuthPage]
})
export class AuthPageModule {}
