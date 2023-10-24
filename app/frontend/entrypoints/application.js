console.log('Vite ⚡️ Rails')

import { Application } from '@hotwired/stimulus';
import { registerControllers } from 'stimulus-vite-helpers';

// Start Stimulus application
const application = Application.start();

// Load and register global controllers
const controllers = import.meta.globEager('../controllers/*_controller.js')
registerControllers(application, controllers)

// Load and register components controllers
const components = import.meta.globEager('../../components/**/*_controller.js')
registerControllers(application, components)

// Start Turbo application
import * as Turbo from '@hotwired/turbo'
Turbo.start()
