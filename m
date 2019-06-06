Return-Path: <prvs=1060d78f21=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6DBCE00D74; Thu,  6 Jun 2019 04:59:58 -0700 (PDT)
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
	*      [85.215.255.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de
	[85.215.255.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BFA4E00D30
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 04:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1559822394;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=cngcT/cVn/jakRRQ6yIBjXz0HVU40lXCbYd/qx1uwdM=;
	b=E8P9UqP5qT46sWVaDm0yknkjjSh4suIQuUE7IHzffxMDuiZl9OKfnqqv5pH0Bouu37
	Ry7I2OzC+N2rUoxNwuKChZmsAbG/JnoJhhsotavEkcjqH9FTMdJRbxZVLgc2qsHdyXq6
	6yl0sFkKNqWcg+qONUSVxXLBUiaqjh5C/gPAbw9iFHOfvs/3cNaFtR8RtC3vm7LbQy0P
	b8SmwVw9XdJ70xpAmAT3OnHK8MTcnWUB1OTVz2lV9Q0zbAQI0kZkzqpnK5+i+ZEaNcSp
	yYA5okCjXnUXPaQ4TJLWjDfCOi/VC1lFTuvNC8NpG8mW6E0umtSlVFGLvgsU92bRji+j
	hxug==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.23 AUTH)
	with ESMTPSA id L0890fv56Bxs4dy
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 6 Jun 2019 13:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1559822393; x=1560427193;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=cngcT/cVn/jakRRQ6yIBjXz0HVU40lXCbYd/qx1uwdM=; b=S
	PQJuTB+9yq/7bEpsdjABetDOMBMNejkuaGCSh6ygdv/ECTJJZDTxqGvuQBPH2kHS
	ZrssrRZfq9lJsGj0S8ELRQTAhl05wIqwyQy6L3l7Bo1HnAWxoQlyK3+W5ZoWjp+Q
	YyQyJa8AGUw8H2+EnIQSvbyBiakY3qgvyT6hUyqWkg=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.0.1) with ESMTPSA id
	md50000173346.msg; Thu, 06 Jun 2019 13:59:53 +0200
X-MDArrival-Date: Thu, 06 Jun 2019 13:59:53 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1060d78f21=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 6 Jun 2019 13:59:52 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: JH <jupiter.hce@gmail.com>
Message-ID: <20190606115951.uc36gymkoqiod325@jholzmayr.localdomain>
References: <CAA=hcWSh9-DaYwFED5UpT_h1C0H22HG76LVd3d+aL4V+LBQQBA@mail.gmail.com>
	<CAA=hcWSmDyqJ2_4zw7-gXZ8KeB-wUk9G7iNieCsMQDGL3V2+Dg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSmDyqJ2_4zw7-gXZ8KeB-wUk9G7iNieCsMQDGL3V2+Dg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Support NAND flash
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
X-List-Received-Date: Thu, 06 Jun 2019 11:59:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Jun 06, 2019 at 09:15:46PM +1000, JH wrote:
> More specific, looks to me that the drivers are OS based, the eCos has
> NAND I/O, the OpenWRT has some support NAND I/O as well, how does the
> Yocto support?

This is not exactly a "how does the yocto" support-thing. Yocto is not
the OS. The OS by itself is the Linux kernel, which has extensive NAND
support in a lot of varieties. If you want to have a look, see
https://elixir.bootlin.com/linux/latest/source/drivers/mtd and
especially the nand subdirectory. In a nutshell it goes like this: if
you buy a board, ask whomever gave it to you for a kernel plus config
that works. Also, they are in most cases also obliged to tell you how to
write something to the (NAND-)flash.

For the userspace side, there is the mtd-utils suite:
http://www.linux-mtd.infradead.org which is already nicely packaged for
OE: http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/mtd/mtd-utils_git.bb

So these are your starting points, you have to apply them to your
specific setup yourself. The only common things I can think of is:
1) make sure your kernel+config support the flash chip in use
2) install the mtd-utils for interacting with it.

Greetz.

> 
> Thank you.
> 
> Kind regards,
> 
> - JH
> 
> On 6/6/19, JH <jupiter.hce@gmail.com> wrote:
> > Hi,
> >
> > Has anyone used NAND? Does the MTD already support the NAND driver or
> > do you have to work our the detailed driver yourself? Could you share
> > your experiences how to build the image and to hand and access the
> > NAND if it is required?
> >
> > Thank you.
> >
> > Kind regards,
> >
> > - JH
> >
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


