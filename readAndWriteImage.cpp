#include<opencv2/opencv.hpp>

main()
{
	cv::Mat inputImg = cv::imread("/home/vnagbansi/Downloads/IMG_2797.jpg");
	cv::imwrite("/home/vnagbansi/Downloads/jhingala.jpg", inputImg);
}
