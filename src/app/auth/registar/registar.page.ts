import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/forms';
import {AuthService} from '../auth.service';
@Component({
  selector: 'app-registar',
  templateUrl: './registar.page.html',
  styleUrls: ['./registar.page.scss'],
})
export class RegistarPage implements OnInit {

  constructor(private authService: AuthService) { }

  onRegister(form: NgForm){

    const nome = form.value.nome;
    const email = form.value.email;
    const senha = form.value.senha;
    const confirmar = form.value.confirmar;
    const endereco = form.value.endereco;
    const contacto = form.value.contacto;

    this.authService.register(
      nome,
      email,
      senha,
      confirmar,
      endereco,
      contacto);
  }
  ngOnInit() {
  }

}
