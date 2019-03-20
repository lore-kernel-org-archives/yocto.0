Return-Path: <prvs=19821c3e36=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CBBE009A0; Wed, 20 Mar 2019 05:36:06 -0700 (PDT)
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
	*      [85.215.255.22 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[85.215.255.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9F3E00950
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 05:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1553085361;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=sOFR3grnsYSxFQv6WXkeA9Q8tZm5wRC3WlWfW5RHmrU=;
	b=HXWeld9+vActsbgZXDrImX1h3a4V54KLIXP3eeQX5RrO8vNqNxhh4LKD6E2vVUphke
	FHgTLSAyrQCn7ujNnRIOYhlAiQR2s+5Pjbq0eJJspohoqZ/GohzWGeckGeEIlNuW/+VM
	4kVHkveyHrL+cxvW9R5lryiwx8csO/LPD0YvElMQQoD4x4EpDAIVuP5oCLSNBNClhVN5
	FiV3U1yEgU/077GVAV9BTJibTCpdX6IgH/GKpt3W8Uz7jcVOmwMHzkIouDmd7Asq77Y4
	HdMGMHNFBPJZfnjeE8N7b33IKGbjT1cKSTBoPXopmtctwmWObawD2QrT2Up+csYutCn5
	+GNw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.16 AUTH)
	with ESMTPSA id Y099ddv2KCa1Jf1
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 20 Mar 2019 13:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1553085358; x=1553690158;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=sOFR3grnsYSxFQv6WXkeA9Q8tZm5wRC3WlWfW5RHmrU=; b=M
	kuGLci/SEVyHlln/Uefad8gL6qAhxjeT70xJUdyFdY3XWhcK/ONXCFCcQr3QWj/9
	c8ol1VJYjpWX1GfpjzJKy2v4EQhgD9bY6D80nQEPLgvJDBMQ3gwgA85Xv7FR64YE
	MmPNEhQnhpGECrRhlqH2KJDx3WBVhENTxB887Zk8xc=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.2) with ESMTPSA id
	md50000151255.msg; Wed, 20 Mar 2019 13:35:58 +0100
X-MDArrival-Date: Wed, 20 Mar 2019 13:35:58 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=19821c3e36=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Wed, 20 Mar 2019 13:35:58 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Arunkumar V <aruner92@gmail.com>
Message-ID: <20190320123558.w7ggptw4kpg53ybe@jholzmayr.localdomain>
References: <CALCW+OmkL2NhhdTqJ5A-fAztRqWLJk4rztxYLvCZz=8P=dZ2qA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALCW+OmkL2NhhdTqJ5A-fAztRqWLJk4rztxYLvCZz=8P=dZ2qA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: yocto@yoctoproject.org
Subject: Re: how to make writable permission for home/root in read-only rootfs (yocto build)
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
X-List-Received-Date: Wed, 20 Mar 2019 12:36:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello,

On Tue, Mar 19, 2019 at 03:56:00PM +0530, Arunkumar V wrote:
> HI
> 
> can any one explain me how to config the /home/root as writable in
> read-only rootfs?
> 
> is any setting to do with local file or .bbclass?
> if any macros need to be enable, please

No, it does not work like this on a directory based approach. General
Linux concepts regarding filesystems permissions apply, so its basically
an all-or-nothing thing.

Having said that, please find some inspiration in this thread:
https://lists.yoctoproject.org/pipermail/yocto/2019-February/044166.html

Greetz
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


