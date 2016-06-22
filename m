Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF351E009C9; Wed, 22 Jun 2016 03:05:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C8EE008D2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 03:04:59 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160622100347824_0685
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 03:03:47 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=52328 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bFf2H-0006yH-4d
	for yocto@yoctoproject.org; Wed, 22 Jun 2016 06:05:29 -0400
Date: Wed, 22 Jun 2016 06:03:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1606220556090.21955@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: is there really an "INITRD_IMAGE" variable?
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
X-List-Received-Date: Wed, 22 Jun 2016 10:05:07 -0000
Content-Type: text/plain; charset=US-ASCII


  (asked about this on the OE list recently, but no response, so i'll
harass this list.)

  poking around initramfs content and recipes, and noticed this in the
latest poky checkout:

$ grep -rw INITRD_IMAGE *
documentation/ref-manual/ref-variables.xml:        <glossentry id='var-INITRD_IMAGE'><glossterm>INITRD_IMAGE</glossterm>
documentation/ref-manual/ref-variables.xml:                INITRD_IMAGE[doc] = "When building a "live" bootable image (i.e. when IMAGE_FSTYPES contains "live"), INITRD_IMAGE specifies the image recipe that should be built to provide the initial RAM disk image."
documentation/ref-manual/ref-variables.xml:                    contains "live"), <filename>INITRD_IMAGE</filename>
meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE = "core-image-testmaster-initramfs"
$

  so ... a bit of documentation on the alleged variable INITRD_IMAGE,
and a single assignment, and no usage.

  but if i drop the requirement that it be a word:

$ grep -r INITRD_IMAGE *
documentation/ref-manual/ref-variables.xml:        <glossentry id='var-INITRD_IMAGE'><glossterm>INITRD_IMAGE</glossterm>
documentation/ref-manual/ref-variables.xml:                INITRD_IMAGE[doc] = "When building a "live" bootable image (i.e. when IMAGE_FSTYPES contains "live"), INITRD_IMAGE specifies the image recipe that should be built to provide the initial RAM disk image."
documentation/ref-manual/ref-variables.xml:                    contains "live"), <filename>INITRD_IMAGE</filename>
meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE = "core-image-testmaster-initramfs"
meta/classes/image-vm.bbclass:# Using an initramfs is optional. Enable it by setting INITRD_IMAGE_VM.
meta/classes/image-vm.bbclass:INITRD_IMAGE_VM ?= ""
meta/classes/image-vm.bbclass:INITRD_VM ?= "${@'${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_VM}-${MACHINE}.cpio.gz' if '${INITRD_IMAGE_VM}' else ''}"
meta/classes/image-vm.bbclass:do_bootdirectdisk[depends] += "${@'${INITRD_IMAGE_VM}:do_image_complete' if '${INITRD_IMAGE_VM}' else ''}"
meta/classes/image-live.bbclass:INITRD_IMAGE_LIVE ?= "core-image-minimal-initramfs"
meta/classes/image-live.bbclass:INITRD_LIVE ?= "${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"
meta/classes/image-live.bbclass:    initrd_i = d.getVar('INITRD_IMAGE_LIVE', True)
meta/classes/image-live.bbclass:        bb.error('INITRD_IMAGE_LIVE %s cannot use image live, hddimg or iso.' % initrd_i)
$

suddenly, i see references to "INITRD_IMAGE_VM" and
"INITRD_IMAGE_LIVE". so is "INITRD_IMAGE" correct? i don't see how
that makes sense unless "VM" and "LIVE" are some weird form of
override.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


