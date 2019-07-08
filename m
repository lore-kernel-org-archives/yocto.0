Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3842E00BAA; Mon,  8 Jul 2019 07:18:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFB30E009FA
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 07:18:00 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id d17so16747060qtj.8
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 07:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YHKvWvR7vApSEXSbTA+3DvHy8TFiDWVY0OXjMGM/1Wk=;
	b=gUrH3PBDOQVKcym8OuWJmY3f1TWiwtQatuv1Pixv3rBarmfkq+kZVoKnkzIa+aQQPy
	8Os8Lbpo4zcjRJAL/W1tCqgvp2cG/k5OOdpzQ9kTNvNZ1pTdO7MxQWeoK4/dFTq60Pud
	hSKKTT972S/0WBRfml2BTqgq2H68MRg8ugIyVS9H/p48iIB6HN3B4plQaDxvoZPh2vC1
	rBrxY4paiFcBqQNS9uEgI/ns8S7n4ey538ujLwsPLpYHZHPbU5pMjdscOHdmQFlHsjuo
	aY0NZhnFX0ZUiAlMvUkzMKQLf994xIpcizSJU3uWoacVVLbF7PP2/iQPHs9qj+Av0KsB
	3Mxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YHKvWvR7vApSEXSbTA+3DvHy8TFiDWVY0OXjMGM/1Wk=;
	b=fqQfVCUIqKJnHYcAKW6+cSnsN3KeFSlqVSTMGQmhdGP9PVTfCR6Kf3icqivvVpLZw/
	OPrOumjIaT9cQG1xN9OwFmRpeEFec+W6fGiC2c/CJ7ypB4A0yyRIy0js/CTDDZftIvkE
	K2nX4Pz1lEpWa0t9sh7lFl762w6y9F2kQUlmWo7m/wT81zt5yXf+J4GzDaLD7ppgBeof
	PiNoQ2FpUwr0jIx4UHAq0UlPDS9gZbQkoY1+FB7oNGZAPhmyUXfjgcSaqfVo6eXR3zS+
	KBQoKz+Hc92aansvdUoIEK2nyXxkIK9+gTyUk/KHL1JgG4KwkhK/D1LcjhmNHWrWt0Ru
	TChQ==
X-Gm-Message-State: APjAAAVg8B/CiliI2D1n9lTShz09NY8x/cpM6WA9g72HPN3TWt7mEC4r
	gdaFAYMEh3Po1SecCbKABFtZPHNDmBifLwX6ReE=
X-Google-Smtp-Source: APXvYqz0wK05XspVPXKr6hpuGnOkDvzN8EyhLeM/+9GKOD7sJiLgzbybdJfhGK/ka0pTQ5oXUxW8KFRzqCfO+zoqIIs=
X-Received: by 2002:ac8:290c:: with SMTP id y12mr13956440qty.141.1562595480142;
	Mon, 08 Jul 2019 07:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
	<a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
	<CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>
	<dc2de6e5-38b9-4513-bc2d-e2745bcc542b@3mdeb.com>
In-Reply-To: <dc2de6e5-38b9-4513-bc2d-e2745bcc542b@3mdeb.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 8 Jul 2019 16:17:48 +0200
Message-ID: <CAGAf8LwYamPdprGYCV4T9tNh+1nBKs7kjztri4Ty=QTYOzEsqQ@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	=?UTF-8?Q?Piotr_Kr=C3=B3l?= <piotr.krol@3mdeb.com>,
	devendradevadiga01@gmail.com
Subject: Re: Ddcutil
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
X-List-Received-Date: Mon, 08 Jul 2019 14:18:01 -0000
Content-Type: text/plain; charset="UTF-8"

Devendra,

Maciej was very very kind to you, and all of us, observinf YOCTO
Project. Could you, please, test Maciej's patches, and give us the
report what did you find?

Thank you,
Zoran
_______

On Mon, Jul 8, 2019 at 2:37 PM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
>
> On 08.07.2019 14:20, Zoran Stojsavljevic wrote:
> >>> It was never polished for upstream...
> > Why? Any viable reason(s)?
> Simply no resources and use-case for that.
>
> I've used the ddcutils project only once and never touched it since then.
> >
> >>> ... and it likely have some issues with the latest ddcutil releases.
> > Which issues? Could you, Maciej, please, explain/elaborate
> > theme/problems observed by you in more details?
> I have no idea. I'm just guessing that an old, dirty recipe might not
> work properly now.
> I've pushed what I found here:
> https://github.com/3mdeb/meta-openembedded/commit/4d6e491cfa4197626eb1b897cd5417a0cc14ff4a
> If anyone is interested, please feel free to try.
> I'm not sure if it will build properly now.
> I can provide some support and explanation if needed to make the proper
> recipe.
>
> >
> > Thank you,
> > Zoran
> > _______
> >
> > On Mon, Jul 8, 2019 at 1:12 PM Maciej Pijanowski
> > <maciej.pijanowski@3mdeb.com> wrote:
> >>
> >> On 04.07.2019 19:02, Devendra Devadiga wrote:
> >>
> >> Hi,
> >>
> >> Hi
> >>
> >>
> >> I am working on i.MX6 platform.
> >> I got the BSP by yocto build.
> >> I need the "ddcutil" package.
> >> By yocto how I can get this package?
> >> In openembedded, layers list I checked for ddcutil, but I didn't get that.
> >> If source code for "ddcutil" is available can you share it with me?
> >> If you share the source then it will be more helpful for me.
> >>
> >> I have an old recipe for this tool somewhere.
> >> It was never polished for upstream, and it likely have some issues
> >> with the latest ddcutil releases. How about I push the patch and
> >> you will help me with testing / improving that?
> >>
> >> Thanks,
> >>
> >>
> >> In the below mailing list, I came to know that someone built the recipes for "ddcutil".
> >> https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html
> >>
> >> But I can't able to get that.
> >> Please can you share the source code of "ddcutil"?
> >>
> >> Thanks and regards,
> >> Devendra
> >>
> >> --
> >> Maciej Pijanowski
> >> Embedded Systems Engineer
> >> https://3mdeb.com | @3mdeb_com
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
>

