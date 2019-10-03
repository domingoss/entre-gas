import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { EntregasFeitasPage } from './entregas-feitas.page';

const routes: Routes = [
  {
    path: '',
    component: EntregasFeitasPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [EntregasFeitasPage]
})
export class EntregasFeitasPageModule {}
