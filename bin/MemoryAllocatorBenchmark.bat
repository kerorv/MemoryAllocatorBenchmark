@echo off
echo Memory Allocator Performance Tester
echo 02.13.2016 nolimitk
echo GPL

echo ...
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester malloc
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester new
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester concurrency
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester tbb
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester tc
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester malloc -concurrent
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester new -concurrent
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester concurrency -concurrent
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester tbb -concurrent
for /L %%G IN (1,1,10 ) do MemoryAllocatorPerformanceTester tc -concurrent

echo done.
pause