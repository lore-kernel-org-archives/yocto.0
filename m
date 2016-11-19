Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B01BFE00C82; Sat, 19 Nov 2016 09:35:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A379E006E9
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:35:54 -0800 (PST)
Received: by mail-vk0-f43.google.com with SMTP id x186so191281623vkd.1
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oUfWOjaZ8yPUiX94Y7FE30GEb6cXHn3Wwx3JTEF8ASA=;
	b=EgcJUAixtuyFzaSRKICEbN3r5ndEUhvNeLgT2hNXrsfZIDYRtkphOYZQ68Bk6z2yTD
	lQ/NivYDXVMrEo/vurZhP3P5yAjcq62t1jMwFuQ7ooevq8Ecoa/08iiqq0nycdMp+tfK
	G60aYtyMFxTfN28mE+6ui05x5UynUmJejLf0LgPDckXrlDR+47eYIlTHISoyYvU/RTLP
	rNqapLcyyR2f6cP9TkVu6PpJsYytrI9ZmOcxmDp4htecxfBp8qeQT73pZc+6XbAmc3S4
	x9F/Y+SVDFgfu6WinUJaNl3ig7kbnw8EL7+xSJdvuWHrLu7awklKf2uOQNZZrwTNmDuz
	+mEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oUfWOjaZ8yPUiX94Y7FE30GEb6cXHn3Wwx3JTEF8ASA=;
	b=DmIAq+CrPOXGIe7edwZWJ4YR9nFQnlVbban7Hgp95Qwk0xdG/zfL84bJxQGA3qU4qr
	6GcDriGa1V8nQgSBScavBTZty1NbievA1NjmgwErp6I09krxP+wT5DaFTKQDHZxGrjHw
	a1gl/dbkpML13bLHM1WnAk8tvOb1H14rNY6DJZpaqZo5pTZrFde46W1KW5+R8ghSxsZm
	4FgzZZLxWzvlWSGw5ANEZoLaXlpDRy0FY2kb+U+dDGIJROQafxziQeC4kv85RzmrNzKf
	8K5i7df2X5yzaiwyP1RSByyoOq41yx1lD52lfqnkp3pBb+OSL6jfXQlNyAd/ZFQZgfzm
	IX1A==
X-Gm-Message-State: AKaTC023ufRH2gabnHpTonhIH2y/0qR+Fm61nd7RXrPcni2rn3KTjQuYDDrG8StWtpBAhoe4dhp2z8ZRlDQ+nw==
X-Received: by 10.31.168.7 with SMTP id r7mr2877731vke.148.1479576954274; Sat,
	19 Nov 2016 09:35:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sat, 19 Nov 2016 09:35:23 -0800 (PST)
In-Reply-To: <CA+Z_yWLCumQDsuzCLeqzQk244J=6z5Ztxc9JCkfYpGHm09rBSg@mail.gmail.com>
References: <CA+Z_yWLCumQDsuzCLeqzQk244J=6z5Ztxc9JCkfYpGHm09rBSg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Nov 2016 09:35:23 -0800
Message-ID: <CAMKF1spuRdKn2dEgXV_AkeHum0-F70LOTbe1RR2xmHOd4QKRZg@mail.gmail.com>
To: George Migdos <giorgos.migdos@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building core-image-base for PPC64
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
X-List-Received-Date: Sat, 19 Nov 2016 17:35:57 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Nov 19, 2016 at 1:41 AM, George Migdos <giorgos.migdos@gmail.com> wrote:
> Hello,
>
> I would like to build and run the core-image-base recipe for PPC64 using
> Toaster on Linux Mint 18 64-bit (4.4.0-21-generic).
>
> When using the Morty release I do not seem to be able to find a compatible
> machine, whereas when using the current master HEAD (commit id:
> 7c3a47ed8965c3a3eb90a9a4678d5caedbba6337) there seems to be a QEmu ppc64
> compatible machine (and the related qemu layers) but the build fails during
> the parsing stage.
>
> Is it at all possible to build and run core-image-base for an emulated PPC64
> system?

Usually, you would go to layerindex and look for machine/layer/recipe
you are looking for

e.g.

https://layers.openembedded.org/layerindex/branch/master/machines/?q=ppc64


>
> Thank you for your time.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

