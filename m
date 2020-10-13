Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web12.4007.1602618134811890064
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 12:42:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tLcwcsor;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id c2so828512qkf.10
        for <yocto@lists.yoctoproject.org>; Tue, 13 Oct 2020 12:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WR8N1dRwcwP/d2d/yd9TnCET3GO7+o9L9igByg44vGc=;
        b=tLcwcsor5oubeu8Qa7Kgzev3kB9fDvMyWpAE0tQgWSCozSpknKM0RcVUQ621HmrR2a
         FY/agCj6QHO08S9w7IgbyLt+koTzgSgj2usUDmoqh5VRSqz8kQm5oXZbF4m6tcFlgUEo
         k6uK+5c44A0agNiukIY0n4As/baNtPwdqAiTmOkTjyL9kXlyhIgrTiwTc7Ty3UrIIvXM
         JPhZ8ez9IFjCK53Jg1XGU3tdQ0LRmKeXsIdSaQMHL8OaOCYy2NeljwnI2xY1OkQwrDng
         7n5mZuR9ISJMwCxMQLkRaM1ZUwNaslaKkt/3AvGPyUKYlpfm2rTxIqw2QfL3mqFKAy26
         iUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WR8N1dRwcwP/d2d/yd9TnCET3GO7+o9L9igByg44vGc=;
        b=IfDAOp6p+QSptkL3Lu5OrimeupBYWECXq3FzV4SdkbEgwZ7GCK6NcaDOsbXMZDDShH
         /BcbEH4IDwWJsd8e+aU1HvrOuvxypTvCAe/DuBUoBGCZCBNa6qhp5Ok+BqpXQRBbPkU2
         AGNs+Fl7VJbuttVQaPMPlwPBr31pqPplEqh34n46kFAQeDKQ+oNzBLciVG86Q7UJEx48
         PFy8U5R6x8DSFVWCI4N9JEtJRrhGTF/l8Dvdh50lpYFLmFtZrOb7N1ePw7AqXkEnFoNr
         G+Yvc3HSTrIcm/l4cDWeYWLeN3otK9jfObThHkLReBnq3j7w8V+9YJZljopgSpLHAXkx
         5JPA==
X-Gm-Message-State: AOAM531VlsACJP/shvbvpspYzZ359wTRlm/e+1Au0DS1av7GLgBHOcME
	IUY//ULFuWDoalh0Z8MZ1VO9WwzU4Tjso2jJCoI=
X-Google-Smtp-Source: ABdhPJxVguYo/aeW6HgXCN1nJsBeVvlmJ3lIazlEu6KFbo9hVmp4MGnBuITfOLw/D9Em2xuAvQzBPmTt45aYfzdvwwU=
X-Received: by 2002:a37:a751:: with SMTP id q78mr1588562qke.337.1602618133845;
 Tue, 13 Oct 2020 12:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <15104.1600836543637853360@lists.yoctoproject.org> <11004.1602615073598026525@lists.yoctoproject.org>
In-Reply-To: <11004.1602615073598026525@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 13 Oct 2020 12:42:02 -0700
Message-ID: <CAMKF1srzO21-o+R74e8HTuSBsfSck1Zm_2Kx5G7u73vePN+bGw@mail.gmail.com>
Subject: Re: [yocto] Yocto recipe for Tailscale #yocto #golang
To: mthompson@dustyrobotics.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000094193005b1929c8e"

--00000000000094193005b1929c8e
Content-Type: text/plain; charset="UTF-8"

This is not ideal to capture compiler for your app it should be written
portably my guess is that app has issues with using golang properly

Do you know what changes they made to compiler and which version is it
locked to

On Tue, Oct 13, 2020 at 11:51 AM Mike Thompson via lists.yoctoproject.org
<mthompson=dustyrobotics.com@lists.yoctoproject.org> wrote:

