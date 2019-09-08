import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { ProdutoConfirmarPage } from './produto-confirmar.page';

const routes: Routes = [
  {
    path: '',
    component: ProdutoConfirmarPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [ProdutoConfirmarPage]
})
export class ProdutoConfirmarPageModule {}
