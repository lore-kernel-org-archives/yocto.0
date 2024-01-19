Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AEBAC4725D
	for <webhook@archiver.kernel.org>; Fri, 19 Jan 2024 08:56:56 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.17845.1705654612130101301
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jan 2024 00:56:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KT88/R3H;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cdebb968feso6439671fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 00:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705654610; x=1706259410; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VU99ittpceQCZgqsanx1P4q6mZlS13yRnuL7WX8qcNM=;
        b=KT88/R3HcDFDj22K5PuALcFlYD5Bk05TDhBuUjeUYjNLFLAPLCCkQ1LKa7mSJaemM1
         57Hr/lWyMqR7P0skl/tvs+lQqBrObuCSwtmGVb1xdQaORcocH9q9iIYoFYCW2oMySAtI
         a0+2EaWZhNoHSK8oWUOCkxF0PyFc+EQGEgsSdpHT/YXEvvk5Mf1fvhbEb2o+N9rsT1nX
         r/rWv+EPNW6gesOxsf6RPwTMpOXxAOXRoN2LMVFTOKbwfg5yUpXr9m4rjr9aWhMLz4j/
         aCXsnPbN0jiEBwM1SIrhVF5vbSPthQwEI+jISDtK4x+Zx1UOxA0RvHCzKuzw7E7hWIJo
         US4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705654610; x=1706259410;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VU99ittpceQCZgqsanx1P4q6mZlS13yRnuL7WX8qcNM=;
        b=CVSxjygrViG8Ohuy80G5efrvO+3yfLptdBojkVs+LfkrzhWxF1rPIOMXYa1yjVHPoq
         9Agf3BJ2lt1YQb5lkqHEspk8ePp1tm4BySStlykTpJn7dmIiEkHRQp7Uk/DUs5KrAbc/
         kwqlwHAy/9i5F52Qtvg8L4syMNhwtifqDbzzeU9HMpxV64ByV4J8wBRZ2JrkR6U13Ic5
         Op+lEZdYdfm2UtkfPruLDJ8NvTvG3ZOieem86xpxri+xNI7hLf8UAE21TmDHQXzLlwiE
         QtDDSBJQ39Um3C7kE5LlOVcNtC5kzGnx36ZL9iqQUaukWUIzuoAJfoQpjXkVREUZ3klW
         /MKg==
X-Gm-Message-State: AOJu0YzR5FxMeSbXQFhjAGxI+Aku4hpOnKJ9RPMCSilU0p+tPlifWo6X
	uPxLZ+3EJqSJu28WM2W4IrQrMogJwH3mLvgyU5GiVH3mrSRp7oMG+H6Q6Fvg/Aa0+Eia96HXxL/
	MnwfgvvbbLts1E2mTlI8XELy2HoI=
X-Google-Smtp-Source: AGHT+IGpnA0cGtpSSpFVNuodB5ys5CI1EAlQIDD06Fg506ECO067xnsSvNvsM3xvCx1taKe9PAwsT1v4reAc2+lIZ5E=
X-Received: by 2002:a2e:3507:0:b0:2cd:633c:633a with SMTP id
 z7-20020a2e3507000000b002cd633c633amr1038506ljz.82.1705654609813; Fri, 19 Jan
 2024 00:56:49 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv36_k6eEvWoJB4_kD4gKKmQ3ia3XWTVtYRf5hgyi5ctDzQ@mail.gmail.com>
 <24610.1705613679102985792@lists.yoctoproject.org>
In-Reply-To: <24610.1705613679102985792@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 19 Jan 2024 09:56:38 +0100
Message-ID: <CAAfyv34GF1V7nGiTm_vD=twOKRdzaE4MZqAvA7nM2Dy2BZYaUA@mail.gmail.com>
Subject: Re: [yocto] etherlab
To: Daniele Lugli <daniele.lugli@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000020a662060f48a98b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 08:56:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62196

--00000000000020a662060f48a98b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniele,

On Thu, Jan 18, 2024 at 10:34=E2=80=AFPM Daniele Lugli <daniele.lugli@gmail=
.com>
wrote:

> Hi Marek, and thank you for your reply.
>
> Adding line "inherit autotools" (not "autoconf") in my recipe solved that
> problem.
> (I also had to put the sources of etherlab as a tgz and not as a plain
> directory)
>
> I am now facing a different problem: the configure command complains
>
> error: kernel 6.5 not available for 8139too driver!
>
> As I don't need 8139too, I changed the configure arguments to
>
>  sh configure --sysconfdir=3D/etc --enable-igb --disable-8139too

I've used devtool (you can find more in the poky manual) to create a base
recipe then with a few tweaks I can build it.
Please name this as ethercat_git.bb with content:
LICENSE =3D "GPL-2.0-only & LGPL-2.1-only & Unknown"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552=
 \

file://COPYING.LESSER;md5=3D4fbd65380cdd255951079008b364516c \

