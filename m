Return-Path: <prvs=1246e5721c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BD35E00A5C; Tue, 14 Mar 2017 02:54:53 -0700 (PDT)
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
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92769E0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 02:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489485277;
	l=1428; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=/zvH+YWWDssDwtMhqK5CnTnh3QrnXbEJrIyieZsl/xs=;
	b=DpHo+sYo0iLEScQIjlquN2G+ccRcNQu0RoFZJ/DkyQVJ8kNaGlgURQwUnI1ArgjqlU
	IZiEwnxyF3eew2INm+S8PmLL/H9Jq75P+6/EdwwrJiv3VKR8Kz/z6KXFc3bQG6DU+mq1
	d/MgHDk3NM91rgcJ0XDkj3JZ1zOG+LLINl4uo=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id k02e3et2E9sbbpI
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 14 Mar 2017 10:54:37 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000509487.msg; Tue, 14 Mar 2017 10:54:26 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Tue, 14 Mar 2017 10:54:26 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1246e5721c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: ravikiran j <ravikiran.j@mistralsolutions.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
	<44dd7195-b6a0-c64b-7c3d-75940ba45f53@rsi-elektrotechnik.de>
	<CALDHXtdUjvW=r_78=WZR8TjeuLO3w1X-F=1OOVr=8dVJRXTr-w@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <36ec1982-a56e-fc0e-ba2a-a65824ce3574@rsi-elektrotechnik.de>
Date: Tue, 14 Mar 2017 10:54:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALDHXtdUjvW=r_78=WZR8TjeuLO3w1X-F=1OOVr=8dVJRXTr-w@mail.gmail.com>
Subject: Re: core-image-minimal-xfce error
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
X-List-Received-Date: Tue, 14 Mar 2017 09:54:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Keep things on the list, please.

On 14.03.2017 10:49, ravikiran j wrote:
> The version of xfce-power-manager in the krogoth branch is 1.4.4, not
> 1.6.0. Probably you are mixing up the revisions.
>
> How You are telling that*The version of xfce-power-manager in the
> krogoth branch is 1.4.4  ?

By looking at:
http://git.openembedded.org/meta-openembedded/tree/meta-xfce/recipes-xfce/xfce4-power-manager?h=krogoth

>
> *
> Fixing a layer revision means i need to change the file
> xfce4-power-manager.1.6.0.bb <http://xfce4-power-manager.1.6.0.bb>
> extension from 1.6.0 to 1.4.4 ?
> *

No, it means that the checkouts of all layers you use (which obviously 
is at least meta-openembedded) have to match the version of poky that 
you use. Have a look at the branches.

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


