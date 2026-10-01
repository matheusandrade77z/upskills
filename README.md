# upskills
Primeira entrega do grupo 4 do projeto de ERP do Pof Clovis

PROJETO ERP — UPSkill

GitHub: matheusandrade77z

##1. CARACTERIZAÇÃO DA EMPRESA

A empresa escolhida atua no segmento educacional, oferecendo cursos livres e profissionalizantes para diferentes públicos. Sua operação envolve setores como telemarketing, comercial, administrativo, financeiro e pedagógico.

O processo começa pela captação de possíveis alunos, que podem chegar por meio de contatos comerciais ou indicações. Após o contato inicial, podem ser realizados agendamentos para apresentação da escola e dos cursos disponíveis. Caso haja interesse, são realizados os processos de matrícula, contrato e pagamento.

Após a matrícula, o aluno é vinculado a uma turma e passa pelo acompanhamento acadêmico, que inclui aulas, frequência, avaliações e, ao final do processo, emissão de certificado conforme as condições previstas.

Entre as principais informações utilizadas pela empresa estão os dados de pessoas, leads, alunos, responsáveis, funcionários, professores, cursos, turmas, módulos, matrículas, contratos, pagamentos, frequência, avaliações, certificados, contatos, agendamentos, indicações e promoções.


##2. JUSTIFICATIVA DA ESCOLHA DO NEGÓCIO

A empresa foi escolhida por possuir diversos processos relacionados entre si e que podem ser analisados através da modelagem de dados.

Seu funcionamento envolve diferentes setores e informações que precisam estar integradas, desde o primeiro contato com um possível aluno até sua matrícula, acompanhamento acadêmico, pagamentos e certificação.

Por envolver dados de alunos, responsáveis, funcionários, cursos, contratos, pagamentos e atividades acadêmicas, a empresa apresenta um cenário adequado para a aplicação de um sistema ERP, permitindo representar a integração entre diferentes áreas em uma única estrutura de dados.

Além disso, o projeto possibilita estudar situações como relacionamentos entre entidades, diferentes cardinalidades, entidades fracas e entidades associativas, tornando o negócio adequado para a aplicação dos conceitos estudados na disciplina.


##3. PRINCIPAIS PROCESSOS DE NEGÓCIO

#3.1 Captação e relacionamento

O processo começa quando uma pessoa demonstra interesse em algum curso da instituição. Essa pessoa pode ser cadastrada como Lead, passando a receber contatos realizados pelos funcionários da escola.

Durante esse processo podem ser registrados contatos, agendamentos e o curso de interesse do Lead. Caso a pessoa avance no processo, poderá posteriormente se tornar um aluno.


#3.2 Indicação e promoção

A instituição também pode receber novos interessados por meio de indicações. O sistema registra quem realizou a indicação, quem foi indicado e, quando aplicável, a promoção utilizada.

As promoções podem possuir período de validade e percentual de desconto.


#3.3 Oferta de cursos e organização acadêmica

A escola cadastra seus cursos, que são organizados em módulos. Cada curso pode possuir diferentes turmas, com informações como período, horário, turno e quantidade de vagas.

Cada turma possui um professor responsável e é composta por aulas que registram as atividades realizadas.


#3.4 Matrícula

Após o cadastro do aluno e a escolha de um curso/turma disponível, é realizada a matrícula. A matrícula relaciona o aluno à turma e registra informações como data e situação.

O sistema deve impedir, por exemplo, matrículas em turmas encerradas ou acima da capacidade estabelecida, de acordo com as regras definidas pela instituição.


#3.5 Acompanhamento acadêmico

Durante o curso são registradas as aulas, frequências e avaliações dos alunos.

A frequência é registrada para cada aluno em cada aula, enquanto as avaliações armazenam as notas e demais informações relacionadas ao desempenho acadêmico. O sistema também considera a frequência mínima de 85% definida para o projeto.


#3.6 Processo financeiro

A matrícula gera um contrato, que pode possuir várias parcelas/pagamentos. O sistema registra valores, vencimentos, pagamentos e situações das parcelas.

Também são consideradas situações como pagamentos pendentes, pagos ou vencidos.


#3.7 Conclusão e certificação

Após cumprir os requisitos acadêmicos definidos, o aluno pode concluir o curso e receber um certificado.

O certificado possui data de emissão e código de verificação, permitindo sua consulta e validação posteriormente.


##4. PROBLEMAS E NECESSIDADES IDENTIFICADOS

A utilização de informações acadêmicas, cadastrais e financeiras sem uma estrutura centralizada pode dificultar o controle dos alunos e dos processos da instituição.

Entre os principais problemas e necessidades identificados estão:

- Centralizar os dados dos alunos e demais pessoas relacionadas à instituição.
- Acompanhar os interessados em cursos antes da matrícula.
- Registrar e acompanhar contatos e agendamentos realizados pelos funcionários.
- Controlar matrículas, vagas disponíveis e situações acadêmicas.
- Acompanhar a frequência e as avaliações dos alunos.
- Controlar contratos, parcelas e pagamentos.
- Preservar o histórico acadêmico e financeiro.
- Controlar a emissão e validação dos certificados.
- Controlar o acesso às informações de acordo com a função de cada usuário.


##5. REQUISITOS FUNCIONAIS

RF01 - Alunos
Cadastrar alunos, atualizar dados, anotar necessidades especiais (acessibilidade) e inativar quem saiu.

RF02 - Cursos
Criar os cursos, colocar os preços, definir a duração e marcar se estão com vagas abertas ou fechados.

RF03 - Turmas
Abrir turmas, definir o limite de alunos, escolher o professor e encerrar a turma no final do semestre.

RF04 - Professores
Cadastrar os professores e ligar cada um à sua respectiva turma.

RF05 - Salas
Cadastrar os espaços físicos e controlar quantas pessoas cabem neles.

RF06 - Matrículas
Matricular os alunos, trancar, cancelar e bloquear caso o aluno tente fazer mais cursos que o permitido.

