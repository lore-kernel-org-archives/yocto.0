Return-Path: <prvs=1494d358d7=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C263E00CFF; Fri, 17 Nov 2017 11:14:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.219 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BA6E00CEF
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 11:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1510946053;
	s=domk; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Subject:Cc:To:From:Date;
	bh=r23755s0f9tgGkXsVty8/yB+HLQibOPIB/J/RHVAHkI=;
	b=nv3Qjqpijk6HuMYFDqhMJ6lkxiyOq16m9Aw6eSN1OywLfsTF39+uu0aJQVWLvNmjbz
	o81rMrIOBluOODbElPlb5lE8f8PXMqfsTguwXE5wLlx11b23CrJLs16HJ+bKOIYUpe3X
	J3uitVIpgMzTLc3hjBwtJH3sHAlbcV4lL09zU=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Ox4tAEzehFWEFhgND+Y6+xCfvU=
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:427:1a03:af6c:cbea])
	by smtp.strato.de (RZmta 42.9 AUTH) with ESMTPSA id j0316etAHJECbIA
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 17 Nov 2017 20:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1510946042; x=1511550842;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=r23755s0f9tgGkXsVty8/yB+HLQibOPIB/J/RHVAHkI=; b=Z
	ftqUApjNnFJwlOS9m6QKmaVRMdcRVsMs82oWI+Qfwid7FQ1qnt9TzRseK1myOafU
	hrBrpWYEEryJ/kfKu6sUNcAaTy70RE+gJAuZTMyp99eoXg5XqRZPKn5QBrkMuQSV
	4z7uJ8z5GgNRf/BU3p6zPzjuRADmmtPWu2WsUjZ36o=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.1) with ESMTPSA id
	md50000020933.msg; Fri, 17 Nov 2017 20:13:59 +0100
X-MDRemoteIP: 178.27.8.166
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Fri, 17 Nov 2017 20:13:59 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1494d358d7=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Fri, 17 Nov 2017 21:13:21 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Message-ID: <20171117201321.f7yhocmoidei2574@jholzmayr.localdomain>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CAGAf8Lwj_dyL9uEcUxWZ+Y-HjV-gqwmbGD1JoNKLjDowxYz26Q@mail.gmail.com>
	<20171117141306.zqh2yoxz3f7ioyz4@jholzmayr.localdomain>
	<CAGAf8LzEv2eOBid6gR1Du6mJHb-c2xoB_h73005UfPHW3hEaSg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LzEv2eOBid6gR1Du6mJHb-c2xoB_h73005UfPHW3hEaSg@mail.gmail.com>
User-Agent: NeoMutt/20171013
Cc: yocto@yoctoproject.org
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Fri, 17 Nov 2017 19:14:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Nov 17, 2017 at 05:36:33PM +0100, Zoran Stojsavljevic wrote:
> Let me redefine the question? May I?

Of course you may.

> 
> What is the difference while building an IMAGE="core-image-minimal"
> using DISTRO="poky-tiny"
> versus building an IMAGE="core-image-minimal" using DISTRO="poky"?

If you look at http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky-tiny.conf
then everything is laid out nicely. Running throuhg the most important
parts:
- it includes poky.conf, so it directly derives from it -> it just
  modifies some parts
- it selects musl, not glibc
- it selects busybox init

There's some more tweaks around, but I think those are the major ones.
Just read the .conf for more details.

Greetz
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


