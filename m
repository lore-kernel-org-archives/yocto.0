Return-Path: <coolveer07@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 351FCE00BAA; Fri, 24 May 2019 01:53:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (coolveer07[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC57E00931
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 01:53:25 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id d10so6321390qko.4
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 01:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=X4Ye/RSwZ6bmTQPlLYGdXKfOBGIgJXOgeGv3BAC1Au8=;
	b=Kc97+5EgzTqkoRP6fhoJRAE1pAMJSDhJFjRYOXp+BS5URUZbvGV6f70EwBeQymnjtm
	Rrd3kpwRtwguA7YVu8fO8x4SWLFMEWP9IZAsBObaRCOx3wPBzq+S/oRDp96vg/HqV5Yj
	glTyC5rKfIkAI5v7rZyxUinJQM0pMtbrRVXsEDbCvq+7HnLZQQ9QRrmWmXd7Tbxx6JKR
	/ckrbm/FFVRDPJ0xwD73dW9SFolxufRszlEzEfQhpKxwxxX6Ivv+5yYKuntx522HzyqP
	gT5cYKH1h9sFiHpT7DoJtN+P8f2vm4DWpwzsOkNmm4nUs9zbIhUOECHHdCpNrFkK1y/w
	AqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=X4Ye/RSwZ6bmTQPlLYGdXKfOBGIgJXOgeGv3BAC1Au8=;
	b=PRRWKPgJlxyJf6hkhKzQDARQzMKqcXF8lGxEKNb95ZwIUVWVZOTFizSt1QF4kB/zJp
	KYKX2KunaWaZ29+hdCZh4zPMpYMS7c99M3UGEdsWsIkYMbHwLgemxHAb+KtWjABTkQMS
	IfGgaaEVdEfxsyFVVN8L+DqbyRiuo3VSpaeHSVHPSi5kQSr/8+BttLLQ+G6aqlaDDv+G
	GSZw+Ez2kTMWqiQLD/6PgqmwKbJjulx1PAX0nbuRhD1x0aHFFb8Rs3buj2deulpKGy92
	VoNn7YtQYiXaSFYZYGbLxlPLhu1f9Z/YxAxnGjxcuVhpa/j9eJIfq3Ha+jfZgxg1FuLG
	38PA==
X-Gm-Message-State: APjAAAWi4ZsTXzoJXp1fOlBl/y65pEswcvouXmIh2BNqFxSvxuG9aSA/
	VOfOw2SIJNHK0DpTrvc+W6qc9OWaaO1Segf0RjA=
X-Google-Smtp-Source: APXvYqxqTaRJ9bxpKkv44g0a88Wk87wISJhc41E6zR8GiLVeTqySTRckz1CFxN1EQ7X05k36mH3FpWwQnbgi/3XsR9E=
X-Received: by 2002:a0c:8931:: with SMTP id 46mr55160980qvp.3.1558688004933;
	Fri, 24 May 2019 01:53:24 -0700 (PDT)
MIME-Version: 1.0
References: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
	<CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
	<CAJTo0LZhzU62AeFwbBsO4bqLCzMgBHYPvRKzMqa5ozT1eJnuGA@mail.gmail.com>
In-Reply-To: <CAJTo0LZhzU62AeFwbBsO4bqLCzMgBHYPvRKzMqa5ozT1eJnuGA@mail.gmail.com>
From: virendra kumar thakur <coolveer07@gmail.com>
Date: Fri, 24 May 2019 14:23:12 +0530
Message-ID: <CANGFfGb+-UK91oshvtWSEc0cXTYuPmN0DEdYG=iVwCjCW3pTEw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: /usr/share/common-license package/recipeinfo contains GPLv3 info
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
X-List-Received-Date: Fri, 24 May 2019 08:53:26 -0000
Content-Type: multipart/alternative; boundary="000000000000d98de505899e547f"

--000000000000d98de505899e547f
Content-Type: text/plain; charset="UTF-8"

Ok, thanks.

On Fri 24 May, 2019, 2:12 PM Burton, Ross, <ross.burton@intel.com> wrote:

> On Thu, 23 May 2019 at 10:43, virendra kumar thakur
> <coolveer07@gmail.com> wrote:
> > But I can see in
> rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo
> >
> > LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
> > PR: r0
> > PV : 1.8.4
>
> At a guess, because the libgcrypt recipe is:
>
> LICENSE = "GPLv2+ & LGPLv2.1+ & GPLv3+"
>
> Whereas libgcrypt itself is:
>
> LICENSE_${PN} = "LGPLv2.1+"
>
> That's a bit of a meta-question: what license is a license package
> that only contains license texts?
>
> Ross
>

--000000000000d98de505899e547f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks.=C2=A0</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri 24 May, 2019, 2:12 PM Burton, Ros=
s, &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, 23 May 2019 at 10=
:43, virendra kumar thakur<br>
&lt;<a href=3D"mailto:coolveer07@gmail.com" target=3D"_blank" rel=3D"norefe=
rrer">coolveer07@gmail.com</a>&gt; wrote:<br>
&gt; But I can see in rootfs/usr/share/common-license/package/libgcrypt-lic=
/recipeinfo<br>
&gt;<br>
&gt; LICENSE: GPLV2+ &amp;LGPLV2.1+ &amp;GPLV3+<br>
&gt; PR: r0<br>
&gt; PV : 1.8.4<br>
<br>
At a guess, because the libgcrypt recipe is:<br>
<br>
LICENSE =3D &quot;GPLv2+ &amp; LGPLv2.1+ &amp; GPLv3+&quot;<br>
<br>
Whereas libgcrypt itself is:<br>
<br>
LICENSE_${PN} =3D &quot;LGPLv2.1+&quot;<br>
<br>
That&#39;s a bit of a meta-question: what license is a license package<br>
that only contains license texts?<br>
<br>
Ross<br>
</blockquote></div>

--000000000000d98de505899e547f--