RF07 - Financeiro
Gerar as mensalidades e dar baixa quando o aluno pagar.

RF08 - Taxas e Descontos
Aplicar bolsas de estudo e cobrar multas ou juros por atraso.

RF09 - Aulas
Marcar o dia, a hora e registrar o que foi ensinado naquele dia.

RF10 - Faltas
Fazer a chamada (presença/falta) e deixar o sistema calcular a porcentagem de faltas sozinho.

RF11 - Notas
Lançar as notas e deixar o sistema calcular a média final automaticamente.

RF12 - Histórico
Mostrar um resumo do aluno (todas as notas e se ele deve algo).

RF13 - Certificados
Gerar o diploma no final (só se o aluno tiver passado e pago tudo) e ter um código para provar que é verdadeiro.


##6. REQUISITOS NÃO FUNCIONAIS

RNF01 - Telas separadas
O professor só mexe nas aulas, o financeiro só mexe no dinheiro, e o administrador tem acesso a tudo.

RNF02 - Segurança de dados
Ninguém sem permissão pode acessar dados pessoais, laudos médicos ou informações de pagamento.

RNF03 - Histórico de ações (Auditoria)
O sistema tem que gravar quem alterou qualquer informação e quando isso foi feito.

RNF04 - Proibido apagar o passado
O sistema não pode deixar alguém deletar um aluno ou turma que já gerou boletos ou notas.

RNF05 - Evitar choques
O sistema tem que bloquear a tentativa de colocar duas turmas na mesma sala ou o mesmo professor em dois lugares na mesma hora.

RNF06 - Rapidez
O sistema não pode travar ou demorar para carregar as telas, principalmente na hora de validar um diploma na internet.


##7. REGRAS DE NEGÓCIO / OPERACIONAIS


 #1. CADASTRO DO ALUNO

 Cadastro do aluno

O aluno deve possuir cadastro antes de realizar qualquer matrícula.

 Identificação do aluno

Cada aluno deve possuir um "ID_Aluno" único.

 ID permanente

O "ID_Aluno" não deve ser alterado caso o aluno realize novos cursos.

 Dados obrigatórios

O sistema deve exigir os dados obrigatórios definidos pela instituição para concluir o cadastro, incluindo nome, CPF, data de nascimento, telefone e e-mail.

 CPF único

O sistema não deve permitir dois cadastros ativos com o mesmo CPF.

 Atualização cadastral

O aluno ou responsável pode atualizar os dados cadastrais, desde que possua autorização para realizar a alteração.

 Histórico de alterações

Alterações relevantes nos dados cadastrais devem ser registradas no histórico.

 Histórico do aluno

O sistema deve manter o histórico acadêmico e financeiro do aluno.

 Inativação do aluno

Um aluno que possua histórico de matrícula não deve ser excluído definitivamente. Seu cadastro deve ser inativado conforme o período definido pela instituição.

 Limite de cursos

Um aluno pode possuir no máximo 2 cursos ativos ou em andamento simultaneamente.

 Responsáveis pelo aluno

Alunos menores de idade devem possuir pelo menos um responsável cadastrado no sistema.

 Acessibilidade

O sistema deve permitir o registro das necessidades de acessibilidade ou apoio informadas pelo aluno.

 Documentação de acessibilidade

Quando a instituição exigir comprovação para determinada necessidade de acessibilidade, o sistema deve permitir o registro do documento correspondente.

 Proteção de dados

Informações pessoais e de acessibilidade devem ser acessíveis somente aos usuários autorizados.

 Registro de frequência

Somente o professor pode registrar frequência nas turmas às quais estiver vinculado ou autorizado.

 Acesso a informações dos alunos

O professor deve ter acesso somente às informações acadêmicas dos alunos de suas respectivas turmas.


 #2. CADASTRO DOS RESPONSÁVEIS

 Cadastro do responsável

Alunos menores de idade devem possuir pelo menos um responsável cadastrado.

 Identificação

Cada responsável deve possuir cadastro e identificação únicos.

 Grau de parentesco

O sistema deve registrar o grau de parentesco ou relação com o aluno.

 Múltiplos responsáveis

Deve ser possível cadastrar mais de um responsável para o mesmo aluno.

 Responsável principal

Um responsável deve poder ser definido como responsável principal.

 Dados obrigatórios

O sistema deve exigir dados básicos, como nome, CPF, telefone e e-mail.

 Acesso as informações

O responsável deve ter acesso apenas às informações dos alunos aos quais está vinculado.

 Atualização e desvinculação

O sistema deve permitir atualizar ou desvincular um responsável, mantendo o histórico.

 Histórico de alterações

Alterações nos dados do responsável devem ser registradas no histórico.


 #3. CADASTRO DOS CURSOS

 Identificação do curso

Cada curso deve possuir um "ID_Curso" único.

 Modalidade

Os cursos cadastrados devem ser classificados como presenciais.

 Carga horária

A carga horária do curso deve ser maior que zero.

 Valor do curso

O valor do curso não pode ser negativo.

 Status do curso

O curso deve possuir uma situação, como ativo ou inativo.

 Curso ativo

Somente cursos ativos podem receber novas matrículas.

 Curso inativo

Um curso inativo não pode receber novas matrículas, mas seu histórico deve permanecer armazenado.

 Múltiplas turmas

Um curso pode possuir várias turmas.

 Oferta do curso

Um mesmo curso pode ser oferecido em diferentes períodos enquanto estiver ativo.

 Alteração de valor

Alterações no valor do curso devem ser aplicadas às novas matrículas e não devem modificar cobranças já registradas.


# 4. CADASTRO DAS TURMAS

 Identificação da turma

Cada turma deve possuir um "ID_Turma" único.

 Turma vinculada ao curso

Toda turma deve pertencer a um único curso.

 Capacidade da turma

Toda turma deve possuir uma capacidade máxima de alunos.

 Limite de matrículas

O sistema não deve permitir matrículas acima da capacidade máxima da turma, salvo quando houver autorização prevista pela instituição.

 Período da turma

A turma deve possuir data de início e data de término.

 Validação das datas

