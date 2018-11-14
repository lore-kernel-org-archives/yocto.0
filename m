Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC0F7E00C3D; Wed, 14 Nov 2018 05:00:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CFC2E00BBF
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 05:00:17 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id y3-v6so17170027wrh.10
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 05:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iUkUhld/FQ6vk21nXDidQEsXy+5YV1PaBceMqOnhpPk=;
	b=KBAQZWHOGN1afQCc8PofyJxjSblrujPSM3o72ddG65VRZzPcn+7oTFQDPFUCb/NRFU
	YytEyjY8StwOOIh6hfzFe5gH5otOfOMpiBpTlzDrqN47dHmUv/9GK6gAtnHZHYQizqAG
	H2bjgxpHXdtEWfmi7Gcy2h00JnUG+HuLFs9CnkEOqMwqZ0laJo2aFTtFeDGUJQyj1E1k
	WzX/byEWQJkU0S0EPVOQVelzy+WKBfHi08h/s35/3utc/n02q9M0HqOVbgAxPHTtPSXD
	w0ScYL3GX4lGEl4EgOEsg0cKN2tt6rmI/doxRaA/lURgscDZXNifNUcxElL1hYf6hyPz
	uibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iUkUhld/FQ6vk21nXDidQEsXy+5YV1PaBceMqOnhpPk=;
	b=p5C49jiDdESYX27ezr9H8reoMa6J8glvPqmete/fArZ4A2gm/JoJT/FIZi04JM1Up7
	pkqaJcYKX15JL8cJ2jx/gxZvGMWP+39W2xrCfu81pS1twHHNePQgxSBY0FR6mGK53yai
	Qy4gN5NxVj0Lutab/7tToie1B6bJg2FaoV95K3YlyXvsVeuJa0c6oxu8jpOr+mE4TTCd
	IPsxOZrimwda+xT4bUbvrzhj7UfNrPIVg+vY1Tp0j37GDGMUSPDtDvPIU7RPiDxXKb60
	9UZp6XWSJDrStNJ5phWGJ8/J/SMoceHaqW57LV59BzHgkwZpsUj5J9MX2Qa16f6YniNM
	h0Mw==
X-Gm-Message-State: AGRZ1gLwLl4hpxMpVU+BWMfyDVdbhSI+mrFBZ1CWukk6nj6IzMXsERDb
	BqBB9x1Y8EmJQTS8hP6trzu2MMlpSwpfdQ48VgA=
X-Google-Smtp-Source: AJdET5cZLqllBHLl/Npt7WxmAAymXJR3YMoHnGPVZVQpKewC39CLyBouojYOdYDsTRrVYbIH0uqvOJxLCzd02NwcR+8=
X-Received: by 2002:adf:f748:: with SMTP id
	z8-v6mr1834342wrp.237.1542200415939; 
	Wed, 14 Nov 2018 05:00:15 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
	<1542189137.30082.397.camel@genivi.org>
In-Reply-To: <1542189137.30082.397.camel@genivi.org>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Wed, 14 Nov 2018 19:59:39 +0700
Message-ID: <CAKYr3zxomTy5HYq9R6g4nkM3FFKaWBtU+5DqNgk=dk-Qes6+GA@mail.gmail.com>
To: gandersson@genivi.org
Cc: yocto@yoctoproject.org
Subject: Re: m4-native, zedboard, "Please port gnulib fseeko.c to your platform"
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
X-List-Received-Date: Wed, 14 Nov 2018 13:00:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 14, 2018 at 5:19 PM Gunnar Andersson <gandersson@genivi.org> wrote:
>
> Robert,
>
> On Tue, 2018-11-13 at 15:28 -0500, Robert P. J. Day wrote:
> >   been away from YP for a few months, diving back in, want to build a
> > core-image-minimal for my zedboard, and i will first admit that i'm
> > using a non-approved distro (fully-updated fedora 29):
> >
>
> [...]
>
> > but i'm unsure (read, have no clue) how to deal with this
>
> If upgrading Yocto/poky and layers is not an option for you, then building
> in a container is the typical approach.  This isolates you from any host-
> distro issues, since any distro can be used in the container.
>
> Many just set up their own with a simple Docker file, but from what I
> remember the CROPS project is one common project recommended in the past.
> Here's a random starting point I found [1].
>

move to thud, ive confirmed it works on fedora 29 after seeing the
same issue, or ...VM with Debian / Ubuntu


> HTH,
> - Gunnar
>
> [1] https://www.yoctoproject.org/learn-items/cross-platform-enablement-for-t
> he-yocto-project-with-containers/
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

