import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { EntregasPendentesPage } from './entregas-pendentes.page';

const routes: Routes = [
  {
    path: '',
    component: EntregasPendentesPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [EntregasPendentesPage]
})
export class EntregasPendentesPageModule {}
