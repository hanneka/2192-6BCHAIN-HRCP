import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import ShinyButton from './conditionalRendering/ConditionalDemo1'
import ConditionalDemo2 from './conditionalRendering/ConditionalDemo2'
import ConditionalDemo3 from './conditionalRendering/ConditionalDemo3'
import ConditionalDemo4 from './conditionalRendering/ConditionalDemo4'


function App() {
  const [count, setCount] = useState(0)

  return (
      <div>
        <ShinyButton/>
        <ConditionalDemo2/>
        <ConditionalDemo3/>
        <ConditionalDemo4/>
      </div>
  )
}

export default App