Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B992E00A6B; Mon, 13 Mar 2017 06:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 481B4E00A5C
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:11:22 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170313131121100_0684
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:11:21 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=34913 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cnPkp-0008UA-7e
	for yocto@yoctoproject.org; Mon, 13 Mar 2017 09:11:15 -0400
Date: Mon, 13 Mar 2017 09:11:13 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: make[2]: *** No rule to make target 'fitImage'. Stop.
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
X-List-Received-Date: Mon, 13 Mar 2017 13:11:26 -0000
Content-Type: text/plain; charset=US-ASCII


  i'll start a new thread to focus on just this issue. again, building
core-image-minimal for mpc8315e-rdb, adding this to local.conf:

  INHERIT += "kernel-fitimage"             <-- do i need this line?
  KERNEL_IMAGETYPES_append = " fitImage"

anyway, run:

  $ bitbake virtual/kernel

and eventually get:

  make[2]: *** No rule to make target 'fitImage'.  Stop.

which makes sense since there is no such make target defined in the
kernel, but that shouldn't be happening since the image type of
"fitImage" should be mapped to "zImage" in kernel-fitimage.bbclass,
should it not?

python __anonymous () {
    kerneltypes = d.getVar('KERNEL_IMAGETYPES') or ""
    if 'fitImage' in kerneltypes.split():
        depends = d.getVar("DEPENDS")
        depends = "%s u-boot-mkimage-native dtc-native" % depends
        d.setVar("DEPENDS", depends)

        if d.getVar("UBOOT_ARCH") == "x86":
            replacementtype = "bzImage"
        else:
            replacementtype = "zImage"

        # Override KERNEL_IMAGETYPE_FOR_MAKE variable, which is internal
        # to kernel.bbclass . We have to override it, since we pack zImage
        # (at least for now) into the fitImage .
        typeformake = d.getVar("KERNEL_IMAGETYPE_FOR_MAKE") or ""
        if 'fitImage' in typeformake.split():
            d.setVar('KERNEL_IMAGETYPE_FOR_MAKE', typeformake.replace('fitImage', replacementtype))
        ... snip ...

isn't that snippet supposed to replace "fitImage" with "zImage" in
KERNEL_IMAGETYPE_FOR_MAKE? but if i dump with:

  $ bitbake -e virtual/kernel

i get:

  # $KERNEL_IMAGETYPES [3 operations]
  ... snip ...
  KERNEL_IMAGETYPES="uImage  fitImage"

and

  # $KERNEL_IMAGETYPE_FOR_MAKE
  #   set kernel.bbclass:48 [__anon_81__home_rpjday_oe_dist_layers_poky_meta_classes_kernel_bbclass]
  #     "uImage  fitImage"
  KERNEL_IMAGETYPE_FOR_MAKE="uImage  fitImage"

so "fitImage" is still there. shouldn't that have been replaced by
"zImage"? what am i overlooking here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


