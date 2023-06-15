import "./bootstrap";
import { createApp } from "vue";
import jquery from "jquery";

window.$ = window.jquery = jquery;
//Import v-from
import {
    Button,
    HasError,
    AlertError,
    AlertErrors,
    AlertSuccess,
} from "vform/src/components/bootstrap5";

import router from "./router/router";
const app = createApp({});
app.component(Button.name, Button);
app.component(HasError.name, HasError);
app.component(AlertError.name, AlertError);
app.component(AlertErrors.name, AlertErrors);
app.component(AlertSuccess.name, AlertSuccess);

app.use(router);
app.mount("#app");
