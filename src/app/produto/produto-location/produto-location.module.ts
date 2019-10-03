import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { ProdutoLocationPage } from './produto-location.page';


const routes: Routes = [
  {
    path: '',
    component: ProdutoLocationPage
  },
  {
    path: 'confirmar',
    loadChildren: './produto-confirmar/produto-confirmar.module#ProdutoConfirmarPageModule'
  },
  {
    path:'localizacao-outra',
    loadChildren: './produto-localizacao-outra/produto-localizacao-outra.module#ProdutoLocalizacaoOutraPageModule'
  }

];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [ProdutoLocationPage]
})
export class ProdutoLocationPageModule {}
