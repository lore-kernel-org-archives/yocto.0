Return-Path: <dl9pf@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EAEC4345F
	for <webhook@archiver.kernel.org>; Sat, 13 Apr 2024 12:40:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.11066.1713012020359169377
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Apr 2024 05:40:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=dl9pf@gmx.de header.s=s31663417 header.b=I/w5TXEO;
 spf=pass (domain: gmx.de, ip: 212.227.15.19, mailfrom: dl9pf@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1713012013; x=1713616813; i=dl9pf@gmx.de;
	bh=dda1MUQCbK8sOCX8/hGjn/WMVsvyzkOQ/zZU2KXAxt4=;
	h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
	b=I/w5TXEO+kaNYnppRz5ajRRNziT77vOxlwZJuhX/8X8W7/30mGqgkXbLEsArCtwh
	 tpVuYybY/xfGeQDePSshCaQ1P205Q8qLKEXh+IYTpwEu2nqruK9W8BJe6RfvG3EXn
	 YZTXgClrck+XE2019xuKom0mRjJ2tjaZv3/r0zzSyF/aHDEG6R9Nv47tUIfYjHp4G
	 oQAG8dA7QPGh1czT63xerTZ6guJO6ZJxyrDy/8RkDIREnEofn6kKWd4GsKLvXYOX6
	 Pc8txzFF7d7mzAKJenUHupNhYT8K85TBN0tHfEdjAVZcVoX8DfCOsLqaZ4eaBNOtW
	 fJVicQ/cfpYjEW8Lcg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from arbeit.localnet ([77.23.168.18]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTiPv-1sL4yH3a3x-00U3WR; Sat, 13
 Apr 2024 14:40:13 +0200
From: Jan-Simon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org, yocto@lists.yoctoproject.org,
 duy.dang.yw@renesas.com
Subject: 
 Re: [yocto] Any recommendation to make software layer Yocto Compatible?
Date: Sat, 13 Apr 2024 14:40:11 +0200
Message-ID: <1944482.7Z3S40VBb9@arbeit>
In-Reply-To: <20226.1712579798480481849@lists.yoctoproject.org>
References: 
 <afb2f4d332b2c1b003d132cd9152251ef6e32dcc.camel@linuxfoundation.org>
 <20226.1712579798480481849@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K1:BhVJlp28hWc3FfDCqhn/QWEbGdfwA7LCOxC5Rea4ATwFfQozF07
 DJxIXt2yLaAKdbmFf/tH6oKc1Qc2DkO1zpxhmKa0GnQzUZZM52ENWVeOCvFny6yoTT957Zg
 yBwkWmzCqMl4lgW1TlawqpGbYghKW71OPQOHTiyk5yZ2OmvcqEgrvDqLWzPJV/BkHlVswdW
 vGUZcu1US40TSluJfCF1Q==
UI-OutboundReport: notjunk:1;M01:P0:6HnitnjUmjE=;+NbT/Q+CCuc167mPcda/AIc3W0V
 9RcCo2rDg4joXhqcYAHy2w2wb++eljVHE+A65ZetJ040GbQl8B4farxPeyhR1SYLsoPZD+6VV
 Dz2qJpQQeZOihTza36uVpuspCkeS3Lgp6bekT0E5DAjPq5KPPqXMF4pjJsUDX7Fd+uCSNMs0T
 Uk0YIhnCRqc5jZWofGwnuvvxPzYvttrGmkhb3BtYXC787Zghu7R2462Q3Ra86PIo5TcSNwn51
 r8zElAeir5IxItMTLxWzuvzHSqyRtJ/CTa7nTVfmrVI3F6VQ9LBeKR8WvUoOH8ab7W41AXYVo
 0VEZk76osPRRMIgUhTiWKurwkCMBTffzGjaf3wJMpSNpM9wZeBpGiFb08tBhdzTHILHBDYUmn
 IKOvX5pmAUb83Wr32WXLJvI4a5uTcAs2P3H004EqsO0yn4XpcLWfnr4azEou+sgiC30Um2ptZ
 DHF+1r1afqEag+FbzHxUgMNY2Y9FXQejYO7BMDzsrGLIjXGpZI4v4ZpKtMFitgC1JExDwVcGU
 Jzh9Kpw1V7HHypMW3osdAwOV/kmyd8XEZij3Yr0tquuWoMh0zh6vrqMO2xHTBhwwCWoHyOC12
 v0Mupacg7kQwrfb90OlYU+mmVsj34//02CuVS9q0Rj9t+hm9MtS9s1SgHsTrgAHSex0ZvdKCE
 3rVS1Hwi9V125fMCtoCEV7kWe4vW+khQM2S7V07d9t++dOzDLUdM0RDZkBDnDo66UQEF1QdZo
 hTCJPmedKK6JUjbOM8b0qaSzBI6GXc5c97KOl45wZGl73IyLZMzimkOpFjdsKn1S0ZTUYz4v9
 d3KVq2XeDrkSg4OokHDOZeoLp8VF/YAByZvDtKKVQCynE=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Apr 2024 12:40:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62929

Hi Duy,

The recipe in question was done by the Instrument Cluster EG, we can work o=
n=20
this with the group (main contact Yamaguchi-san). They do meet every other=
=20
monday. See: https://lists.automotivelinux.org/g/agl-dev-community/calendar=
=20

We do exacly what Paul describes all the time in meta-agl to pass the yocto-
check-layer:

e.g.
https://git.automotivelinux.org/AGL/meta-agl/tree/meta-agl-core/recipes-cor=
e/
systemd/systemd_%25.bbappend
and
https://git.automotivelinux.org/AGL/meta-agl/tree/meta-agl-core/recipes-cor=
e/
systemd/systemd_aglcore.inc

The condition can be on DISTRO_FEATURES or other variables. We try not to=20
overload the usage of DISTRO_FEATURES as a change there will trigger a repa=
rse=20
in a lot of locations and hence possibly rebuilds. Thus the use of=20
AGL_FEATURES in above example for anything that is directly related to AGL =
and=20
is not a DISTRO_FEATURE in yocto already.=20

=46or dlt-daemon in your example, we have these options and recommendations:
a) use such a conditional include as shown above ... simple but it will not=
 fix=20
all the issues
b) use :append:<some_other_conditional>  only in .bbappend files
     (name says it all ;) )
    e.g. :append:aglcontainerguest
    or
    e.g.  :append:aglcontainerhost
    The 2nd condition / override is important here to pass the check.
    A simple :append  would triger
