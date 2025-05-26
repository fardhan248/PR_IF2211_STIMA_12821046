fname = ARGV[0]
start_node = ARGV[1].to_i

if ARGV.length < 2
    puts "Masukkan dengan format: ruby tsp.rb <file_test.txt> <start_node>"
    exit
end

matriks = []

File.foreach(fname) do |line|
    row = line.split.map(&:to_f)
    matriks << row
end

def f(i, s, m, memo, start)
    key = [i, s.sort]

    return memo[key] if memo.has_key?(key)

    if s.empty?
        return [m[i][start], [i]]
    else 
        res = []
        paths = []
        s.each do |s_val|
            s_new = s - [s_val]
            val, path = f(s_val, s_new, m, memo, start)
            total = m[i][s_val] + val
            res << total
            paths << path
        end

        min_idx = res.index(res.min)
        result = [res[min_idx], [i] + paths[min_idx]]
        memo[key] = result
        
        return result
    end
end

start = start_node - 1
base = (0...matriks.size).to_a - [start] # buang index node start

cost, path = f(start, base, matriks, {}, start)
path << start
path = path.flatten

puts ""
puts "Cost: #{cost}"
print "Path: "

path.length.times do |i|
    if i == path.length-1
        print path[i] + 1 
    else
        print path[i] + 1
        print " -> "
    end
end