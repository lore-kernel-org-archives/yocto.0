Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 172A6E00AFD; Tue, 22 Dec 2015 02:16:23 -0800 (PST)
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
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAC9BE0048C
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 02:16:17 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1aBJzL-0007Hf-Dl
	for yocto@yoctoproject.org; Tue, 22 Dec 2015 11:16:15 +0100
Received: from ppp-2-86-152-254.home.otenet.gr ([2.86.152.254])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 11:16:15 +0100
Received: from gmane by ppp-2-86-152-254.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 11:16:15 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 22 Dec 2015 12:15:55 +0200
Message-ID: <567922DB.8000202@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-152-254.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: CONFIG_LATENCYTOP fragment
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
X-List-Received-Date: Tue, 22 Dec 2015 10:16:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

That's what I currently use:

meta-yocto-bsp    = "heads/jethro:347347ad78c4c2502e83f2c2adff61f1ba8fed8b"
multi-v7-ml       =
"heads/jethro-training-v4.1.x:e297c4f7c1baf38faecd6a2fcaa4cab0acea7dc1"

The idea is to use a stable kernel + multi_v7_defconfig and add to this
patches/configuration fragments.

I can add like this ikconfig, oprofile, posix_mqueues[0], but I don't
manage to get CONFIG_LATENCYTOP on top of multi_v7_defconfig.

In order to produce the config fragments I do:

bitbake linux-yocto-custom -c menuconfig

There I do my adjustments (disable SMP and enable LATENCYTOP)

bitbake linux-yocto-custom -c diffconfig, which spits out a
configuration fragment[1]

I did a new KTYPE[2][3] which seems to be picked up:

cat log.do_patch
DEBUG: Executing shell function do_patch
[INFO] validating against known patches  (multi-v7-ml-not-smp-deb-meta)
   mark --> multi-v7-ml-not-smp-deb.scc
   mark --> not-smp-deb.scc
   mark --> latencytop.scc
   mark <-- latencytop.scc
   mark <-- not-smp-deb.scc
   mark <-- multi-v7-ml-not-smp-deb.scc
   mark --> patch_marker.scc
   mark <-- patch_marker.scc
   mark -->
gen_tmpyocto-autobuilderyocto-autobuilderyocto-workercustom-jethro-multi-v7-core-image-minimal-sato-sdk-adtbuildbuildtmpworkmulti_v7_ml-poky-linux-gnueabilinux-yocto-custom4.4-rc5-custom-ml-not-smp-deb+gitAUTOINC+9f9499ae8e-r0_desc.scc
   mark <--
gen_tmpyocto-autobuilderyocto-autobuilderyocto-workercustom-jethro-multi-v7-core-image-minimal-sato-sdk-adtbuildbuildtmpworkmulti_v7_ml-poky-linux-gnueabilinux-yocto-custom4.4-rc5-custom-ml-not-smp-deb+gitAUTOINC+9f9499ae8e-r0_desc.scc
   mark --> multi-v7-ml-user-patches.scc
   mark <-- multi-v7-ml-user-patches.scc

<=== processed .meta/cfg/scratch/multi-v7-ml-not-smp-deb-meta in 0 seconds
DEBUG: Shell function do_patch finished

... but SMP is still on.

What's the trick?

Regards,

Robert

[0]
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-base/features

[1]
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-base/features/latencytop

[2]
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-base/ktypes/not-smp-deb

[3]
https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-common/bsp/multi-v7-ml/multi-v7-ml-not-smp-deb.scc..."Software
is like sex, it's better when it's free"

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