A data de término não pode ser anterior à data de início.

 Situação da turma

A turma deve possuir uma situação, como ativa, encerrada ou cancelada.

 Turma encerrada

Uma turma encerrada não pode aceitar novas matrículas.

 Horário da turma

Toda turma deve possuir dias e horários definidos.

 Professor responsável

Toda turma deve possuir um professor responsável.


 #5. CADASTRO DOS PROFESSORES

 Cadastro do professor

Todo professor deve possuir cadastro no sistema.

 Identificação do professor

Cada professor deve possuir um "ID_Professor" único.

 Dados do professor

O cadastro deve possuir os dados obrigatórios definidos pela instituição.

 Status do professor

O professor deve possuir uma situação, como ativo ou inativo.

 Professor ativo

Somente professores ativos podem ser atribuídos a novas turmas.

 Múltiplas turmas

Um professor pode ministrar várias turmas.

 Conflito de horário

O sistema deve impedir que um professor seja atribuído a turmas com horários conflitantes.

 Registro de frequência

Somente o professor pode registrar frequência nas turmas às quais estiver vinculado ou autorizado.

 Acesso a informações dos alunos

O professor deve ter acesso somente às informações acadêmicas dos alunos de suas respectivas turmas.


 #6. SALAS

 Cadastro da sala

Cada sala deve possuir cadastro no sistema.

 Identificação da sala

Cada sala deve possuir um identificador único.

 Capacidade da sala

Cada sala deve possuir uma capacidade máxima de alunos.

 Capacidade compatível

A quantidade de alunos da turma não pode ultrapassar a capacidade da sala.

 Conflito de sala

Duas turmas não podem utilizar a mesma sala no mesmo horário.

 Reutilização da sala

Uma sala pode ser utilizada por várias turmas desde que não existam conflitos de horário.


# 7. MATRÍCULA

 Identificação da matrícula

Cada matrícula deve possuir um "ID_Matricula" único.

 Aluno cadastrado

Somente alunos cadastrados podem realizar matrícula.

 Curso ativo

A matrícula somente pode ser realizada em um curso ativo.

 Turma disponível

A matrícula somente pode ser realizada em uma turma ativa e não lotada.

 Vínculos da matrícula

Toda matrícula deve estar vinculada a um aluno, curso e, quando aplicável, a uma turma.

 Limite de cursos

O sistema deve impedir que o aluno ultrapasse o limite máximo de 2 cursos ativos ou em andamento.

 Conflito de horário

O aluno não pode estar matriculado em duas turmas que ocorram no mesmo dia e horário, sendo permitido participar de turmas em horários diferentes.

 Matrícula duplicada

O aluno não pode possuir duas matrículas ativas na mesma turma.

 Situação da matrícula

A matrícula deve possuir uma situação.

 Status permitidos

A matrícula pode possuir os status: pendente, ativa, trancada, cancelada, concluída ou reprovada.

 Matrícula concluída

A matrícula somente pode ser considerada concluída após o cumprimento dos requisitos definidos para o curso.


 #8. MATRÍCULA

 Identificação da matrícula

Cada matrícula deve possuir um "ID_Matricula" único.

 Aluno cadastrado

Somente alunos cadastrados podem realizar matrícula.

 Curso ativo

A matrícula somente pode ser realizada em um curso ativo.

 Turma disponível

A matrícula somente pode ser realizada em uma turma ativa e não lotada.

 Vínculos da matrícula

Toda matrícula deve estar vinculada a um aluno, curso e, quando aplicável, a uma turma.

 Limite de cursos

O sistema deve impedir que o aluno ultrapasse o limite máximo de 2 cursos ativos ou em andamento.

 Conflito de horário

O aluno não pode estar matriculado em duas turmas que ocorram no mesmo dia e horário, sendo permitido participar de turmas em horários diferentes.

 Matrícula duplicada

O aluno não pode possuir duas matrículas ativas na mesma turma.

 Situação da matrícula

A matrícula deve possuir uma situação.

 Status permitidos

A matrícula pode possuir os status: pendente, ativa, trancada, cancelada, concluída ou reprovada.

 Matrícula concluída

A matrícula somente pode ser considerada concluída após o cumprimento dos requisitos definidos para o curso.


 #9. SALAS

 Cadastro da sala

Cada sala deve possuir cadastro no sistema.

 Identificação da sala

Cada sala deve possuir um identificador único.

 Capacidade da sala

Cada sala deve possuir uma capacidade máxima de alunos.

 Capacidade compatível

A quantidade de alunos da turma não pode ultrapassar a capacidade da sala.

 Conflito de sala

Duas turmas não podem utilizar a mesma sala no mesmo horário.

 Reutilização da sala

Uma sala pode ser utilizada por várias turmas desde que não existam conflitos de horário.


 #10. PAGAMENTOS E FINANCEIRO

 Controle financeiro

O sistema deve controlar os valores financeiros relacionados às matrículas.

 Formas de cobrança

A matrícula pode gerar pagamento à vista, parcelas ou mensalidades, conforme as condições da instituição.

 Identificação da parcela

Cada parcela deve possuir um identificador único.

 Parcela vinculada à matrícula

Cada parcela deve estar vinculada a uma matrícula específica.

 Valor da parcela

O valor da parcela não pode ser negativo.

 Data de vencimento

Toda parcela deve possuir uma data de vencimento.

 Status da parcela

A parcela deve possuir uma situação, como pendente, paga, vencida ou cancelada.

 Registro do pagamento

Cada pagamento deve estar relacionado a uma parcela ou cobrança existente.

 Dados do pagamento

O sistema deve registrar o valor pago, a data e a forma de pagamento.

 Parcela paga

Após a confirmação do pagamento integral, a parcela deve ser marcada como paga.

 Parcela vencida

Uma parcela não paga após sua data de vencimento deve ser considerada vencida.

 Histórico financeiro

O sistema deve preservar o histórico das parcelas e pagamentos realizados.


# 11. DESCONTOS, BOLSAS, MULTAS E JUROS

 Descontos e bolsas

