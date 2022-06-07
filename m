Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72FEC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 22:12:36 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.3664.1654639952341218063
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 15:12:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cElXs1oe;
 spf=pass (domain: gmail.com, ip: 209.85.167.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id w20so8745809lfa.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 15:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=krLwdzmW9no8PSmXtkkLqTyc0//VaSfOifRnfEi0USM=;
        b=cElXs1oe+XNsJX+eThOcr9azL4vd2sQzyx55U9kLVbFAc3/cCToZ5vQlG1KXZRt3pX
         zSqPEIC1k5HC4LgV9B1Rd10XyyQHzD+rXJUn3QqxAMhbt5dAZ76FbAupvNgclasxUuw9
         qAVBAWRDbXUwQLcNwSxww28ZLbArmmai+VAOVGLSZ2IxwMdDHU3H52EUOiiWxt3UPck1
         RUS5h5TOqNpCtVhgQrfaZ3A3apWFE2KpvsJ/3f94WqwGKLKJtzh3EOIIA/a+7lposh8u
         kbIHavWtuxRXPpBEqH2xTu/pVbSrOjE9fItas9cgeaGF04XMdfC/0dicmvxoYFekTKbu
         iZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=krLwdzmW9no8PSmXtkkLqTyc0//VaSfOifRnfEi0USM=;
        b=dX+Dyk5Sm0yrE6Gti6gaCyBsiJTguzzsfHs5D/+JdYCHxMXwGIfa47LrvDm3N8P8XK
         hYx1AxyQW7DZ6fno2z0ray+LQmgX7GUlaRO59Edx0aFEWuVdzXfL423lvFT8K7g54f7j
         gghMWFC6ka0iktl8R21gnDzVoDec4zqrLwT2+B9F5TgcqFtnNgZg1BHvxwmURhvSkZdv
         jjJ2kebQxd7gXvXxY1sKyRxFgGBaiMzlHqRvaNnHFV9ls0NgvDvGjP/g/iJRaUj+pDso
         kWFDuqsl/kZg4GSEdJVfUrCLiGmAstTeBulkSlBWhxIjyT+aNjmAe6r+h3XUwO2Kt4AS
         mrAg==
X-Gm-Message-State: AOAM532vQPsxWTObtbzKapqo2+RHL/pNRHTZiutVuH8iL88lfBuLOSmx
	45mwv2tvH5IE8udRIGxRu2NV0Prga40k9ARP9Zs=
X-Google-Smtp-Source: 
 ABdhPJy0ztwg+onATbtPEu4m3XbuRV22cF0wtiCaSHdu6xAmngf+wkbu4RP9y1WyVYZNYcpqgFOU742TV4THyUWnmWA=
X-Received: by 2002:a05:6512:3448:b0:479:10f0:11c7 with SMTP id
 j8-20020a056512344800b0047910f011c7mr18324101lfr.521.1654639950433; Tue, 07
 Jun 2022 15:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
In-Reply-To: <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 Jun 2022 01:12:19 +0300
Message-ID: 
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
Subject: Re: [yocto] Force binary package install
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007a112f05e0e2e2a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 22:12:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57299

--0000000000007a112f05e0e2e2a0
Content-Type: text/plain; charset="UTF-8"

Can you drop insane_skip for a moment and show what errors then happen?

Alex

On Tue 7. Jun 2022 at 22.57, Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

>
> On 6/7/22 12:44 PM, Alexander Kanavin wrote:
> > Can you show the recipe that you wrote for the blob?
>
> Not exactly as is because of customer names, but below is a sanitized
> version:
>
>
> SUMMARY = "Binary Stuff"
>
> LICENSE = "CLOSED"
>
> SRC_URI = "file://binary_installer.tgz \
>            "
>
> do_install() {
>
>      install -d -m 0755 ${D}/opt/binstuff
>
>      tar cf - -C ${WORKDIR}/opt/binstuff . | tar xf - -C ${D}/binstuff
>
> }
>
> FILES:${PN} = "/opt/binstuff"
>
>
> RDEPENDS:${PN} += "libsystemd libudev libgpiod wayland"
> INSANE_SKIP:${PN} += "ldflags file-rdeps arch staticdev"
>
> The recipe itself builds just fine and creates the RPM package. However,
> the some of the binaries inside the package have been built against
> shared libs of older versions. The libs are there of course but with the
> wrong version. Adding file-rdeps to INSANE_SKIP addresses this at build
> time. But when installing the package in the rootfs dnf does a
> dependency check which then fails.
>
> I don't know if there is an elegant way of overriding dnf to force
> installation of the package.
>
>
> >
> > Alex
> >
> > On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif <rudolf.streif@ibeeto.com>
> wrote:
> >> I have been handed a binary package that I am integrating into a Yocto
> >> build.
> >>
> >> When dnf runs it complains about missing dependencies. These are
> >> standard libraries of course but the culprit is the incompatible
> >> version. The software runs fine when I install it on the target using
> >> the script/tar installation it comes with. Needless to say that YP
> >> packaging QA complains about this already when assembling the package.
> >> However, there I can silence the complaints with INSANE_SKIP.
> >>
> >> Unfortunately I have not found a method doing the same when the package
> >> is installed by the image class.
> >>
> >> Is there an elegant way around it?
> >>
> >>
> >> Error:
> >>    Problem: conflicting requests
> >>     - nothing provides libdl.so.2 needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libdl.so.2(GLIBC_2.0) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libdl.so.2(GLIBC_2.1) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libgcc_s.so.1 needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libgcc_s.so.1(GCC_3.0) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libm.so.6 needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libm.so.6(GLIBC_2.0) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libm.so.6(GLIBC_2.1) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libpthread.so.0 needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libpthread.so.0(GLIBC_2.0) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libpthread.so.0(GLIBC_2.1) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libpthread.so.0(GLIBC_2.2) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides libpthread.so.0(GLIBC_2.3.2) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides librt.so.1 needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >>     - nothing provides librt.so.1(GLIBC_2.2) needed by
> >> xxx-single-group-0.1-r0.cortexa53_crypto
> >> (try to add '--skip-broken' to skip uninstallable packages)
> >>
> >>
> >> --
> >> Rudolf J Streif
> >> CEO/CTO ibeeto
> >> +1.855.442.3386 x700
> >>
> >>
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#57296):
> https://lists.yoctoproject.org/g/yocto/message/57296
> >> Mute This Topic: https://lists.yoctoproject.org/mt/91607892/1686489
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> -=-=-=-=-=-=-=-=-=-=-=-
> >>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>

--0000000000007a112f05e0e2e2a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you drop insane_skip for a moment and show what error=
s then happen?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div=
><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue 7. Jun 2022 at 22.57, Rudolf J Streif &lt;<a href=3D"mailto:rudolf.s=
treif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,2=
04,204)"><br>
On 6/7/22 12:44 PM, Alexander Kanavin wrote:<br>
&gt; Can you show the recipe that you wrote for the blob?<br>
<br>
Not exactly as is because of customer names, but below is a sanitized <br>
version:<br>
<br>
<br>
SUMMARY =3D &quot;Binary Stuff&quot;<br>
<br>
LICENSE =3D &quot;CLOSED&quot;<br>
<br>
SRC_URI =3D &quot;file://binary_installer.tgz \<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br>
<br>
do_install() {<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 install -d -m 0755 ${D}/opt/binstuff<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 tar cf - -C ${WORKDIR}/opt/binstuff . | tar xf - -=
C ${D}/binstuff<br>
<br>
}<br>
<br>
FILES:${PN} =3D &quot;/opt/binstuff&quot;<br>
<br>
<br>
RDEPENDS:${PN} +=3D &quot;libsystemd libudev libgpiod wayland&quot;<br>
INSANE_SKIP:${PN} +=3D &quot;ldflags file-rdeps arch staticdev&quot;<br>
<br>
The recipe itself builds just fine and creates the RPM package. However, <b=
r>
the some of the binaries inside the package have been built against <br>
shared libs of older versions. The libs are there of course but with the <b=
r>
wrong version. Adding file-rdeps to INSANE_SKIP addresses this at build <br=
>
time. But when installing the package in the rootfs dnf does a <br>
dependency check which then fails.<br>
<br>
I don&#39;t know if there is an elegant way of overriding dnf to force <br>
installation of the package.<br>
<br>
<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif &lt;<a href=3D"mailto:rud=
olf.streif@ibeeto.com" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; w=
rote:<br>
&gt;&gt; I have been handed a binary package that I am integrating into a Y=
octo<br>
&gt;&gt; build.<br>
&gt;&gt;<br>
&gt;&gt; When dnf runs it complains about missing dependencies. These are<b=
r>
&gt;&gt; standard libraries of course but the culprit is the incompatible<b=
r>
&gt;&gt; version. The software runs fine when I install it on the target us=
ing<br>
&gt;&gt; the script/tar installation it comes with. Needless to say that YP=
<br>
&gt;&gt; packaging QA complains about this already when assembling the pack=
age.<br>
&gt;&gt; However, there I can silence the complaints with INSANE_SKIP.<br>
&gt;&gt;<br>
&gt;&gt; Unfortunately I have not found a method doing the same when the pa=
ckage<br>
&gt;&gt; is installed by the image class.<br>
&gt;&gt;<br>
&gt;&gt; Is there an elegant way around it?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Error:<br>
&gt;&gt;=C2=A0 =C2=A0 Problem: conflicting requests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.0) needed=
 by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.1) needed=
 by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1 needed by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1(GCC_3.0) neede=
d by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6 needed by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIBC_2.0) needed =
by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIBC_2.1) needed =
by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0 needed by<br=
>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.0) n=
eeded by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.1) n=
eeded by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.2) n=
eeded by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.3.2)=
 needed by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1 needed by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1(GLIBC_2.2) needed=
 by<br>
&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
&gt;&gt; (try to add &#39;--skip-broken&#39; to skip uninstallable packages=
)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Rudolf J Streif<br>
&gt;&gt; CEO/CTO ibeeto<br>
&gt;&gt; +1.855.442.3386 x700<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#57296): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/57296" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/57296</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/9160=
7892/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/91607892/1686489</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"=
>alex.kanavin@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
-- <br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
+1.855.442.3386 x700<br>
<br>
</blockquote></div></div>

--0000000000007a112f05e0e2e2a0--

