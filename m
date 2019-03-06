Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9D4BE00C43; Wed,  6 Mar 2019 08:15:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0433AE0049A
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:15:08 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id m35so10818719ede.10
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=k+ECTse5QUNkQuq1TS3EHaz5oJcDBCJJkpEgSta2YI4=;
	b=TPBJGEay5V0TvNmORDS/AaBKnfLmAl2Yl+FtQO9Xm4nQ0y5pmPAR7YxvwJmtcdPI5s
	KaI14Jpfy1IO0p168zjt5v4moLeB0W2Nw+hTImkfUewFQ4LnqSY0s6WUnvMRhnu2yUzh
	EHhfOrePI9ujES66fsGosl01DBZmCFNXJ9fzlBCiO9IgzIsHriYwo06yIuhGU5uunLI4
	gg9FuVtFmOYIEHGAsuZhtryYaGG1Tj6G8sYiDKs7I4BRjGsprP9FkBQ4CyBfJFfaC9iD
	uRrJeA/KicwLISEd9ucoYPZPGMF3uBK+1OIH4g91qTb5MCQxYEv06Dt7SbDjUiA1yQiN
	ZouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=k+ECTse5QUNkQuq1TS3EHaz5oJcDBCJJkpEgSta2YI4=;
	b=KEOQEdwh0cW16au/b77l60f231ZadEZDRSSeYHaKgyAAyVZH85Qd64Tn7M7Jvooube
	I9y4XUDoVY7pae1BsHCfL71hBl8pucxGVpehNclcOXdNLQEaf8e47NkNKAaaonSgS718
	1SEtSbWrs9eImNKEwbcxy+nqQ8EcEZpJ1QlPrVaOuurOacFR10ZzxYg0razoPi2/h9o6
	X0OoVoPQwg7cO1Ygv6r+W40u6cfb0yAJRAxbKKMHtr4XwNbnA8X2RGOFT3W5ESKQsoI0
	5lrcTrcPqjwuVaeH8TmZOGxQj1ZhBFLBWDGyWEj20PqyPA2GCGTwe1txVjEAE3hH6/tg
	+mSA==
X-Gm-Message-State: APjAAAWs3fiIQDagislxz1RfeHAB/ZXxxt4awotX0D09FTeWoggVCifd
	uxYEnV5O/4YKD/PB2jTeFsEINUlnXFFSAqWL/1zwKQ==
X-Google-Smtp-Source: APXvYqzJgiIqZHVnyL+cyDY/6j3lx9vf9qOybrb7TRtwx9+4LqBOmWYFCWM/nTuwkRccv9z/wnKFYcBr6ksKlfPuGBo=
X-Received: by 2002:a17:906:5f91:: with SMTP id
	a17mr4537487eju.48.1551888908082; 
	Wed, 06 Mar 2019 08:15:08 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
In-Reply-To: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 6 Mar 2019 08:14:56 -0800
Message-ID: <CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 16:15:09 -0000
Content-Type: multipart/alternative; boundary="00000000000018e35205836f4b2b"

--00000000000018e35205836f4b2b
Content-Type: text/plain; charset="UTF-8"

Dimitris,

Good find... I will see about documenting this.

Scott

On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos <dimtass@gmail.com>
wrote:

> Hi all,
>
> this is not a request for help.
>
> Today, I've found a very nice option which is not documented
> which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
> inside the poky/meta/classes/staging.bbclass.
>
> I had an issue with a recipe that had a few binaries that I wanted to add
> to the
> recipe-sysroot-native in order to build another package and I was getting
> errors
> because the do_populate_sysroot couldn't strip those binaries. I've
> searched in
> the source and found that the author of that code was handling this case,
> but it's
> not documented (at least in the latest mega-manual).
>
> Therefore, I'm dropping this message as a reference to other that might
> need it.
>
> Regards,
> Dimitris
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000018e35205836f4b2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dimitris, <br></div><div><br></div><div>Good find... =
I will see about documenting this.</div><div><br></div><div>Scott<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos &lt;<a href=3D"mailto:d=
imtass@gmail.com">dimtass@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>thi=
s is not a request for help.</div><div><br></div><div>Today, I&#39;ve found=
 a very nice option which is not documented</div><div>which is the=C2=A0INH=
IBIT_SYSROOT_STRIP and is used in the sysroot_strip()</div><div>inside the=
=C2=A0poky/meta/classes/staging.bbclass.</div><div><br></div><div>I had an =
issue with a recipe that had a few binaries that I wanted to add to the</di=
v><div>recipe-sysroot-native in order to build another package and I was ge=
tting errors<br></div><div>because the=C2=A0do_populate_sysroot couldn&#39;=
t strip those binaries. I&#39;ve searched in</div><div>the source and found=
 that the author of that code was handling this case, but it&#39;s</div><di=
v>not documented (at least in the latest mega-manual).</div><div><br></div>=
<div>Therefore, I&#39;m dropping this message as a reference to other that =
might need it.</div><div><br></div><div>Regards,</div><div>Dimitris</div></=
div></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000018e35205836f4b2b--
