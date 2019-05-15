Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7513BE00D75; Wed, 15 May 2019 05:22:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3D83E00A0C
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 05:22:17 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id h4so2438662wre.7
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 05:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=uw6dTRbQX+DKIMk1a5z8zGk/gzf6g7Em/flNmo7fTPc=;
	b=RHvvpd1DJfMbResvDkNtnHTy0o9I9/1PzJY4R0wHyQwnr9r7a/YWfPFdN9vs2FFb5T
	98HqpWuKDNkSCRzVKGqOZm9TZ5/mFJQ+9PoK4+oc+eOyhxWmnAHBpJ/teIetNQLMSslQ
	Uect6LagOMapZEfu5VOpqUQ6KAu6KMhimwkW3Od/Wh/xTSQQ/cTG0aZOhaNpgu4zj2xv
	c1gjgKVcTgUAhe5t8QtKJP3c4SZbWewgQm3j9+VI21Dpp/HAbyOX9Eo25eRQd5i8sGMn
	r9OjX58J7nX9E/PXz1JkLCUR4LICMsYDzAGCJKYoXtsXOTwqaaM9nrcMmsLBHP8a7yrP
	6Jsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=uw6dTRbQX+DKIMk1a5z8zGk/gzf6g7Em/flNmo7fTPc=;
	b=tpkSZ8Yn5Es6NMthnj3afeo6GFond1DThiFrwkJD6tNn6SX3hGmH4Ee8wr9ket6THc
	64mu9wf4HFxGeZTK5v/TgvE/mWEwQyzrbk/kZYw+BoZwoWXuBB9ySMntGDDbjUA+kjC9
	b4aftgyWR4lArpvC3YZ4zU/t66TLsfrxNA/qw87pU3u+yLKe8M70zw2Tck+y5I4Eoov2
	VmwctO+G9X0MmU8KKGA8QWFPL8IJUbqMG1L/cZ1Q0zD14WbpYpaUVB0n/0JRlxW5Kw10
	fnoecpHoXyQMFLkmjFhffgrRWzvMmfHyV3CmzL7w1hQd8eREXWKQu1yHdFUAmVusTiJJ
	Fp/w==
X-Gm-Message-State: APjAAAU18HNQvKRhasi8rh8yPkMFJlXC5hbjn7ZjGn7tJ9cjwtih9MWG
	ry+jvNFk9q41fqNYtKJQCjQi1UdPLrOne3KCmHpRVXQqgjM=
X-Google-Smtp-Source: APXvYqxiuW0tJAfJUr1XoPjfvvR+TY5NzTSXkFOcuV0qMarH/4+CN8v3ZAa6AQJou1LmgtybkTuQZazFVxTC3lRSJN0=
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr9695782wru.18.1557922936690; 
	Wed, 15 May 2019 05:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34DwUXivWqyxayzfRJwXHiBqJj5z1xhXkw-ns9_5aGWUg@mail.gmail.com>
In-Reply-To: <CAAfyv34DwUXivWqyxayzfRJwXHiBqJj5z1xhXkw-ns9_5aGWUg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 15 May 2019 14:22:05 +0200
Message-ID: <CAAfyv36GCbQ1M=KtQTLiMP3eg3pTiQ3rh43x6pHoK2T6ztRWxA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: wic cp doesn't work with ext4 partition
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
X-List-Received-Date: Wed, 15 May 2019 12:22:18 -0000
Content-Type: multipart/alternative; boundary="0000000000003a9ce70588ec33c0"

--0000000000003a9ce70588ec33c0
Content-Type: text/plain; charset="UTF-8"

On Wed, May 15, 2019 at 1:47 PM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi,
>
> I'm trying to update some artifact after image is build using wic tool.
> I've tried wic rm image.wic:2/boot/uImage and this works fine (verified
> with wic ls). While when I want to copy something to ext4 partition (I've
> tried to copy to vfat boot partition and it works fine) like:
> wic cp uImage_modified image.wic:2/boot and verify with wic ls file is not
> copied. Anything I'm missing here? Thanks.
>
Hmm seems that if I remove file first then it works fine. No idea why it
works with vfat though.

>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>

/marek

--0000000000003a9ce70588ec33c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 2019 at 1:47 PM Belisko Marek=
 &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to update some artifact =
after image is build using wic tool. I&#39;ve tried wic rm image.wic:2/boot=
/uImage and this works fine (verified with wic ls). While when I want to co=
py something to ext4 partition (I&#39;ve tried to copy to vfat boot partiti=
on and it works fine) like:</div><div>wic cp uImage_modified image.wic:2/bo=
ot and verify with wic ls file is not copied. Anything I&#39;m missing here=
? Thanks.</div></div></blockquote><div>Hmm seems that if I remove file firs=
t then it works fine. No idea why it works with vfat though.=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></=
div><div>BR,</div><div><br></div><div>marek<br clear=3D"all"><div><br></div=
>-- <br><div dir=3D"ltr" class=3D"gmail-m_-1420096028318476567gmail_signatu=
re">as simple and primitive as possible<br>--------------------------------=
-----------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br>=
<br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052=
 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http:/=
/open-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div><=
/div>
</blockquote></div><br clear=3D"all"><div>/marek</div><div><br><div><br></d=
iv></div></div>

--0000000000003a9ce70588ec33c0--
