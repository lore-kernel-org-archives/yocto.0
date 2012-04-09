Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76B31E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 13:33:24 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so2597238yhf.35
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2012 13:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=iFqpPW90HP/+LjdW4FNzpwCgRvzHJ13PEeZtXVhCgrM=;
	b=L5+gh/gpA1FH16WPGXi3qQna8KM5L0WHASNskbyCqtDhM6ERPJVUUjiNWRd9nQZQbz
	8GyTCL1mMtlTBj43Ww0wFjAzEOWX7qgNx3F3s+W20pNljEFAwWV3sAR21kpoTfHjzfEB
	UHwCuVWK38Ruib9GdI8l0MeNi+HX1cmXX3zzz7H+WA/+cu2LhbZYbDDBGT+2NZcPTBnf
	CuWofuryxEGytuTObg2rgDB+LzsMNXC3ro56QIZWbfXlqRnNNdP4CDG2uCbIXx4TwUjv
	LOAsnjjOwLDWawmqzRAFBk+lRMbnfbZ6nokq1lwuShsvdo9+rPdcw0AjXvOnApleFefe
	uVRg==
Received: by 10.236.77.70 with SMTP id c46mr5310213yhe.5.1334003604075;
	Mon, 09 Apr 2012 13:33:24 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id d25sm69826397yhe.4.2012.04.09.13.33.22
	(version=SSLv3 cipher=OTHER); Mon, 09 Apr 2012 13:33:23 -0700 (PDT)
Message-ID: <4F834792.20402@gmail.com>
Date: Mon, 09 Apr 2012 16:33:22 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: build error on core-image-sato-sdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Apr 2012 20:33:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

at the end of the build of core-image-sato-sdk I got the following 
error.  I'm using the edison branch with the latest changes and also 
building the meta-cedartrail.  I had previously built core-image-sato 
successfully with this setup.

Any ideas?

ERROR: Function 'build_boot_bin' failed (see 
/build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810 
for further information)
ERROR: Logfile of failure stored in: 
/build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
Log data follows:
| mkdosfs: seek failed
| mkdosfs 2.10 (22 Sep 2003)
| ERROR: Function 'build_boot_bin' failed (see 
/build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810 
for further information)
NOTE: package core-image-sato-sdk-1.0-r0: task do_bootimg: Failed
ERROR: Task 9 
(/home/jim/poky/meta/recipes-sato/images/core-image-sato-sdk.bb, 
do_bootimg) failed with exit code '1'
ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato-sdk.bb' 
failed
jim@ubuntu-x64:/build/cdv-edison$


