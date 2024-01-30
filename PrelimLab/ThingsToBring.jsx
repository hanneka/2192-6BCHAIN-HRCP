import React from "react";

const ListItem = ({ item, status }) => {
    const backgroundColor = status === 'true' ? 'green' : status === 'on-hand' ? 'pink' : '';

return (
    <li style={{ backgroundColor, listStyleType: 'none', padding: '10px', paddingLeft:'10px' , paddingRight: '10px',margin: '5px' }}>
    {item}
    </li>
);
};

const ListComponent = ({ list, listStatus }) => {
    return (
        <ul>
            {list.map((item, index) => (
                <ListItem key={index} item={item} status={listStatus[index]} />
            ))}
        </ul>
    );
            };
            const Result = () => {
                const myList = ['My Strawhat', 'Gum gum Fruit', 'The Red Vest'];
                const myStatusList = [];

                return (
                    <center>
                    <div>
                        <h2>Things To Bring</h2>
                        <ListComponent list={myList} listStatus={myStatusList} />
                    </div>
                    </center>
                );
            };

            export default Result;
                

