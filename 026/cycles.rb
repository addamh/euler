require "prime"
print for p in Prime.take_while{|p| p<1000}.reverse do
  break p if for d in (1...p) do
    break p if (10**d-1)%p==0 and d==p-1
    break if (10**d-1)%p==0
  end
end