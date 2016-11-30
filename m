Return-Path: <rthakkar@ciright.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78102E00C25; Wed, 30 Nov 2016 04:52:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 503 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Nov 2016 04:52:24 PST
Received: from ciright.com (unknown [144.202.209.24])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 00C94E00C1D
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 04:52:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ciright.com (Postfix) with ESMTP id 935A319DFEDE
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:28:37 -0500 (EST)
Received: from ciright.com ([127.0.0.1])
	by localhost (ciright.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id cCbB60BAqOaC for <yocto@yoctoproject.org>;
	Wed, 30 Nov 2016 07:28:36 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by ciright.com (Postfix) with ESMTP id 8CB4D19DFEF9
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:28:36 -0500 (EST)
X-Virus-Scanned: amavisd-new at ciright.com
Received: from ciright.com ([127.0.0.1])
	by localhost (ciright.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id dUezXyz_88T7 for <yocto@yoctoproject.org>;
	Wed, 30 Nov 2016 07:28:29 -0500 (EST)
Received: from ciright.com (ciright.com [10.10.10.100])
	by ciright.com (Postfix) with ESMTP id 73A1D19DFEEC
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:28:29 -0500 (EST)
Date: Wed, 30 Nov 2016 07:28:29 -0500 (EST)
From: Rushin Thakkar <rthakkar@ciright.com>
To: yocto@yoctoproject.org
Message-ID: <566212531.1559919.1480508909186.JavaMail.zimbra@ciright.com>
MIME-Version: 1.0
X-Originating-IP: [223.229.237.21]
X-Mailer: Zimbra 8.0.6_GA_5922 (zclient/8.0.6_GA_5922)
Thread-Topic: yocto project in raspberry pi 3
Thread-Index: LQgTtLnjCwQlofeQcd5+lfCg6h8DTA==
X-Mailman-Approved-At: Wed, 30 Nov 2016 07:53:19 -0800
Subject: yocto project in raspberry pi 3
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
X-List-Received-Date: Wed, 30 Nov 2016 12:52:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

hello there i am trying to do yocto project on raspberry pi 3.
when i run bitbake rpi-basic-image.


this task 0: bcm2835-bootfiles-20151021-r3 do_fetch (pid 4922) is taking too much time. after that

i am getting message like




ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
Cloning into bare repository '/home/rushin/yoctopi/poky/build/downloads/git2/github.com.raspberrypi.firmware.git'...
fatal: The remote end hung up unexpectedly
fatal: early EOF
fatal: index-pack failed

ERROR: Function failed: Fetcher failure for URL: 'git://github.com/raspberrypi/firmware.git;protocol=git;branch=master'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/bcm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385
ERROR: Task 207 (/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-bsp/bootfiles/bcm2835-bootfiles.bb, do_fetch) failed with exit code '1'

can you tell me how to download this file manually??

like in download folder there is file called 
wpa_supplicant-2.4.tar.gz . i can download this file. but how to get these files like wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.sh.done??

