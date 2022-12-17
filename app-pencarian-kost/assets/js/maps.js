const center = { lat: 0.472469, lng: 101.385 };
let map, infoWindow, marker;

window.onload = function(){
	map = new google.maps.Map(document.getElementById('map'), {
		center, zoom: 14,
	});
	infoWindow = new google.maps.InfoWindow({ map });

	marker = new google.maps.Marker({
		map,
		icon: myCurrentLocationMarker,
		animation: google.maps.Animation.DROP,
		position: center,
	});
	marker.addListener('click', toggleBounce);
	marker.addListener('click', function() {
		infoWindow.setContent("Your location!.");
		infoWindow.open(map, marker);
	});
}

const viewMap = document.querySelectorAll("td > a.view-map");
viewMap.forEach(el => {
  el.addEventListener('click', function(){
    const { lat, lng } = el.dataset;
    const pos = { lat: parseFloat(lat), lng: parseFloat(lng) };

    map.setCenter(pos);
    marker.setPosition(pos);
    updateInfo(pos, el.dataset);
  });
});

function updateInfo(pos, data){
  const content = document.createElement('div');
  content.id = 'info';
  content.innerHTML = `
    <b>${data.nama}</b>
    <p>Kamar tersedia : ${data.tersedia}</p>
    <p>Harga 3 Bulan : Rp. ${data.harga3},-</p>
    <p>Harga 6 Bulan : Rp. ${data.harga3 * 2},-</p>
    <p>Harga pertahun : Rp. ${data.harga3 * 4},-</p>
    <a class"btn btn-info btn-xs" href="?page=detail&key=${data.id}">Lihat Detail</a>
  `;

  infoWindow.setPosition(pos);
  infoWindow.setContent(content);
  infoWindow.open(map);
}

function toggleBounce(){
  if (marker.getAnimation() !== null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }
}
