import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {

    // const equipe = await prisma.equipe.create({
    //     data: {
    //       idEquipe: 876
    //     },
    //   })
    //   console.log(equipe)

    // const aluno = await prisma.aluno.create({
    //     data: {
    //       idAluno: 123,
    //       nomeAluno: 'Gusta',
    //       matricula: '12345',
    //       idEquipe: 876
    //     },
    //   })
    //   console.log(aluno)  
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })