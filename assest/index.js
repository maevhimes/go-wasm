import './wasm_exec.js';
import WASM from './go-wasm.wasm'

addEventListener('fetch', async (event) => {
    event.respondWith(await handleRequest(event.request));
});


// async function loadWasm(){
// 	const goWasm = new window.Go();
// 	const result = await WebAssembly.instantiateStreaming(
// 	  fetch("play.wasm"),
// 	  goWasm.importObject
// 	);
// 	goWasm.run(result.instance);
//   }

// async function handleRequest(req) {
//     try {
//         const go = new Go();
//         const instance = await WebAssembly.instantiate(WASM, go.importObject);
//         go.run(instance);

//         return new Response(await test(req.url), { status: 200 });
//     } catch (e) {
//         console.error(e);
//         return new Response(e.message, { status: 500 });
//     }
// }
