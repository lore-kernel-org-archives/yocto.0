Return-Path: <prvs=1616711a88=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D001E00B30; Mon, 19 Mar 2018 13:40:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.162 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A5B5E0070F
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 13:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1521492054;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:References:
	Message-ID:Subject:Cc:To:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=ihO4Du7MfFNocwgK9etMsjW6K6pPfYT+Eq4w4qK1PWE=;
	b=Lo6iHnAJlQm7Lqy/6SUZXfunzvCuHXrE2M8i1ZRR6TbaaOrXy+xLNdmB71btH/qtRZ
	rVlMjrYWdvujUhp1V67LQa+qh0VhcGrUcf0dReEPjKKirOSdFJgQvA4942dKG8U4I6u1
	+VSLLj1i8Thtw90eI7H9LfcheMHee9sky073ZQoPeV9AgFWLat/4VB3ucQJDx7vwLqUn
	fVbag1FugHI5aOF6Olt+Ci5EXimCLJmamZWqSKlMrStq6ebKelCYJglopqVYM1andqsF
	S14Xu+rI6ZV39VAS0KoUPa+635RYTeg+OH/vNnkfVBg2NggHoXURa58a4MUdGFRlS4V4
	IHaQ==
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 42.18 AUTH)
	with ESMTPSA id U05045u2JKer4kQ
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 19 Mar 2018 21:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1521492052; x=1522096852;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=ihO4Du7MfFNocwgK9etMsjW6K6pPfYT+Eq4w4qK1PWE=; b=d
	a7GY3/g8dbcPfZYgfUHzTPKAJasMRD5uf1mEP74vKQGeCGHCC8qvdN9lyym4wvvi
	svMW4jptJExH4ZmMWI3hhx2Nu+MdpMmm37JmfSDTYXImCR9G4Rvu8k474lX4MKPf
	j7BypKsfEXrTbpCnxdbVmwTxpGkpkKX3GgQn0fwJ+c=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.2) with ESMTPSA id
	md50000053744.msg; Mon, 19 Mar 2018 21:40:51 +0100
X-MDRemoteIP: 178.27.6.117
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Mon, 19 Mar 2018 21:40:51 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1616711a88=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Mon, 19 Mar 2018 21:40:39 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Message-ID: <20180319204039.uq4qu5v7aeiqxihw@jholzmayr.localdomain>
References: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
User-Agent: NeoMutt/20180223
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Quick hack for compiling old and outdated YOCTO Jethro for Renesas iwg20m
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
X-List-Received-Date: Mon, 19 Mar 2018 20:40:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!
On Mon, Mar 19, 2018 at 05:38:47PM +0100, Zoran Stojsavljevic wrote:
> [vuser@localhost conf]$ bitbake core-image-minimal
> WARNING: Host distribution "Fedora-27" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> 
> My question is: does anybody know quick hack how to fix this error?

The first, simplest and most obvious would be to try and build with a
supported distro. Just fire up some generic debian/ubuntu docker and see
what happens.

Greetz
-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