O sistema deve permitir a aplicação de bolsas e descontos conforme as regras da instituição.

 Tipo de desconto

O desconto pode ser definido como percentual ou valor fixo.

 Desconto vinculado

Quando concedido individualmente, o desconto deve estar vinculado à matrícula correspondente.

 Valor mínimo da cobrança

A aplicação de descontos não pode resultar em valor de cobrança negativo.

 Validade do desconto

Descontos podem possuir período de validade.

 Acúmulo de descontos

O sistema deve respeitar as regras definidas pela instituição para utilização simultânea de descontos.

 Multas e juros

Multas e juros podem ser aplicados às parcelas vencidas conforme as regras financeiras da instituição.

 Histórico financeiro

Descontos, bolsas, multas e juros aplicados devem permanecer registrados no histórico financeiro.


# 12. AULAS

 Aula vinculada à turma

Cada aula deve pertencer a uma turma.

 Identificação da aula

Cada aula deve possuir um identificador único.

 Data e horário

Toda aula deve possuir data e horário definidos.

 Conteúdo da aula

Toda aula deve possuir conteúdo ou atividade definida.

 Período da turma

A aula não pode ocorrer fora do período definido para a turma.

 Professor da aula

O professor responsável pela aula deve ser compatível com a turma e possuir autorização para ministrá-la.

 Conflito de sala

A aula não pode utilizar uma sala que esteja ocupada por outra turma no mesmo horário.


# 13. FREQUÊNCIA

 Registro de frequência

A frequência deve ser registrada para cada aluno em cada aula válida.

 Aluno matriculado

Somente alunos matriculados na turma podem possuir frequência registrada.

 Frequência vinculada à aula

Cada registro de frequência deve estar relacionado a uma aula específica.

 Registro único

Uma mesma aula não pode gerar dois registros de frequência para o mesmo aluno.

 Situação da frequência

O sistema deve permitir registrar presença, falta e, quando adotado pela instituição, falta justificada.

 Cálculo da frequência

O sistema deve calcular automaticamente o percentual de frequência do aluno.

 Percentual mínimo

O percentual mínimo de frequência exigido é de 85%.

 Frequência insuficiente

O aluno com frequência inferior a 85% não atende ao requisito de frequência para conclusão e certificação.

 Frequência suficiente

O aluno com frequência igual ou superior a 85% atende ao requisito mínimo de frequência.

 Alteração da frequência

Alterações nos registros de frequência devem ser realizadas somente por usuários autorizados e devem preservar o histórico da alteração.


# 14. AVALIAÇÕES E NOTAS

 Registro de notas

As notas de cada aluno devem ser registadas no sistema de acordo com os critérios de avaliação definidos para cada curso ou disciplina.

 Escala de avaliação

O sistema deve adotar uma escala de notas padronizada (por exemplo, de 0 a 10 ou de 0 a 100) para todos os registos.

 Nota mínima para aprovação

O aluno deve atingir a nota mínima exigida pela instituição para ser considerado aprovado.

 Direito a recuperação

Alunos que não atingirem a nota mínima devem ter o direito de realizar e registar pelo menos uma avaliação de recuperação, caso o regulamento do curso o permita.


 #15. CERTIFICAÇÃO E DIPLOMAS

 Requisitos para emissão

A emissão do certificado ou diploma só pode ocorrer se o aluno cumprir os requisitos mínimos de frequência, aprovação de notas e não possuir pendências documentais.

 Registo de emissão

Cada certificado emitido pelo sistema deve conter um número de registo único e rastreável.

 Segunda via de documentos

O sistema deve permitir a solicitação, cobrança (se aplicável) e o registo da emissão de segundas vias de certificados e históricos escolares.


 #16. MATERIAIS DIDÁTICOS

 Vínculo ao curso

Os materiais didáticos (físicos ou digitais) disponibilizados devem estar obrigatoriamente vinculados ao conteúdo programático de um curso específico.

 Controlo de entrega

O sistema deve registar a data, a identificação do material e o utilizador responsável por confirmar a entrega do material físico ao aluno.

 Acesso a material digital

Apenas alunos com matrículas ativas e sem bloqueios financeiros ou administrativos podem ter acesso ao download de materiais didáticos no portal.


 #17. BIBLIOTECA E EMPRÉSTIMOS

 Cadastro de acervo

Todos os livros, equipamentos e materiais da biblioteca devem possuir um código de identificação único no sistema.

 Limite de empréstimos

Um aluno ou professor não pode ter mais do que o limite máximo de itens estipulados emprestados em simultâneo.

 Bloqueio por atraso

O sistema deve bloquear automaticamente novos empréstimos para utilizadores que possuam materiais com a data de devolução em atraso.


# 18. CONTROLO DE ACESSO E SEGURANÇA

 Identificação de entrada

A entrada nas instalações da escola só é permitida mediante validação de um "ID_Aluno", "ID_Professor" ou "ID_Responsavel" ativo.

 Bloqueio de inativos

Alunos com a matrícula cancelada, trancada ou concluída perdem automaticamente o acesso às catracas e áreas restritas da instituição.

 Registo de visitantes

Pessoas que não possuam vínculo ativo com a escola devem ser registadas temporariamente no sistema de controlo de portaria para obter acesso.


 #19. REQUERIMENTOS E ATENDIMENTO

 Abertura de chamados

O aluno ou responsável pode abrir requerimentos (como declarações de matrícula, revisões de prova ou justificações de falta) através do sistema.

 Prazos de resposta (SLA)

Cada categoria de requerimento deve possuir um prazo máximo de atendimento configurado, após o qual o sistema deve emitir um alerta.

 Histórico de atendimento

Todas as interações, respostas e alterações de estado num requerimento devem ficar gravadas no histórico do aluno.


# 20. TRANSFERÊNCIAS (CURSO OU TURMA)

 Condição para transferência

A transferência de turma ou curso só pode ser concluída pelo sistema se houver vaga disponível na turma de destino.

 Aproveitamento de disciplinas

