public class Schiff
{
  //Attribute
  float x;
  float y;
  float vx;
  float vy;

  float breite;
  float hoehe;

  PImage img;

  //Konstruktor
  public Schiff(float x_, float y_)
  {
    x = x_;
    y = y_;
    vx = 0;
    vy = 0;
    breite = 48;
    hoehe = 48;

    img = loadImage("schiff.png");
  }

  //Methoden

  public float getX()
  {
    return x;
  }

  public float getY()
  {
    return y;
  }

  public float getBreite()
  {
    return breite;
  }

  public void setPosition(float x_, float y_)
  {
    x = x_;
    y = y_;
  }

  public void nachRechts()
  {
    vx = 3;
  }

  public void nachLinks()
  {
    vx = -3;
  }

  public void update()
  {
    x = x + vx;
  }

  public void stoppen()
  {
    vx = 0;
  }

  void zeichnen()
  {
    image(img, x, y, breite, hoehe);
  }
}
