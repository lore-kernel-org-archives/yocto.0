Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26BFFE00D44; Thu, 19 Oct 2017 14:33:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E0B9E00CD1
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:33:24 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id b186so11338848iof.8
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Rs1N+KDBq4iEGLibKTRR609uqMs0Ur+pbtHSU5/TpnU=;
	b=VTlAoqQIPsyVpHQ58N7Ao2eUg0zUMNUh66OD+MJ04fPox78pg4wkfHAQYQ3EPOil3z
	W/o2GzvY63V5u/EOm3E7+LScWpgZMqeOEtV3TNdPuA9TrAd2Rb1JzwdhDdNfMr4hzUzF
	KtX4NQZSOJr1+D/kx5H+pnnFjgiuilXhEniBWcekt95UCO2+vJ+uyk/3fOOQjNd5IWXj
	lAdspVm5h58GsivHK/1+lpKi8uceOMSTZTRJHNUmPoxXYdwf0BoiGBXmzhvvedxMS5Vt
	uDOY3CEe3cpBWd/aVTEGR4mYPlPLTO/Sl5jWbhCnDpzHxL2xBlHHpaWumnlAOLmK3iae
	iFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Rs1N+KDBq4iEGLibKTRR609uqMs0Ur+pbtHSU5/TpnU=;
	b=H10FHB9rjjYD43lgZaZgNpVhaXQLNSkzgWtuoG0ZED2FB0xNdt7yKrmdBNzPkxpeNY
	hrD+dbJKdNZwd8TX19BRPORAhek3oLU76/9jhSZ0cy9tXmeE0Sm/XhgkljiFAWTKRm/g
	wYgNOLXJbi3EVNg4KCiI9SbPN0w3/h27f58PuG+GGRlgXoIIObD5NFVpfk69wfRg6mWC
	H+lEH3Aj9Y5SStoGfW6hXCzyo0zKjIptk3QNwMe6/L1X4fK32M/6ZBTOFRn3fYGotmuF
	qrQhH28hzHWPB5NyoU0a76fHNs5vyuwsgzwuVHli6v7/wytqdi7ndFWssi+nwAsvLBfH
	Ym/Q==
X-Gm-Message-State: AMCzsaVEWz3bq0ctvBy4Q6KDys4f+j9eOdo2/RlJAQhqwOf139JADli8
	sR0j3uqVwNOjHLJ9y+95SiDnLXZBOf4FXEXMm0D9IQ==
X-Google-Smtp-Source: ABhQp+SBC88N4PfrfvyqpCpE0DXmedyLlxD9o/+bt2new1f5M/lzs3BJyR//Blj4Bj112spwnqbfFJepCiUhwmP//Go=
X-Received: by 10.107.189.129 with SMTP id n123mr3898837iof.48.1508448803630; 
	Thu, 19 Oct 2017 14:33:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 19 Oct 2017 14:33:03 -0700 (PDT)
In-Reply-To: <CAAfyv365zjf=Hn5H1HXzVxNGf=e4WdbYPu+RBc6QK=2VB6-drQ@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<CAAfyv37UHuZe1Bdz+31sSKtmjkBWrabfBRjqmckdPa-iP7bEJQ@mail.gmail.com>
	<CAAfyv365zjf=Hn5H1HXzVxNGf=e4WdbYPu+RBc6QK=2VB6-drQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Oct 2017 22:33:03 +0100
Message-ID: <CAJTo0LZDT4tgjVN0MgmuzDfN8U47j+Wm4jLLPuwCXjj2dfYjDg@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Thu, 19 Oct 2017 21:33:25 -0000
Content-Type: multipart/alternative; boundary="94eb2c0761c81a8e70055bed1bf7"

--94eb2c0761c81a8e70055bed1bf7
Content-Type: text/plain; charset="UTF-8"

Interesting!

Can you tar up and privately mail me all of the temp/log.do_* files inside
the glibc-locale work directory?

Ross

