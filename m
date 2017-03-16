Return-Path: <prvs=124832981c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 867CFE0098A; Wed, 15 Mar 2017 23:59:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C03E0094C
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 23:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489647577;
	l=1220; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=WHp0N8w7KzEI3EymegT6dggLZZdthO5o5hC+wesGPOI=;
	b=jXMqZ6g65s/OrzcjvDLooJLwH9NTaoFp/WO1F4uk9la6+nsVeKIghZuRYExXcwZ72G
	1+um/pYjtEENfGIc1MMJhxDiGMX2WtqN83chkCh/p5MCKrBOjX1hZjlsM4EWT/2OTKw1
	lIkMYuc3JOXuaHJGCRYQ7MCudM7YmJsnyx138=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id N09d86t2G6xZEmG
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 16 Mar 2017 07:59:35 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000510147.msg; Thu, 16 Mar 2017 07:59:18 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Thu, 16 Mar 2017 07:59:18 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=124832981c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: ravikiran j <ravikiran.j@mistralsolutions.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CALDHXtcQ6W_b8YtpsQyGNy+zx0ycDXEG9ADNmfu+TxKfVy2E2w@mail.gmail.com>
	<8b3bb2f6-aa5f-e369-2f6b-f28e8665edf7@rsi-elektrotechnik.de>
	<CALDHXtd=V3n9sn=Zr3m+2iiM5BQ4TBgQpnpEmnCP+YL=+3Jkrw@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <bcc7e3a0-bbf1-6310-1998-8a487aed6627@rsi-elektrotechnik.de>
Date: Thu, 16 Mar 2017 07:59:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALDHXtd=V3n9sn=Zr3m+2iiM5BQ4TBgQpnpEmnCP+YL=+3Jkrw@mail.gmail.com>
Subject: Re: ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs:
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
X-List-Received-Date: Thu, 16 Mar 2017 06:59:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Again, please keep your responses on the  list!

On 16.03.2017 07:52, ravikiran j wrote:
>
> Suppose if i want to install some packages from debian or ubuntu
> repositories,
> how can  i achieve that  using rpm or  ipk based distribution  ?

In short, not at all. This is not how things are meant to be. Just 
because something comes in a package of a specific format, it does not 
mean that you can use it everywhere the package management uses the same 
format.

The correct way is to write recipes for the things that you want and 
properly package them up using bitbake.

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


