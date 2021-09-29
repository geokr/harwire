// console.log(ttl.length)
var ctx = document.getElementById('myChart').getContext('2d');

const xaxis = [];
xaxis[0]=bucket_limit;
for (let i=1; i<10; i++){
  xaxis[i] = xaxis[i-1]+bucket_limit;
}

const yaxis = [];
for (let i=1; i<10; i++){
  yaxis[i] = 0;
};
var counter0=0;
var counter1=0;
var counter2=0;
var counter3=0;
var counter4=0;
var counter5=0;
var counter6=0;
var counter7=0;
var counter8=0;
var counter9=0;
ttl.forEach(row => {
  // counter0 += 1;

  // console.log(row[0]);
  if (row[0]<=xaxis[0]){
    // console.log("this is ",row[0]);
    counter0 += 1;
    // yaxis += 1;
    yaxis[0] = counter0;
    // console.log(yaxis[0]);
  } 
  else if (row[0]<=xaxis[1]){
    counter1 += 1;
    yaxis[1] = counter1;
  }
  else if (row[0]<=xaxis[2]){
    counter2 += 1;
    yaxis[2] = counter2;
  }
  else if (row[0]<=xaxis[3]){
    counter3 += 1;
    yaxis[3] = counter3;
  }
  else if ( row[0]<=xaxis[4]){
    counter4 += 1;
    yaxis[4] = counter4;
  }
  else if (row[0]<=xaxis[5]){
    counter5 += 1;
    yaxis[5] = counter5;
  }
  else if (row[0]<=xaxis[6]){
    counter6 += 1;
    yaxis[6] = counter6;
  }
  else if (row[0]<=xaxis[7]){
    counter7 += 1;
    yaxis[7] = counter7;
  }
  else if (row[0]<=xaxis[8]){
    counter8 += 1;
    yaxis[8] = counter8;
  }
  else{
    counter9 += 1;
    yaxis[9] = counter9;
  }

});

// console.log(yaxis);
// console.log(counter0);
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: xaxis,
        datasets: [{
            label: '# of TTL objects',
            data: yaxis,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});