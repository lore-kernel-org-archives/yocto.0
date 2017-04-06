Return-Path: <prvs=1269c343de=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9171E00970; Thu,  6 Apr 2017 01:37:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B92E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 01:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1491467863;
	l=1934; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=z1nAQGc4nb00zY2CByItNAx9JDcCRdi7kmfyxGSKBhc=;
	b=qNKcLKM64bkE4W6qdS8xXHsD87eWsxSyLVTjv30cn5inBV2Oarz/U2UL+MaMi5YWeg
	KfBv+4lKmd+36AxfYAistNqTOBlLqAPCNcSxpQU5vHVc61GCVPQJaKEIw+wPUCcrMlWw
	GGABSqnzbhGIN1XxMSA21vi4/yDHiMm3kfJ0A=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq1PsMOrsgJUXn/sWrYFv/BbNIsEQ==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:185a:368e:af6c:cbea])
	by smtp.strato.de (RZmta 40.4 AUTH) with ESMTPSA id 30b4ect368bhzPr
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 6 Apr 2017 10:37:43 +0200 (CEST)
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.0) with ESMTPSA id
	md50000516322.msg; Thu, 06 Apr 2017 10:37:23 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Thu, 06 Apr 2017 10:37:23 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1269c343de=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: "Maier, Chris" <C.Maier@geze.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2AA7D088591C49498E92D6491C58159334CCE6D9@gcxdb1.corp.geze.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <dcbcedba-22b1-1747-a588-cb20f3370d6c@rsi-elektrotechnik.de>
Date: Thu, 6 Apr 2017 10:37:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCE6D9@gcxdb1.corp.geze.com>
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
X-List-Received-Date: Thu, 06 Apr 2017 08:37:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 06.04.2017 10:31, Maier, Chris wrote:
> Hi,
> 
> I want to create a deployable SD card image. My board (beaglebone based) 
> boots from SD card and runs a script which copies the rootfs.tar.bz2 to 
> the flash memory.
> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
> A rootfs in the rootfs, does that make sense?
> 
> Any help is appreciated.
> 
> Chris
> 	*i.A. **Chris Maier *
> *Software-Entwicklungsingenieur *
> 
> Phone: +49 7152 203 6741 | Fax: +49 7152 203 76741 | C.Maier@geze.com
> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg | www.geze.com
> 
> SAVE PAPER - THINK BEFORE YOU PRINT
> YouTube <https://www.youtube.com/user/BewegungmitSystem> Facebook 
> <https://de-de.facebook.com/pages/GEZE-GmbH/733688069983321> LinkedIn 
> <https://www.linkedin.com/company/geze-gmbh> Twitter 
> <https://twitter.com/geze_gmbh> Xing 
> <https://www.xing.com/companies/gezegmbh> 	Geschäftsführung: Brigitte 
> Vöster-Alber (Vorsitzende), Andrea Alexandra Alber, Marc Alber, Florian 
> Birkenmayer
> Vorsitzender des Aufsichtsrates: Prof. Dr. Dr. Ulli Arnold, Amtsgericht 
> Stuttgart HRB 250329, Tel: +49 7152 203 0
> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg, Germany
> 

Why are you asking the exact same question the third time now?

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


