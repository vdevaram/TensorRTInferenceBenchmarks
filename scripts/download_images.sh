# Copyright (c) 2018, NVIDIA CORPORATION. All rights reserved.
# Full license terms provided in LICENSE.md file.

image_urls=(
  http://farm3.static.flickr.com/2017/2496831224_221cd963a2.jpg
  https://farm9.staticflickr.com/8537/10248108254_a08026318e_k.jpg
  https://farm7.staticflickr.com/6154/6152098140_b10b82678f_b.jpg
  https://farm4.staticflickr.com/3684/12787527135_60854344b5_k.jpg
  https://farm6.staticflickr.com/5331/10264710515_6e8d6e5e09_k.jpg
  https://farm8.staticflickr.com/7001/6487089225_ae81c6fc68_b.jpg
  https://farm8.staticflickr.com/7459/8870464923_3c243640bd_k.jpg
  https://farm5.staticflickr.com/4075/4791631090_98c494c88c_b.jpg
  https://farm4.staticflickr.com/3311/5696286004_ba654f9c63_b.jpg
  https://farm7.staticflickr.com/6049/6288258621_017c47e364_b.jpg
  https://farm9.staticflickr.com/8521/8470207625_c570433257_k.jpg
  https://farm6.staticflickr.com/5085/5309100128_b1f26ee9a5_b.jpg
  https://farm4.staticflickr.com/3216/2592848558_2d386cf567_z.jpg
  https://farm6.staticflickr.com/5183/5745919189_c6d6ac0692_b.jpg
  https://farm5.staticflickr.com/4139/4790999949_9e1f8fca31_b.jpg
  http://farm3.static.flickr.com/2582/4106642219_190bf0f817.jpg
  https://farm9.staticflickr.com/8750/16386660144_a6c4026657_b.jpg
  https://farm3.staticflickr.com/2806/10378378734_66a7206d62_k.jpg
  https://farm8.staticflickr.com/7393/9428906352_ed6f189d55_b.jpg
  https://farm9.staticflickr.com/8380/8607999597_48549fd7bd_k.jpg
  https://farm7.staticflickr.com/6238/6363665913_b72d36df0b_b.jpg
  https://farm7.staticflickr.com/6238/6363665913_b72d36df0b_b.jpg
  https://farm6.staticflickr.com/5504/10264461753_cadac73880_k.jpg
  https://farm9.staticflickr.com/8523/8593804231_2c6632e49e_k.jpg
  https://farm4.staticflickr.com/3761/10395774134_bfdb038196_k.jpg
  https://farm7.staticflickr.com/6184/6119118459_ac5468f5b5_b.jpg
  https://farm9.staticflickr.com/8387/8546917613_b881bb6ab6_k.jpg
  https://farm6.staticflickr.com/5535/10366207236_f94661acd7_b.jpg
  https://farm2.staticflickr.com/1549/25691458063_0c8a92a49d_k.jpg
  https://farm9.staticflickr.com/8386/8607957639_5fbffcb041_k.jpg
  https://farm8.staticflickr.com/7336/12308972956_04b2015277_k.jpg
  https://farm9.staticflickr.com/8098/8545615766_72dba9fa3f_k.jpg
  https://farm4.staticflickr.com/3816/8837035407_c75afcd353_b.jpg
  https://farm9.staticflickr.com/8240/8606493468_4b584f7fcf_k.jpg
)

image_names=(
image1.jpg
image2.jpg
image3.jpg
image4.jpg
image5.jpg
image6.jpg
image7.jpg
image8.jpg
image9.jpg
image10.jpg
image11.jpg
image12.jpg
image13.jpg
image14.jpg
image15.jpg
image16.jpg
image17.jpg
image18.jpg
image19.jpg
image20.jpg
image21.jpg
image22.jpg
image23.jpg
image24.jpg
image25.jpg
image26.jpg
image27.jpg
image28.jpg
image29.jpg
image30.jpg
image31.jpg
image32.jpg
image33.jpg
image34.jpg
)

image_folder=data/images

mkdir -p $image_folder

for i in ${!image_urls[@]}
do
  echo ${image_urls[$i]}
  echo ${image_names[$i]}
  wget -O $image_folder/${image_names[$i]} ${image_urls[$i]}
done
# make the list of all the images
ls $image_folder >$image_folder/list.txt
impath=$PWD/$image_folder"/image"
sed -i '/list.txt/d' $image_folder/list.txt
sed -i 's@image@'"$impath"'@g' $image_folder/list.txt
