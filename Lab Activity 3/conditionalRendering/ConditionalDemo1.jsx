import React from "react";

function ShinyButton(){
  const handleClick = () => {
    alert("You clicked me!");
  }
  return(
    <button class="button" onClick={handleClick}>
      Click This Button!
      <div class="hoverEffect">
    <div>
    </div>
    </div>
    </button>
  );
}

export default ShinyButton;