On 19 October 2017 at 22:14, Belisko Marek <marek.belisko@gmail.com> wrote:

> Hi Ross,
>
> On Thu, Oct 19, 2017 at 9:42 PM, Belisko Marek <marek.belisko@gmail.com>
> wrote:
> > Hi Ross,
> >
> > On Thu, Oct 19, 2017 at 9:15 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com>
> wrote:
> >>>
> >>> I'm using latest origin/rocko
> >>> (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
> >>> beaglebone core-image-minimal. While build I got this QA error:
> >>>
> >>> ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
> >>> Files/directories were installed but not shipped in any package:
> >>>   /usr/share/i18n
> >>
> >>
> >> I've seen this (and some other weird ones) in glibc-locales, and they've
> >> always been resolved by just rebuilding the recipe. bitbake glibc-locale
> >> -cclean && bitbake glibc-locale might well make it go away.
> > OK thanks I'll try and get back with result.
> Nope it's not working. Same issue when run above commands. Thanks.
> >>
> >> Ross
> >
> > BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
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

--94eb2c0761c81a8e70055bed1bf7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Interesting!<div><br></div><div>Can you tar up and private=
ly mail me all of the temp/log.do_* files inside the glibc-locale work dire=
ctory?<div><br></div><div>Ross</div></div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 19 October 2017 at 22:14, Belisko Marek <=
span dir=3D"ltr">&lt;<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_=
blank">marek.belisko@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Ross,<br>
<span class=3D""><br>
On Thu, Oct 19, 2017 at 9:42 PM, Belisko Marek &lt;<a href=3D"mailto:marek.=
belisko@gmail.com">marek.belisko@gmail.com</a>&gt; wrote:<br>
&gt; Hi Ross,<br>
&gt;<br>
&gt; On Thu, Oct 19, 2017 at 9:15 PM, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;&gt; On 19 October 2017 at 12:10, Belisko Marek &lt;<a href=3D"mailto:m=
arek.belisko@gmail.com">marek.belisko@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;m using latest origin/rocko<br>
&gt;&gt;&gt; (<wbr>65d23bd7986615fdfb0f1717b61553<wbr>4a2a14ab80) with no c=
hange to build<br>
&gt;&gt;&gt; beaglebone core-image-minimal. While build I got this QA error=
:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale=
:<br>
&gt;&gt;&gt; Files/directories were installed but not shipped in any packag=
e:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0/usr/share/i18n<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve seen this (and some other weird ones) in glibc-locales, a=
nd they&#39;ve<br>
&gt;&gt; always been resolved by just rebuilding the recipe. bitbake glibc-=
locale<br>
&gt;&gt; -cclean &amp;&amp; bitbake glibc-locale might well make it go away=
.<br>
&gt; OK thanks I&#39;ll try and get back with result.<br>
</span>Nope it&#39;s not working. Same issue when run above commands. Thank=
s.<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;<br>
&gt; BR,<br>
&gt;<br>
&gt; marek<br>
&gt;<br>
&gt; --<br>
&gt; as simple and primitive as possible<br>
&gt; ------------------------------<wbr>-------------------<br>
&gt; Marek Belisko - OPEN-NANDRA<br>
&gt; Freelance Developer<br>
&gt;<br>
&gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; Tel: <a href=3D"tel:%2B421%20915%20052%20184" value=3D"+421915052184">=
+421 915 052 184</a><br>
&gt; skype: marekwhite<br>
&gt; twitter: #opennandra<br>
&gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_=
blank">http://open-nandra.com</a><br>
<br>
BR,<br>
<br>
marek<br>
<br>
--<br>
as simple and primitive as possible<br>
------------------------------<wbr>-------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: <a href=3D"tel:%2B421%20915%20052%20184" value=3D"+421915052184">+421 =
915 052 184</a><br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blank=
">http://open-nandra.com</a><br>
</div></div></blockquote></div><br></div>

--94eb2c0761c81a8e70055bed1bf7--
