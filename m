Return-Path: <prvs=187035f2dc=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75CD5E00C87; Wed, 28 Nov 2018 11:55:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 30450 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Nov 2018 11:55:43 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A8D8E00BFD
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 11:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1543434942;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=F4xfbYMRBA26xdRQ+g0nMLCr7rHcZU4C0iaNMLqO9mM=;
	b=K9uJLSehd7to5I4CLGuWRflqSlKUBvKBys3F+3iiJjmuSjviS4H0TLgFX/L1Y8iJ3W
	iLOElbbJhVrBC6w2TZJgpCpMm07AJztYxuBCb4VSG0zMsY3RuAw5m9hhwW06pvGV5ooU
	tnR0do5qw0VJimY7oi7ZahGjVHfEKwaTfDfTUoKyXkcrGGs00awT5qXDM9pOAvRa9GVf
	nsBIwnJprAYUzAg5Nv+1CIH03h5mmEPQ0BKWo6F3zakXz6AEVhEZubxmwqJvA8L11qmZ
	3XxWXa0XFwaFDwCEKV79BSoMougR0fBoxEmfQhrw1nPkDK4xsfDnKmzfVNEvv4YlBAHP
	RAcA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.6 AUTH)
	with ESMTPSA id x019b7uASJtg5li
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 28 Nov 2018 20:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1543434945; x=1544039745;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=F4xfbYMRBA26xdRQ+g0nMLCr7rHcZU4C0iaNMLqO9mM=; b=Z
	h6izGi2RoAS9MSVtN7oIlrlnOTC8icK/9HHrBKDlZJTk7MhRQuZMAbNrU3G8ri2Z
	7wUX5LL/sVGZwZiW5Fn28zGLwc1uRSbGJ/3u7O/C33EcHuLEbpfFxlhMGCcfBwea
	8UtyUcnMjBlUbv3zwxhRiHeLIgRvqmnS1xiEmXvyCA=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.1) with ESMTPSA id
	md50000121571.msg; Wed, 28 Nov 2018 20:55:44 +0100
X-MDRemoteIP: 178.27.67.144
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Wed, 28 Nov 2018 20:55:44 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=187035f2dc=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Wed, 28 Nov 2018 20:55:30 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: n.stanisavljevic@polycaptil.fr
Message-ID: <20181128195530.pih7j3s3dinrhhrx@jholzmayr.localdomain>
References: <9305893f0b3f68a768e8532054b54438@webmail2.sdv.fr>
MIME-Version: 1.0
In-Reply-To: <9305893f0b3f68a768e8532054b54438@webmail2.sdv.fr>
User-Agent: NeoMutt/20180716
Cc: yocto@yoctoproject.org
Subject: Re: am335x evmsk screen init:id"00" respawning too fast disabled for 5 minutes yocto sumo
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
X-List-Received-Date: Wed, 28 Nov 2018 19:55:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Wed, Nov 28, 2018 at 03:50:02PM +0000, n.stanisavljevic@polycaptil.fr wrote:
> Hello everybody
> 
> here is an introduction of my situation :
> 
> I build a custom board from schematic of sitara AM335x-evmsk starter kit.
> I succeed to make a custom OS with yocto (krogoth version) and to boot this OS (embedded Linux) on my custom board.
> 
> This custom board contain a touchscreen (same touchscreen like in the AM335x-evmsk starter kit).
> 
> All worked fine on this board while I used krogoth version on yocto.
> 
> my problem :
> 
> Few time ago, I decided to migrate to sumo version of yocto.
> I build with success the OS (embedded Linux) with yocto sumo version for my custom board, but when I try to boot this OS, it's stop/lock and print the following message :
> 
> "INIT:Id'00' respawning too fast : disabled for 5 minutes" (I put a screenshot of this message ridden on putty).
> Every 5 minutes I got this message and I can't acces to the user session on putty and on the touchscreen, all board is locked.

This is probably because you are basing off something that sets
SERIAL_CONSOLES for the yocto-kernel, like
http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto/tree/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf?h=master#n23

If you are using a custom tree which does not use the special driver for
the uart, then you should be fine by setting
SERIAL_CONSOLES ?= "115200;ttyS0"
in your MACHINE config

> 
> I don't understand why this problem appear when I build a OS with the sumo version on Yocto.
> I have not this problem when I build a OS with the krogoth version on yocto.
> 
> Somebody can help me to solve this problem ?
> what can I do ?
> 

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


