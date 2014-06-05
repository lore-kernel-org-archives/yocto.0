Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE25E00B88; Thu,  5 Jun 2014 12:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18BBBE00BF4
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 12:12:07 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id lx4so1324072iec.18
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 12:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CbysCZcEkQxiSg0qW3HSFpHEcexafzUF5XJ9qtOa9OI=;
	b=WWlF/8kOwkS1pNcbgoObfV1IUZVj+4Smm+Pe2U/WlDj7gOurodmhXZZ6pOh971LOqV
	LYtBRW5vR2rz7H1mLvtDRtXZnHM59xWCl0pMQ/kBGdA6QEwwcXwa4i9AZv3D1wxBn0DD
	H3MDnNbZc7Ol70iw9VCFMOIonmPELcqH/qADM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=CbysCZcEkQxiSg0qW3HSFpHEcexafzUF5XJ9qtOa9OI=;
	b=Krkgi2C6upE/jOAaiAD8o9G5E7GbT6wQ0lJPWYMO+cNBaMtY4cPNF0iWOgnaHMm8nV
	DLuxGbgzE1QzEEHOYsfVOjKJQ2RwPxNL0IW9uDpSucvXiQR1rixUiajvfN7/tIcNP8Iv
	J90CO1jmpOt9Dg6fVsBM1rys4PhkZHixB78e2gobSM11YDuRs8r33IAln5dNfh3kw1Sg
	T4WIrtS9MxOhhhPAT9jmNPwmuU7NIpNN299vRB1t77VXFK9nMz7lNYMZxGmmAf/tFH79
	Ut0hBnxWE2vG+qnarW9K3cYX1gwhVNPaJea7+iMAqUh2Ye9LJw4fvIsVxmUFObLiNAjH
	Xi/g==
X-Gm-Message-State: ALoCoQnVHOx+dRPkx4vf34/EOEna5N4ewsCQ79xrxTJ7CHQrWRkciqpHbJgic5vDObOmA/7Ggeo1
MIME-Version: 1.0
X-Received: by 10.42.25.210 with SMTP id b18mr18207icc.74.1401995526612; Thu,
	05 Jun 2014 12:12:06 -0700 (PDT)
Received: by 10.50.224.136 with HTTP; Thu, 5 Jun 2014 12:12:06 -0700 (PDT)
Received: by 10.50.224.136 with HTTP; Thu, 5 Jun 2014 12:12:06 -0700 (PDT)
In-Reply-To: <CACzyEJ_sD+Uwuacrf6SuM2h8+4oCkxg_OY0wTu48Op9-nfcx8Q@mail.gmail.com>
References: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
	<CA+gsK-pQz1TeXzfbP0tMMfwdWQcHoCme4PdUM3s+vRbe3oT4EA@mail.gmail.com>
	<CACzyEJ_tfEmYhR6+p_M8xPUj+n_UYvaG+Sj1ErfAJXCXjyFZEw@mail.gmail.com>
	<CACzyEJ_sD+Uwuacrf6SuM2h8+4oCkxg_OY0wTu48Op9-nfcx8Q@mail.gmail.com>
Date: Thu, 5 Jun 2014 12:12:06 -0700
Message-ID: <CA+gsK-rPO7Kq=2DpZv_K4gR02WJR1yfdnqJVwR8fpZ7_UJsC4g@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Insop Song <insop.song@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: how to specify if multiple bb files are existing
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
X-List-Received-Date: Thu, 05 Jun 2014 19:12:18 -0000
Content-Type: multipart/alternative; boundary=20cf303ea7b8573fb204fb1b85ac

--20cf303ea7b8573fb204fb1b85ac
Content-Type: text/plain; charset=UTF-8

Excellent, that is what I expected. Glad you found the root cause. I am not
exactly a friend of setting DEFAULT_PREFERRENCE  in a recipe because it
leads to these confusing issues.
On Jun 5, 2014 11:11 AM, "Insop Song" <insop.song@gmail.com> wrote:

> Hi Rudi,
>
>
> I looked more and found out that the reason why 2013.01.01.bb, which
> is the latest, was not picked was due to "DEFAULT_PREFERENCE = -1" in
> that file.
>
> I was using this file from here :
>
> http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/tree/meta/recipes-bsp/u-boot/u-boot-fw-utils_2013.01.01.bb?h=dylan
>
> Thank you.
>
> ISS
>
> On Wed, Jun 4, 2014 at 7:27 PM, Insop Song <insop.song@gmail.com> wrote:
> > Hi Rudi,
> >
> > Thank you very much for your help.
> > I've added PREFERRED_VERSION and started build.
> >
> > Regards,
> >
> > Insop
> >
> > On Wed, Jun 4, 2014 at 6:37 PM, Rudolf Streif
> > <rstreif@linuxfoundation.org> wrote:
> >> Hi Insop,
> >>
> >> Technically u-boot-fw-utils_2013.01.01 should be used because it's the
> newer
> >> version. However, you can explicitly specify
> >>
> >> PREFERRED_VERSION_u-boot-fw-utils = "2013.01.01"
> >>
> >> Cheers,
> >> Rudi
> >>
>

--20cf303ea7b8573fb204fb1b85ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Excellent, that is what I expected. Glad you found the root =
cause. I am not exactly a friend of setting DEFAULT_PREFERRENCE=C2=A0 in a =
recipe because it leads to these confusing issues.</p>
<div class=3D"gmail_quote">On Jun 5, 2014 11:11 AM, &quot;Insop Song&quot; =
&lt;<a href=3D"mailto:insop.song@gmail.com">insop.song@gmail.com</a>&gt; wr=
ote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Rudi,<br>
<br>
<br>
I looked more and found out that the reason why <a href=3D"http://2013.01.0=
1.bb" target=3D"_blank">2013.01.01.bb</a>, which<br>
is the latest, was not picked was due to &quot;DEFAULT_PREFERENCE =3D -1&qu=
ot; in<br>
that file.<br>
<br>
I was using this file from here :<br>
<a href=3D"http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/tree/meta=
/recipes-bsp/u-boot/u-boot-fw-utils_2013.01.01.bb?h=3Ddylan" target=3D"_bla=
nk">http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/tree/meta/recipe=
s-bsp/u-boot/u-boot-fw-utils_2013.01.01.bb?h=3Ddylan</a><br>

<br>
Thank you.<br>
<br>
ISS<br>
<br>
On Wed, Jun 4, 2014 at 7:27 PM, Insop Song &lt;<a href=3D"mailto:insop.song=
@gmail.com">insop.song@gmail.com</a>&gt; wrote:<br>
&gt; Hi Rudi,<br>
&gt;<br>
&gt; Thank you very much for your help.<br>
&gt; I&#39;ve added PREFERRED_VERSION and started build.<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Insop<br>
&gt;<br>
&gt; On Wed, Jun 4, 2014 at 6:37 PM, Rudolf Streif<br>
&gt; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfounda=
tion.org</a>&gt; wrote:<br>
&gt;&gt; Hi Insop,<br>
&gt;&gt;<br>
&gt;&gt; Technically u-boot-fw-utils_2013.01.01 should be used because it&#=
39;s the newer<br>
&gt;&gt; version. However, you can explicitly specify<br>
&gt;&gt;<br>
&gt;&gt; PREFERRED_VERSION_u-boot-fw-utils =3D &quot;2013.01.01&quot;<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Rudi<br>
&gt;&gt;<br>
</blockquote></div>

--20cf303ea7b8573fb204fb1b85ac--