O sistema deve permitir o registo das disciplinas ou módulos já concluídos que serão aproveitados na nova matriz curricular.

 Impacto financeiro

A transferência para um curso de valor diferente deve gerar automaticamente o recálculo das parcelas futuras, sem alterar o histórico financeiro já consolidado.


 #21. ESTÁGIOS E ENCAMINHAMENTO PROFISSIONAL

 Registo de convénios

O sistema deve manter um cadastro atualizado das empresas conveniadas e aptas a receber alunos para estágio.

 Documentação obrigatória

A aprovação do estágio no sistema requer a submissão e validação do Termo de Compromisso de Estágio devidamente assinado.

 Acompanhamento de carga horária

O sistema deve contabilizar as horas de estágio registadas até que o aluno atinja a carga horária exigida pelo curso.


 #22. AVALIAÇÃO INSTITUCIONAL

 Garantia de anonimato

As respostas aos inquéritos de satisfação preenchidos pelos alunos sobre professores e infraestrutura devem ser registadas e apresentadas de forma anónima.

 Período de disponibilidade

O sistema só deve permitir o preenchimento dos questionários de avaliação dentro do prazo previamente estipulado pela coordenação.


 #23. GESTÃO DE UTILIZADORES E ACESSOS

 Perfis de utilizador

O sistema deve possuir diferentes perfis de acesso predefinidos, garantindo que as permissões de visualização e edição sejam adequadas a cada cargo (Administrador, Professor, Secretaria, Aluno).

 Registo de auditoria (Log)

Todas as ações críticas no sistema (como alteração de notas, cancelamento de matrículas ou exclusão de parcelas financeiras) devem ser registadas automaticamente com a data, hora e identificação do utilizador que realizou a ação.


##8. RESTRIÇÕES E POLÍTICAS ORGANIZACIONAIS

As restrições e políticas organizacionais representam decisões e procedimentos definidos pela própria empresa para orientar o funcionamento da instituição. Diferentemente das regras operacionais do sistema, esta seção apresenta políticas internas da Escola XYZ que devem ser respeitadas pelos usuários e pelos processos da organização.

RPO1. Política do Certificado
O sistema trava a emissão do diploma se o aluno estiver devendo alguma mensalidade, se não atingir 85% de presença ou se não tiver a média mínima. É proibido emitir certificado antes da data oficial de conclusão.

RPO2. Limite de Matrículas
A escola tem como política barrar qualquer aluno que tente fazer mais de 2 cursos ao mesmo tempo.

RPO3. Exclusão proibida
Como regra da empresa, é terminantemente proibido deletar alunos, turmas ou matrículas que já têm histórico. A política é sempre "inativar" ou "cancelar" para que os dados não desapareçam das auditorias.

RPO4. Limite de Descontos e Bolsas
O pessoal do financeiro pode aplicar bolsas ou descontos acumulados, mas com um limite de no máximo 30% do valor total.

RPO5. Alterações acadêmicas
O professor só pode mexer na própria turma. Trancar matrícula, cancelar curso ou alterar uma nota/falta retroativa só pode ser feito por usuários com autorização superior, como secretaria ou coordenação.

RPO6. Documentos e informações confidenciais
Documentos e informações sobre necessidades especiais ou saúde do aluno são estritamente confidenciais e restritos apenas aos funcionários autorizados.

RPO7. Responsabilidade dos setores
Cada setor da escola deve atuar de acordo com suas responsabilidades. O financeiro fica responsável pelas operações financeiras, os professores pelas atividades acadêmicas e a secretaria/coordenação pelas atividades administrativas e autorizações necessárias.

RPO8. Responsável por aluno menor
Quando o aluno for menor de idade, o responsável cadastrado deve participar dos procedimentos que exigirem sua assinatura ou autorização.

RPO9. Controle de promoções
As promoções oferecidas pela instituição devem respeitar as condições e o período de validade definidos pela empresa.

RPO10. Alterações retroativas
Alterações de informações acadêmicas referentes a períodos anteriores devem ser justificadas e autorizadas pela secretaria ou coordenação antes de serem realizadas.

RPO11. Auditoria interna
A empresa deve manter registros das alterações e operações relevantes para possibilitar a consulta do histórico e a identificação dos responsáveis pelas ações.


##9. FLUXOGRAMAS DOS PRINCIPAIS PROCESSOS

Os Nossos fluxogramas estão em nosso Repositório, por favor de uma olhada.

Os processos que foram feitos os Fluxogramas:

- Captação e relacionamento;
- Cadastro e matrícula;
- Processo acadêmico;
- Processo financeiro;
- Conclusão e certificação.



##10. DICIONÁRIO DE DADOS CONCEITUAL PRELIMINAR

O dicionário de dados conceitual apresenta os principais elementos utilizados no modelo e descreve o significado de cada atributo. Nesta etapa, o foco está no significado dos dados, sem definir tipos específicos de banco de dados.

#Pessoa

| Atributo | Descrição | Regra/Observação |
| id_pessoa | Identificador único da pessoa | Identificação única. |
| nome | Nome completo da pessoa | Dado cadastral. |
| cpf | CPF da pessoa | Deve ser informado conforme os dados obrigatórios; para alunos ativos, não deve haver CPF duplicado. |
| data_nascimento | Data de nascimento | Dado cadastral obrigatório para o aluno. |
| telefone | Telefone para contato | Dado cadastral obrigatório para o aluno. |
| email | Endereço de e-mail | Dado cadastral obrigatório para o aluno. |
| endereco | Endereço da pessoa | Dado cadastral. |

#Lead

| Atributo | Descrição | Regra/Observação |
| id_lead | Identificador do Lead | Identificação do Lead. |
| origem | Origem pela qual o Lead chegou à instituição | Pode registrar origem por contato ou indicação, conforme o processo de captação. |
| data_primeiro_contato | Data do primeiro contato | Registra o início do acompanhamento do Lead. |
| status_interesse | Situação do interesse do Lead | Permite acompanhar a situação do interesse durante a captação. |
| curso_interesse | Curso pelo qual o Lead demonstrou interesse | Registra o curso de interesse do Lead. |

