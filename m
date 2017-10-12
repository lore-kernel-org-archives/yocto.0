Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80FBDE00CC0; Wed, 11 Oct 2017 23:23:09 -0700 (PDT)
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
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B03B9E00CA6
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 23:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507789388; bh=3gSmbv9W53l6zNCkToBq8ern+vUUAPae5zZ0
	HGaY9Gg=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=o90AV2Aa41UptfLFwofrux8
	FU3IycNewEv0/Xo3+0CqlYoQXjDPZ5iJLxoYCPBqnGXg/nCmQasI7V6Lq1tg6znSFcs
	Uq4ydAtOhFLLkGXY5PItA8C1t10pR/eWWCrR833uCZIxY4Ou97zoMaGTqqurJtuXwNv
	vPU5FvqkMMxY4RTwkWMLoW+udRyr2gDPpKI/p4mY6HAnyuyKSFMxPzrZL3jcCBp4ggz
	jezUlI7SaeS6HWnwQ4N4oSCwsoVJDbeF9qLgpAA4haMsEULZOPh2LvvAp/34V3t/esG
	Untgsb2Osdr6n83+aq9n7HZbv64c+E4/ziK9tD6MkQgsJZiG0rA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=lu3ijvsDnGWBeli6Q69QMoN6MOcoGW94HxDOEnjMxauOlljsxMr1ZBZeZFoHv2uYcAHw9rnQZzkxTHH83GBx5u5osCNHcSYQJoEg5AAu9Q2sFgj5SlbSTW66CdQo4Y/ZNUsfyKDIKT1MWLWu+EyHWpQH9vqcYQvMMYXspL17Sbsgc9F+1kUjoU7XhetXa/JsGwEEL3pdRZ7VOKhT18oCMMHT00MuHnZ/jUNzQvovC2+qbg6HxUA5iZdLLYfjz8k6UffKxLeBtJW5BWeBoLMZKGsewdk9CMC9vjQOCGaq1eDN9S+tmS8CEYdrAo95Oc2ksoOFVGimBIT+2IKz5TLgdA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1e2Wtf-0004ms-9H
	for yocto@yoctoproject.org; Thu, 12 Oct 2017 02:23:07 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 11 Oct 2017 23:23:03 -0700
Message-ID: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdNDIo91RybcvaSHQsqlC1MIT5L0pQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ad6e2d25c9882590ba29a1369e7c8cca350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: How do I patch binutils for the SDK
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
X-List-Received-Date: Thu, 12 Oct 2017 06:23:09 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I found a bug in the GNU assembler that makes it produce corrupted
listings, reported it on sourceware bugzilla, and it has been fixed. Now
I'd like to take those small patches and apply them to the assembler that
winds up in the SDK. The patches are shown here:

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=39865a7f420ab4c
a4dec6ed27339618a5d5dc366

The only recipe I found in Pyro that seemed appropriate was
meta/recipes-devtools/binutils/binutils-crosssdk_2.28.bb, so I created a
binutils-crosssdk_%.bbappend in my layer with a FILESEXTRAPATHS_prepend
and a SRC_URI listing the patches, which I put into a binutils
subdirectory.

When I ran the populate_sdk task, the patches failed because they didn't
find the source files, which are supposed to be in a subdirectory called
gas.

So I'm wondering, is this the wrong recipe? Does something else build gas?
Or am I just doing this wrong? The workings of the build system are pretty
opaque and mysterious.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


