Return-Path: <prvs=17033f6a1e=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88EA4E01EC4; Wed, 13 Jun 2018 23:47:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.166 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 360 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Jun 2018 23:47:00 PDT
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[81.169.146.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5619AE01EAA
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 23:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1528958819;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=DpCXlvqwYTYsDm+9ySuFITRqZVnBhuS9zrUlHmqC8d4=;
	b=hVSxL2nDSjWEZxS+TiH/9ixJfN00YRdwRWepGn6B7L5WuCOJET46jlyD13lnETdyYi
	5TVK9i2FIZs8rc0TvE1m8sHY7WuCK2HTbQmdrvnxptAKiUzo6xqqVc5J6YNxVyZ6gfMS
	cPJvLA9BshYMqQTaiK8US0eucuKA5tDsxYAnYHEradbonHro89+t+dYjIDCM/YqZbPxs
	nI80Tvgs2enmJKpiaicK3svbL5YCZNUPHIzprmATNe7jpreb83/VtOqbcV0p8zH2W6Ex
	tcrCskNCcdvKfrsbPLr0y5rHFnpJXXgzh/G492OvWH3q5x8o1L+cpdLn9hoLdIt8rRWI
	tJ9w==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 43.10 AUTH)
	with ESMTPSA id n0b0c9u5E6ewZag
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 14 Jun 2018 08:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1528958444; x=1529563244;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=DpCXlvqwYTYsDm+9ySuFITRqZVnBhuS9zrUlHmqC8d4=; b=Y
	5WYC2X6xcwE41qBuM5pVOYsaK/H0zdxbhrSf1L5BVxNSSEpBPw5dVds0c4O2yIBl
	Y5c4gXQU3bwBp1ZKrEDDIxYguP3k5HCf9ouHKrChVVcO1uQmxRh8Rd3uvuIPWUQS
	E2ikpdI4zs8wdNdFJVuNFFd5Lni7iJUgx7z7UQ9XIc=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.0.1) with ESMTPSA id
	md50000077392.msg; Thu, 14 Jun 2018 08:40:44 +0200
X-MDArrival-Date: Thu, 14 Jun 2018 08:40:44 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=17033f6a1e=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Thu, 14 Jun 2018 08:40:52 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Tim Hammer <tdhammer99@gmail.com>
Message-ID: <20180614064052.z64dme5mzs56fs4z@jholzmayr.localdomain>
References: <CALh9vaWsyukbyqEz7Yr4Y5zH3PGsfgqFKYR3ofZ4CgtmAJbB1w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALh9vaWsyukbyqEz7Yr4Y5zH3PGsfgqFKYR3ofZ4CgtmAJbB1w@mail.gmail.com>
User-Agent: NeoMutt/20180512
Cc: yocto@yoctoproject.org
Subject: Re: /boot/ content into root filesystem?
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
X-List-Received-Date: Thu, 14 Jun 2018 06:47:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Tim,

On Wed, Jun 13, 2018 at 11:57:10PM -0400, Tim Hammer wrote:
> I would like to include the kernel Image and DTB files in the /boot/
> directory of the root filesystem that will be installed in flash memory (
> *vs.* a separate partition with the /boot/ content).

IMAGE_INSTALL += "kernel kernel-devicetree"

should do that neatly. See also:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n548
and
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-devicetree.bbclass#n6

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


