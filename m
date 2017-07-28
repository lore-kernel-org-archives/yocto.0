Return-Path: <prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCCC0E00D05; Thu, 27 Jul 2017 23:22:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2897E00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501222964;
	l=1058; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=2UxmuUHAtvF+LHl7WmtSVXaYIBfT3S7rpPsTXUrdJEc=;
	b=Jl+HicjBE5jvohxC6PUnQRZC/1CNlR81EHt+DlYC+4QuTi0KoMcEBWx2GpVxytH7TT
	tIb+vYtRv/LKfsNLuBJfEwh9vJW8vwfIUuxcY1JChhRPj1HAy6tFpI2KwCNO02TtU+lL
	BUFmdz+3l/vNrD7PuvPMxkf7MKaMmxWFvWX9k=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id R01943t6S6Mh1cp
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 28 Jul 2017 08:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501222949; x=1501827749;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=2UxmuUHAtvF+LHl7WmtSVXaYIBfT3S7rpP
	sTXUrdJEc=; b=mZYtI0mamtR1HOo6vGwTwy1ck/ay+f9DKEs29pmCR05ti/ByMn
	3KA+zX4/eAh95Irvb4g1lFvSnUz22g1bPCBAVmBH7oZhPZ1napfmBKcnzh/n2sse
	NFog5Mr5kYJzYBwHMW+d/AcaD80JayM4iPvh9x62stve4rtMlrzSsnLAs=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000546724.msg; Fri, 28 Jul 2017 08:22:29 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Fri, 28 Jul 2017 08:22:29 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
Date: Fri, 28 Jul 2017 08:22:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 06:22:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 28.07.2017 08:17, Riko Ho wrote:
> icecc.bbclass  on Yocto manual, but I'm not sure on how to use it yet ?

to me, the description in

https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake

looks pretty good - for the bitbake side of things. Setting up icecc, 
again, is distribution specific (according to themselves, see 
https://github.com/icecc/icecream/blob/master/README.md#installation).
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


