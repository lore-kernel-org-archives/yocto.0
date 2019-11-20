Return-Path: <prvs=122751752e=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E52E00E25; Tue, 19 Nov 2019 23:29:59 -0800 (PST)
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
	*      [85.215.255.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de
	[85.215.255.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EBBEE00E17
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 23:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574234994;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=VjZrATACjy05laptc9dKY4qmRscIvOEAvtiQ/xgkCQ8=;
	b=TISOvkMMQitPemsF7CTe513uo7+EXsjOYLAAttNIRJKD8hK74lAl8NSQderaOM5B88
	fcCXH5mzxQns4H/Gw/oKdE6diJEhJNwDOeA8m93gJj+nh1ETEAROCk55Xmfql1GD7LsB
	4pefaJ1NQ8SUgmiv1E+YwZXfuh6h0+UM4HR+TZ3gPCkNElf09q/kG3r7+8Lv5R39aiz3
	oVbGnKZDhQnA164Z4AHcl5cJkD90mXkw/2BvdsUIFbJKhsyQq7xRog6MxIhJzAUtfhsV
	pFVKUDIu4gcqjSWXgdOMpWTwlIzoKOt3SiLHX+T/iF43T/x684w+CXuUeFNjdU2ueCoO
	+rTg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.29.0 AUTH)
	with ESMTPSA id 6029d5vAK7TrB9t
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 20 Nov 2019 08:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574234993; x=1574839793;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=Vj
	ZrATACjy05laptc9dKY4qmRscIvOEAvtiQ/xgkCQ8=; b=DC70wKRI/dEJ/hJJMf
	wG3FhzqQ1ssHSCxLaiu2bxLkGT5qEOTDFndxkI8CX9Bb94gqZwx9OCoqIjA+5yZz
	4jCS4ielX3PmlFVKnTUmyBJ1q1szPWE3LHPUM1RWf0bSLQBNrfgJRIx2JBVsgAmV
	b3hnf7N3OrCRU9uU2va8UgJqY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id
	md50000219787.msg; Wed, 20 Nov 2019 08:29:53 +0100
X-MDArrival-Date: Wed, 20 Nov 2019 08:29:53 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=122751752e=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Wed, 20 Nov 2019 08:29:50 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: "Oriya, Raxesh" <Raxeshkumar.Oriya@ncr.com>
Message-ID: <20191120072950.tiyqxoqrdtvnorko@jholzmayr.localdomain>
References: <CY4PR15MB18781274173A1FD5FA1540DAFD4F0@CY4PR15MB1878.namprd15.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CY4PR15MB18781274173A1FD5FA1540DAFD4F0@CY4PR15MB1878.namprd15.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Device is unable to BOOT or INSTALL with generated .hddimg
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
X-List-Received-Date: Wed, 20 Nov 2019 07:30:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

As the question was almost simultaneously cross-posted on stackoverflow,
see answer there:

https://stackoverflow.com/questions/58947276/device-is-unable-to-boot-or-install-with-generated-hddimg/58948913#58948913

Greetz

On Wed, Nov 20, 2019 at 06:40:35AM +0000, Oriya, Raxesh wrote:
> All,
> 
> I have device which has following configuration:
> 
> - Chipset architecture - `Intel NM10 express`
> - Processor - `Atom D2550 Dual Core`
> - Display - `DVI`
> - Volatile Memory - `2GB DDR3`
> - Storage - `16GB`
> 
> **Objective**: Device should run yocto embededded OS successfully
> 
> What I have done,
> 
> - Downloaded three required yocto layers for warrior branch i.e. 1. poky 2. meta-openembedded 3. meta-intel
> - Modified `local.conf` with `MACHINE ??= "intel-core2-32"`
> - Ran `source poky/oe-init-build-env`
> - Generated `.hddimg` by bitbake `core-image-minimal`
> - Flashed `.hddimg` to thumb drive through `dd` command
> 
> Attached thumb drive to device and I could see BOOT and INSTALL option, upon clicking any of them nothing happens(not even logs) i.e. Blank screen
> 
> Troubleshooting I tried out are,
> 
> 1. Tried to boot `lubuntu` and it was successful
> 2. Replaced kernel & initrd of `lubuntu` with yocto's one and booting was successful which indicates there is no issue with kernel or initrd in `.hddimg` generated by yocto
> 3. Tried some experiment with `syslinux` as well but didn't work out
> 
> Regards,
> Raxesh
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


