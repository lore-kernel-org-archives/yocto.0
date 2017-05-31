Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBEACE00B81; Tue, 30 May 2017 18:16:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.63 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.86.89.63 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226F5E00B58
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1496193372; bh=xacRloirs3r/XlVas2tmySQXXTWT6QQ7+e8y
	K2jvOeo=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=L
	Pu4DV2EvVh2dfSGdiZloA4/8RSoKPoQrHEQfk7jHxJ2Hw7+u4wWK4p+aQI5f/ebaxQj
	xvCxr4BL7OoKXhro8JIPX31JDDU5NAQsE9ynYVcUD4znZNi2DGLF7i4g3f8pqkIc+W0
	h+5HAqhhzJV80C70VFiXhD1Nmd5eHuRZ6jTEICHVvJAuU+Av6HskhOv8gQMSEyvi7xl
	GhIoAqQxD8YLAzD/AeiIdUDFu950Nv9fy5vSIrRiIyqHpkywQFQm0Rw7i0X8vFhgjmL
	zcupMtV6+YWJu2mDlp81d+Hk1sd4DZR9xYPC8pQvy7e+1O0q0TspCYYWvTKAidLiSml
	r95vtQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=ULqUoR9RokAhsAVnyL26WXMCKSnUVa3++V1a8lp/9AGBWv4zez4vR9wlMPtH7dK8FlaSZp/V+DFD/YZEK4X144Mu4S0cFb4ge3lNvQZPo+XpnLrbWUCVvL60PBqL/yvqBl31AzeaR/+vBxlkWCe8MLfQWTzjexKU3JacuzT8ZWzAOIqpbmZsU2OssamzIaQGYHlRjamj4yZQ5bkSWa667QftaBU02DdxYWMBgCLFQdG59w1BesgUU8zEcKmprqoCjH4wsx5n/ADuCmNFKsTvg/ZYj3OHyCsGNv/HfrTDXZp9++Sxc7n3CEEf3IZMURNtq6zc7D04rd6FTKEaJSXbHQ==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dFsF8-0006Xd-NX
	for yocto@yoctoproject.org; Tue, 30 May 2017 21:16:10 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
In-Reply-To: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
Date: Tue, 30 May 2017 18:15:48 -0700
Message-ID: <6DDD0E6DF5E245EEBEE64A478C162BBD@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLYTEC+dhsmH1pLREW03Q6nGw/bpQBWAj+A
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688c5c1b73d53d979716f979e40bca1db33350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: Kernel config fragments ignored
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
X-List-Received-Date: Wed, 31 May 2017 01:16:40 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul D. DeRocco
> 
> I ported a working build from Fido to Morty, made a few 
> tweaks in response
> to error messages (mostly updating version numbers), but it's 
> not finding
> my kernel configuration fragments. This is supposed to be an i386 arch
> system, but it insists upon building an x86_64 kernel. The 
> .config file it
> generates does not include my configuration fragments, which contain
> things like CONFIG_64BIT=n and CONFIG_X86_32=y.

I'm still stumped by this, but I've debugged it further. My top level
chroma32-bsp-preempt-rt.scc file contains (among other things) the line

    include ktypes/preempt-rt/preempt-rt.scc nopatch

Building the kernel copies the following files into
tmp/work/chroma32_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah

    chroma32-bsp-user-config.cfg
    chroma32-bsp-user-features.scc (empty)

but it doesn't copy the following files anywhere

    chroma32-bsp-preempt-rt.scc
    chroma32-bsp.scc
    chroma32-bsp.cfg

so none of the values from either .cfg file appear in the resulting
.config file.

If I change the above line to

    include ktypes/standard/standard.scc nopatch

then tmp/work/chroma32_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah
contains

    chroma32-bsp-preempt-rt.scc
    chroma32-bsp-user-config.cfg
    chroma32-bsp-user-features.scc (empty)

and
tmp/work-shared/chroma32-bsp/kernel-source/.kernel-meta/configs/standard
contains

    chroma32-bsp.cfg
    chroma32-bsp-user-config.cfg

and everything in them is included in the .config file.

Both the preempt-rt.scc and standard.scc files pull in a lot of stuff, and
they are quite different from each other. What difference between the two
could account for my config fragments being ignored when I use the first
one?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


