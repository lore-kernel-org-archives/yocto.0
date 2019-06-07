Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CC3BE00AAF; Thu,  6 Jun 2019 17:12:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE9CE009EA
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 17:12:15 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id r135so185747ith.1
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 17:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=MuAkrS+bvhpDHzTUt3NDgxtD4ePuoarzkEOpLFZduDw=;
	b=NN0k5jqKYV84YN569U+O/NeGVKt7XOHCh6bxk+nNf9UXRda8pEVJeky54q1rLD/XJf
	6WI3kyBFUZe3YUhyifoomo/uAeKh7wdWBhUAN5TlLDJ5fZDv1TdXPasqLHrXMfUpNBuQ
	fuVzVIYXDHxDtkKYe13JNmlDefc98NtNeXCtRKqQ6xihfRxvvXXw+/159SjccW1XUqOH
	UR/aHNq5FrOW5P3RVxJHdvAjQGbKL1Wwpr9mL5Sc/F2LGJLrAiMmCTSzc3RTFI9Zolg+
	ijSvFVc4WYd4sZyQe45IppfGJI/FMnIQYIZhQqQoKPTP6O4EANXkPfbF7tiuBUv+VRWD
	0DNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=MuAkrS+bvhpDHzTUt3NDgxtD4ePuoarzkEOpLFZduDw=;
	b=Krw39tJ5A6bRcwt6Cbc4wbP51kj+/CouDu/1Re55Aj3hA21a5fzVdKzMOtY98n46PN
	SSG250UNOPwTsDgye9plWBWk3kwpDtWA4XKcto51uROIABhaZo298Wf50eFNSlJxdv59
	EpHnoRUbLrE/7od08S9D0LdNtHaE4zqtm3c2NZkuC8eikfMR/htEoE4PDMLhUSE8nQPz
	NpR1ha8/WAbguo5yAAtZVUsgrRo/sy61BJxAuJVFTs4hsEwGFGQsur4RPCHcdQcroW4q
	oK54OTzC2YXmXXhVtwRF5pF3u6f8eKaMRsU1hnjAkP0bS4nz0cRnfP3WFPudIN8agCjU
	rq0Q==
X-Gm-Message-State: APjAAAW3wB+sdnhHRhu/Gg+T/WUOL4lzYTVi9KJXYAJBHU66NFPmMv/I
	PCmEQEHHNiWhGK3j1BL25d2NGmNAJQgLPYeuSwzOyU+71fE=
X-Google-Smtp-Source: APXvYqzz3OuvHHF0HKEoSC9SoRFByS7AfsZGZMPkTY5FT4LEQBInS+NnN+g3onUIRmg989VHb6oPbIh7DkSFjmvPblM=
X-Received: by 2002:a05:6638:2a9:: with SMTP id
	d9mr31243719jaq.94.1559866335283; 
	Thu, 06 Jun 2019 17:12:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Thu, 6 Jun 2019 17:12:14 -0700 (PDT)
In-Reply-To: <20190606115951.uc36gymkoqiod325@jholzmayr.localdomain>
References: <CAA=hcWSh9-DaYwFED5UpT_h1C0H22HG76LVd3d+aL4V+LBQQBA@mail.gmail.com>
	<CAA=hcWSmDyqJ2_4zw7-gXZ8KeB-wUk9G7iNieCsMQDGL3V2+Dg@mail.gmail.com>
	<20190606115951.uc36gymkoqiod325@jholzmayr.localdomain>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 7 Jun 2019 10:12:14 +1000
Message-ID: <CAA=hcWTmW1DZBeCo3mG8EnFSPrL=13+shB9h0HC27FritNMp5w@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
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
X-List-Received-Date: Fri, 07 Jun 2019 00:12:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Josef for the response and links, the board is not off the
shelf product, it was designed by a hardware contractor, so I have do
as you advised to change kernel+config and to add mtd-utils recipe.

In my previous project working on a TI ARM processor with NOR Flash,
installed with Debian armhf, I did not recall any work to interface
MTD NOR Flash, it was booted like a normal Linux distribute. For NAND,
is the Linux be able to handle read / write NAND flash as in NOR?

Thank you very much.

Kind regards,

- JH

On 6/6/19, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de> wrote:
> On Thu, Jun 06, 2019 at 09:15:46PM +1000, JH wrote:
>> More specific, looks to me that the drivers are OS based, the eCos has
>> NAND I/O, the OpenWRT has some support NAND I/O as well, how does the
>> Yocto support?
>
> This is not exactly a "how does the yocto" support-thing. Yocto is not
> the OS. The OS by itself is the Linux kernel, which has extensive NAND
> support in a lot of varieties. If you want to have a look, see
> https://elixir.bootlin.com/linux/latest/source/drivers/mtd and
> especially the nand subdirectory. In a nutshell it goes like this: if
> you buy a board, ask whomever gave it to you for a kernel plus config
> that works. Also, they are in most cases also obliged to tell you how to
> write something to the (NAND-)flash.
>
> For the userspace side, there is the mtd-utils suite:
> http://www.linux-mtd.infradead.org which is already nicely packaged for
> OE:
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools=
/mtd/mtd-utils_git.bb
>
> So these are your starting points, you have to apply them to your
> specific setup yourself. The only common things I can think of is:
> 1) make sure your kernel+config support the flash chip in use
> 2) install the mtd-utils for interacting with it.
>
> Greetz.
>
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - JH
>>
>> On 6/6/19, JH <jupiter.hce@gmail.com> wrote:
>> > Hi,
>> >
>> > Has anyone used NAND? Does the MTD already support the NAND driver or
>> > do you have to work our the detailed driver yourself? Could you share
>> > your experiences how to build the image and to hand and access the
>> > NAND if it is required?
>> >
>> > Thank you.
>> >
>> > Kind regards,
>> >
>> > - JH
>> >
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>

