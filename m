Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82744E9A03B
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 21:30:09 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.22955.1771363799296363740
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 13:30:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=OWG4LsZY;
 spf=pass (domain: smile.fr, ip: 209.85.221.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4359a316d89so4169188f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 13:29:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771363798; cv=none;
        d=google.com; s=arc-20240605;
        b=V6sTv+t2VVD/Kn9xDiLXPmm7Bw1eOE4/1K9QEKMQKxHimgma4LaslzzmHjrhUKXUG9
         b/MUOSgTZ3Y2jY3D+G39QN3qj8SKH1Tg/HBH4vWQup7q6WidE4oDrJCkH+Pw51uXrJli
         iZ25wsEgv2qMiPzkmtR4hkD6n0Bc/h2CJtN12kBKERVRg7D989WWbIs/sXA6JO4qNwzU
         jRGetRbetFWyqgU41NW/HrVBwyoKh04LQGs571klCcaROsbVLD6vheYUzQwi8hwdkdp8
         FwKO7zw42X+uxwcTf9dB4BgKlBDvpc581Jl4wqCZ+uA9EBJVMcwC7T/rZExNSddjQ5/j
         2o4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r+uCjbkSvwEVda1nl6+Yx8gDnVj+KB6uyW5ztZ1ZRrI=;
        fh=TQ6nhWoq82YciWyjT6SeQ55rAOoI0Gs095gOofH3itY=;
        b=kLTlYt3p59apjzLuSvZ78Vngt5x9cVDM0kBRw56mghaaA9FjbOw26GflwwjzTNUOZH
         dSWSP7VorSVH9W+L08iJUXhhO/pPqMibbSKXSNKA69g8xmj29eyAC/OGiwTrBv9P5uti
         A93lxGtOAPFeD5gShjj8ZeAK8Y+9KHUUIq4hF4RXDX5akxPkUZDeR5F26g9JFMfRqnu7
         wm89vFu+8bRAiismjDX0mWuHi2/cbP9LMZKIeji4PGJ5zEPNOVHwUfuItDX6RUcQq4nL
         /z7v8pAXuOg+fUxiZu0uBMGS6DnALU3Mpc+/6z8DCLyjFJjZ2VMzGhvuB9GcPWW6RieQ
         7alQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771363798; x=1771968598; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r+uCjbkSvwEVda1nl6+Yx8gDnVj+KB6uyW5ztZ1ZRrI=;
        b=OWG4LsZYnZCRTxG8WY/BSkv2KPuq127JJetqx/z21Z6EESndyHFNwzVgNy65kqEG3c
         ngPwIhebCzsi6u/QjRxSVPmsvRXuT0zbvbSafvZ8xYKkHUYcaokw2Yb33sweSKniwr9Z
         DnEwW9zEX9IPz4B8Bvkn1m0W+44MthW+BApds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771363798; x=1771968598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+uCjbkSvwEVda1nl6+Yx8gDnVj+KB6uyW5ztZ1ZRrI=;
        b=Drl3JNSfKqSe8af2h+U/dtbKB2Vo/sBNrIAjqMzdQ5XSQX7yaQiPfzGkt30FdLDiZX
         HNholx4KQ5KdaIo7azFXQ9q0lxekhScuG7/B8vaJxj9k8anEb30BFy4DC+OXbG0d2PW+
         QXxcdK7MSaUdcvYirOK4ffUGREPIyZ76iZBLeTtJm3xxpmY4tu5W4BlOiQ01jsU4ZPfd
         V1bSkStgN8yBsh9ZNIBUi0xriB0luZkUrgKha44IvJdgmOVsz30jKFDCjgQFgnZDyxm9
         JT+fSIF/LB/K6OS0NMPwoumoYar5v9uREXbo9Btk9xu9JV6KdCfaI3Z5Ou0uFBsE1iOO
         VNGA==
X-Gm-Message-State: AOJu0YzaxjETxZGFmJZy6yXzpmngx/JH3CRQqwsVv5vmWjUPzi7qMJHu
	Jor5NJPtwTg2iYI9H1gRTpkBPJkOIeQhKwd2TzLqyAPuoJJ/MOBnKbBxh4+qSYIRTH70YvjEO9j
	tyz+Cn7//yr07UckPHQOwAWyi6YIWxCM3uEB4hrH9RA==
X-Gm-Gg: AZuq6aL4RLmxR7WN7xGO50oH5mYKU+zwiojKLfeXdjaeNCdwtXtDt/t0d3Uplx8JFse
	zQ1mlHToJsjHtxuK73YSkapPitmrgJTuf5Uv6UhPlX0vImFAkMrQoe2Z69c2hVnEx92hwqzeTdC
	AFy8jCvgDcLYWHkgZ/GEbSmKYEL+IHO7WjjKebhHpjcgqfzYR71o6chAUC7MBUhusLoyd7E0xvT
	nGnqY/rSgZYafroDNDMGAi+W0J15SWlGpds6T+s+Lohsewk3Kjoo9CjsYqs/Y8ZsBTatIfAN2ao
	rIZIJwm4TOP00yRfWrqVe2w9FHQhztUMujSEYmCn
X-Received: by 2002:a05:6000:184e:b0:437:a49:1381 with SMTP id
 ffacd0b85a97d-437978e607amr29765263f8f.24.1771363797520; Tue, 17 Feb 2026
 13:29:57 -0800 (PST)
MIME-Version: 1.0
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr> <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
 <DGD219WBW417.38KFVSE5F8O4R@smile.fr> <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 17 Feb 2026 22:29:31 +0100
X-Gm-Features: AaiRm51KmX1aLMgvRRfSQSIJ5XKCvE2hNJzngiFJ4p0WBrWik1u4HoWTU78dQLQ
Message-ID: <CAMSfU+4A=s=SwU5XNSebqSMQpg+KD8tYpMn9ncn93eUUdR7KxA@mail.gmail.com>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on master
To: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
Cc: Yocto ML <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eb6d67064b0bc556"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 21:30:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66254

--000000000000eb6d67064b0bc556
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 17 f=C3=A9vr. 2026 =C3=A0 21:09, Tyagi, Yogesh <yogesh.tyagi@intel.=
com> a
=C3=A9crit :

> ________________________________________
> From: Yoann Congal <yoann.congal@smile.fr>
> Sent: Thursday, February 12, 2026 8:01 PM
> To: Tyagi, Yogesh <yogesh.tyagi@intel.com>
> Cc: Yocto ML <yocto@lists.yoctoproject.org>
> Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails
> on master
>
>
> On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:
> > Hello,
>
> Hello,
>
> Thanks for the status update.
>
> > The only solution I could find at present is to shorten the build path.
> >
> > Cause:
> >
> > * `intel-media-driver` CMake generates ~626 include directories per
> compilation unit
> > * With long paths, the expanded compiler arguments exceed Linux `ARG_MA=
X`
> > * GCC expands response files before spawning `cc1plus`, so
> wrappers/response files don=E2=80=99t help
> > * This is a kernel limitation, not a Yocto or compiler bug
> >
> > Impact:
> >
> > * Fails in Yocto builds with typical CI/workspace paths
> > * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count
> >
> > Workaround:
> >
> > * Use very short workspace paths (<15=E2=80=9320 characters), e.g. `/w/=
yocto/...`
> >
> > Status:
> >
> > * Upstream issue filed with `intel-media-driver`
>
> For reference, the issue is:
> [Bug]: CMake generates 600+ include directories per compilation unit =C2=
=B7
> Issue #1984 =C2=B7 intel/media-driver
> https://github.com/intel/media-driver/issues/1984
>
> > * Proper fix requires CMake refactoring upstream
> > * Path shortening is the only reliable workaround for now
>
> >Did you find what made the problem appear when we did not had it before?
> >Any chance that this is something you can revert while
> >intel-media-driver cmake is fixed?
>
>
> I have reverted the intel-media-driver to old version. Please check the
> build now.
>

I've started 2 AB meta-intel builds:
master :
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3043
whinlatter:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3044


>
> > Thanks,
> > Yogesh
> > ________________________________________
> > From: Yoann Congal <yoann.congal@smile.fr>
> > Sent: Tuesday, February 3, 2026 2:59 PM
> > To: Tyagi, Yogesh <yogesh.tyagi@intel.com>
> > Cc: Yocto ML <yocto@lists.yoctoproject.org>
> > Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
> master
> >
> >
> > Hello,
> >
> > meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb:=
do_compile
> fails with:
> > ninja: fatal: posix_spawn: Argument list too long
> >
> > This happens on master and also on whinlatter.
> >
> > We can see this on autobuilder:
> > https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41
> > * master:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2967
> > * whinlatter:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2966
> >
> > Regards,
>
>
> --
> Yoann Congal
> Smile ECS
>
>
>
>

--=20
Yoann Congal
Smile ECS

--000000000000eb6d67064b0bc556
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 17=
 f=C3=A9vr. 2026 =C3=A0=C2=A021:09, Tyagi, Yogesh &lt;<a href=3D"mailto:yog=
esh.tyagi@intel.com">yogesh.tyagi@intel.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">___________________=
_____________________<br>
From: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_=
blank">yoann.congal@smile.fr</a>&gt;<br>
Sent: Thursday, February 12, 2026 8:01 PM<br>
To: Tyagi, Yogesh &lt;<a href=3D"mailto:yogesh.tyagi@intel.com" target=3D"_=
blank">yogesh.tyagi@intel.com</a>&gt;<br>
Cc: Yocto ML &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"=
_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on =
master<br>
<br>
<br>
On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:<br>
&gt; Hello,<br>
<br>
Hello,<br>
<br>
Thanks for the status update.<br>
<br>
&gt; The only solution I could find at present is to shorten the build path=
.<br>
&gt;<br>
&gt; Cause:<br>
&gt;<br>
&gt; * `intel-media-driver` CMake generates ~626 include directories per co=
mpilation unit<br>
&gt; * With long paths, the expanded compiler arguments exceed Linux `ARG_M=
AX`<br>
&gt; * GCC expands response files before spawning `cc1plus`, so wrappers/re=
sponse files don=E2=80=99t help<br>
&gt; * This is a kernel limitation, not a Yocto or compiler bug<br>
&gt;<br>
&gt; Impact:<br>
&gt;<br>
&gt; * Fails in Yocto builds with typical CI/workspace paths<br>
&gt; * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count<br>
&gt;<br>
&gt; Workaround:<br>
&gt;<br>
&gt; * Use very short workspace paths (&lt;15=E2=80=9320 characters), e.g. =
`/w/yocto/...`<br>
&gt;<br>
&gt; Status:<br>
&gt;<br>
&gt; * Upstream issue filed with `intel-media-driver`<br>
<br>
For reference, the issue is:<br>
[Bug]: CMake generates 600+ include directories per compilation unit =C2=B7=
 Issue #1984 =C2=B7 intel/media-driver<br>
<a href=3D"https://github.com/intel/media-driver/issues/1984" rel=3D"norefe=
rrer" target=3D"_blank">https://github.com/intel/media-driver/issues/1984</=
a><br>
<br>
&gt; * Proper fix requires CMake refactoring upstream<br>
&gt; * Path shortening is the only reliable workaround for now<br>
<br>
&gt;Did you find what made the problem appear when we did not had it before=
?<br>
&gt;Any chance that this is something you can revert while<br>
&gt;intel-media-driver cmake is fixed?<br>
<br>
<br>
I have reverted the intel-media-driver to old version. Please check the bui=
ld now.<br></blockquote><div><br></div><div>I&#39;ve started 2 AB meta-inte=
l builds:</div><div>master : <a href=3D"https://autobuilder.yoctoproject.or=
g/valkyrie/?#/builders/41/builds/3043">https://autobuilder.yoctoproject.org=
/valkyrie/?#/builders/41/builds/3043</a><br>whinlatter: <a href=3D"https://=
autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3044">https://a=
utobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3044</a></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; Thanks,<br>
&gt; Yogesh<br>
&gt; ________________________________________<br>
&gt; From: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=
=3D"_blank">yoann.congal@smile.fr</a>&gt;<br>
&gt; Sent: Tuesday, February 3, 2026 2:59 PM<br>
&gt; To: Tyagi, Yogesh &lt;<a href=3D"mailto:yogesh.tyagi@intel.com" target=
=3D"_blank">yogesh.tyagi@intel.com</a>&gt;<br>
&gt; Cc: Yocto ML &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" targe=
t=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on=
 master<br>
&gt;<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb=
:do_compile fails with:<br>
&gt; ninja: fatal: posix_spawn: Argument list too long<br>
&gt;<br>
&gt; This happens on master and also on whinlatter.<br>
&gt;<br>
&gt; We can see this on autobuilder:<br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/valkyrie/?#/builders/4=
1" rel=3D"noreferrer" target=3D"_blank">https://autobuilder.yoctoproject.or=
g/valkyrie/?#/builders/41</a><br>
&gt; * master: <a href=3D"https://autobuilder.yoctoproject.org/valkyrie/?#/=
builders/41/builds/2967" rel=3D"noreferrer" target=3D"_blank">https://autob=
uilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2967</a><br>
&gt; * whinlatter: <a href=3D"https://autobuilder.yoctoproject.org/valkyrie=
/?#/builders/41/builds/2966" rel=3D"noreferrer" target=3D"_blank">https://a=
utobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2966</a><br>
&gt;<br>
&gt; Regards,<br>
<br>
<br>
-- <br>
Yoann Congal<br>
Smile ECS<br>
<br>
<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000eb6d67064b0bc556--

