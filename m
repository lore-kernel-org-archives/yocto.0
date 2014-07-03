Return-Path: <mareczek6415@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 919EFE006EF; Thu,  3 Jul 2014 06:03:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mareczek6415[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1848FE00342
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 06:03:49 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id n15so2189407wiw.11
	for <yocto@yoctoproject.org>; Thu, 03 Jul 2014 06:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ll6ndqkuQfA60PlwSnu1DsDcu1xG2KY57kgmq/5+SnQ=;
	b=VBrhBcU7dAAt6ChDakKDyxjUmJGq32920aV1dNhIQvPcxoHBowWE+1xrfdP3XQw9Wj
	h+6JR3hXGR8ehDtWkJHETisrvIRaJ9s7LRghhtoQdnMab9aCQbM6GQ0di/j3inVXC24c
	WiOT1BqkSVeVt/6qHCxvOpudQwi3wcOwS07inq5hnYLwgBouurDBPM/psa8VnH9A4fxc
	Agr55NZF1bWzOrVKcgX0waWv9+suW4dAPyMuGlcN8a8m8KNWNkjhs9ts6H8vVEsRnisF
	bRwbFQiPNWhilVi9bHGlGkmRguVamUfNbw6SkWppNR91tbfXoGBSB7xBG1R5PxI0OpuA
	PZzQ==
X-Received: by 10.180.12.33 with SMTP id v1mr50825467wib.0.1404392624004;
	Thu, 03 Jul 2014 06:03:44 -0700 (PDT)
Received: from [127.0.0.1] (ip52-2.tvtrinec.cz. [81.200.52.2])
	by mx.google.com with ESMTPSA id
	hi2sm61942254wjb.29.2014.07.03.06.03.42 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 03 Jul 2014 06:03:43 -0700 (PDT)
Message-ID: <53B554AC.3060301@gmail.com>
Date: Thu, 03 Jul 2014 15:03:40 +0200
From: mareczek <mareczek6415@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: do_populate_sdk error
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
X-List-Received-Date: Thu, 03 Jul 2014 13:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I ran into an error during do_populate_sdk

ERROR: Unable to install packages. Command 
'/yocto-daisy/build/tmp/sysroots/i686-linux/usr/bin/apt-get  install 
--force-yes --allow-unauthenticated nativesdk-packagegroup-sdk-host 
packagegroup-cross-canadian-imx6riotboard' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
W: Unable to read 
/yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/apt-sdk/preferences.d/ 
- DirectoryExists (2: No such file or directory)
E: Unable to locate package nativesdk-packagegroup-sdk-host

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: 
/yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.32319
ERROR: Task 7 (/yocto-daisy/meta/recipes-core/meta/meta-toolchain.bb, 
do_populate_sdk) failed with exit code '1'

I tried to find an answer, but without success. I tried to compile 
nativesdk-packagegroup-sdk-host and it was already compiled.

I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and 
everythink works quite well, but now I'm stuck with this and have no 
clue how to solve this. If anyone knows how to make it working I would 
be very glad.

Thank you very much

Marek

