Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B11E0053A; Sun, 16 Apr 2017 19:00:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E970E003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:00:32 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id q125so6842625wmd.3
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ma29zcfMxweXOq9rPusANxYhtN5dgRO6m2NPS+ss61I=;
	b=EsXqlST6f93GYuPqUXB8h2rjEENUADUHzoeKTvBC0DO1pq+OpIBOyPZjLGTExqRQjT
	52qhyZQhBgsgb12rVb7YrA5uW8p92Zk4VIIgs7PZOuvZOOpOvl+S+2SyzSVPNECU5+ea
	JnbFI0ciucYppwK9TTFap0GFnaCfrF3MZ2fbpkSQqdP0gchkD3e8N6pCB9QzggIhJCxM
	t8Auz7UpO7MANUFZdaLeiQ968zUchQk69RXuohWzn2+u/gHGF0DRCxOLlu9mMvUKmXRm
	v0yWYj0UOd/dZ3T84Dlyk4ava7wt0fTyTkt2/Dn6ZA0F5d9GiTUwNNIhbh1TPpTAdvh6
	z7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ma29zcfMxweXOq9rPusANxYhtN5dgRO6m2NPS+ss61I=;
	b=Xg8rw33pfYChJs7JecgjCENtP/2T/eJro09kEqOdXsXjKpvfUcb3FjkumPiMTe5GW2
	qKUjXC2TLWNcI5NMSSPBHgRuQbMBDitDRVJS53JjP7rEgk5iSfgkE8bCBvrH2QKkk6im
	+wzrxNXepcsDqcjkIuZPdYFvp3owQHLAq4/wPedUQ5RjQEyxdMJ4G6THpNpvCPvbz1Y0
	es+cauPgYlVzJSl64J8f2s5DQbYrbbm466JoC6HlWSZJkJZqwFNLiL++4Erolinbk4mW
	Byru4jA8jyUBKUe7xPWS407NaedQA7k3QElrCitCkwrFkDVrlwVa6++j/BlP09ppOHK+
	CQ/w==
X-Gm-Message-State: AN3rC/60caWsux0hmQvX18F9DyiOqfAWcSDWdlDR5KhFkNZu0U9kWJ2B
	bmz8zJf8CMqebZB7JLAwNlNJlP2RbA==
X-Received: by 10.28.221.212 with SMTP id u203mr6879300wmg.101.1492394432146; 
	Sun, 16 Apr 2017 19:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20170417011206.29137-1-andrei@resin.io>
	<20170417011206.29137-2-andrei@resin.io>
In-Reply-To: <20170417011206.29137-2-andrei@resin.io>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Apr 2017 02:00:20 +0000
Message-ID: <CAMKF1srqpcaGHKCgZW=Dqx+obGvFdc5qmke04x6sOynGRb6PsQ@mail.gmail.com>
To: Andrei Gherzan <andrei@resin.io>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] x264: Fix build for armv6 RaspberryPi boards
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
X-List-Received-Date: Mon, 17 Apr 2017 02:00:38 -0000
Content-Type: multipart/alternative; boundary=001a1148e97afe3323054d53278a

--001a1148e97afe3323054d53278a
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 16, 2017 at 6:14 PM Andrei Gherzan <andrei@resin.io> wrote:

> quant-a.S uses rbit thumb instruction unconditionally even though only
> from ARMV6T2 this is available (which is not the case for RPI1, RPI0
> etc). Avoid this by disabling asm.


It would be bette to control it in component's own build system how much do
we lose in performance if any do you know

>
>
> Signed-off-by: Andrei Gherzan <andrei@resin.io>
> ---
>  recipes-multimedia/x264/x264_git.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 recipes-multimedia/x264/x264_git.bbappend
>
> diff --git a/recipes-multimedia/x264/x264_git.bbappend
> b/recipes-multimedia/x264/x264_git.bbappend
> new file mode 100644
> index 0000000..c1cb3bc
> --- /dev/null
> +++ b/recipes-multimedia/x264/x264_git.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF_append_raspberrypi = " --disable-asm"
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1148e97afe3323054d53278a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Sun, Apr 16, 2017 at 6:14 PM An=
drei Gherzan &lt;<a href=3D"mailto:andrei@resin.io">andrei@resin.io</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">quant-a.S uses rbit thumb i=
nstruction unconditionally even though only<br>
from ARMV6T2 this is available (which is not the case for RPI1, RPI0<br>
etc). Avoid this by disabling asm.</blockquote><div><br></div><div>It would=
 be bette to control it in component&#39;s own build system how much do we =
lose in performance if any do you know=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@resin.io" target=
=3D"_blank">andrei@resin.io</a>&gt;<br>
---<br>
=C2=A0recipes-multimedia/x264/x264_git.bbappend | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
=C2=A0create mode 100644 recipes-multimedia/x264/x264_git.bbappend<br>
<br>
diff --git a/recipes-multimedia/x264/x264_git.bbappend b/recipes-multimedia=
/x264/x264_git.bbappend<br>
new file mode 100644<br>
index 0000000..c1cb3bc<br>
--- /dev/null<br>
+++ b/recipes-multimedia/x264/x264_git.bbappend<br>
@@ -0,0 +1 @@<br>
+EXTRA_OECONF_append_raspberrypi =3D &quot; --disable-asm&quot;<br>
--<br>
2.12.2<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--001a1148e97afe3323054d53278a--
