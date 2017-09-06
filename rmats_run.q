date
cd $PBS_O_WORKDIR
pwd
MPD_CON_EXT=`date`
##===============================
GTFFILE="/home/user/work/sequence/mm10/mm10_refgene.gtf"
BOSTIEINDEX="/home/user/work/sequence/mm10_star"
MATS="/home/user/work/distrib/rMATS.3.2.5/RNASeq-MATS.py"
OUTPUT_DIR="/home/user/work/sequence/results/141219/123s_vs_789"
##===============================
INPUT1_1="/home/user/work/sequence/math/Cov1.fastq"
INPUT1_2="/home/user/work/sequence/math/Cov2.fastq"
INPUT1_3="/home/user/work/sequence/math/Cov3.fastq"
INPUT2_1="/home/user/work/sequence/math/Cov7.fastq"
INPUT2_2="/home/user/work/sequence/math/Cov8.fastq"
INPUT2_3="/home/user/work/sequence/math/Cov9.fastq"

python $MATS -s1 $INPUT1_1,$INPUT1_2,$INPUT1_3 -s2 $INPUT2_1,$INPUT2_2,$INPUT2_3 -gtf $GTFFILE -bi $BOSTIEINDEX -o $OUTPUT_DIR -t single -len 50 -a 8 -c 0.0001




date