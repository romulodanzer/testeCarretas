# Criar Empresa
empresa = Empresa.create!(
  nome: "Empresa Exemplo",
  cnpj: "12.345.678/0001-99",
  endereco: "Rua Exemplo, 100",
  logotipo: nil
)

# Criar Filiais associadas à Empresa
filial1 = Filial.create!(nome: "Filial Centro", endereco: "Rua A, 123", empresa: empresa)
filial2 = Filial.create!(nome: "Filial Sul", endereco: "Rua B, 456", empresa: empresa)

# Criar Usuário Master
User.create!(
  email: 'master@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: :master, # Usando enum :role
  approved: true,
  current_filial: filial1, # Associação correta com Filial
  filials: [filial1, filial2], # Usuário associado a várias filiais
  empresa: empresa # Associação com a empresa
)