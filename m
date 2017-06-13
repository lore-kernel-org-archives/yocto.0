Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 329B9E00ACF; Tue, 13 Jun 2017 16:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34F35E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 16:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497396279; bh=dXlYTsrpXhtlaJ1hIUF3cuFE02sx2AbUVvTQ
	J0Lp5uE=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=RgeCPZHPx0m/hb78kYyKxnV
	3xuK3uDlzenzjKDmn4p+6o+iJdxDO0TsAgETrFSBEEJuqQfPwjaWTl5eZpROyHsWjaB
	mvpYlon1TJZAePWBKiI205LubdjGk8rA4+Af8XVM82mF1hg8TEQkVIWmH85HdpuqwJz
	4S3+IcFiKYRfV4RK7o7CFr/TobDpFdu9hZxUig1iqCc1WhO4cgVYt3g2d6tlhhhGS45
	ETip6OkL3UeYb5AfrNK4joA7Ojii6+QWoJ3zmQ2WnJpbwducrW5BDKTud+9qhlTHr+H
	A/RHDwoDCGgfanHIBCBEV/MJ+7C6sv3HlVm7lh+XpEb3EnBUKvA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=chPAwxddHUkR3BHCuQWBqL+2eTHsvUQm+dLKFg75cpvaLGUYozSSmmBRG6vUYZI9WSYhUfH2Bo2ZVwk0rM16Y7If3I3iEjRYR4TKIt4u/3slIwhDnOo8k5Mu3fVvQV7nGdMvGwSlFuNgzY8NEX3XiTipnR6v9qj8dDAA7M1zwivHd2AnmD+iwe7G4v41ikcIFgwPdWx+vQtQXaJ3e9rvt1X8UuKovcJoJRYrXqP4Ty1MLKrS+RVGVR1hTfhfiq9Dm6ttT3+CG8zIwTHHpa5GL1dAvx87OCsllYhCfbaInK+dWmUAxIKOMd/RhKy8ncHKNxq8Qd94FazF4NkY43D2Cg==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dKvAr-000Fuu-TH
	for yocto@yoctoproject.org; Tue, 13 Jun 2017 19:24:38 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 13 Jun 2017 16:24:38 -0700
Message-ID: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLknDoHM/AQOcQhQ7+450nhFomFag==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606888e636d48cf208c0d6709b35392dc3ef3350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Image lacks libraries needed by SDK
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
X-List-Received-Date: Tue, 13 Jun 2017 23:24:40 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I have a working system image for my 32-bit Atom-based hardware, based on
Morty. My application is a C++ program that runs as a systemd service.
I've always built the application outside Yocto, using the Eclipse CDT and
whatever GCC was on my Ubuntu system. It gets installed into my hardware
on a separate partition, but runs fine because my build host and target
are both x86 machines.

In order to try out the much more recent compiler in the Yocto SDK (and to
prepare for converting to a different architecture in the future), I built
a standard SDK by using do_populate_sdk on my image. I managed to modify
my project to use the toolchain and libraries in the sysroot in the SDK,
and it successfully produces an executable. But when I copy this into my
system, it barfs because there is no libstdc++.o (and perhaps other
libraries) on my system. And there is no libstdc++.a in the SDK.

Why would the SDK, built against a particular image, not include the same
shared libraries as that image? I noticed that when I built an SDK under
core-image-minimal, it didn't include libasound, but that was included
when I built it under my own image which includes ALSA. So it's obviously
paying attention to what's in the image. So is there some package I need
to include in my image to complete the set of libraries to match what's in
the SDK?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


