Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B0E5E00D06; Mon, 14 Sep 2015 06:23:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Sep 2015 06:23:28 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A486E00C66
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 06:23:28 -0700 (PDT)
Received: from [62.225.157.198] by 3capp-gmx-bs36.server.lan (via HTTP);
	Mon, 14 Sep 2015 15:18:22 +0200
MIME-Version: 1.0
Message-ID: <trinity-372e164a-af55-434b-8076-b79aa5e218f5-1442236702251@3capp-gmx-bs36>
From: star@gmx.li
To: yocto@yoctoproject.org
Date: Mon, 14 Sep 2015 15:18:22 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:EcdXwO8b0HgL2jQwSefYrxa8+zVD0ouuzWQQqy0L9qG
	hBI95SKDS+hrPbh5Rk3R5iXzyFHrokCOaLUEZrSNXKhSGs1bVd
	67nHcz75qRX4MSiHFySx5xL4vse5mBWxMtlRAkrP8wBSNfeBBJ
	9ul5WQMvFRYEwLoeVdvoRtxBHH4erFbR87ixdmNn12k6804T/v
	r2zlqalwDVdiYnB6P+BmCfRUIjTKURx1eUs23uUX0US39bUqcr
	8Fono0rAyFrTpz6DcuNzZ43hYXQL1WFuC1dyzEFcKHUftmciwc WSEAFw=
X-UI-Out-Filterresults: notjunk:1;V01:K0:u2eZ8wFpJoo=:l1HZ2mTie1vJdFfcKSD99x
	vNPfYi7Tu7TR4KcdCFqIl8/jc2GnWKRkkwPFKfsD5m9UnRuUv8szaKvrI918q5J5ZElXg0rCe
	CvLnaFzvM+wcLtHEE1EyaBthODl+vgMVGkHy+HEPEnJ8hm1QAAxeRUrS7UjMFXo6AD6DyrIlp
	rVB5jOfEGTwKQXd8xlQfTPcoiGI4T4bvo0xso2wszb+phRBcH+MAOyvTB2AU4v12LfjadlQIz
	UM5jrhNpNZaLWpDIkIUVLhShs3P6rjc7ZW3DJ+4mhEnl9DKyrgdRKdBlTpzitq0IR8kKCkflY
	mRJ/7ucuaQLaJ/N14adAX1cIgHuuS7MI6i6nPWg0ZxC+BGqRzgubGAJGXqOK4srLsfIeOLFj3
	oPzMbPskwQaVTVyu9KCn2mkozwtzA3+TKVWTQEbEzwbDcBg8fWdawJiAsszshyW7i7i7NHRFb
	xWDNWEts+g==
Subject: Problem with ADT and Eclipse
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Sep 2015 13:23:30 -0000
Content-Type: text/plain; charset=UTF-8

I go for the manual:
http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#adt-eclipse

I could compile this Yocto Project ADT Autotools Project "hello world"
It generates a lot of files and I am lost how to add more source files and headers.

I added a second c-file with a function "sub" and header and included the header in the hello world.c.

But I get linker problems and the second c file isn't get compiled. What do I have to do if the project gets bigger with more files ...? In the old times I added something to makefile, but I have two and both are crowded ...

  
make all 
make  all-recursive
make[1]: Entering directory `/home/user/ws/sp_test'
Making all in src
make[2]: Entering directory `/home/user/ws/sp_test/src'
../arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=link arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a9 --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7  -g -O0  --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7  --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7 -o sp_test sp_test-sp_test.o  
arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc -march=armv7-a -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a9 --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7 -g -O0 --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7 --sysroot=/home/user/yocto_microzed/tmp/sysroots/microzed-zynq7 -o sp_test spi_test-spi_test.o 
sp_test-sp_test.o: In function `main':
/home/user/ws/spi_test/src/sp_test.c:40: undefined reference to `sub'
collect2: error: ld returned 1 exit status


The second issue is with qemu:

I get the message

Error: unknow fuile arg [path to my uImage]

This is the automatical generated config:
-e "source /home/user/yocto_microzed/tmp/environment-setup-cortexa9-vfp-neon-poky-linux-gnueabi;runqemu  /home/user/yocto_microzed/tmp/deploy/images/microzed-zynq7/uImage /home/user/yocto_microzed/tmp/sysroots/microzed-zynq7 ;bash"

and here what can be found at this locations:

user@vb:~$ ll /home/user/yocto_microzed/tmp/deploy/images/microzed-zynq7/uImage
lrwxrwxrwx 1 user user 72 Aug 28 11:29 /home/user/yocto_microzed/tmp/deploy/images/microzed-zynq7/uImage -> uImage--3.14-xilinx+git0+2b48a8aeea-r0-microzed-zynq7-20150828065234.bin

user@vb:~$ ll /home/user/yocto_microzed/tmp/sysroots/microzed-zynq7
total 32
drwxr-xr-x 8 user user 4096 Sep 14 07:39 ./
drwxr-xr-x 7 user user 4096 Sep 11 13:32 ../
drwxr-xr-x 2 user user 4096 Aug 28 10:06 etc/
drwxr-xr-x 5 user user 4096 Aug 28 10:35 lib/
drwxr-xr-x 7 user user 4096 Sep 11 13:32 pkgdata/
drwxr-xr-x 2 user user 4096 Sep 14 07:39 sysroot-providers/
drwxr-xr-x 7 user user 4096 Sep 10 12:06 usr/
drwxr-xr-x 3 user user 4096 Aug 28 10:06 var/

I hope someone can help a YOCTO 1.8 beginner.

