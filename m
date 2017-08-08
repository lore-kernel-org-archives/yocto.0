Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DACCE00C3D; Tue,  8 Aug 2017 09:46:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B55CDE00C31
	for <yocto@yoctoproject.org>; Tue,  8 Aug 2017 09:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1502210813; bh=WgRGLMxdTfa9O3z0feNNJadF2nVzitIkZuSO
	o0ZFS0s=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=K
	0z2M1cpwr0JrEHXXKng5L89L7ROeUXa6YP0PmkSrrNGND0JL0DK1rF4fhE+Ue/SwYFv
	9B9bAUMv5TCI7ezBt531JF+Qu5AgN4hFLrBX/qocMdXVrF0osCpiu/cUibFWBm/GdXK
	eoYXRrLFUTjLMCiTroKXMAb4HoQCHXVReP2FoKg3FX+IH77PrwKWw/HDSJ+5b+JugSP
	LtpiWO20s/d/uJDzRNCUX/l58RXTEDGx8GhGPlJsjp0c4sPRF4xtbPCcPEUKPvdMdsu
	hZ/kEqpX0qxPB1pJ6z941Ogz5b0NTsabqeh3xz5//zHGt7VXAsH2Sc0apjvQqPAaRdp
	TWU2BA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=bxvFaRfAOT0X+06MD9mI8ZOa7qKxR+G00kCuVx/ljFLTw/pmI8Tq6yVOwXbSqCqcMdfHyiOdSzZ08x58+b+Z492BlVQM90oyo3A1Vrkb2kLTugYLUDi11pZYYHfaE1H9sG4/2DYe7DIyKLn9W2xeh5LSreKwPaxd5FKdf9RuJf9bLw7KBp0TYWHfQW51dMo/stDDW3AUw62Ln6+zjT6beEnUxHsUTCI1CNZ9bo7tTypGu4YHVUwgYOZ4tFvNwnxN5tz81BDtcMuxUwfohUOJk9FoNPQWCaTQvBS5jfLra0N91qBF7XwIC9WDsuaSunrScN3Jj3v82JSxIvaUy5dXgQ==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=MONSTER)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1df7ee-000CBv-G4
	for yocto@yoctoproject.org; Tue, 08 Aug 2017 12:46:52 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <40ABFEA70B1D43BFB8C22B09930C7F63@MONSTER>
In-Reply-To: <40ABFEA70B1D43BFB8C22B09930C7F63@MONSTER>
Date: Tue, 8 Aug 2017 09:46:55 -0700
Message-ID: <B67CB36C48654F1AB3859EA5605CB4CB@MONSTER>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMOLTegbYy0zr5BSfSHmd9pP7+KtQCOAHJg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606887de32edea1e6f0a02146ecb4917725ae350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Re: Remote Eclipse debug setup
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
X-List-Received-Date: Tue, 08 Aug 2017 16:46:54 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul D. DeRocco
> 
> I'm trying to get remote Eclipse debugging working, between 
> Yocto Morty and Eclipse Mars. This is for an RPi3 using 
> systemd. I'm only trying to debug an application separately 
> compiled with the Yocto SDK toolchain, not to debug anything 
> in the Linux build.
> 
> In my local.conf, I first set EXTRA_IMAGE_FEATURES to 
> "debug-tweaks eclipse-debug", but it didn't give me the 
> necessary SSH daemon, so I added "ssh-server-openssh" as 
> well, but nothing is starting it. The only related systemd 
> unit is sshd.socket.
> 
> What is supposed to start sshd, so that Eclipse debugging can 
> work? And is there any other daemon I have to get running in 
> the target? The Yocto mega-manual didn't really spell it all out.

I'm getting nowhere on this. Is there some documentation that explains how
remote debugging from the Yocto plugin works, so that I can maybe figure out
what's going wrong? I'm not getting an SSH connection, and there's no sshd
running in the target. All the tutorials, including the Yocto docs and
various other vendors' explanations, tell you what to do and assume that it
will all work, but don't provide any clue as to what to do when it doesn't
work.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


