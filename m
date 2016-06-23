Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56424E00C29; Thu, 23 Jun 2016 03:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F094FE00C1D
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 03:42:22 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20160623104220494_0684
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 10:42:20 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=42150 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bG277-0002XG-MM
	for yocto@yoctoproject.org; Thu, 23 Jun 2016 06:44:01 -0400
Date: Thu, 23 Jun 2016 06:41:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1606230625380.5059@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: is there a recipe for building a ppc-based installer image?
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
X-List-Received-Date: Thu, 23 Jun 2016 10:42:26 -0000
Content-Type: text/plain; charset=US-ASCII


  i've been fighting with this for a few days, so i'm going to
describe what i'm *trying* to do, and if someone has a solution,
terrific; in the meantime, i'm going to ask specific questions about
particular recipe and class files, since i think i see all the
*pieces* i want, i just don't know how to put them together to *get*
what i want.

  the scenario: powerpc target board, for which we already have
working u-boot, kernel and rootfs, and which will have u-boot already
installed as the basis for further adventures.

  as i *see* it, what i want to do is (and i'm willing to be
corrected) build a basic kernel with an integrated initramfs that is
loaded with installation utilities (fdisk, parted, mkfs, etc, etc.),
and whose job it is to then fetch (from somewhere) the installable
contents and load up the hard drive, then maybe use fw_setenv to tweak
the u-boot env variables, and reboot to the full system. make sense
so far?

  also, since it's ppc and u-boot, there's nothing grub or EFI related
i will need, correct?

  finally, i'd love to be able to test this on a qemuppc image first,
so if there's a quick way to build a recipe that does this for
qemuppc, that would be ducky.

  as i see it, there are a number of images under both recipes-core
and recipes-extended (those "testmaster" images) i've been looking at
that seem to be relevant, but i've yet to find a combination that
works.

  so i'm going to leave this very general description of what i'm
after here, and follow up with more specific questions about some of
those recipes, and about qemu sessions. and if someone already has a
pointer to do all this, well, we're done.

rday

p.s. if i can get a general solution to this that is not written up
elsewhere, i will be delighted to write it up for public consumption
so everyone else can take advantage.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


