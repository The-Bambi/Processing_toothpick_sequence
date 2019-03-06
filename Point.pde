class Point {
   int x, y;
   boolean taken = false;
   
   Point(int x, int y) {
     this.x = x;
     this.y = y;
   }
   
   boolean isEqual(Point other) {
     return (this.x == other.x && this.y == other.y);
   }
  
}
