Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D2C2E00CD4; Thu, 12 Oct 2017 20:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D941AE00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507866729; bh=hv0tctEgw2kL3AZDRWoz58AwWPsqcFxzN2lX
	OQDbLF0=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=a
	TY8caNLjfrhNJqFXrMDb+mLgF6VPhuOpW7sDV/cCon0QX2BHAoqgjpnaUoiXzXimUee
	1RUG+X8MPfXxZ6pLa9JiLIduU3RzafDPw5KICa7xd1I/FfoW2c7k23BYVaaqaYB+/vn
	uZs5GOGobdMtCHKxwEIqXXkG3qi6sv0ZZ96XNuh6Vw0B2wEMGH8cl+QBU1mLnOZlfu8
	nHsG2FaIS/m1jFjMjFsz5qQNYsm/HPAp2veQyV+r8I7jjXctCe2W/FzoFiTzePdI0hd
	DLH2ZH3Xj3yW2l772quMgkSTBc+qkcP+XBlmgxTeaLlTdpagzC34QD7P3+tPPimN6db
	EnRmKQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=Xq2Qb1c2yhrdqmFKdZEytakI3Ls0bVmsd4xsCyKuUe5eaEWpVQZtM4MC2v4dr9cKNI1uK+i4yLbHjFcIfA0QQU+sxLvmmToElN5QtfbsOpCnW05sxHs+j6wi5Osc4pfBfGdMeAB/Z4az8YL4c0m/obEEG51yOxDvO3UDHwQmhPD1vfylBgSG7Dglt2uWIq5VO5/98BKm2m5BtsPinDcAxkhF6UEFdspDd3cM3hkVwPsmvZ0lcp85dMhpXZIvwtwHf3GKvzDbAnl3grjdeHadjQvW6VepdwyCjxT69vBk0MTjNNUkHeORdVWpwltlEH7Fkh6Om8kTt1bB+bVvpa56FQ==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1e2r16-000Ehk-Jp; Thu, 12 Oct 2017 23:52:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
	<20171013033200.vkrdd6jiq2lqaooj@apollo>
In-Reply-To: <20171013033200.vkrdd6jiq2lqaooj@apollo>
Date: Thu, 12 Oct 2017 20:52:05 -0700
Message-ID: <88F50DD804AA49FF97B3133B16A414D3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdND09aDd65Z8iR3RE26LG+znhAdwgAAdIfQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882d17967778acd9cd6216033a3e3c85cc350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 03:52:10 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Khem Raj [mailto:raj.khem@gmail.com] 
> 
> You can apply the patch to all binutils variants, its fine. 
> Send a patch or if you
> want, file a ticket in bugzilla and we will take care.

Yocto's Bugzilla isn't recognizing my password, and when it says that it's
emailed me a password change message, it doesn't show up. However, the
four small patches are in the Sourceware binutils-gdb GIT repo, at the
link I mentioned:

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=39865a7f420ab4c
a4dec6ed27339618a5d5dc366

Just to verify, my binutils-crosssdk_%.bbappend file contains:

FILESEXTRAPATHS_prepend := "${THISDIR}/binutils:"

SRC_URI = "                         \
    file://gas_as.h.patch           \
    file://gas_ChangeLog.patch      \
    file://gas_input-scrub.c.patch  \
    file://gas_listing.c.patch      \
    "

and the patches from that Bugzilla page are in a binutils directory. The
errors I get indicate that the patches are being attempted, but aren't
matching up with any source files.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com



