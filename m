Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECE6CE00E78; Sun, 26 Jun 2016 01:47:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD815E00E71
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 01:47:22 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160626084721059_0484
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 08:47:21 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=54136 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bH5kU-0005gn-VX
	for yocto@yoctoproject.org; Sun, 26 Jun 2016 04:49:03 -0400
Date: Sun, 26 Jun 2016 04:46:30 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1606260425270.21008@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: a couple notes/questions on UBOOT_CONFIG
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
X-List-Received-Date: Sun, 26 Jun 2016 08:47:27 -0000
Content-Type: text/plain; charset=US-ASCII


  fresh off perusing the variable glossary for this variable:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-UBOOT_CONFIG

and the uboot-config.bbclass file, some observations.

  first, the variable glossary *strongly* suggests that the default
value is a single value only, and i quote:

 "Following is an example from the meta-fsl-arm layer.

     UBOOT_CONFIG ??= "sd"
... snip ...
In this example, "sd" is selected as the configuration of the possible
                                     ^^^
four for the UBOOT_MACHINE."

  i'm assuming that should have read "is selected as the *default*
configuration", but it's also true that the default can be a multitude
of values, which is not at all obvious from that explanation. A small
set of examples:

meta-fsl-ppc/conf/machine/p5020ds-64b.conf:UBOOT_CONFIG ??= "nand secure-boot sdcard spi nor"
meta-fsl-ppc/conf/machine/p5040ds.conf:UBOOT_CONFIG ??= "nand secure-boot sdcard spi nor"
meta-fsl-ppc/conf/machine/p4080ds.conf:UBOOT_CONFIG ??= "secure-boot sdcard spi nor"
meta-fsl-ppc/conf/machine/c293pcie.conf:UBOOT_CONFIG ??= "spi secboot spi-secboot nor"
meta-fsl-ppc/conf/machine/p5040ds-64b.conf:UBOOT_CONFIG ??= "nand secure-boot sdcard spi nor"

so it might be worth extending the explanation in the glossary to make
that clear (and even throw in an example or two).

  next, from uboot-config.bbclass, we read:

    # Handle U-Boot config for a machine
    #
    # The format to specify it, in the machine, is:
    #
    # UBOOT_CONFIG ??= <default>
    # UBOOT_CONFIG[foo] = "config,images"
    ... snip ...

again, no hint that the default can be more than one value, and also,
since "images" is optional, should that next line not read:

    # UBOOT_CONFIG[foo] = "config[,images]"

also related to that, can you really have *multiple* images listed
there after the config value? if so, it would appear they would need
to be space-separated given the "split()" operation in that class
file. however, i have yet to run across a single example of the form:

  UBOOT_CONFIG[foo] = "config,image1 image2 image3 ..."

does an example like that exist? is it supported?

  finally, the variable glosssary reads:

"The "sd" configuration defines "mx6qsabreauto_config" as the value
for UBOOT_MACHINE, while the "sdcard" specifies the IMAGE_FSTYPES to
use for the U-boot image."

  but doesn't that define the image type(s) that will be *appended* to
the current value of IMAGE_FSTYPES? if you look toward the bottom of
uboot-config.bbclass, you see:

   # IMAGE_FSTYPES appending
   if len(items) > 1 and items[1]:
       bb.debug(1, "Appending '%s' to IMAGE_FSTYPES." % items[1])
       d.appendVar('IMAGE_FSTYPES', ' ' + items[1])

my python is not great, but that certainly suggests that values are
being *appended* to whatever is already in IMAGE_FSTYPES, despite what
one reads in the glossary. or am i misreading that?

  oh, and one last bit of nitpicky pedantry, right at the bottom of
the uboot-config.bbclass file:

  elif len(ubootconfig) == 0:
     raise bb.parse.SkipPackage('You must set a default in UBOOT_CONFIG.')

is there really any need to test if that value is "== 0"? given the
earlier test of "if len(ubootconfig) > 0:", i would think a simple
"else" would suffice there, no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


