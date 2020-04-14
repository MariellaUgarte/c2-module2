sample = [
    [[ 65, 67, 23], 
     [234,176, 0],
     [143, 0, 0]],
    [[255, 30, 51],
     [156, 41, 38], 
     [ 3,243,176]],
    [[255,255,255], 
     [ 0, 0, 0], 
     [133, 28, 13]],
    [[ 26, 43,255],
     [ 48, 2, 2], 
     [ 57, 89,202]]
    ]

    $count=0
    def redColor (sample)
        for i in 0..sample.length - 1
            for j in 0..sample[i].length - 1
                if sample[i][j][0] > 100 && sample[i][j][1] < sample[i][j][0] /4 && sample[i][j][2] < sample[i][j][0]/4
                    $count +=1
                    sample[i][j]
                     
               end 
               
            end
        end
        puts $count
        
    end
    redColor(sample)
    