> A follow up on a Yocto recipe for building a Tailscale package for others
> who have an interest in this.
>
> Although the final recipe I created appears to successfully build the
> Tailscale utility and daemon without warnings or errors, the resulting
> 'tailscaled' daemon crashes when used.
>
> Investigating this issue further I discovered that Tailscale maintains
> their own GoLang repository
> <https://github.com/tailscale/go/tree/build-56db76510f9640d2ad652f206ae6e41c1a5d63ca>
> with changes needed to support Tailscale. I suspect, but haven't proven,
> using the standard Yocto supported versions of GoLang to build Tailscale
> results in the crashes I see.  Unfortunately, I don't have enough of an
> understanding of GoLang to determine how to build Tailscale with the unique
> version of GoLang maintained by the Tailscale folks..
>
> Instead of resolving this build issue, I instead created a Yocto recipe
> that utilizes the released binaries from Tailscale
> <https://pkgs.tailscale.com/stable/#static> to create a Yocto package.
> This isn't ideal as I would much rather build from source, but solves my
> short term needs.  This alternate recipe to build a Yocto package from
> binaries is included below.
>
> ------------------------------------------------------------------------
>
> tailscale_1.0.5.bb
>
> SUMMARY = "Tailscale client and daemon for Linux from Tailscale pre-built
> binaries"
>
> HOMEPAGE = "github.com/tailscale/tailscale"
>
> SECTION = "net"
>
> LICENSE = "CLOSED"
>
>
>
> COMPATIBLE_HOST = "x86_64.*-linux"
>
>
>
> # Archive URL:
>
> #   https://pkgs.tailscale.com/stable/tailscale_1.0.5_amd64.tgz
>
> #
>
> # Archive contents:
>
> #   tailscale_1.0.5_amd64/systemd
>
> #   tailscale_1.0.5_amd64/systemd/tailscaled.service
>
> #   tailscale_1.0.5_amd64/systemd/tailscaled.defaults
>
> #   tailscale_1.0.5_amd64/tailscaled
>
> #   tailscale_1.0.5_amd64/tailscale
>
> #
>
> # Set SRC_URI subdir to ${P} so that files are unpacked into ${S}
>
> SRC_URI = "
> https://pkgs.tailscale.com/stable/${BPN}_${PV}_amd64.tgz;subdir=${P}"
>
> SRC_URI[md5sum] = "fad1e5317ec567b77c3a0b53b8b976cf"
>
> SRC_URI[sha256sum] =
> "ecfcda12068d6ecb2be72eba5572ab09406643bcc73c0cd482ae88060720c430"
>
>
>
> inherit systemd
>
>
>
> FILES_${PN} += "${systemd_unitdir}/*"
>
>
>
> do_install() {
>
>     install -d ${D}/${bindir}
>
>     install -d ${D}/${sbindir}
>
>     install ${S}/${PN}_${PV}_amd64/tailscale ${D}/${bindir}/tailscale
>
>     install ${S}/${PN}_${PV}_amd64/tailscaled ${D}/${sbindir}/tailscaled
>
>
>
>     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false',
> d)}; then
>
>         install -d ${D}${sysconfdir}/default/
>
>         install -m 0644 ${S}/${PN}_${PV}_amd64/systemd/tailscaled.defaults
> ${D}${sysconfdir}/default/tailscaled
>
>
>
>         install -d ${D}${systemd_unitdir}/system
>
>         install -m 0644 ${S}/${PN}_${PV}_amd64/systemd/tailscaled.service
> ${D}${systemd_unitdir}/system/tailscaled.service
>
>
>
>         install -d
> ${D}${sysconfdir}/systemd/system/multi-user.target.wants/
>
>         ln -s ${systemd_unitdir}/system/tailscaled.service
> ${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled.service
>
>     fi
>
> }
>
>
>
> SYSTEMD_PACKAGES = "${PN}"
>
> SYSTEMD_SERVICE_${PN} = "tailscaled.service"
>
>
>
> SYSTEMD_AUTO_ENABLE = "enable"
>
> ------------------------------------------------------------------------
>
>
>
> Mike Thompson
>
> 
>
>

--00000000000094193005b1929c8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">This is not ideal to capture compiler for =
your app it should be written portably my guess is that app has issues with=
 using golang properly=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Do you know what changes they made to compiler and which version is it=
 locked to=C2=A0</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=
=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 13, 2020 at 11=
:51 AM Mike Thompson via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;mthompson=3D<a href=3D"mailto:dustyrobotics.com@list=
s.yoctoproject.org">dustyrobotics.com@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><p>A follow up on a Yocto recipe f=
or building a Tailscale package for others who have an interest in this.</p=
>
<p>Although the final recipe I created appears to successfully build the T=
ailscale utility and daemon without warnings or errors, the resulting &#39;=
tailscaled&#39; daemon crashes when used.</p>
<p>Investigating this issue further I discovered that Tailscale maintains =
their own <a href=3D"https://github.com/tailscale/go/tree/build-56db76510f9=
640d2ad652f206ae6e41c1a5d63ca" rel=3D"noopener" target=3D"_blank">GoLang re=
pository</a> with changes needed to support Tailscale. I suspect, but haven=
&#39;t proven, using the standard Yocto supported versions of GoLang to bui=
ld Tailscale results in the crashes I see.=C2=A0 Unfortunately, I don&#39;t=
 have enough of an understanding of GoLang to determine how to build Tailsc=
ale with the unique version of GoLang maintained by the Tailscale folks..</=
p>
<p>Instead of resolving this build issue, I instead created a Yocto recipe=
 that utilizes the <a href=3D"https://pkgs.tailscale.com/stable/#static" re=
