class Toothpick {

  Point location, enda, endb;
  Toothpick toothpick_a = null, toothpick_b = null;
  boolean vertical;

  Toothpick(int x, int y, boolean vertical) {
    this.location = new Point(x, y);
    this.vertical = vertical;

    if (vertical) {
      this.enda = new Point(x, y-length/2);
      this.endb = new Point(x, y+length/2);
    } else {
      this.enda = new Point(x-length/2, y);
      this.endb = new Point(x+length/2, y);
    }
    
    LinkedList<Point> temp = new LinkedList<Point>();
    temp.addAll(available);
    
    Boolean add_a = true;
    Boolean add_b = true;
    
    for (Point p: temp) {
      if (p.isEqual(this.enda)) {
        available.remove(p);
        add_a = false;
      }
      if (p.isEqual(this.endb)) {
        available.remove(p);
        add_b = false;
      }
    }
    if (add_a) available.add(this.enda);
    if (add_b) available.add(this.endb);

  }

  void woohoo(int level) {
    if (available.remove(this.enda)) this.toothpick_a = new Toothpick(this.enda.x, this.enda.y, !(this.vertical));
    if (available.remove(this.endb)) this.toothpick_b = new Toothpick(this.endb.x, this.endb.y, !(this.vertical));
    if (level > 0) {
      if (this.toothpick_a != null) toothpick_a.woohoo(level-1);
      if (this.toothpick_b != null) toothpick_b.woohoo(level-1);
    }
  }

  void show() {
    if (vertical) line(this.location.x, this.location.y-length/2, this.location.x, this.location.y+length/2);
    else line(this.location.x-length/2, this.location.y, this.location.x+length/2, this.location.y);
    if (this.toothpick_a != null) toothpick_a.show();
    if (this.toothpick_b != null) toothpick_b.show();
  }
}
