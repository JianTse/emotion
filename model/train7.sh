wdir=`pwd`
# log
DATE=$(date "+%Y-%m-%d-%H-%M-%S")
if [ ! -d "./log" ];then
    mkdir log
fi

logpath=${wdir}/log/${DATE}.log
#nohup python -u ${script} > ${logpath} 2>&1  & 
nohup ../build/tools/caffe train --solver=./emo7-solver.prototxt -gpu=0,1 > ${logpath} 2>&1  & 
tail -f ${logpath}
