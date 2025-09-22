function blkStruct = slblocks
% Register custom libraries in Simulink Library Browser

    Browser(1).Library = 'motor_jgb37';   % 已存在的 library
    Browser(1).Name    = 'My Library';
    Browser(1).IsFlat  = 0;

    Browser(2).Library = 'wheel_chassis'; % 你新建的 library
    Browser(2).Name    = 'My Library';
    Browser(2).IsFlat  = 0;

    blkStruct.Browser = Browser;

    % 額外保險設定
    blkStruct.Name = 'My Library';
    blkStruct.FunctionName = 'slblocks';
end
