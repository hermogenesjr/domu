class Humano():
    def andar(self):
        print("andando...")
    
    def __init__(self, pref = []):
        self.preferencias = pref

class Macho(Humano):
    def __init__(self, pref = []):
        Humano.__init__(self, pref)
        self.sexo = "M"

class Femea(Humano):
    def __init__(self, pref = []):
        Humano.__init__(self, pref)
        self.sexo = "F"

class Sociedade():
    def __init__(self, pref_homem, pref_mulher):
        self.preferencias_homem = pref_homem
        self.preferencias_mulher = pref_mulher
    
    def criar_homem(self):
        return Macho(self.preferencias_homem)

    def criar_mulher(self):
        return Femea(self.preferencias_mulher)

preferencias_homem_grecia_antiga = ["pratica homosexualismo", "usa saia", "gosta de lutas"]
preferencias_mulher_grecia_antiga = ["usa véus", "recatadas", "do lar"]

sociedade_grecia_antiga = Sociedade(preferencias_homem_grecia_antiga, preferencias_mulher_grecia_antiga)

homem_grecia_antiga = sociedade_grecia_antiga.criar_homem()
print(homem_grecia_antiga.preferencias)
print(homem_grecia_antiga.sexo)


preferencias_homem_familia_rafael = ["usa terno", "usa calça", "gosta de esportes"]
preferencias_mulher_familia_rafael = ["gosta de rosa", "gostam de matematica", "falam alto"]

sociedade_familia_rafael = Sociedade(preferencias_homem_familia_rafael, preferencias_mulher_familia_rafael)

mulher_familia_rafael = sociedade_familia_rafael.criar_mulher()
print(mulher_familia_rafael.preferencias)
print(mulher_familia_rafael.sexo)
