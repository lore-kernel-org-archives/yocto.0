Return-Path: <prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84E14E00D05; Thu, 27 Jul 2017 22:14:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39189E00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 22:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501218838;
	l=1035; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:Cc:To:Subject;
	bh=TO7KxECHoAQMLqlC5YYvXin1YJ8YQjFFoSzUEcHtHRQ=;
	b=yjV+9HM9iQXz1QXGRKN6Yz7rvm8EkKzStfYBBlh655jOxxSUECwhuu/umah1VV5KIg
	c8p4Gf2ctjXVtWZ75M2/vak3Ggla/afGrLlKVHnMhMaKl4+1okwDPnw4V7eFafHtdrht
	n4Q2FaKymf7PNX+IIWxRURGtlOCzbytpVgQW0=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id L06ad3t6S5DuT7B
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 28 Jul 2017 07:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501218823; x=1501823623;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:Cc:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=TO7KxECHoAQMLqlC5YYvXin1YJ8YQjFFoS
	zUEcHtHRQ=; b=J0S7iPvNPs+uiZr3aisRUDG7SWvGcar/Mtudz2oHcnDGE0QMI2
	7UFuw9zE8i3+qYZoA+2SlMeQumpYxzlVNIYZUdB+GUeDt/isjkQ1h6DgSWVR5wvr
	XOWdSSBeoHbrbR86BQ0yAWzdEULGQijaofd0T1jm0Bz7XcgKG6T8qHIhw=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000546688.msg; Fri, 28 Jul 2017 07:13:42 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Fri, 28 Jul 2017 07:13:42 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Manuel Geeler <geeler@identech.ch>, Khem Raj <raj.khem@gmail.com>
References: <2040571762.17271.1501166601217@ox1.tophost.ch>
	<CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
	<907836710.17581.1501171532604@ox1.tophost.ch>
	<CAMKF1srxzdd-ogoce-GVaeVxmAGoK0C09e8G7eg7h=H1ig3Sig@mail.gmail.com>
	<1754976.17734.1501174551143@ox1.tophost.ch>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <5405e920-c3a1-d32f-2f74-c7ab710f841f@rsi-elektrotechnik.de>
Date: Fri, 28 Jul 2017 07:13:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1754976.17734.1501174551143@ox1.tophost.ch>
Cc: yocto@yoctoproject.org
Subject: Re: Crosscompile packages (ipk) based on SDK
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
X-List-Received-Date: Fri, 28 Jul 2017 05:14:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 27.07.2017 18:55, Manuel Geeler wrote:
> I only got the standard SDK. Are the information I need for building my 
> own yocto installation matching the target somewhere hidden in the SDK?

Nope, the standard SDK is actually only little more than a compiler 
toolchain plus sysroot. You have to ask whomever supplied the hardware 
to you for proper build instructions respectively sources.

Greetz
-- 
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