c) distill the recipe down to just the required changes & if possible upstr=
eam=20
these (e.g. PACKAGECONFIG options) ... config file changes can also be adde=
d in=20
a "dlt-daemon-conf" package and replace or amend the original files. This h=
elps=20
most.

a) will have immediate effect but only c) and b) will lower the workload mi=
d-
term.=20

A path forward would then be:
Upstream the PACKAGECONFIG bits . It might make sense to rework the package=
 so=20
there is a configuration sub-package that is replaceable by the user. Then =
most=20
conf file changes are in a separate package and can be easily replaced by t=
he=20
user w/o even touching the main (binary) package. That is of importance for=
=20
reproducible builds and binary feeds.=20



Am Montag, 8. April 2024, 14:36:38 CEST schrieb Duy via=20
lists.yoctoproject.org:
> Hi Richard,
>=20
> Thanks for your response.
> Here is one of the recipe bbappend files I'm working on:
> meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%.bbappend =
=B7
> master =B7 Automotive Grade Linux / AGL / meta-agl-devel =B7 GitLab (
> https://gitlab.com/automotivegradelinux/AGL/meta-agl-devel/-/blob/master/=
me
> ta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%25.bbappend?r=
ef_
> type=3Dheads )
> meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%.bbappend =
=B7
> master =B7 Automotive Grade Linux / AGL / meta-agl-devel =B7 GitLab (
> https://gitlab.com/automotivegradelinux/AGL/meta-agl-devel/-/blob/master/=
me
> ta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%25.bbappend?r=
ef_
> type=3Dheads )
>=20
> I think some configurations are better to be upstreaming, e.g: Adding new
> PACKAGES, adding new PACKAGECONFIG. It avoids adding too much to bbappend.
> If you have any idea, please share it.
>=20
> Best Regards,
> Duy Dang





