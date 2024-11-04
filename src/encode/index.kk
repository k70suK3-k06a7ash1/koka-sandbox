fun encode( s : string, shift : int )
  s.map( fn(c)
    if c < 'a' || c > 'z' then return c
    val base = (c - 'a').int
    val rot  = (base + shift) % 26
    (rot.char + 'a')
  )

fun caesar( s : string ) : string
  s.encode( 3 )

fun showit( s : string )
  s.encode(3).count.println

fun show-string( s : string )
  s.encode(3).println
fun main()
    showit("hello")
    show-string("hello")