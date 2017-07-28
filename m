Return-Path: <prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 542CEE00D05; Thu, 27 Jul 2017 23:36:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.219 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B66E00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501223813;
	l=1035; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=oe4GlwCvMGT99jrVfpflO3wg13snSwhUv05au8ImwxE=;
	b=K5vXwC+YeBpXjsnZy4hdZ8bivyakvh/lZjCNUbH0N5lXPYhhPiZLIwqdnU9u+Haw3p
	uVQanIGYpDXIR9NmUybb4t4bgX+b96z0SoEJjqfHDJnQX+sMDur/NUd9XmVBd1xckNeB
	l2uvjQWqmQw6PEHwymm69l2wYajzlbXJUgVz0=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id Y04492t6S6aqRjQ
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 28 Jul 2017 08:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501223800; x=1501828600;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=oe4GlwCvMGT99jrVfpflO3wg13snSwhUv0
	5au8ImwxE=; b=qtoXmyQF2x9MogbFP8uQvkUVahNcXSm59VERdoU5l2skgx5fAg
	r/juJnhQdQj91qOZ9ulORJRRxaV6oyrGPy3bHlIrC5sBPf6Oy1HlXxgW3Eif+NFC
	Nyxryx0EGVlgQ7bOQAj6mRnbj1Oba4Dvm8RSxbk6Q6OAG6ocJAVAO0rhg=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000546732.msg; Fri, 28 Jul 2017 08:36:39 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Fri, 28 Jul 2017 08:36:39 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
Date: Fri, 28 Jul 2017 08:36:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
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
X-List-Received-Date: Fri, 28 Jul 2017 06:36:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 28.07.2017 08:30, Riko Ho wrote:
> but have no idea on how to use it yet ?

This usually is helped by reading the manual. Or the links that I 
already provided.

As a last hint for now, let me rephrase and simplify the short 
description from icecc itself:

icecc is a daemon that can accept compile jobs over the network.

That should tell you that you probably don't use it directly, right?
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


