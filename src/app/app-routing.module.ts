import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'produto', pathMatch: 'full' },
  {
   path: 'produto',
   children:[
     {
     path: '',
     loadChildren: './produto/produto.module#ProdutoPageModule'
   },
   {
     path: 'localizacao',
     loadChildren: './produto/produto-location/produto-location.module#ProdutoLocationPageModule'
   },
   {
     path: 'confirmar',
     loadChildren: './produto/produto-confirmar/produto-confirmar.module#ProdutoConfirmarPageModule'
   },
   {
    path: 'localizacao-outra',
    loadChildren: './produto/produto-localizacao-outra/produto-localizacao-outra.module#ProdutoLocalizacaoOutraPageModule'
   }

   ]
   },
  { path: 'auth', loadChildren: './auth/auth.module#AuthPageModule' },
  { path: 'registar', loadChildren: './auth/registar/registar.module#RegistarPageModule' }
  ];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
