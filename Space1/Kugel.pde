public class Kugel
{
  // Attribute
  float x;
  float y;
  float vx;
  float vy;

  float breite;
  float hoehe;

  boolean sichtbar;

  // Konstruktor
  Kugel(float x_, float y_)
  {      
    x = x_;
    y = y_;
    vx = 0;
    vy = 0;       
    breite = 6;
    hoehe = 6;

    sichtbar = false;
  }

  // Methoden
  void update()
  {
    y = y + vy;
  }

  void setPosition(float x_, float y_)
  {
    x = x_;
    y = y_;
  }

  void setVy(float vy_)
  {
    vy = vy_;
  }

  void sichtbarMachen()
  {
    sichtbar = true;
  }

  void unsichtbarMachen()
  {
    sichtbar = false;
  }

  void zeichnen()
  {
    if (sichtbar)
    {
      fill(255, 255, 0); 
      ellipse(x, y, breite, hoehe);
    }
  }
}
