//Hanneka Rose Puri
import React from 'react';

class TodoList extends React.Component{
    render () {
    return (
        <div>
            <ol>
            <h3>To do List</h3>
            <div class="flex-container">
            <div>
            <p>Get My Nails Done</p>
            <img src="https://www.fabmood.com/inspiration/wp-content/uploads/2022/05/nail-designs-7.jpg"></img>
            </div>
            <div>
            <p>Read Book</p>
            <img src="https://media.post.rvohealth.io/wp-content/uploads/2019/10/reading-book-732x549-thumbnail-732x549.jpg"></img>
            </div>
            <div>
            <p>Go to Coffee Shop</p>
            <img src="https://coffeeshopstartups.com/wp-content/uploads/2021/05/How-to-Make-Your-Cafe-Special-683x1024.jpg"></img>
            </div>
            </div>
            </ol>
        </div>
        );
    }
}

    export default TodoList;