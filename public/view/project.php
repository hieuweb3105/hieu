<div class="container">
    <div class="row py-5 gy-3">
        <?php foreach($list_project as $project) : extract($project) ?>
        <div class="col-12 col-md-6 col-lg-4">
            <div class="bg-box bg-box-btn p-1 rounded-4 d-flex justify-content-start flex-column h-100">
                <img src="<?= URL_A . $project_image?>" class="w-100 object-fit-cover rounded-4 bg-dark bg-opacity-50" alt="project/stdd_screen_mobile.png">
                <div class="p-2">
                    <h6 class="card-title"><?= $project_name ?></h6>
                    <a target="_blank" href="/du-an/chi-tiet/<?= $project_id ?>" class="text-decoration-none text-light small d-flex gap-2">
                        <div class="">
                            Xem chi tiết
                        </div>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        <?php endforeach ?>
    </div>
</div>