#Aluno

| Atributo | Descrição | Regra/Observação |
| RGM | Identificação acadêmica do aluno | Identificação acadêmica do aluno. |
| data_ingresso | Data de ingresso na instituição | Registra o ingresso do aluno. |
| situacao | Situação atual do aluno | Deve representar a situação do aluno, conforme os processos da instituição. |

#Responsável

| Atributo | Descrição | Regra/Observação |
| id_responsavel | Identificador do responsável | Identificação única. |
| parentesco | Grau de parentesco com o aluno | Deve registrar o grau de parentesco ou relação com o aluno. |
| RGM_aluno | Identificação do aluno relacionado ao responsável | Alunos menores devem possuir pelo menos um responsável cadastrado; pode haver mais de um responsável. |

#Funcionário

| Atributo | Descrição | Regra/Observação |
| id_funcionario | Identificador do funcionário | Identificação do funcionário. |
| telemarketing | Indicação relacionada à atuação em telemarketing | Informação relacionada à atuação do funcionário. |
| setor | Setor em que o funcionário atua | O setor define as responsabilidades e os acessos conforme a organização da instituição. |
| data_admissao | Data de admissão | Registra a data de admissão do funcionário. |

#Professor

| Atributo | Descrição | Regra/Observação |
| id_professor | Identificador do professor | Identificação única. |
| formação | Formação do professor | Dado cadastral do professor. |
| data_contratacao | Data de contratação | Registra a contratação do professor. |

#Contato

| Atributo | Descrição | Regra/Observação |
| id_contato / seq_contato | Identificador ou sequência do contato | Identifica o registro do contato. |
| data_hora | Data e horário do contato | Registra quando o contato ocorreu. |
| tipo_canal | Canal utilizado para realizar o contato | Identifica o meio utilizado no contato. |
| resultado | Resultado do contato | Registra o resultado do contato realizado. |
| id_lead | Lead relacionado ao contato | O contato deve estar relacionado ao Lead acompanhado. |
| id_funcionario | Funcionário responsável pelo contato | Registra o funcionário que realizou o contato. |

#Agendamento

| Atributo | Descrição | Regra/Observação |
| id_agendamento / seq_agendamento | Identificador ou sequência do agendamento | Identifica o registro do agendamento. |
| data_hora_agendada | Data e horário marcados | Registra a data e horário definidos para o agendamento. |
| data_hora_realizada | Data e horário em que ocorreu | Registra quando o agendamento foi realizado. |
| status | Situação do agendamento | Permite registrar a situação do agendamento. |
| local | Local do agendamento | Registra o local definido para o agendamento. |
| id_lead | Lead relacionado | O agendamento está relacionado ao Lead. |
| id_funcionario | Funcionário responsável | Registra o funcionário responsável pelo agendamento. |

#Indicação

| Atributo | Descrição | Regra/Observação |
| data_indicacao | Data da indicação | Registra quando a indicação ocorreu. |
| status | Situação da indicação | Permite acompanhar a situação da indicação. |
| id_pessoa_indicadora | Pessoa que realizou a indicação | Identifica quem realizou a indicação. |
| id_pessoa_indicada | Pessoa indicada | Identifica a pessoa que recebeu a indicação. |

#Promoção

| Atributo | Descrição | Regra/Observação |
| id_promocao | Identificador da promoção | Identificação da promoção. |
| nome | Nome da promoção | Identifica a promoção. |
| descricao | Descrição da promoção | Descreve as condições da promoção. |
| percentual_desconto | Percentual de desconto | Deve respeitar as condições e o período definidos pela instituição. |
| data_inicio | Início da validade | Define o início da validade da promoção. |
| data_fim | Final da validade | Define o final da validade da promoção. |
| id_indicacao | Indicação relacionada, quando aplicável | Relaciona a promoção a uma indicação quando houver essa condição. |

#Curso

| Atributo | Descrição | Regra/Observação |
| id_curso | Identificador do curso | Identificação única. |
| nome | Nome do curso | Identifica o curso. |
| carga_horaria_total | Carga horária total | Deve ser maior que zero. |
| modalidade | Modalidade do curso | Os cursos cadastrados no projeto são presenciais. |
| descricao | Descrição do curso | Descreve o curso. |

#Módulo

| Atributo | Descrição | Regra/Observação |
| numero_modulo | Número do módulo dentro do curso | Identifica a sequência do módulo no curso. |
| nome | Nome do módulo | Identifica o módulo. |
| carga_horaria | Carga horária do módulo | Registra a carga horária do módulo. |
| ementa | Conteúdo previsto para o módulo | Registra o conteúdo previsto para o módulo. |
| id_curso | Curso ao qual o módulo pertence | O módulo deve estar relacionado a um curso. |

#Turma

| Atributo | Descrição | Regra/Observação |
| id_turma | Identificador da turma | Identificação única. |
| nome/codigo | Nome ou código da turma | Identifica a turma. |
| data_inicio | Data de início | Deve ser anterior ou igual à data de término. |
| data_fim | Data de término | Não pode ser anterior à data de início. |
| horario | Horário das atividades | Deve possuir dias e horários definidos; não pode gerar conflito de horário. |
| turno | Turno da turma | Registra o turno da turma. |
| vagas_totais | Quantidade total de vagas | Define a capacidade máxima da turma. |
| id_curso | Curso relacionado | Toda turma deve pertencer a um único curso. |
| id_professor | Professor responsável | Toda turma deve possuir um professor responsável; professores ativos e sem conflito de horário podem ser atribuídos. |

#Aula

| Atributo | Descrição | Regra/Observação |
| numero_aula | Identificação/sequência da aula | Identifica a aula dentro da turma. |
| data | Data da aula | A aula deve ocorrer dentro do período definido para a turma. |
| conteudo_ministrado | Conteúdo ou atividade realizada | Toda aula deve possuir conteúdo ou atividade definida. |
| id_turma | Turma relacionada | Cada aula deve pertencer a uma turma. |
| id_modulo | Módulo relacionado | Relaciona a aula ao módulo correspondente. |

