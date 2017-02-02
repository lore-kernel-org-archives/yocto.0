Return-Path: <prvs=12065cf1dc=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5122DE0097D; Thu,  2 Feb 2017 00:45:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 201 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Feb 2017 00:45:04 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D188E0082A
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 00:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1486025101;
	l=1899; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=zRmm619Yk7b/kWHam9Z182mCSBoWxaBcmB5utr59POs=;
	b=V6W2NqP4viW8fDOKR+FCwX9Kcde5pN0+rhbogzhrELWUuIEuEakep3V49XRFsGo9Z1
	bLWs1w9+yz+5YfTkfnWRHCRORfYOKCROLsgBqGaAH9Z0WQ9Mvqm0HQAP+qGuK1LylJc4
	bgpo3b9eF6LoCbeRtKuH7Y/jQ18r69483kN3c=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N26eC0MVrEDIlpLg0lWA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 39.12 AUTH)
	with ESMTPSA id z079a2t128fco8l
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Thu, 2 Feb 2017 09:41:38 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000497655.msg for <yocto@yoctoproject.org>;
	Thu, 02 Feb 2017 09:41:28 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Thu, 02 Feb 2017 09:41:28 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12065cf1dc=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@yoctoproject.org
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: yocto@yoctoproject.org
References: <OF4FB9DFFD.52F1E88C-ONC12580BB.002DEC1F-C12580BB.002E638E@esa-grimma.de>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <be87e205-7c37-1b72-d9a1-1828d85f2d27@rsi-elektrotechnik.de>
Date: Thu, 2 Feb 2017 09:41:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <OF4FB9DFFD.52F1E88C-ONC12580BB.002DEC1F-C12580BB.002E638E@esa-grimma.de>
Subject: Re: How to setup apt-get to work togehter with the packages build with yocto?
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
X-List-Received-Date: Thu, 02 Feb 2017 08:45:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

On 02.02.2017 09:26, S.Jaritz@esa-grimma.de wrote:
 > Hej
 >
 > I like to setup a central host for the packages build with yocto. The
 > goal is, that everyone can download the "new" packages from a server in
 > the local network. I am looking for a description how to archive that or
 > some tips to start from.

Basically, you want to create a package feed. The mega manual contains a 
lot of bits and pieces (start here: 
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#building-images-for-more-than-one-machine). 
AFAICS the most common (and therefore best tested) packaging mechanisms 
are rpm and ipk, so maybe start with those.

Also on a second note, you can look at what Angstrom does for example: 
it mainly is exactly what you want, an OE-based package feed.

 > This e-mail may contain confidential and/or privileged information. If
 > you are
 > not the intended recipient (or have received this e-mail in error) please
 > notify the sender immediately and destroy this e-mail. Any unauthorized
 > copying, disclosure or distribution of the material in this e-mail is
 > strictly
 > forbidden.

I hereby inform you that I will not destroy the email, and that I will 
copy, distribute and/or disclose any information that I have received 
just as I wish.

Greetz!

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

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


