Return-Path: <gschmottlach@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19423E00894; Thu, 15 Jan 2015 13:51:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gschmottlach[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBEA5E00757
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 13:51:31 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id q107so326207qgd.1
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 13:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=56ZLw+lRjkYSYrcLH4RsnWnFthz9nBvfI5rWKb1sCKk=;
	b=l9XW6vTDKJPreHThKEHkNurTgtbRjz3ytY7TUKlEe2eXzeqiCyEt5jSgcAKEW9QsP1
	eEOQHT5Qyr0HOQYH07yWLo3qbYI+0B518ryqp0yFEEnkMW5bAJatJzui6C7tclYRn53j
	YndT052BfkrYlJgT41McULgaZhzS5bHr++7e0nhVsnYe0U/auZiH+8PhGibkEhqtQcm8
	9r9ftfNszXMV/rmZjh+3vUIPZYmC50jwku4q42B1nnK+lnaBWb77sOemhWJYWpheYLKC
	SfdO8aRYlTMINFswTMKIIW7AAzP0AwCFbCwRfk0GDxEm4ihS4j+WDHoAbh5wx+bCBTRw
	mAug==
MIME-Version: 1.0
X-Received: by 10.224.79.82 with SMTP id o18mr574284qak.3.1421358691310; Thu,
	15 Jan 2015 13:51:31 -0800 (PST)
Received: by 10.140.83.112 with HTTP; Thu, 15 Jan 2015 13:51:31 -0800 (PST)
Date: Thu, 15 Jan 2015 16:51:31 -0500
Message-ID: <CAMS2kBF4yfpHaa=WGuYJmq6_c3ApmH-p65b_=ozgwVwU3PT-jA@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto Kernel Module Workflow Question
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
X-List-Received-Date: Thu, 15 Jan 2015 21:51:35 -0000
Content-Type: text/plain; charset=UTF-8

I am developing a codec kernel driver/module for the BeagleBone Black
and have a question about the recommended work-flow for developing
this module in the context of the Yocto/poky environment. Currently
I'm working with the Daisy release using the meta-ti layer and the
linux-ti-staging_3.14 kernel sources.

The codec driver, at this point, is just an very minimal
implementation. It follows closely the instructions described here:

http://processors.wiki.ti.com/index.php/Sitara_Linux_SDK_Audio_DAC_Example

The work involves a dummy (platform independent) ALSA driver for the
DAC and then code modifications to the ALSA machine layer driver
(sound/soc/davinci/davinci-evm) and the BeagleBone Black device tree
to knit all of these pieces together.

There seems to be two approaches for developing the codec driver. The
first approach is to build the codec driver externally from the kernel
sources (e.g. as described in working with "out-of-tree" modules in
the Yocto Kernel Development Guide). With this model I can represent
the codec driver as a separate Yocto/Bitbake recipe and simply include
the resulting package in my target image.

Unfortunately, the codec driver also requires changes to the kernel
sources in the ALSA machine layer driver and device tree. My approach
here is the create a linux-ti-staging_3.14.bbappend file that contains
a series of patches to the kernel for the machine layer driver and
device tree. In this scenario, the kernel sources do *not* explicitly
know about this new codec since there are no changes to the
sound/soc/codec Makefile and associated Kconfig's that describe the
dependencies of the codec driver. This means of course that menuconfig
won't show the codec as a build-able option. So the ALSA machine
driver (davinci-evm) knows the name of the codec driver but nothing
more other than it's association with a particular device tree
configuration node (e.g. dtc_id). This may not be ideal for someone
configuring the kernel since this codec doesn't appear as an option
and the dependencies (as described in the Kconfig) are not clear.

The work-around, albeit clumsy, is to bundle the changes to the
Makefile/Kconfig's and the codec source itself as a set of patches
referenced from the linux-ti-staging_3.14.bbappend file. Now building
the kernel modules also builds the codec (e.g. no separate codec
Bitbake recipe is required).  This works but now my codec sources
exist as a "patch" and stored directly in the recipe. Assuming I want
to do iterative development with this module, every change to the
codec sources require me to update the codec "patch". Also, the codec
source must then effectively be version-controlled within the
*.bbappend recipe itself (as a *.patch file or possibly as a naked
codec.c that is copied into the destination kernel sources during the
patch step of bitbake).

Ideally, I'd like to maintain my codec driver outside of the kernel
tree (since it is not dependent on the BeagleBone Black) and just
maintain the *.bbappend to make the necessary platform-specific
machine-layer/device-tree patches. I want the codec to be built with
the kernel sources but not treated as a Yocto "out-of-tree" module. Is
there a way for the *.bbappend to fetch the codec sources from another
repo and place them in the kernel sound/soc/codecs directory before
the kernel is built? Can anyone suggest a better/alternative work-flow
that accommodates keeping the codec sources in a separate repo (much
like the "out-of-tree" modules) while allowing seamless integration
into the kernel sources. Fundamentally, I don't want the codec sources
to be version controlled directly *inside* the *.bbappend recipe as
either a patch or as a raw source file. Is there an alternative
work-flow that works better with Yocto?

Any feedback would be appreciated . . . thanks!

