import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import BookList from './components/BookList'
import MovieList from './components/MovieList'
import TodoList from './components/TodoList'

function App() {


  return (
    <div>
        <BookList/>
        <MovieList/>
        <TodoList/>
    </div>
  )
}

export default App
