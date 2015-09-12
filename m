Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B880AE00D3D; Fri, 11 Sep 2015 23:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Sep 2015 23:47:10 PDT
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD8CE00B8A
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 23:47:10 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=nbfCNtcStnV5+fXWqG1EKVMPHqorCG2Fbgf20BlcflWT5KZJFNwy/BSs7rAvgnst;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZaeZR-0007X1-8B
	for yocto@yoctoproject.org; Sat, 12 Sep 2015 02:45:57 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 11 Sep 2015 23:46:06 -0700
Message-ID: <53CF8C7A80E44F42ACF820953540069B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdDtJrLt7hnMKthDRsuTLFJKFEF1LQ==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884f444da55ddb19f03c509bd9e8846e3d350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Error in openssl during first stage do_rootfs
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
X-List-Received-Date: Sat, 12 Sep 2015 06:47:13 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

After two years away from Yocto-land, I've decided to go back into an old
project and upgrade it. I installed Fido (I formerly used Danny), made a
few changes to my old metadata (bumped up some package version numbers),
and created a new stripped down Atom-tuned i386 BSP using
yocto-kernel-rt_3.14. I've ploughed my way through a lot of errors, but
now I'm getting a fatal error I don't understand. It's still in the first
phase of the build, I believe. I've put the error log here:

    http://pderocco.dynip.com/junk/errors.txt

It's complaining about some version mismatch in openssl. The recipe is for
openssl 1.0.2d, but the error messages refer to libssl.so.1.0.0 and
libcrypto.so.1.0.0. It's complaining about a lack of a "link time
reference", and while I can imagine what that might mean, I don't know
what it actually is, why such a reference would or wouldn't exist, or what
to do about it. A half hour of Googling turned up bupkis. Is this an issue
with the recipe, with the upstream openssl package, or with something in
my system? Could it be because I have openssl 1.0.0 installed on my
system?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


