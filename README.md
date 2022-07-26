# HeartParticles

![HeartParticles](https://user-images.githubusercontent.com/83541306/180952515-1fc9d2d1-f1dd-42a2-8149-fdb9fe46205b.png)

```sh
text('h', x, y);
    text('e', x, y+50*inc);
    text('l', x, y+100*inc);
    text('l', x, y+150*inc);
    text('o', x, y+200*inc); 
```
You can add your text here with proper increment to change the rain particles.

Similarly you can also change the heart particles.

```sh
    text('l', x, y);
    text('o', x+inc, y+inc);
    text('v', x+3*inc, y+3*inc);
    text('e', x+4*inc, y+4*inc);
```

You can also change the parametric equation to get a different curve.

```sh
    float x=r*16*pow(sin(theta), 3);
    float y=-r*(13*cos(theta)-5*cos(2*theta)-2*cos(3*theta)-cos(4*theta));
```