l=3D"noopener" target=3D"_blank">released binaries from Tailscale</a> to cr=
eate a Yocto package.=C2=A0 This isn&#39;t ideal as I would much rather bui=
ld from source, but solves my short term needs.=C2=A0 This alternate recipe=
 to build a Yocto package from binaries is included below.<br><br></p>
<p>-----------------------------------------------------------------------=
-</p>
<p><a href=3D"http://tailscale_1.0.5.bb" target=3D"_blank">tailscale_1.0.5=
.bb</a></p>
<p>SUMMARY =3D &quot;Tailscale client and daemon for Linux from Tailscale =
pre-built binaries&quot;</p>
<p>HOMEPAGE =3D &quot;<a href=3D"http://github.com/tailscale/tailscale" ta=
rget=3D"_blank">github.com/tailscale/tailscale</a>&quot;</p>
<p>SECTION =3D &quot;net&quot;</p>
<p>LICENSE =3D &quot;CLOSED&quot;</p>
<p>=C2=A0</p>
<p>COMPATIBLE_HOST =3D &quot;x86_64.*-linux&quot;</p>
<p>=C2=A0</p>
<p># Archive URL:</p>
<p>#=C2=A0 =C2=A0<a href=3D"https://pkgs.tailscale.com/stable/tailscale_1.=
0.5_amd64.tgz" target=3D"_blank">https://pkgs.tailscale.com/stable/tailscal=
e_1.0.5_amd64.tgz</a></p>
<p>#</p>
<p># Archive contents:</p>
<p>#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd</p>
<p>#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd/tailscaled.service</p>
<p>#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd/tailscaled.defaults</p>
<p>#=C2=A0 =C2=A0tailscale_1.0.5_amd64/tailscaled</p>
<p>#=C2=A0 =C2=A0tailscale_1.0.5_amd64/tailscale</p>
<p>#</p>
<p># Set SRC_URI subdir to ${P} so that files are unpacked into ${S}</p>
<p>SRC_URI =3D &quot;<a href=3D"https://pkgs.tailscale.com/stable/$%7BBPN%=
7D_$%7BPV%7D_amd64.tgz;subdir=3D$%7BP%7D" target=3D"_blank">https://pkgs.ta=
ilscale.com/stable/${BPN}_${PV}_amd64.tgz;subdir=3D${P}</a>&quot;</p>
<p>SRC_URI[md5sum] =3D &quot;fad1e5317ec567b77c3a0b53b8b976cf&quot;</p>
<p>SRC_URI[sha256sum] =3D &quot;ecfcda12068d6ecb2be72eba5572ab09406643bcc7=
3c0cd482ae88060720c430&quot;</p>
<p>=C2=A0</p>
<p>inherit systemd</p>
<p>=C2=A0</p>
<p>FILES_${PN} +=3D &quot;${systemd_unitdir}/*&quot;</p>
<p>=C2=A0</p>
<p>do_install() {</p>
<p>=C2=A0 =C2=A0 install -d ${D}/${bindir}</p>
<p>=C2=A0 =C2=A0 install -d ${D}/${sbindir}</p>
<p>=C2=A0 =C2=A0 install ${S}/${PN}_${PV}_amd64/tailscale ${D}/${bindir}/t=
ailscale</p>
<p>=C2=A0 =C2=A0 install ${S}/${PN}_${PV}_amd64/tailscaled ${D}/${sbindir}=
/tailscaled</p>
<p>=C2=A0</p>
<p>=C2=A0 =C2=A0 if ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;s=
ystemd&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/default/</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${S}/${PN}_${PV}_amd64/syst=
emd/tailscaled.defaults ${D}${sysconfdir}/default/tailscaled</p>
<p>=C2=A0</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/system</p=
>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${S}/${PN}_${PV}_amd64/syst=
emd/tailscaled.service ${D}${systemd_unitdir}/system/tailscaled.service</p>
<p>=C2=A0</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/systemd/system=
/multi-user.target.wants/</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -s ${systemd_unitdir}/system/tailscaled.=
service ${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled=
.service</p>
<p>=C2=A0 =C2=A0 fi</p>
<p>}</p>
<p>=C2=A0</p>
<p>SYSTEMD_PACKAGES =3D &quot;${PN}&quot;</p>
<p>SYSTEMD_SERVICE_${PN} =3D &quot;tailscaled.service&quot;</p>
<p>=C2=A0</p>
<p>SYSTEMD_AUTO_ENABLE =3D &quot;enable&quot;</p>
<p>-----------------------------------------------------------------------=
-</p>
<p>=C2=A0</p>
<p>Mike Thompson</p>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000094193005b1929c8e--