file://devices/e1000/LICENSE;md5=3De2643b73e47fa4b29cdfad24ee42bed6"

DEPENDS +=3D "pkgconfig-native"
RDEPENDS:${PN} +=3D "bash"

SRC_URI =3D "git://
gitlab.com/etherlab.org/ethercat.git;protocol=3Dhttps;branch=3Dmaster"

# Modify these as desired
PV =3D "1.6.0-rc1+git${SRCPV}"
SRCREV =3D "420e6150f55b71b97a84c64831f4928e0859a0e9"

S =3D "${WORKDIR}/git"

inherit autotools

EXTRA_OECONF =3D "--enable-igb --disable-8139too
--with-linux-dir=3D${STAGING_KERNEL_BUILDDIR} --disable-igb"

FILES:${PN} +=3D "${datadir}/*"

Hope this helps.

>
>
> This works if I build etherlab out of poky, but has no effect inside
> do_compile: I still get the same "not available" error.
>
> My impression is that my do_compile isn't executed at all, and somehow
> "configure" is executed without my parameters. Is this possible?
>
> Best regards,
>
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>

BR,

marek
--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000020a662060f48a98b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Daniele,</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 18, 2024 at 10:34=E2=80=AFPM D=
aniele Lugli &lt;<a href=3D"mailto:daniele.lugli@gmail.com">daniele.lugli@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hi Marek, and thank you for your reply.<br><br>Adding line &quot;in=
herit autotools&quot; (not &quot;autoconf&quot;) in my recipe solved that p=
roblem.<br>(I also had to put the sources of etherlab as a tgz and not as a=
 plain directory)<br><br>I am now facing a different problem: the configure=
 command complains<br><br><span style=3D"color:rgb(255,0,0)">error: kernel =
6.5 not available for 8139too driver!</span><br><br>As I don&#39;t need 813=
9too, I changed the configure arguments to<br><br><span style=3D"color:rgb(=
0,0,255)">=C2=A0sh configure --sysconfdir=3D/etc --enable-igb --disable-813=
9too</span></blockquote><div>I&#39;ve used devtool (you can find more in th=
e poky manual) to create a base recipe then with a few tweaks I can build i=
t.=C2=A0</div><div>Please name this as <a href=3D"http://ethercat_git.bb">e=
thercat_git.bb</a> with content:<br>LICENSE =3D &quot;GPL-2.0-only &amp; LG=
PL-2.1-only &amp; Unknown&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYIN=
G;md5=3D59530bdf33659b29e73d4adb9f9f6552 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://COPYING.LESSER;md5=3D4fbd6=
5380cdd255951079008b364516c \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://devices/e1000/LICENSE;md5=3De2643b73e47f=
a4b29cdfad24ee42bed6&quot;<br><br>DEPENDS +=3D &quot;pkgconfig-native&quot;=
<br>RDEPENDS:${PN} +=3D &quot;bash&quot;<br><br>SRC_URI =3D &quot;git://<a =
href=3D"http://gitlab.com/etherlab.org/ethercat.git;protocol=3Dhttps;branch=
=3Dmaster">gitlab.com/etherlab.org/ethercat.git;protocol=3Dhttps;branch=3Dm=
aster</a>&quot;<br><br># Modify these as desired<br>PV =3D &quot;1.6.0-rc1+=
git${SRCPV}&quot;<br>SRCREV =3D &quot;420e6150f55b71b97a84c64831f4928e0859a=
0e9&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>inherit autotools<=
br><br>EXTRA_OECONF =3D &quot;--enable-igb --disable-8139too --with-linux-d=
ir=3D${STAGING_KERNEL_BUILDDIR} --disable-igb&quot;<br><br>FILES:${PN} +=3D=
 &quot;${datadir}/*&quot;<br></div><div><br></div><div>Hope this helps.</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><br><br>This works if I=
 build etherlab out of poky, but has no effect inside do_compile: I still g=
et the same &quot;not available&quot; error.<br><br>My impression is that m=
y do_compile isn&#39;t executed at all, and somehow &quot;configure&quot; i=
s executed without my parameters. Is this possible?<br><br>Best regards,<br=
><br>-- <br>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br>Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small"><a style=3D"color:rgb(17,85,204)" href=3D"http://www.general-=
logic.com/" rel=3D"noopener" target=3D"_blank">www.general-logic.com</a></d=
iv>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small"><a style=3D"color:rgb(17,85,204)" href=3D"http://www.linkedin=
.com/in/daniele-lugli" rel=3D"noopener" target=3D"_blank">www.linkedin.com/=
in/daniele-lugli</a></div>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>mare=
k</div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr=
" class=3D"gmail_signature">as simple and primitive as possible<br>--------=
-----------------------------------------<br>Marek Belisko - OPEN-NANDRA<br=
>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Repub=
lic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<b=
r>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nan=
dra.com</a></div></div>

--00000000000020a662060f48a98b--

