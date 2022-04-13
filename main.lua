print("hello world this is coroutine")

co = coroutine.create(function()
for i = 1,5
do 
print(i)
print(coroutine.status(co))
coroutine.yield()
end
end
)


print(coroutine.status(co))

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

print(coroutine.status(co))