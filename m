Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C365E00A16; Sat, 10 Jun 2017 02:50:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41807E00992
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 02:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497088211; bh=fwVLv8S1MmxAsOdk4YN1g0uOoW0MoOihslZ0
	TOr0XfY=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=U
	gGCFKMugyxOG0NpYIP9f1h+KcEYe6ZSRopA4j/BL1vNCyd1zNNDmVYl9d4B3tk9Kkkw
	NDRGQ44eP58r0yNX7QjqOlgDBIULJBNxeNXmMg7uTMjSNhavNMNixBZPrhFdHYLeWHY
	G68vXfEsKwdXHk66+4FXRU/F23u08ipe1Dig2hhQdy3HqpdyHZ79nCL1xr3u0GeQjcg
	04GdipNiFuXb44JmOfDRBIyE4YNzolv3e6ztPH1A1Z5zAe8kgkFuUTT/Fb/ujwU+5pn
	0rRJB3WeEqiq/a4QhCLOrE6+wisFaTai3ubQpEWrOGyPOPZhE4SJuinONTbonN+9sZO
	i87c+w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=sUlGMlLbASM6FYNGbN233Q0TtApcEET+AY2YNO3GcdwLJOy/Hzb05lnjVajGS2RHLh2oMkG2cmeynQRDjJY7ZGa3TEbSripBLapuudgBdJbdAfHvLOygLUlaXa9nPWi7OTZOzmZbbz6Icq6jAQT7HPNzW7vcXOxsHR//HM7p+SQSO0pkb4SKx+SsJ6pJpDj15ST9+pMOeYh/qbrdcKNLkz+Z9fhWdFkoVLQONIczxQvCc1RfIZYxUZMqLA3/xkEn75pPUdXbcrcDfhkcZggbbcNm97rFi1R0Ym5wgWGHI5fN5a5s2ITV9rld/o4NSPGInO4o88GymDFu+ztaCA4dAg==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dJd21-0004j1-Oj
	for yocto@yoctoproject.org; Sat, 10 Jun 2017 05:50:09 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <97A3C40DC2EB4BC999E951064A2B4BF6@PAULD>
In-Reply-To: <97A3C40DC2EB4BC999E951064A2B4BF6@PAULD>
Date: Sat, 10 Jun 2017 02:50:12 -0700
Message-ID: <1D9E1FA2B1AD4BAA9CE27CE0A685F204@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLeUWeXSAFbIXPQTdWRwjCESV9LiQDeZHnw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688776d07342ba958c4d915be484dfacb70350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: First attempt at x32 system: kernel panic
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
X-List-Received-Date: Sat, 10 Jun 2017 09:50:14 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm still struggling with getting a system running with the x32 tune. I
won't bother quoting my previous message, which didn't prompt any
suggestions anyway, since I have a clearer scenario to describe. I built
four systems (all with Morty):

1) I built core-image-minimal on a genericx86-64 machine, and it booted
fine.

2) I built a core-image-minimal with an x32 tune, and it spewed out a ton
of nonfatal bit size errors in grub-efi do_package_qa, but it booted fine.

3) I built a core-image-minimal with a realtime kernel (4.8), and got a
bunch of warning messages about inapplicable kernel config items that were
left out (all related to other architectures). When I booted it, the boot
process hung fairly early on, following "clocksource: Switched to
clocksource tsc", although I rather doubt there's anything wrong with the
TSC. There's also a "Waiting for removable media..." message a bit
earlier, which could be a clue.

4) I built a core-image-minimal with an x32 tune and a realtime kernel,
and got the grub errors plus the config warnings. When I booted it, I got
an immedate kernel panic, because it was unable to run init. The problem
is that the kernel compilation ignored the x32 tune, and builds a regular
64-bit rt kernel, while everything else (executables, shared libraries,
and loadable kernel modules) are 64-x32.

So the big question is this: is the x32 tune not supported on
yocto-kernel-rt 4.8? Or is this just some bug in the recipe, and I'm just
the first person to try running this combination?

The second smaller question is: am I selecting the rt kernel properly? I
put the following in my local.conf:

    PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
    PREFERRED_VERSION_linux-yocto-rt ?= "4.8%"

Then, I created a layer (included in bblayers.conf) that contained nothing
but a linux-yocto-rt_4.8.bbappend file containing

    COMPATIBLE_MACHINE = "genericx86-64"

Is this the right way to select an rt kernel for a machine that isn't
listed in the actual recipe (it only lists qemu* machines), or is there a
way to do this entirely from local.conf?

The third possibly unimportant question is: what can I do to get rid of
the grub errors and the config warnings?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


