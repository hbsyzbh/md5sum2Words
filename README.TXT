When use md5sum to identify files, the long hex is hard to read or communicate with human.
Since MD5 is an 128-bit hash code, and linux works have more then 64K lines (words), md5sum can been mapped to 8 words. 
So I start to write this tiny program


.\c_src
	empty now
.\Doc
	empty now
README.TXT
.\sh_src
	linux sh script to map md5sum to cleanwords. 
.\Tools
	linux sh script to get cleanwords (All asc chars  "a-z A-Z")
