<template>
    <!-- Page header -->
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <h2 class="page-title">Data Products</h2>
                </div>
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                        <a
                            href="#"
                            class="btn btn-primary d-none d-sm-inline-block"
                            @click="showModal"
                        >
                            <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="icon"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                stroke-width="2"
                                stroke="currentColor"
                                fill="none"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                            >
                                <path
                                    stroke="none"
                                    d="M0 0h24v24H0z"
                                    fill="none"
                                />
                                <path d="M12 5l0 14" />
                                <path d="M5 12l14 0" />
                            </svg>
                            Tambah Products
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="card">
                <div class="card-body">
                    <div id="table-default" class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>price</th>
                                    <th>description</th>
                                    <th>tags</th>
                                    <th>category</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody class="table-tbody">
                                <tr
                                    v-for="row in product.data['data']"
                                    :key="row.id"
                                >
                                    <td class="sort-name">{{ row.name }}</td>
                                    <td class="sort-city">{{ row.price }}</td>
                                    <td class="sort-type">
                                        {{ row.description }}
                                    </td>
                                    <td class="sort-type">
                                        {{ row.tags ?? "kosong" }}
                                    </td>
                                    <td class="sort-type">
                                        {{ row.category.name }}
                                    </td>
                                    <td class="sort-name">
                                        <a href="#" @click="EditModal(row)">
                                            <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="icon icon-tabler icon-tabler-edit"
                                                width="24"
                                                height="24"
                                                viewBox="0 0 24 24"
                                                stroke-width="2"
                                                stroke="currentColor"
                                                fill="none"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                            >
                                                <path
                                                    stroke="none"
                                                    d="M0 0h24v24H0z"
                                                    fill="none"
                                                ></path>
                                                <path
                                                    d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1"
                                                ></path>
                                                <path
                                                    d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z"
                                                ></path>
                                                <path d="M16 5l3 3"></path>
                                            </svg>
                                        </a>
                                        <a href="#">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="icon icon-tabler icon-tabler-eraser"
                                                width="24"
                                                height="24"
                                                viewBox="0 0 24 24"
                                                stroke-width="2"
                                                stroke="currentColor"
                                                fill="none"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                            >
                                                <path
                                                    stroke="none"
                                                    d="M0 0h24v24H0z"
                                                    fill="none"
                                                ></path>
                                                <path
                                                    d="M19 20h-10.5l-4.21 -4.3a1 1 0 0 1 0 -1.41l10 -10a1 1 0 0 1 1.41 0l5 5a1 1 0 0 1 0 1.41l-9.2 9.3"
                                                ></path>
                                                <path
                                                    d="M18 13.3l-6.3 -6.3"
                                                ></path>
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="container">
                            <Bootstrap5Pagination
                                :data="product.data['data']"
                                @pagination-change-page="loadData"
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div
        class="modal modal-blur fade"
        id="modal-simple"
        tabindex="-1"
        role="dialog"
        aria-hidden="true"
    >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" v-show="!statusmodal">
                        Tambah Tagihan
                    </h5>
                    <h5 class="modal-title" v-show="statusmodal">
                        Ubah Tagihan
                    </h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    ></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Nama</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    v-model="form.name"
                                />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Harga</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    v-model="form.price"
                                />
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div>
                                <label class="form-label">Description</label>
                                <textarea
                                    class="form-control"
                                    rows="3"
                                    v-model="form.description"
                                    >{{ form.description }}</textarea
                                >
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Tags</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    v-model="form.tags"
                                />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">category</label>
                                <select
                                    class="form-control"
                                    :key="form.categories_id"
                                    v-model="form.categories_id"
                                    required
                                >
                                    <option
                                        v-for="b in categories.data.data"
                                        :key="b.id"
                                        :value="b.id"
                                    >
                                        {{ b.name }}
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button
                        type="button"
                        class="btn me-auto"
                        data-bs-dismiss="modal"
                    >
                        Close
                    </button>
                    <button
                        type="button"
                        class="btn btn-primary"
                        data-bs-dismiss="modal"
                    >
                        Save changes
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>
<script setup>
import { Bootstrap5Pagination } from "laravel-vue-pagination";
</script>
<script>
import Form from "vform";
export default {
    data() {
        return {
            product: {},
            categories: {},
            statusmodal: false,
            form: new Form({
                id: "",
                name: "",
                description: "",
                price: "",
                tags: "",
            }),
        };
    },
    methods: {
        loadData(current_page = 1) {
            axios
                .get(`http://ecommerce.test/api/products?page=${current_page}`)
                .then((a) => {
                    this.product = a.data;
                    console.log(this.product);
                })
                .catch((e) => {
                    console.log(e);
                });
            axios
                .get(`http://ecommerce.test/api/categories`)
                .then((a) => {
                    this.categories = a.data;
                })
                .catch((e) => {
                    console.log(e);
                });
        },
        showModal() {
            this.statusmodal = false;
            this.form.reset();
            const modalElement = document.getElementById("modal-simple");
            const modal = new bootstrap.Modal(modalElement);
            modal.show();
        },
        EditModal(row) {
            this.statusmodal = true;
            const modalElement = document.getElementById("modal-simple");
            const modal = new bootstrap.Modal(modalElement);
            modal.show();
            this.form.fill(row);
        },
    },
    created() {
        this.loadData();
    },
};
</script>
