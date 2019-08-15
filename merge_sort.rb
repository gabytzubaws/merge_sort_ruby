
def merge (array, left, mid, right)
  i = left # [left .. mid]
  j = mid + 1 # [mid+1..right]
  temp = []
  while i <= mid && j <= right
    if array[i] < array[j]
      temp << array[i]
      i += 1
    else
      temp << array[j]
      j += 1
    end
  end
  while (i <= mid)
    temp << array[i]
    i += 1
  end
  while (j <= right)
    temp << array[j]
    j += 1
  end
  for i in left..right
    array[i] = temp[i-left]
  end

end


def mergesort!(array, left, right)
  if left < right
    mid = (left + right) / 2
    mergesort(array, left, mid)
    mergesort(array, mid+1, right)
    merge(array, left, mid, right)
  end
end
a = [12,3,2,15,12,321,421,2,123,1]
mergesort!(a, 0, 9)
p a
