function [minidx] = getClosest(char2find,train_projs,iter)
%GETCLOSEST Using the projected space by train_projs, find the closest
%point to char2find
    min_dist = 100000000;
    minidx = 0;
    for i = 1:iter
        temp_train_proj = train_projs(i,:);
        temp_dist = (char2find - temp_train_proj).^2;
        temp_dist = sum(temp_dist);
        temp_dist = sqrt(temp_dist);
        if temp_dist < min_dist
            min_dist = temp_dist;
            minidx = i;
        end
    end
end