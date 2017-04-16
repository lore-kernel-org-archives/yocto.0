Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EED7FE00524; Sun, 16 Apr 2017 18:07:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0007]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
X-Greylist: delayed 5068 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Apr 2017 18:07:38 PDT
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D331E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1492391259; bh=eHPTziK5pNu2NBfswbENsNded6yT/SX4Dgtr
	sN6D+xE=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=EO2OAsKeGJWOAMbDUJwJ3Lp
	wxeShK/WyLzDlW+Ut2MBt4Mkvv2PDwjgNRIKAuQzwumzvpZYv5bdKbvqb1ZPZcborsV
	tlNTHB+o+9c23oT6n20ZC/XFLloHBmKH6hhAX2qqWA6nnFNyNwJZjkLnLZglj/6hdTo
	w9kBTeodnbhheFeQOEOxcMU61Q9zTRe42xF+D8HhZWEeKkiBSOjcfK/hXGkm6o97PYZ
	jUadJ6XoBvdMywep9pMpWbooM/3F2D5XtRj5g1Q6GCK7uXZHIgmH1f16ib8OZv6EN1K
	le+IGoz2vsubUidemTTdWHNpIWJ2UVhI3XOeeKSNF+/i0egNMzA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=QZyY6tjFZ0P6QYuITTRj9wVX7aKqnXKmLckw/6gvXFRKzk3vPIxEvOODC21HcCn+PSpRmaGBRvoogV0SZrtzWN2iqPky06VSCg44sgk9ydgKwM0fTALwO5BHJRpQg7fX5uPOn/lLIfRGESKFO9LdvX9ga1N2L432UhXDz9cuZNthQUQTld+vH946RwqV+DxHSWQ7HGY6m7wH8LoyBb6U7DFIzLP+kmdwA97c1odz6GGkS7llqv3qLqvjl5ghakNij+Q8vG6QZlkJqPqINF43UJp4NiVQ4vhopobR8YamJDSPIAWwEhV2sEWqpJgmknfr/J01JdMazX1qcFDNduCiRA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1cztoz-0003HC-HT
	for yocto@yoctoproject.org; Sun, 16 Apr 2017 19:43:09 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 16 Apr 2017 16:43:09 -0700
Message-ID: <B92317128F384E2BAC28643061FC76E1@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdK3CzRpk0iuBCG9ThWexmphfIogkg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688406b4420a9b3cee05348d808649d1320350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Patch failures
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
X-List-Received-Date: Mon, 17 Apr 2017 01:07:43 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I'm trying to migrate an Atom-based build from Fido to Morty, and also
switch from 32-bit mode to x32. On a clean build, it gets about half way
through, and then suddenly coughs up a patch error. I've put blank lines
between the log lines so that the email word wrap won't be as confusing:

--

DEBUG: Executing shell function do_patch

(1/660) ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch

[INFO]: check of
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
ule-addresses-dur.patch with "git am" did not pass, trying reduced
context.

[INFO]: Context reduced git-am of
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
ule-addresses-dur.patch with "git am" did not work, trying "apply".

error: patch failed: arch/arm/mm/fault.c:448

error: arch/arm/mm/fault.c: patch does not apply

[ERROR]: Application of
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-
the-TLB-for-module-addresses-dur.patch failed.

         Patch needs to be refreshed. Sample resolution script:

             .git/rebase-apply/resolve_rejects

WARNING:
/home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/run.do_patch.3069
0:1 exit 1 from 'kgit-s2q --gen -v --patches .kernel-meta/'

ERROR: Function failed: do_patch (log file is located at
/home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/log.do_patch.3069
0)

--

If I start bitbake again, it detects a "fence", and proceeds a little
further. I can do it over and over again, and it keeps building more and
more, but this can't be right, can it? The strange thing is that the
patches are all about ARM, PowerPC, etc., which have nothing to do with my
system. Could this be some fundamental misconfiguration having to do with
my MACHINE? At the beginning of my local.conf, I have:

	MACHINE ?= "chroma-bsp"
	DEFAULTTUNE = "core2-64-x32"
	baselib = "libx32"

where chroma-bsp is defined in my own layer. My chroma-bsp.conf file
contains (among other things):

	PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
	PREFERRED_VERSION_linux-yocto-rt ?= "4.8%"
	require conf/machine/include/tune-atom.inc
	require conf/machine/include/x86-base.inc

I'm not really good at this. Does anyone see anything wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


