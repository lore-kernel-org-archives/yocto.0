Return-Path: <prvs=122884c5ca=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22D96E00B0B; Thu, 21 Nov 2019 01:34:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [81.169.146.221 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 120FAE00852
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 01:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574328862;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=C9gmWzkkDvJzZu6qc4hPXaiKl/cb5i8mSgx6DJXLMb8=;
	b=H7cPMHpJGdL3QMwN47/QmEmYs5aQDQDaGLDpq8zZ5Mi5F/VTN40A5kD4GO/shsUeQ7
	TdHNY1lmRedsWZzvgLanfm3aFaho2ijz5ll72XUNK1OPBKU59OybzsEEfAVUGJqW8xh7
	s31gG1b+pSMwy+xqR6ixbgQwDPErCQpZbPI3iAR5RdV1eIgqeuQdHX/9eXZIORJ6BPDW
	3D/jyDmk/aMfF3QAmOr11m7XCPH6Ha/gqXL9DJF3//UfMyHdV22kNgEgxhk845vptm+q
	mq2N+QQs66WUV+yQC/3qYY0J+jlsBxcI7dx//8jwbrkZPyqa7oiosuPkIn/pnypTpUQt
	g5cw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.29.0 AUTH)
	with ESMTPSA id 6029d5vAL9YMFUR
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 21 Nov 2019 10:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574328861; x=1574933661;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=C9
	gmWzkkDvJzZu6qc4hPXaiKl/cb5i8mSgx6DJXLMb8=; b=kcdhlvLHi60VNwZl5G
	9FWbb55FOYbZICzf/26yVpYjSik75le9YP89b6ewhCXoO76MTFVdkSdX+74eCN04
	9nWmdLOrFrasBXo0XJUWvDTXOlMsXUf2pOUVLA8gGcclhFZv92JiidyxIEH+pW+p
	05Q8STjyKaTvQIdXXDTuEvDvg=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id
	md50000220311.msg; Thu, 21 Nov 2019 10:34:20 +0100
X-MDArrival-Date: Thu, 21 Nov 2019 10:34:20 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=122884c5ca=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 21 Nov 2019 10:34:17 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Richard Barrass <r.barrass@bassettelectronics.com>
Message-ID: <20191121093417.mgwdh7dxmdwz45gt@jholzmayr.localdomain>
References: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Is Yocto the right fit for my project?
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
X-List-Received-Date: Thu, 21 Nov 2019 09:34:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Wed, Nov 20, 2019 at 01:12:52PM +0000, Richard Barrass wrote:
> Hello,
> 
> I am a lead engineer on project where we run a well-known Linux distribution on-top of a SBC (Intel Quad Pentium processor based) driving a 27" display. We have a 32GB SSD to run from, which we partition with multiple EXT4 partitions to help with potential corruption mitigation if the device is switched off 'hard'.
> 
> But, with the well-known Linux distribution comes a lot of things we don't need, plus the potential ability to 'break' in to our application which is running full-screen.
> 
> We basically need
> 
> QT 5.12 runtime (our application)
> SSH
> OpenVPN
> Wifi
> Ethernet
> Modem (via Telit modem)
> USB-ACM
> USB-Memory stick
> 
> Is this something I should be looking to the yocto project for, or should I be looking at a more 'traditional' custom linux distro.

Certainly doable.

> 
> The only other aspect, is that we have future plans to cost reduce the application to be running on a Pi based, 10" display system ...

If thats a set goal, then it makes YP even more interesting for you.

> 
> Any thoughts and ideas would be appreciated.

Prepare for a steep learning curve and a lot of headshaking each time
you say "but I just want to". But you will be rewarded with an awesome
amount of control and power if you make it through.

Have a look at https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj
to get an idea how things work.

Greetz

> 
> Regards
> Richard
> 
> --
> Richard Barrass
> 
> [BassettElectronicSystemsLtd_Logo]
> Bassett Electronic Systems Ltd. Solutions under one roof.
> T: 01793 859974 E: r.barrass@bassettelectronics.com<mailto:r.barrass@bassettelectronics.com>
> Unit 23-25 Whitehill Industrial Estate, Whitehill Lane, Royal Wootton Bassett, Wiltshire, SN4 7DB
> 



> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


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


