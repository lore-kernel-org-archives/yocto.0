Return-Path: <prvs=127462cf9a=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 528B3E00AF0; Tue, 11 Apr 2017 05:56:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA6A0E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 05:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1491915361;
	l=1029; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=89x4tQO8PiZp8G/TmXAQx8yFWLFUdIe0+EaNZbzOqLI=;
	b=tqPbGkcE53y1lYoIeUX4Tbe5q77Fs7o0UwFkkdcgGth6Tg673R7BFYeg5gnw34VFL9
	+d2DfaEOkQxy9VkDc6FIIKE6s7RFOc6+8bsLZKrYsEL0bJDEs6/nAfC1Y6N3GWyGoB9n
	E5TRdWEXRtsmX7rdFDeLV38P2l2DBleVVewkw=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N26eC0MVrEDIlpLg0lWA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 40.4 AUTH)
	with ESMTPSA id 305800t3BCu0BI4
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 11 Apr 2017 14:56:00 +0200 (CEST)
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.0) with ESMTPSA id
	md50000517608.msg; Tue, 11 Apr 2017 14:55:28 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Tue, 11 Apr 2017 14:55:28 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=127462cf9a=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: "Maier, Chris" <C.Maier@geze.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2AA7D088591C49498E92D6491C58159334CCF142@gcxdb1.corp.geze.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <d1b547b8-70a1-bfe4-4aa0-dbb62a6af122@rsi-elektrotechnik.de>
Date: Tue, 11 Apr 2017 14:55:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCF142@gcxdb1.corp.geze.com>
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Tue, 11 Apr 2017 12:56:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 11.04.2017 08:48, Maier, Chris wrote:
 > Hi,
 > <snip> The usual question </snip>
 >
 > Chris
 >

*sigh*

I've tried to get in touch via non-list email (as for overly aggressive 
mail servers), and even called the company but you didn't pick up the 
phone. So Chris - if you ever read this: I really tried. Obviously 
there's no other choice than bluntly ignoring this topic.

Greetz,
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


