Return-Path: <prvs=1255db6620=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 948CEE00A80; Thu, 23 Mar 2017 03:47:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91426E00A5C
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 03:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1490266024;
	l=1051; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=sTQEQwpN/GqZ6enYCodkOXACbdcF8mUtiuMi9LdSAJE=;
	b=BBYiTTaL26ZoWRvmIEP0wQEM1oTwg7av/NIogFnoeJmMXh5P0YgHxqs8/AD6k72g8z
	zryKGnPxPtg7D/ocdFlNSAyLSNlQUX+zcKCf6PgQ3OFjfX6XGtK/H9Jk/dn+yhttsZKd
	+9T0myY8f5VLSZ9/77LSgcEJncR4rKMgb9N+w=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N26eC0MVrEDIlpLg0lWA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 40.1 AUTH)
	with ESMTPSA id Y02060t2NAl3s4x
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 23 Mar 2017 11:47:03 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000512198.msg; Thu, 23 Mar 2017 11:46:32 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Thu, 23 Mar 2017 11:46:32 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1255db6620=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1703230632160.636@uk63952.mitel.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <4bfcdcad-cc32-33ff-d088-2fe627a86672@rsi-elektrotechnik.de>
Date: Thu, 23 Mar 2017 11:46:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703230632160.636@uk63952.mitel.com>
Subject: Re: should a BSP layer *really* ever need additional layers to be functional?
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
X-List-Received-Date: Thu, 23 Mar 2017 10:47:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 23.03.2017 11:35, Robert P. J. Day wrote:
>   i always thought that using nothing more than a BSP layer (plus, of
> course, the underlying OE layers) should allow you to get to the
> command line. is that not true?

I don't think that this generally holds true, as it would lead to 
significant duplication. Imagine a board based off something already in 
meta-ti or meta-intel. And maybe just needing a slightly modified 
bootloader.

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


