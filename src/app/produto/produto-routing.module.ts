import {RouterModule ,Routes } from '@angular/router';
import { ProdutoPage } from './produto.page';
import { NgModule } from '@angular/core';

const routes: Routes = [
  {
    path:'',
    component: ProdutoPage,
  },
  {
    path: 'localizacao',
    loadChildren: './produto-location/produto-location.module#ProdutoLocationPageModule'
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
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

export class ProdutoRoutingModule{

}
