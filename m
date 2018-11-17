Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7820E00B3E; Sat, 17 Nov 2018 15:53:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE020E0097C
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 15:53:39 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id v5so18908773lfe.7
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 15:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CwJt9FEiF4sDJGtgqroL4Ju05UTx6PnwuQ8m1CBBsRc=;
	b=Oj1fvRWFk9xochPJCUMa9PZYBJMWOjlKdW7S81g534yEgZ7Rgsiyb02C2kfxR1roZF
	HG41jw729IvFbTmTM3u9FRiufgXhpk82W9yOIfE3gTC7K5oFdBp4Xgt1MCnFvL+Ex00M
	NZF1rebHpAzT0tBhW4Hg6SXXjAh8p8giVElJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CwJt9FEiF4sDJGtgqroL4Ju05UTx6PnwuQ8m1CBBsRc=;
	b=Vt0pAz5idBBTvaS6cliSkq8QJTA7nBGd+go+uClpLZDWamtkpQljZmnMpoyv12PbVL
	ZlWgrvJmmffLmlnfiS7ry+CTjovSukyqkgrlpzQ9v/Xv9tSFEG3GFaGGq8GooQ/n/OJA
	IOFkkQAUUjWoNDZsY2LCl5bFGI+h2FdNj6Nmbsqs5+v1LMUGdQEfbtd2peN05w+t6tKH
	ithfZ5sp+CzHu/oYxoFG05Lw0TPShuCQrmTD78m+1oXcbT6ZhPZmx69sQ+SwP6btNuD7
	2INRt4ALTDNQmYweDeypsHbNqmNTXLft6ByZz5yCKIJ22f/Vjfyl5FLrqld+eyw8hv2e
	SEmA==
X-Gm-Message-State: AGRZ1gJwk9FCYC7hq1e7G7coPZWNISr0qROjjbvoKuPWG6RjFnFVfREb
	HMDV3kzq6DZGl13kJZy84ga2VzJKfQeZguy2I1XpYQ==
X-Google-Smtp-Source: AJdET5fjrwvvVM8w4meGYYtiZf63g40/vH5sgQEq2BUJ8wjwCJeCxZFE0B+1ImzUox/zQTyUCmrKyiM0LHWapDhczFQ=
X-Received: by 2002:a19:9dd1:: with SMTP id g200mr7671492lfe.127.1542498818782;
	Sat, 17 Nov 2018 15:53:38 -0800 (PST)
MIME-Version: 1.0
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
In-Reply-To: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Sun, 18 Nov 2018 00:53:27 +0100
Message-ID: <CAP71WjxQePqXAFDfmKx5WxhHxmr38U9cx4kODuj7wCDUAKYocA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Sat, 17 Nov 2018 23:53:40 -0000
Content-Type: multipart/alternative; boundary="00000000000029122a057ae4fea4"

--00000000000029122a057ae4fea4
Content-Type: text/plain; charset="UTF-8"

hi,

while we are there.. in our builds we use the following layers which also
need the 'thud' branches:

    name="OSSystems/meta-browser" path="layers/meta-browser"
    name="git/meta-ti" path="layers/meta-ti" remote="yocto"
    name="kraj/meta-clang" path="layers/meta-clang"
    name="meta-rust/meta-rust" path="layers/meta-rust"

thanks!
nico

On Sun, Nov 18, 2018 at 12:50 AM akuster808 <akuster808@gmail.com> wrote:

> Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl
> please add a "Thud" branch
>
> kind regards,
> Armin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000029122a057ae4fea4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hi,<div><br></div><div>while we are there=
.. in our builds we use the following layers which also need the &#39;thud&=
#39; branches:</div><div><br></div><div><div>=C2=A0 =C2=A0 name=3D&quot;OSS=
ystems/meta-browser&quot; path=3D&quot;layers/meta-browser&quot;</div><div>=
=C2=A0 =C2=A0 name=3D&quot;git/meta-ti&quot; path=3D&quot;layers/meta-ti&qu=
ot; remote=3D&quot;yocto&quot;</div><div>=C2=A0 =C2=A0 name=3D&quot;kraj/me=
ta-clang&quot; path=3D&quot;layers/meta-clang&quot;<br></div><div>=C2=A0 =
=C2=A0 name=3D&quot;meta-rust/meta-rust&quot; path=3D&quot;layers/meta-rust=
&quot;</div></div><div><br></div><div>thanks!</div><div>nico</div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Nov 18, 2018 at =
12:50 AM akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Can the =
maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl<br>
please add a &quot;Thud&quot; branch<br>
<br>
kind regards,<br>
Armin<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000029122a057ae4fea4--
