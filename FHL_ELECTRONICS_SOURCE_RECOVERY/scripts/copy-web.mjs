import { cp, rm } from 'node:fs/promises';
import { resolve } from 'node:path';

const from = resolve('web');
const to = resolve('android/app/src/main/assets/public');
await rm(to, { recursive: true, force: true });
await cp(from, to, { recursive: true });
console.log('Recovered web bundle copied to Android assets.');
