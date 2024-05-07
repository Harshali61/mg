const express=require('express')
const mongoose=require('mongoose')
const url='mongodb+srv://kbtug21563:<password>@cluster0.letnoqs.mongodb.net/mydb'

const app=express()

mongoose.connect(url)
app.use(express.json())
const mydbRouter=require('./Routes/mydbroutes')
app.use('/',mydbRouter)

app.listen(3000,()=>{
    console.log('server running')
})
