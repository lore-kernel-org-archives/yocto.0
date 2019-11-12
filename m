Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9670E00E05; Tue, 12 Nov 2019 14:22:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CADD9E00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:22:42 -0800 (PST)
Received: by mail-qt1-f177.google.com with SMTP id n4so291334qte.2
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QPrNo4N7xxMwAt+n6wYsjFd3+fZeyHbVJy0wlqu3soA=;
	b=eADatyIhChLAA6H38QBZjnE2NDXfUwZoiu38nBV5xLEidB/pPhnXFHxEhp+Qh8NLFQ
	R2SQUUDiNUaPfzDT1IxzoawN39cO9GUyaUVUW/lVYI4xugFBOsDmC0ruEK/NQLZ2HDtg
	1BrJqZNFijjcvpo+sfRmg+B1Ba1d8xDvqIj+rjEw/kAwSsxO0IwHAZhiMRG0T7s5d+sq
	5JVmuOKCcXzLK5htiwh4qSCw7FVRTx/4sasGsT3TpFebHhl2s6boEZJFplWvQptFHZcx
	7R7ZDmmpo3X8My4KawKnTgZA44hZwS3ZK3AOQSgBrcAX2HbSDR12o5r3k0rFzcajFhAw
	8Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QPrNo4N7xxMwAt+n6wYsjFd3+fZeyHbVJy0wlqu3soA=;
	b=XZ+N2JqzTY4/cxXI/aiMt32yGLJuBfGxH1JoAXTZfonesJbgocH127g1WP9t+W2fDO
	COMWbtrdgEwdYCgMPETBfEYJ/B7Lzu2t7Iz+tjud/GFzaeuF7RtB76OF+5YJ6mOLUAh1
	8B0kPw/QDZji+8PY+PETUsRc7ihkKwm4GiCYxFl3EirnDIP/Y2WhOMvafKlnjHyqDYUz
	p/gE9V0RAfVbPIItQ0d0qPiuX8VT8a5AH1iMD7izN73hK+oxejGHF4NU1imH6AyLWpaI
	Avx5FRBE6QkVSK2CBNulq4H4/XszlFJH87+Hr1Y+YtZDs4sZFPiwX52L26eYbCyn0rHw
	qKrw==
X-Gm-Message-State: APjAAAVwzm4cnHUwrR/k6ZVQlngC5Ley0+SYw/qfnydMIt3HnN8o6TKW
	5ziCDIQfMMf7enYi+nTVh8WS+98vYo/dfUWViKw=
X-Google-Smtp-Source: APXvYqz43Vgh5dyWjWTAFW2ANu8MR8J9sRh/F/rMHc5Nykl9C/IE8pMdgEzVAJqu03RiHJTL61Gj+45BR9RC7I8Ck4g=
X-Received: by 2002:aed:2724:: with SMTP id n33mr33781356qtd.194.1573597361829;
	Tue, 12 Nov 2019 14:22:41 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
In-Reply-To: <CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Nov 2019 14:22:15 -0800
Message-ID: <CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
To: Mark Hawthorne <markhawthorne172@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: pkg-config not found
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
X-List-Received-Date: Tue, 12 Nov 2019 22:22:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
<markhawthorne172@gmail.com> wrote:
>
> Thank you. I have fixed this issue but the original pkg-config error still persists.
>

do a clean build after above change

bitbake -ccleanall <your-recipe>
bitbake <your-recipe>

does that help ?

> On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:
>>
>> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
>> >...
>> > DEPENDS_${PN} = "libpng freetype glm libegl libgles2 libspatialite"
>> >...
>>
>> DEPENDS, not DEPENDS_${PN}
>>
>> cu
>> Adrian
>>
>> --
>>
>>        "Is there not promise of rain?" Ling Tan asked suddenly out
>>         of the darkness. There had been need of rain for many days.
>>        "Only a promise," Lao Er said.
>>                                        Pearl S. Buck - Dragon Seed
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