#Matrícula

| Atributo | Descrição | Regra/Observação |
| id_matricula | Identificador da matrícula | Identificação única. |
| data_matricula | Data da matrícula | Registra quando a matrícula foi realizada. |
| status | Situação da matrícula | Pode ser pendente, ativa, trancada, cancelada, concluída ou reprovada. |
| id_aluno | Aluno relacionado | Somente alunos cadastrados podem realizar matrícula. |
| id_turma | Turma relacionada | A matrícula deve ser realizada em turma ativa e não lotada, respeitando o limite de cursos e os horários. |

#Frequência

| Atributo | Descrição | Regra/Observação |
| presença | Registro de presença ou falta | Deve registrar presença, falta e, quando adotado, falta justificada; o mínimo exigido é 85% de frequência. |
| justificativa | Justificativa de falta, quando aplicável | Utilizada quando houver falta justificada. |
| id_matricula | Matrícula relacionada | Somente alunos matriculados na turma podem possuir frequência registrada. |
| id_aula | Aula relacionada | Cada registro de frequência deve estar relacionado a uma aula específica. |

#Avaliação

| Atributo | Descrição | Regra/Observação |
| tipo | Tipo da avaliação | Define o tipo da avaliação realizada. |
| nota | Nota obtida | Deve seguir a escala de avaliação definida pela instituição e a nota mínima para aprovação. |
| data | Data da avaliação | Registra quando a avaliação foi realizada. |
| id_matricula | Matrícula relacionada | Relaciona a avaliação ao aluno matriculado. |
| id_modulo | Módulo relacionado | Relaciona a avaliação ao módulo correspondente. |

#Certificado

| Atributo | Descrição | Regra/Observação |
| tipo | Tipo de certificado | Identifica o tipo de certificado emitido. |
| data_emissao | Data de emissão | O certificado só deve ser emitido após o cumprimento dos requisitos definidos pela instituição. |
| codigo_verificacao | Código utilizado para validação | Deve permitir a validação do certificado e ser único/rastreável no registro de emissão. |
| id_matricula | Matrícula relacionada | Relaciona o certificado à matrícula concluída. |

#Contrato

| Atributo | Descrição | Regra/Observação |
| id_contrato | Identificador do contrato | Identificação do contrato. |
| data_assinatura | Data de assinatura | Registra a data de assinatura do contrato. |
| valor_total | Valor total do contrato | Deve representar o valor financeiro relacionado à matrícula. |
| numero_parcelas | Quantidade de parcelas | Define a quantidade de parcelas do contrato. |
| status | Situação do contrato | Permite acompanhar a situação do contrato. |
| id_matricula | Matrícula relacionada | O contrato está relacionado à matrícula. |

#Pagamento

| Atributo | Descrição | Regra/Observação |
| numero_parcela | Identificação da parcela | Identifica cada parcela relacionada ao contrato. |
| valor | Valor da parcela | Não pode ser negativo. |
| data_vencimento | Data de vencimento | Toda parcela deve possuir uma data de vencimento. |
| data_pagamento | Data em que o pagamento foi realizado | Deve ser registrada quando o pagamento ocorrer. |
| status | Situação do pagamento | Pode representar situações como pendente, paga, vencida ou cancelada. |
| forma_pagamento | Forma utilizada para pagamento | Registra a forma utilizada para realizar o pagamento. |
| id_contrato | Contrato relacionado | O pagamento deve estar relacionado a um contrato/cobrança existente. |


##11. ENTIDADES

As entidades definidas pela equipe representam os principais elementos envolvidos nos processos da Escola XYZ.

Pessoas e cadastros
- Pessoa
- Lead
- Aluno
- Responsável
- Funcionário
- Professor

Captação e relacionamento
- Contato
- Agendamento
- Indicação
- Promoção

Estrutura acadêmica
- Curso
- Módulo
- Turma
- Aula
- Matrícula
- Frequência
- Avaliação
- Certificado

Financeiro
- Contrato
- Pagamento


##12. ATRIBUTOS

Os atributos foram definidos de acordo com as informações necessárias para representar as entidades e os processos do sistema.

#Pessoa
id_pessoa, nome, cpf, data_nascimento, telefone, email, endereco.

#Lead
origem, data_primeiro_contato, status_interesse, curso_interesse.

#Aluno
RGM, data_ingresso, situacao.

#Responsável
parentesco, RGM_aluno.

#Funcionário
telemarketing, setor, data_admissao.

#Professor
formação, data_contratacao, id_professor.

#Contato
id_contato/seq_contato, data_hora, tipo_canal, resultado, id_lead, id_funcionario.

#Agendamento
id_agendamento/seq_agendamento, data_hora_agendada, data_hora_realizada, status, local, id_lead, id_funcionario.

#Indicação
data_indicacao, status, id_pessoa_indicadora, id_pessoa_indicada.

#Promoção
id_promocao, nome, descricao, percentual_desconto, data_inicio, data_fim, id_indicacao.

#Curso
id_curso, nome, carga_horaria_total, modalidade, descricao.

#Módulo
numero_modulo, nome, carga_horaria, ementa, id_curso.

#Turma
id_turma, nome/codigo, data_inicio, data_fim, horario, turno, vagas_totais, id_curso, id_professor.

#Aula
numero_aula, data, conteudo_ministrado, id_turma, id_modulo.

#Matrícula
data_matricula, status, id_aluno, id_turma.

#Frequência
presença, justificativa, id_matricula, id_aula.

#Avaliação
tipo, nota, data, id_matricula, id_modulo.

#Certificado
tipo, data_emissao, codigo_verificacao, id_matricula.

#Contrato
id_contrato, data_assinatura, valor_total, numero_parcelas, status, id_matricula.

#Pagamento
numero_parcela, valor, data_vencimento, data_pagamento, status, forma_pagamento, id_contrato.


##13. RELACIONAMENTOS

Os principais relacionamentos definidos pela equipe são:

