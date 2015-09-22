Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D347BE00CD3; Tue, 22 Sep 2015 10:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.69 listed in list.dnswl.org]
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3926DE00C9D
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 10:45:16 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=V+ArMdWsEGuzfFxbznuTDNFibtltm36W3BwQbrX42QYl/tKK/QGq7aaSJHIRAwWn;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZeRcs-0007uW-AC; Tue, 22 Sep 2015 13:45:10 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Mantas Mikulenas'" <grawity@gmail.com>,
	<yocto@yoctoproject.org>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
In-Reply-To: <CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
Date: Tue, 22 Sep 2015 10:45:13 -0700
Message-ID: <DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdD07JOgxjxVizetTnuI7JjPXGw5QAAcbW9g
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606886dde2baf376ad5f883a1373c17107de7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Tue, 22 Sep 2015 17:45:18 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mantas Mikulenas [mailto:grawity@gmail.com] 
> 
> > I don't think there's any way to have something auto-unmount
> 
> There certainly is - udev has been unmounting unplugged 
> drives for many years. It's done by default.

If creating a udev mount rule automatically does the unmount, then the
simplest thing for me would probably be to do that, and have my
application do a sync after each user-initiated operation. That way, the
drive would remain mounted after the operation, so I could still poke
around on it while debugging, yet there would be no corruption when it's
removed. Thanks for the tip.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


