Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E6F3E0098A; Mon,  2 Sep 2019 11:50:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F79E00961
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 11:50:13 -0700 (PDT)
Received: by mail-ed1-f65.google.com with SMTP id i8so2666753edn.13
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 11:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9S0jAjZApA+JD0NPdbdcd/2LFsWyUKLS/G2j5kgePZ0=;
	b=uZAPt1jLrkFZS93jH0873iczmA1P2byLx8VrBK0Atm6BI53zT5h+XdJzBUsrkueTmq
	Y9q0pPwB5C+c/WzpIQ+4W1OQhNIbx1KJxvP4VCm0I9J2xEPMRtwnikTokZRgOQjg7SRm
	Bh1TCYx9EAxX76LCnFtR/1F4WNThV/ZO1wtKiVxZWQTccqGdBllo5V9Ty6OJkSD8FO0R
	qScuGTrWxoCvZ7GDl8+kWi+vggNeMiPmRrSuvlWpw+GOQKseZ9gH28H1kI5N3KpiTme5
	9x3LRlPN9Pcz2X9V6exO4nes3FFqbyloeOnhXkofkF7Yrb/AOC1CZVXA9dKDOq1M3e/g
	pcOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9S0jAjZApA+JD0NPdbdcd/2LFsWyUKLS/G2j5kgePZ0=;
	b=UIuGhjp2mAYZjxNWYJxWbUqO2748eRkpAjKSST/pV3gKiCEVUGbPhh/lRohqSbys2L
	0E4OAMbw48UF2kTN1oRqDZ/Ma9/PUFrOGDSLfKlv2ygBIP+QwqHzF+Z76RjUv/RtKs/K
	eZrc3opcxa04UzyUuWHBKdJ2xOu3JQWJ1+N/vdpqDE9Kg2r1NLPDaUtoVqPMZT0KNWOw
	tzkZavVtZkNSb3rtH6E+AHPxZPSvhDntd6HSa5R2H9wkiL7uhJeGVgx2NwthUhrNEbry
	VkzrnOdnVMuPYC1wqa6y/D7WP8pOuxnviYYQ+VU63haqfyvfuhwtShsvwh5poMMEjDgw
	0DeA==
X-Gm-Message-State: APjAAAUL1t9IJ0jDh7VOXTKCDouUrOOdu9SIy0uKJvid/ZIo016Rioy4
	yAsBeYl0j+RFUOH/tj7UItcsgsgbiK6pRltAggmHSj4e
X-Google-Smtp-Source: APXvYqw2mrOVOm7wYjAiFGVnV4dzF4RDzkIdxDSZIIUyxVuTY79xi7wJKucPlFnkUh2gfHbiGuye87DojbZDVw5FuqU=
X-Received: by 2002:a50:bb6e:: with SMTP id y101mr12282701ede.29.1567450212801;
	Mon, 02 Sep 2019 11:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
	<CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
	<20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>
	<3d7148dc-130a-c7b3-eb7b-448905201342@3mdeb.com>
In-Reply-To: <3d7148dc-130a-c7b3-eb7b-448905201342@3mdeb.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 2 Sep 2019 20:50:01 +0200
Message-ID: <CAAfyv37ZQrO=7AGqbsZW9EaPXmhUdHaGUrBGqc_i27AiathnQQ@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Fetching Yocto layers
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
X-List-Received-Date: Mon, 02 Sep 2019 18:50:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 2, 2019 at 4:50 PM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
>
> On 02.09.2019 15:51, Josef Holzmayr wrote:
> > I'd like to throw kas into the discussion too, I've been using it quite
> > successfully.
> >
> > https://github.com/siemens/kas
> +1 for kas. Previously I was using repo, custom scripts and custom
> Docker container for running  the build. kas does all of that
> and makes significantly faster for me to start a new project.
>
> I have described my repo vs kas experience a while ago
> if someone would be interested: https://blog.3mdeb.com/2019/2019-02-07-kas/
Thanks for sharing blog post, really useful. I also discovered kas
tool few months ago and as Maciej said it's really convenient and nice
tool for helping managing
multiple yocto layers. Usually I have multiple targets so using kas
docker I build them by changing only machine and kas take care of
rest. Really recommend it.
> I hope it's fine to link to one's blog post there?
> >
> > Greetz
> >
> > On Mon, Sep 02, 2019 at 03:34:28PM +0200, Alexander Kanavin wrote:
> >> On Mon, 2 Sep 2019 at 15:05, Brian Silverman <bri@readysetstem.com> wrote:
> >>
> >>> The tags chosen above are based on what we test and ship.  So my issue is
> >>> that someone has to correctly follow the above instructions for different
> >>> versions of multiple layers if they want a reproducible build of a specific
> >>> version of mylayer-image.
> >>>
> >>> Is there a canonical why to encode this information within my layer?
> >>> Obviously I could script the above, store it in my layer, and have the user
> >>> run that script.  But, that seems very unyocto-like.
> >>>
> >> At the moment Yocto project does not have an off-the shelf setup for
> >> multiple layers. You are welcome to provide and maintain one, until then it
> >> is indeed custom scripts, or tools like Google's 'repo', or maybe git
> >> submodules could work.
> >>
> >> Alex
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

