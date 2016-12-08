Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB81E00B96; Thu,  8 Dec 2016 05:29:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121AEE00848
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 05:29:33 -0800 (PST)
Received: by mail-qt0-f175.google.com with SMTP id p16so410348963qta.0
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2016 05:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NOxojGYjLUB5kj/E9LDE68RZNpnmg5fDsVA9QYl9Gug=;
	b=oZEyag+RE5/Lf88wXqf2fY8DoJ/jmY3M1z5GhKS5F7eIHjU3fuZLitNw0JdWQQq6cJ
	59ieY0vcfgAojm4tNx/X2uyNBdvRvl2KRzx9fNJwH9oRwo3p/d3SWbD8v9cRErW9a/a2
	PHZMNNLcuTHrEISISc9vlSIg1LOTFHFAEe/DxSJMFyBXBvuiK+Af8cfFotnqC1pLwWe3
	6JWs+a6VP2gg4QnU24ykyhkUa+L52aVp/B4RS0qGedbCqcyjyl9sjB/L/DjyrUPmxdbf
	oC3jbR1UJvNC8u7HA6CFsPy0BEsSd7hLDa7Z49dhTEgLzlnJp/qV1GylKOsE5HZGgFtG
	yVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NOxojGYjLUB5kj/E9LDE68RZNpnmg5fDsVA9QYl9Gug=;
	b=DJrCERxO0gdgXhZwfRIqZAXpJPsPhiwjBBszOGXeWDO1l375LEa+87V3iQkm9wH9Uj
	lkODtwcchcTn53hx0x8TKWtBR3OruIJCMDwrdwdieukTLPlllJ1vBGf3Zol1Qo7synLS
	+GgPRtAY0qjuxvkcQ4HYNPE3r79VpZTdP+Lu85IgKOMwwVS0EgHHpA1eCBvSoz/Gu7Tt
	uh7M5UWHxAJVlhkmCbbxd+bWChXw21QV/0mR6xFHJMF7+Yz3wvg3PprU7U0cUkfiglfv
	70wkwSsrd5lhb7I5gdKDshrmoR0Xfp/l53/sfZFcyPdZuz/U571UAROat5i+CBfn/bxA
	5pzw==
X-Gm-Message-State: AKaTC029PbfFvS9aUWroGMHM2okj9tgn5kFSalYEjP/zhzo1/JuAzwcXQoHZT+iNMuIWYSD756dfbZ+VKhj0nxnp
X-Received: by 10.237.61.42 with SMTP id g39mr71242814qtf.65.1481203773015;
	Thu, 08 Dec 2016 05:29:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 8 Dec 2016 05:29:12 -0800 (PST)
In-Reply-To: <00e201d25153$72e85590$58b900b0$@ln-systems.com>
References: <00e201d25153$72e85590$58b900b0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Dec 2016 13:29:12 +0000
Message-ID: <CAJTo0LasFWgp6qgRf1M=EK_eP5x77o8X_MAMN87Bkp8dNSposg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building a package for target and native
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
X-List-Received-Date: Thu, 08 Dec 2016 13:29:36 -0000
Content-Type: multipart/alternative; boundary=001a1142a3eabb1da0054325a0b6

--001a1142a3eabb1da0054325a0b6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 December 2016 at 13:03, <colin.helliwell@ln-systems.com> wrote:

> I=E2=80=99m creating a recipe for a 3rd party package.
>
> Part of its install is to create the target=E2=80=99s config file by runn=
ing
> *itself* - obviously this doesn=E2=80=99t work as the target cpu is diffe=
rent to
> the host.
>
> I should be able to do a simple patch to alter the executable that the
> Makefile runs to generate the config file, but I=E2=80=99m trying to figu=
re out the
> slickest (=3Dcorrect!) way to get both architectures built.
>
> It looks like I can add
>
>    BBCLASSEXTEND=3D=E2=80=9Dnative=E2=80=9D
>
> to the recipe and then =E2=80=98bitbake mypkg-native=E2=80=99 will build =
for native, and
> =E2=80=98bitbake mypkg=E2=80=99 for the target.
>
> In which case, can I set up a dependency rule such that the target build
> is dependent on, i.e run after, the native?
>
> (The package itself will be pulled in with a   IMAGE_INSTALL +=3D =E2=80=
=9D mypkg =E2=80=9D)
>
> Or is there a better approach to this in general?   e.g. a separate
> mypkg-native.bb which the target recipe then depends on.
>

If it's going to be running the main binary then BBCLASSEXTEND=3Dnative and
DEPENDS=3Dmypkg-native will do what you want.  You can also tweak the nativ=
e
build so that it just builds what is required instead of everything to save
time.

You'll have to patch the target makefile to run the binary from the native
sysroot and not the build, of course.

Ross

--001a1142a3eabb1da0054325a0b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 December 2016 at 13:03,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin=
.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNor=
mal">I=E2=80=99m creating a recipe for a 3<sup>rd</sup> party package. <u><=
/u><u></u></p><p class=3D"MsoNormal">Part of its install is to create the t=
arget=E2=80=99s config file by running *itself* - obviously this doesn=E2=
=80=99t work as the target cpu is different to the host.<u></u><u></u></p><=
p class=3D"MsoNormal">I should be able to do a simple patch to alter the ex=
ecutable that the Makefile runs to generate the config file, but I=E2=80=99=
m trying to figure out the slickest (=3Dcorrect!) way to get both architect=
ures built.<u></u><u></u></p><p class=3D"MsoNormal">It looks like I can add=
 <u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0BBCLASSEXTEND=
=3D=E2=80=9Dnative=E2=80=9D<u></u><u></u></p><p class=3D"MsoNormal">to the =
recipe and then =E2=80=98bitbake mypkg-native=E2=80=99 will build for nativ=
e, and =E2=80=98bitbake mypkg=E2=80=99 for the target.<u></u><u></u></p><p =
class=3D"MsoNormal">In which case, can I set up a dependency rule such that=
 the target build is dependent on, i.e run after, the native? <u></u><u></u=
></p><p class=3D"MsoNormal">(The package itself will be pulled in with a=C2=
=A0 =C2=A0IMAGE_INSTALL +=3D =E2=80=9D mypkg =E2=80=9D)<u></u><u></u></p><p=
 class=3D"MsoNormal">Or is there a better approach to this in general?=C2=
=A0 =C2=A0e.g. a separate <a href=3D"http://mypkg-native.bb" target=3D"_bla=
nk">mypkg-native.bb</a> which the target recipe then depends on.</p></block=
quote></div></div><br><div>If it&#39;s going to be running the main binary =
then BBCLASSEXTEND=3Dnative and DEPENDS=3Dmypkg-native will do what you wan=
t.=C2=A0 You can also tweak the native build so that it just builds what is=
 required instead of everything to save time.</div><div><br></div><div>You&=
#39;ll have to patch the target makefile to run the binary from the native =
sysroot and not the build, of course.</div><div><br></div><div>Ross</div></=
div>

--001a1142a3eabb1da0054325a0b6--
