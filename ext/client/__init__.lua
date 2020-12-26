Events:Subscribe('Partition:Loaded', function(partition)

    for _, instance in pairs(partition.instances) do

       if instance:Is('VignetteComponentData') then
         local vignetteData = VignetteComponentData(instance)

         vignetteData:MakeWritable()
         vignetteData.enable = true;
       end

    end

  end)
