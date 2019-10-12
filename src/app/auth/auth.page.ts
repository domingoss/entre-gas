import { Component, OnInit } from '@angular/core';
import { AuthService, AuthResponseData } from './auth.service';
import { Router } from '@angular/router';
import { LoadingController, AlertController } from '@ionic/angular';
import {  NgForm } from '@angular/forms';
import { Observable } from 'rxjs';


@Component({
  selector: 'app-auth',
  templateUrl: './auth.page.html',
  styleUrls: ['./auth.page.scss'],
})
export class AuthPage implements OnInit {

  constructor(
    private authService: AuthService,
    private router: Router,
    private loadingCtrl: LoadingController,
    private alertCtrl: AlertController
  ) { }

  ngOnInit() {
  }
// Troca requisicao com server
  autenticacao (nome: string, senha:string){

    this.loadingCtrl.create({keyboardClose:true, message:"Processando Aguarde ..."})
                    .then(
                      loadEl => {
                      loadEl.present();

                        let authObs: Observable<AuthResponseData>;
                        authObs = this.authService.login(nome,senha);

                        authObs.subscribe(
                          resData => {
                            console.log(resData);
                            loadEl.dismiss();
                            this.authService.userIsAuthenticated=true;
                            this.router.navigateByUrl('/produto');

                          },
                          erroRes=>{
                            console.log(erroRes);
                            loadEl.dismiss();
                            this.Alerta('Login Sem Sucesso')
                          }
                        );
                    }
                  );
  }

//emite um alerta na pagina login
Alerta(mensagem: string){
  this.alertCtrl.create({
    header: 'Erro!',
    message: mensagem,
    buttons: ['ok']
  }).then(
    alertEl=>{
      alertEl.present();
    }
  )
}

// Pega dados do form me manda para o metodo autenticacao
 onSubmit(formulario: NgForm){
  if (!formulario.valid){
    console.log("invalido")
    return
  }
  const nome = formulario.value.nome;
  const senha= formulario.value.senha;
  this.autenticacao(nome, senha);

}

}
