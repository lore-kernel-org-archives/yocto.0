Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A870E00C44; Thu,  2 Nov 2017 08:57:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5281AE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:57:42 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id y39so2001wrd.4
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=irPxwPwHgHE+czugztDCTLO3DRNgozCOMTdGmysydEI=;
	b=B+IBr4vfHrSulm2ZurBlI8WyxbYsHxAlzh7fTWCZmpQ49SrdhBcP2Ry3brGqVY8c+m
	mudwmoTuVgY8kxhEmp9/wm2kyJoyzEqoylm8d7/d41o/uu1FnZeNQ26CjVczgD2jCw8H
	WPzRfLKF9hdWOgviff2Mmz2ucM6X2EWzOPgh2CE8EQfGrZ2bReB6QI8wYNunvp34h1c/
	oB1r2OYU+OetYGWQqGe/+lDe+muXivpVy1M26w4Q2etq3JQJKIzWcvB7kHFFT+Gav45d
	rmkin5VnwxOhdmMyM84Bl2D8Kax3DfgKgvw8p1mScf4jRYTi5HVBdWHidecuPc4/DTcM
	1wqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=irPxwPwHgHE+czugztDCTLO3DRNgozCOMTdGmysydEI=;
	b=A3uDtR/UTJSTKMEN725OC8/KHUQqpIRd6JtpGiB0dMvAKM75T8l7nzUo7mYnqEp2Mb
	fJX3MN/qOhoDIsApA7YpT+prlEK9Yw3Mmlj+HtoxxGMN5jFKEgLEOc1HQEGis1i0XIXg
	VnW7bOQekKIWhAN+dqMFcasgQTxj0aNIBYCjX9xTDU0P2kdG5C2ytbN5FDezHRtWB6Q+
	OT6mAveotL8yrce/Xx7T1pdwqaFvaUoOrFwoxQdPhgsMbsNuJrJ48W0qS9eq+ihvr8us
	n39LoqQ083b7AaWXOMcmzaRHYy7Ea71mtf+TdaM/2hhS64XEM1HC67LYCJeCx/PHUe8J
	Pdhw==
X-Gm-Message-State: AMCzsaWvPjKlvU/O1nD6yPyOTiia2Zn2j9M+lnX8HGX3kNWc7f1PeEzF
	Qpn8Y8XdW5HEdyKX05A30SL5RsrL82aY7tKhTZ/q8pHES10=
X-Google-Smtp-Source: ABhQp+Sep2snuOh+BWZ7yUnPnVziePW2UQdY3hDyBleiVNFwtGjs9O/L46p58Au/5Fj3fPs78L8op9zmDu8eQn+n3Eg=
X-Received: by 10.223.193.70 with SMTP id w6mr3556209wre.158.1509638261069;
	Thu, 02 Nov 2017 08:57:41 -0700 (PDT)
MIME-Version: 1.0
Sender: andrei@gherzan.ro
Received: by 10.28.183.5 with HTTP; Thu, 2 Nov 2017 08:57:00 -0700 (PDT)
X-Originating-IP: [86.154.149.85]
In-Reply-To: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
References: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Thu, 2 Nov 2017 15:57:00 +0000
X-Google-Sender-Auth: c4GtQ-Dmat5egrthIhvO6FoL660
Message-ID: <CAK18fxF-irQPS77AsRCo6ibC4vc7VeuTD2Dt-=SpQ1LcHktFhA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: Re: [meta-raspberrypi][PATCH 1/5] x264: Disable asm for raspberrypi0-wifi
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
X-List-Received-Date: Thu, 02 Nov 2017 15:57:44 -0000
Content-Type: multipart/alternative; boundary="089e082389484a9a07055d020cb4"

--089e082389484a9a07055d020cb4
Content-Type: text/plain; charset="UTF-8"

Hi all,

On Thu, Nov 2, 2017 at 3:51 PM, Andrei Gherzan <andrei@gherzan.com> wrote:

> This used to work in the past because this machine was based on raspberrypi
> one. Now that they are separate, we need a configuration for it too
> otherwise:
>
> | common/arm/quant-a.S: Assembler messages:
> | common/arm/quant-a.S:362: Error: selected processor does not support
> `rbit
> r1,r1' in ARM mode
> | common/arm/quant-a.S:363: Error: selected processor does not support
> `rbit
> r1,r1' in ARM mode
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
> ---
>  recipes-multimedia/x264/x264_git.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-multimedia/x264/x264_git.bbappend
> b/recipes-multimedia/x264/x264_git.bbappend
> index c1cb3bc..505719e 100644
> --- a/recipes-multimedia/x264/x264_git.bbappend
> +++ b/recipes-multimedia/x264/x264_git.bbappend
> @@ -1 +1,2 @@
>  EXTRA_OECONF_append_raspberrypi = " --disable-asm"
> +EXTRA_OECONF_append_raspberrypi0-wifi = " --disable-asm"
> --
> 2.7.4
>
>
Pushed a PR to github too:
https://github.com/agherzan/meta-raspberrypi/pull/149 in which I fixed the
two typos in this series: "firmware.in" and "zzImage".

Andrei

--089e082389484a9a07055d020cb4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Nov 2, 2017 at 3:51 PM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.com" target=3D"_blank">andrei=
@gherzan.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">This used to work in the past because this machine was based o=
n raspberrypi<br>
one. Now that they are separate, we need a configuration for it too otherwi=
se:<br>
<br>
| common/arm/quant-a.S: Assembler messages:<br>
| common/arm/quant-a.S:362: Error: selected processor does not support `rbi=
t<br>
r1,r1&#39; in ARM mode<br>
| common/arm/quant-a.S:363: Error: selected processor does not support `rbi=
t<br>
r1,r1&#39; in ARM mode<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.com">and=
rei@gherzan.com</a>&gt;<br>
---<br>
=C2=A0recipes-multimedia/x264/x264_<wbr>git.bbappend | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-multimedia/x264/<wbr>x264_git.bbappend b/recipes-multi=
media/x264/<wbr>x264_git.bbappend<br>
index c1cb3bc..505719e 100644<br>
--- a/recipes-multimedia/x264/<wbr>x264_git.bbappend<br>
+++ b/recipes-multimedia/x264/<wbr>x264_git.bbappend<br>
@@ -1 +1,2 @@<br>
=C2=A0EXTRA_OECONF_append_<wbr>raspberrypi =3D &quot; --disable-asm&quot;<b=
r>
+EXTRA_OECONF_append_<wbr>raspberrypi0-wifi =3D &quot; --disable-asm&quot;<=
br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div></div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Pushed a PR to github too: <a href=3D"https://g=
ithub.com/agherzan/meta-raspberrypi/pull/149">https://github.com/agherzan/m=
eta-raspberrypi/pull/149</a> in which I fixed the two typos in this series:=
 &quot;<a href=3D"http://firmware.in">firmware.in</a>&quot; and &quot;zzIma=
ge&quot;.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Andrei<br></div></div></div>

--089e082389484a9a07055d020cb4--
