// let charactersArray = [
//   {name: "Rei", quote: "I love Overwatch so much", img_url: "google.com", likes: 1000},
//   {name: "Eric", quote: "I meh Overwatch so much", img_url: "yahoo.com", likes: 500},
//   {name: "Sylwia", quote: "I enjoy Overwatch so much", img_url: "askjeeves.com", likes: 900}
// ]
//
// charactersArray.forEach((charObj) => {
//   const newButton = document.createElement('button')
//     newButton.innerText = charObj.name
//     newButton.addEventListener('click', (e) => {
//       fetch(`${heroUrl}`, {
//         method: 'POST',
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json'
//         },
//         body: JSON.stringify({
//           'name': charObj.name,
//           'quote': charObj.quote,
//           'img_url': charObj.img_url,
//           'likes': charObj.likes
//         })
//       })
//       .then(r => r.json())
//       .then((newHeroObj) => {
//         generateHeroCard(newHeroObj)
//       })
//     })
//     heroCollection.append(newButton)
// })
