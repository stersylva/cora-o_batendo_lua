function love.load()
  f="fill"
  g=love.graphics
  ca=36
  cd=40
  cc=22
  pa=18
  pb=53
  pc=90
  pd=53
  pe=54
  pf=96
  k=0
  j=0
  soket = require ("socket")
end

function love.draw()
  g.setColor(255,0,0)
    for i=1,2 do
      g.circle(f,j+ca*i,j+cd,j+cc)
    end
      g.polygon(f,j+pa,j+pb,j+pc,j+pd,j+pe,j+pf)
end

function sleep (sec)
  socket.sleep(sec)
end

function love.update(dt)
  if k==0 then
    j =(j+2)
    k=1
    sleep(0.8)
  else
    j=(j-2)
    k=0
    sleep(0.8)
  end
end
