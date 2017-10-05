Return-Path: <prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8ADE00D87; Thu,  5 Oct 2017 12:09:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D87E4E00CB4
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 12:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1507230550;
	s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=mgXdfNiL2ezl1JGWIY7Ti0ZHIO5kMHTVnhO+TyI+o34=;
	b=dEiHR178ch0k6WkU4xRL2N6FSyF9lo9JfO4f6qmzQ+V5riFaVw56mh3EworeleN59Z
	QP6XkIEQzMfLWqI0VwWT8pasdAGiHKO8Q0IHVSgTImbC9aks8qjEJICnpPBFDiWKUTEA
	U4CUhH4f4t336T4PrIHUTngLFsJVYL4vXjNCc=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Ospt1k4KBZc70XImprNLhDMzFqr
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:3c4b:3794:af6c:cbea])
	by smtp.strato.de (RZmta 42.2 AUTH) with ESMTPSA id z0b696t95J99JZI
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 5 Oct 2017 21:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1507230538; x=1507835338;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=mgXdfNiL2ezl1JGWIY7Ti0ZHIO5kMHTVnh
	O+TyI+o34=; b=KAJhnUN7mFDLG0hZpyO1qcihLEOcst2RY1VCwMJT463RPx/g2F
	LEh54znDlTWzoRN+caSA7xc4Evj9SYFlni53ig9B1AbHgWywyPAxGiEx3/Fbch1T
	yIYDQW5orblXDOX4kT6YUxaMIGqh2C5/XK42WTmfex1xNT1UJVFVYQYAo=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.0) with ESMTPSA id
	md50000009199.msg; Thu, 05 Oct 2017 21:08:57 +0200
X-MDRemoteIP: 178.27.11.181
X-MDArrival-Date: Thu, 05 Oct 2017 21:08:57 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Mark Hieber <hieberm@gmail.com>, yocto@yoctoproject.org
References: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <3d1914b9-24b0-faca-647f-4efb926abe2d@rsi-elektrotechnik.de>
Date: Thu, 5 Oct 2017 21:08:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
Subject: Re: Adding support for yum in a yocto image
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
X-List-Received-Date: Thu, 05 Oct 2017 19:09:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi!

On 05.10.2017 20:30, Mark Hieber wrote:
> I am building a yocto image to run on a network device, and I need to 
> have yum installed in the image. Is this even possible?

Technically, yes. But you'll have to create the support for yourself. 
The currently supported frontend for RPM is dnf (which has replaced 
smart) and probably will not change very soon. So the more practical 
answer is: no, not really.

I would also
> like to have the epel-release repository available in my image.

Uhm. Be aware that your custom built distribution is *not* some kind of 
Fedora-Light. Its an entirely different distribution, and mixing in 
repositories from somewhere is most certainly disastrous - or do you 
think using that OpenSuse repo plays along nicely with your CentOS 
install? :-)

So if you want additional software that is not packaged yet as an 
OpenEmbedded recipe, the way to archieve that is writing the recipes. 
Plus, rolling your own package server if you want runtime package 
management, of course. But there already stuff prepared and should be 
easy to find in the docs.

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


