import {Todo} from '../app/to-do/to-do';

export const TODO_ITEMS: Todo[] = [
 {
   id: 1,
   name: 'Create the Angular App',
   notes: 'use angular 5+',
   due: new Date(new Date().setDate(new Date().getDate() + 4)),
   done: true
 }, {
   id: 2,
   name: 'Use Docker for devlopment',
   notes: 'use docker desktop to build the dev env',
   due: new Date(new Date().setDate(new Date().getDate() + 5)),
   done: false
 }, {
   id: 3,
   name: 'Deploy using Jenkins',
   notes: 'use Jenkins for ci/cd',
   due: new Date(new Date().setDate(new Date().getDate() - 1)),
   done: false
 }
];
