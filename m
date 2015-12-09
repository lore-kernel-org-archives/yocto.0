Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E15E00978; Wed,  9 Dec 2015 12:43:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Dec 2015 12:43:51 PST
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A132E0033E
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 12:43:51 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1a6lLy-0005E7-T8
	for yocto@yoctoproject.org; Wed, 09 Dec 2015 21:28:47 +0100
Received: from ppp-2-86-164-152.home.otenet.gr ([2.86.164.152])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 21:28:46 +0100
Received: from gmane by ppp-2-86-164-152.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 21:28:46 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 09 Dec 2015 22:28:23 +0200
Message-ID: <56688EE7.4070103@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-164-152.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: in-tree defconfig
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
X-List-Received-Date: Wed, 09 Dec 2015 20:43:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

What I wanted to do is to start from an in-tree defconfig like
multi_v7_defconfig instead of a defconfig file in a kernel recipe (which
works).

Maybe we have a different definition of an in-tree defconfig file, but
what I mean is the output of make multi_v7_defconfig, I guess what you
mean is arch/arm/configs/multi_v7_defconfig without running make on it.

After stripping blank and commented lines and sorting everything the
difference is:

-rw-rw-r-- 1 student student 14K Dec  9 22:16
KBUILD_DEFCONFIG-stripped-1-sorted
-rw-rw-r-- 1 student student 42K Dec  9 22:14
make-multi_v7_defconfig-stripped-1-sorted

... and the stuff built with KBUILD_DEFCONFIG does not boot ...

So my question is:"Is there a way to tell the kernel build system to run
make multi_v7_defconfig and use this as a base configuration where
patches and configurations will be added later on?"

If so can you see anything I am obviously doing wrong?

I tried this:

# SRC_URI += " \
#         file://defconfig \
#         "

+# Let's try an in-tree defconfig:
#KERNEL_DEFCONFIG_multi-v7-ml ?= "multi_v7_defconfig"
KBUILD_DEFCONFIG_multi-v7-ml ?= "multi_v7_defconfig"

with the kernel recipe of my meta-layer[1]

That's the meta-layer[2].

Regards,

Robert

[1]
https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/linux-yocto-custom.inc
[2]
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.1.x/multi-v7-ml


..."What I look forward to is continued immaturity followed by death." -
Dave Barry

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