- Pessoa — torna-se — Lead
- Pessoa — vira — Aluno
- Pessoa — atua como — Responsável
- Responsável — cuida de — Aluno
- Pessoa — é — Funcionário
- Pessoa — atua como — Professor
- Lead — recebe — Contato
- Funcionário — cria/registra — Contato
- Lead — realiza — Agendamento
- Funcionário — registra — Agendamento
- Pessoa — faz — Indicação
- Lead — se interessa por — Curso
- Curso — possui — Turma
- Curso — possui — Módulo
- Professor — ministra — Turma
- Turma — possui — Aula
- Aluno — participa de — Turma por meio da Matrícula
- Aluno — possui — Matrícula
- Turma — recebe — Matrícula
- Aluno — possui — Frequência
- Aula — possui/registra — Frequência
- Aluno — realiza — Avaliação
- Módulo — possui — Avaliação
- Matrícula — possui — Contrato
- Contrato — gera — Pagamento
- Aluno/Responsável — assina — Contrato conforme a situação
- Aluno — recebe — Certificado
- Certificado — refere-se a — Curso
- Indicação — envolve — Promoção


##14. CARDINALIDADES

- Pessoa → Lead: 0..1
- Pessoa → Aluno: 0..1
- Pessoa → Funcionário: 0..1
- Pessoa → Responsável: 0..1
- Pessoa → Professor: 0..1
- Lead → Contato: 1:N
- Funcionário → Contato: 1:N
- Lead → Agendamento: 1:N
- Funcionário → Agendamento: 1:N
- Pessoa → Indicação: 1:N 
- Curso → Turma: 1:N
- Curso → Módulo: 1:N
- Professor → Turma: 1:N
- Turma → Aula: 1:N
- Aluno → Matrícula: 1:N
- Turma → Matrícula: 1:N
- Matrícula → Frequência: 1:N
- Aula → Frequência: 1:N
- Matrícula → Avaliação: 1:N
- Módulo → Avaliação: 1:N
- Matrícula → Contrato: 1:1
- Contrato → Pagamento: 1:N
- Matrícula → Certificado: 0..1
- Indicação → Promoção: 0..1


##15. DIAGRAMA ENTIDADE-RELACIONAMENTO — DER

O Diagrama de nossa Empresa também estará em nosso Repositório.

##16. JUSTIFICATIVAS TÉCNICAS DAS PRINCIPAIS DECISÕES DE MODELAGEM

#16.1 Utilização de Pessoa como entidade principal

A entidade Pessoa foi escolhida como base para representar diferentes tipos de pessoas dentro do sistema, como Lead, Aluno, Funcionário, Responsável e Professor. Com isso, informações que são comuns entre esses cadastros, como nome, CPF, data de nascimento, telefone, e-mail e endereço, não precisam ser repetidas em várias entidades. Essa escolha facilita a organização dos dados e permite que uma mesma pessoa possa assumir diferentes funções dentro da instituição, de acordo com as necessidades do sistema.


#16.2 Separação entre Lead e Aluno

Lead e Aluno foram mantidos como entidades diferentes porque representam etapas diferentes da relação da pessoa com a instituição. O Lead ainda está na fase de interesse, podendo ter contatos, agendamentos e cursos de interesse, enquanto o Aluno já possui vínculo acadêmico e pode realizar uma matrícula. Dessa forma, o sistema consegue separar o processo de captação e relacionamento do processo acadêmico, acompanhando a evolução da pessoa desde o primeiro contato até sua entrada como aluno.


#16.3 Utilização de entidades dependentes

Algumas entidades foram estruturadas de maneira dependente de outras para representar melhor como as informações funcionam na prática. A Aula, por exemplo, precisa estar relacionada a uma Turma, enquanto a Frequência depende de uma Matrícula e de uma Aula para registrar corretamente a presença do aluno. Essa estrutura foi adotada porque esses registros não fazem sentido de forma isolada e precisam seguir as regras que determinam a qual turma, matrícula ou aula cada informação pertence.


#16.4 Matrícula como elemento de relacionamento

A Matrícula foi utilizada para estabelecer o vínculo entre o Aluno e a Turma. Além de indicar que o aluno faz parte de determinada turma, ela permite guardar informações próprias desse vínculo, como data e situação da matrícula. Essa escolha também possibilita controlar situações previstas nas regras do sistema, como disponibilidade de vagas, limite de cursos e impedimento de matrículas duplicadas, além de manter o histórico das turmas frequentadas pelo aluno.

#16.5 Separação de frequência e avaliação

Frequência e Avaliação foram representadas separadamente porque cada uma possui uma finalidade diferente no acompanhamento do aluno. A Frequência é utilizada para registrar a presença nas aulas, enquanto a Avaliação armazena os resultados obtidos nas atividades avaliativas. Essa divisão permite aplicar as regras específicas de cada processo, como o percentual mínimo de 85% de frequência e os critérios relacionados às notas e à aprovação, sem misturar informações de naturezas diferentes.

#16.6 Separação entre contrato e pagamento

O sistema separa Contrato e Pagamento porque eles representam informações diferentes dentro do processo financeiro. O Contrato registra o acordo realizado em relação à matrícula, enquanto os Pagamentos representam os valores e parcelas que devem ser pagos conforme esse contrato. Assim, um único contrato pode estar ligado a vários pagamentos, permitindo acompanhar vencimentos, valores e situações de pagamento. Essa organização atende às regras que permitem diferentes formas de pagamento, como pagamento à vista, parcelas ou mensalidades.


#16.7 Certificado relacionado à conclusão

O Certificado foi relacionado ao processo de conclusão do aluno, já que sua emissão depende de o aluno cumprir determinadas condições estabelecidas pela instituição. Entre elas estão os requisitos de frequência, aprovação nas notas e outras condições necessárias para a conclusão. Por isso, o certificado precisa estar vinculado a esse processo e possuir um registro que permita identificá-lo e consultá-lo posteriormente, garantindo que sua emissão aconteça somente quando os requisitos forem atendidos.

