<div class="container px-lg-0 mt-5">
    
<div class="h2 text-center text-danger text-uppercase mt-3">
    Khu vực kiểm thử
</div>
<div class="border border-1 border-danger p-5 ">
    <div class="fst-italic d-flex flex-column gap-2 text-light-80">
        <div class="">
            <span class="text-light-60">Địa chỉ IP :</span>
            <span class=""><?= $your_ip ?></span>
        </div>
        <div class="">
            <span class="text-light-60">Thời gian hiện tại :</span>
            <span id="current-time"></span>
        </div>
    </div>
</div>

<script>
    function displayCurrentTime() {
    var currentTime = new Date();
    var timeZoneOffset = currentTime.getTimezoneOffset() / 60; // Đổi về giờ địa phương
  
    var gmt7TimeOffset = 7 + timeZoneOffset;
    currentTime.setHours(currentTime.getHours() + gmt7TimeOffset);
  
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    var seconds = currentTime.getSeconds();
  
    hours = (hours < 10 ? "0" : "") + hours;
    minutes = (minutes < 10 ? "0" : "") + minutes;
    seconds = (seconds < 10 ? "0" : "") + seconds;
  
    var currentTimeString = hours + ":" + minutes + ":" + seconds;
    document.getElementById("current-time").textContent = currentTimeString;
  
    setTimeout(displayCurrentTime, 1000);
  }
  
displayCurrentTime();
</script>
</div>