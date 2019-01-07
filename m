Return-Path: <kristupas.savickas@teltonika.lt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEE1CE00C49; Mon,  7 Jan 2019 06:07:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.61.46.25 listed in list.dnswl.org]
X-Greylist: delayed 395 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Jan 2019 06:07:16 PST
Received: from mail.teltonika.lt (mail.teltonika.lt [92.61.46.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1AC9E00B58
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 06:07:16 -0800 (PST)
Received: from [192.168.90.159] (88-119-152-93.static.zebra.lt [88.119.152.93])
	by mail.teltonika.lt (Postfix) with ESMTPSA id 9FB292461DE3
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 16:00:39 +0200 (EET)
From: Kristupas Savickas <kristupas.savickas@teltonika.lt>
To: yocto@yoctoproject.org
Message-ID: <30fd8545-ec8a-2229-28e4-8bea6048d66a@teltonika.lt>
Date: Mon, 7 Jan 2019 16:00:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
Subject: Incorrect config generated for yocto-style kernel (sumo)
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
X-List-Received-Date: Mon, 07 Jan 2019 14:07:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

I'm porting a kernel to use yocto-style build process. The kernel 
fetches fine, but there's a problem with '.config' file generation. I'd 
like to supply a 'defconfig' and a configuration fragment file 
'test.cfg' (which should be overlayed on top of 'defconfig') from the 
bitbake recipe. What I end up getting is a '.config' file that looks 
like it used the default values - neither 'defconfig' nor 'test.cfg' was 
used. Here's what I have going in my recipe:


LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

inherit tlt-image kernel
require recipes-kernel/linux/linux-yocto.inc

SRCREV    = "8f450c58d196723a78527b643910b90d7cd6549f"

SRC_URI = " \
         git://git@REDACTED.git;protocol=ssh \
         file://defconfig \
"

SRC_URI_append_test = "file://test.cfg"

PV = "3.18.20"
KBRANCH = "master"

KMACHINE = "test"
KARCH = "arm"

And here's what the directory structure looks like:

meta-test/recipes-kernel/linux-test
├── meta-test/recipes-kernel/linux-test/files
│   ├── meta-test/recipes-kernel/linux-test/files/defconfig
│   └── meta-test/recipes-kernel/linux-test/files/test.cfg
└── meta-test/recipes-kernel/linux-test/linux-test_git.bb

Configuration files are fetched as intended:

$ ls build/tmp-glibc/work/test-oe-linux-gnueabi/linux-test/3.18.20-r0/
defconfig        linux-test-standard-build  recipe-sysroot-native test.cfg
license-destdir  recipe-sysroot               temp


I've followed instructions from 
https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#creating-a-defconfig-file 
and 
https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#creating-config-fragments.

Am I doing something wrong here?

-- 
Pagarbiai,
Linux programuotojas
Kristupas Savickas
+370 633 36795


