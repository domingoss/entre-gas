import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EntregasFeitasPage } from './entregas-feitas.page';

describe('EntregasFeitasPage', () => {
  let component: EntregasFeitasPage;
  let fixture: ComponentFixture<EntregasFeitasPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EntregasFeitasPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EntregasFeitasPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
