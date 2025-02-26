Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DACC021B8
	for <webhook@archiver.kernel.org>; Wed, 26 Feb 2025 06:32:38 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.584.1740551555889886794
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 22:32:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AxES77Go;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30a2dfcfd83so59969221fa.1;
        Tue, 25 Feb 2025 22:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740551553; x=1741156353; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NaxmxJYVL7C3GrVvz4C7FXM0U84XAdNhiDJCQpc9LZc=;
        b=AxES77Go2yfpTn1fj3wcj6JtERSUFm2IA7xDWAKT3bbmAr7MLMTrBGGsJkfapLYoju
         tZ2Js6wjhhXv3xkSXCjtE6BWeI4qixqUn2SeRIuk2ldW6t6q6X+ZVRM/OnBCPFytl1WJ
         rokBlGsVvTeFjLgg2gNAwbxTTskirq5kw89Rh+sdT+ww5lmYeCMkoSURaE0GW+3dqZK9
         tRAlLfeS2LsEAFAwpzk2lB2j/kbZMmHu3DnJ7uThJY41P/ImcWVs0F8GKaPC0g2XZdfq
         eBuOrlVtVnS8apTS3KCNjT9963FK2I3b+1r7iEVMMZzlXEOyYUafpSnHmp3w1BvpbwI9
         3kTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740551553; x=1741156353;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NaxmxJYVL7C3GrVvz4C7FXM0U84XAdNhiDJCQpc9LZc=;
        b=t+tA+YgIkO1Caruw6+ugAn4+IcNfD94l2WRaIebtYod7uL4ylreoJM2FydA8gbqVoP
         3UZ1LJw1gXozNpFZEsVMBdn0yw2bPKsIpvaqLvP+8GYO+PF4vZlO73YC2tCenYZQkLV/
         SvlhZiG0xheq2aIZ6GOx0UQe1Uv0YuZVkKKsvTSHVBMv37LhiefSPVrM1QV/uxrq0T3m
         IOzyYkcdSBR2I7Z+jFBo0e6jpvULaHM4cp3ib10fKYipyVVLnq/ZD36610YMBdczncWD
         fKY9jhtp+nb3DfVi8yUCjt++fdl44ZeMtHPV0wAmHZpy0TwTbh6mb2DeDdGcryhXBYDe
         ayaA==
X-Forwarded-Encrypted: i=1; AJvYcCXXAIyk6xUuPbycw2jcNNCGEtZKFS/PHCI3FHEL8DjFJZvFyP6lhea4kklAAkbYDb5BXyW66Lps7ibOMCmwWrXzlFm4PYIc@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwpDNfYGKGFdBNA7asEESbFdTc9XOCAAjf7b47hqngFv8rBlxZr
	eqYfg7yYKO/GVVBhoaHooVl0wtTW7x4zYixHeiLbs7oUcJfFex1rTXfymhJY6NZPyUUI0exaM7y
	pLlz4QNNd/MSpr/n/CmecbrBZdGggTg==
X-Gm-Gg: ASbGncs5TMwNXganQadNR1BCg2zANjYGERpMn5286htr18WQR5RuALvqpvzVVFnC0Ng
	u8BzVWIE1we1E3scWJgiHOYqOfCA+DxN+tPZUtkkxKqdJIyEcefxaetncPT9uYdeyE1qsdXI70G
	1vj8hF4s3eX9KlxA==
X-Google-Smtp-Source: AGHT+IEWxqGLYdy2ZaT/GePqZc49sqbphA6ADMULeljGJbtFsaOW3gDRNgDuLOAPI9LQqcQi2lXn6U2BK9cMvnjXAuE=
X-Received: by 2002:a05:651c:2225:b0:308:e476:3b9c with SMTP id
 38308e7fff4ca-30a598f6c6emr97360901fa.19.1740551552701; Tue, 25 Feb 2025
 22:32:32 -0800 (PST)
MIME-Version: 1.0
References: <751653524.2812887.1740495957756@webmail.strato.de>
 <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com> <199985764.584582.1740550886762@webmail.strato.de>
In-Reply-To: <199985764.584582.1740550886762@webmail.strato.de>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 26 Feb 2025 06:32:22 +0000
X-Gm-Features: AWEUYZn213ga7sKdD6uQGfjo0SdV9GrkwnXOxaSqGnHKjP1lgL6XcdEaC6HWQkQ
Message-ID: <CAO5Uq5SRGhgxeRBLJ-=hUZUJy5pauJCCMGqYQxcwqM1L3WYiJA@mail.gmail.com>
Subject: Re: [yocto] Yocto Dunfell - Modify OpenSSH configuration
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	"Alexander Kanavin via lists.yoctoproject.org" <alex.kanavin=gmail.com@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000032434062f05bd6d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2025 06:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64875

--000000000000032434062f05bd6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Where did you put your bbappend? If it's alongside the openssh recipe in
core then it won't be parsed as the pattern there doesn't include
*.bbappend:

https://git.openembedded.org/openembedded-core/tree/meta/conf/layer.conf?h=
=3Ddunfell#n4

On Wed, 26 Feb 2025, 06:21 Daniel Kampert via lists.yoctoproject.org,
<kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:

> Hi Alex,
>
> I=C2=B4ve checked several files for informations.
>
> 1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything about my
> modifications
> 2. files-in-package.txt for aarch64-tdx-linux openssh gives me the
> following output
>
> drwxr-xr-x root       root             4096 ./home
> drwx------ root       root             4096 ./home/root
> drwxr-xr-x root       root             4096 ./home/root/.ssh
> -rw------- root       root              106
> ./home/root/.ssh/authorized_keys
>
> 3. log.do_install doesn=C2=B4t list my file
>
> Do you have any other tips?
>
> Thanks!
>
> > Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3D
> gmail.com@lists.yoctoproject.org> hat am 25.02.2025 17:02 CET geschrieben=
:
> >
> >
> > Either the needed changes aren't being packaged correctly (check
> > ${WORKDIR}/packages-splt for openssh recipe), or the needed package
> > isn't being installed into the image (check
> > ${WORKDIR}/temp/log.do_rootfs for the image).
> >
> > Alex
> >
> > On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
> > lists.yoctoproject.org
> > <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > >
> > > I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and =
modify
> the OpenSSH configuration. So I=C2=B4ve added
> "recipes-connectivity/openssh/openssh_%.bbappend" with this content
> > >
> > > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > >
> > > # Apply the SSH configuration
> > > # - Disable password authentication
> > > # - Disable X11 forwarding
> > > # - Enable public key authentication
> > > do_install_append () {
> > >   sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g'
> ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication
> no:g' ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e
> 's:^#ChallengeResponseAuthentication.*$:ChallengeResponseAuthentication
> no:g' ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#UsePAM.*$:UsePAM no:g'
> ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g'
> ${D}${sysconfdir}/ssh/sshd_config
> > >
> > >   install -d 0700 ${D}${ROOT_HOME}/.ssh
> > >   install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub"
> ${D}${ROOT_HOME}/.ssh/authorized_keys
> > > }
> > > FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
> > >
> > > And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp
> openssh-sftp-server" to my OS configuration. The generated image contains
> OpenSSH (I=C2=B4ve checked the version) but no authorized_keys or modifie=
d
> configuration.
> > >
> > > What is wrong here?
> > >
> > > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > >
> > > Ing. Daniel Kampert, M. Sc.
> > > Embedded Systems Solutions
> > > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > > Phone: +49 (0)174 6932561
> > > E-Mail: kontakt@daniel-kampert.de
> > > Web: www.daniel-kampert.de
> > >
> > >
> > >
> >
> >
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de (https://www.daniel-kampert.de)
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64874):
> https://lists.yoctoproject.org/g/yocto/message/64874
> Mute This Topic: https://lists.yoctoproject.org/mt/111378266/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kiernan@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000032434062f05bd6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Where did you put your bbappend? If it&#39;s alongsi=
de the openssh recipe in core then it won&#39;t be parsed as the pattern th=
ere doesn&#39;t include *.bbappend:</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto"><a href=3D"https://git.openembedded.org/openembedded-core/tree/=
meta/conf/layer.conf?h=3Ddunfell#n4">https://git.openembedded.org/openembed=
ded-core/tree/meta/conf/layer.conf?h=3Ddunfell#n4</a><br><br><div class=3D"=
gmail_quote gmail_quote_container" dir=3D"auto"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, 26 Feb 2025, 06:21 Daniel Kampert via <a href=3D"http://=
lists.yoctoproject.org">lists.yoctoproject.org</a>, &lt;kontakt=3D<a href=
=3D"mailto:daniel-kampert.de@lists.yoctoproject.org">daniel-kampert.de@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">H=
i Alex,<br>
<br>
I=C2=B4ve checked several files for informations. <br>
<br>
1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything about my m=
odifications<br>
2. files-in-package.txt for aarch64-tdx-linux openssh gives me the followin=
g output<br>
<br>
drwxr-xr-x root=C2=A0 =C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A04096 ./home<br>
drwx------ root=C2=A0 =C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A04096 ./home/root<br>
drwxr-xr-x root=C2=A0 =C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A04096 ./home/root/.ssh<br>
-rw------- root=C2=A0 =C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 106 ./home/root/.ssh/authorized_keys<br>
<br>
3. log.do_install doesn=C2=B4t list my file<br>
<br>
Do you have any other tips?<br>
<br>
Thanks!<br>
<br>
&gt; Alexander Kanavin via <a href=3D"http://lists.yoctoproject.org" rel=3D=
"noreferrer noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;al=
ex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"=
_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt; hat am =
25.02.2025 17:02 CET geschrieben:<br>
&gt; <br>
&gt;=C2=A0 <br>
&gt; Either the needed changes aren&#39;t being packaged correctly (check<b=
r>
&gt; ${WORKDIR}/packages-splt for openssh recipe), or the needed package<br=
>
&gt; isn&#39;t being installed into the image (check<br>
&gt; ${WORKDIR}/temp/log.do_rootfs for the image).<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via<br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer=
" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt; &lt;kontakt=3D<a href=3D"mailto:daniel-kampert.de@lists.yoctoproject.o=
rg" target=3D"_blank" rel=3D"noreferrer">daniel-kampert.de@lists.yoctoproje=
ct.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add =
and modify the OpenSSH configuration. So I=C2=B4ve added &quot;recipes-conn=
ectivity/openssh/openssh_%.bbappend&quot; with this content<br>
&gt; &gt;<br>
&gt; &gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt; &gt;<br>
&gt; &gt; # Apply the SSH configuration<br>
&gt; &gt; # - Disable password authentication<br>
&gt; &gt; # - Disable X11 forwarding<br>
&gt; &gt; # - Enable public key authentication<br>
&gt; &gt; do_install_append () {<br>
&gt; &gt;=C2=A0 =C2=A0sed -i -e &#39;s:^#PubkeyAuthentication.*$:PubkeyAuth=
entication yes:g&#39; ${D}${sysconfdir}/ssh/sshd_config<br>
&gt; &gt;=C2=A0 =C2=A0sed -i -e &#39;s:^#PasswordAuthentication.*$:Password=
Authentication no:g&#39; ${D}${sysconfdir}/ssh/sshd_config<br>
&gt; &gt;=C2=A0 =C2=A0sed -i -e &#39;s:^#ChallengeResponseAuthentication.*$=
:ChallengeResponseAuthentication no:g&#39; ${D}${sysconfdir}/ssh/sshd_confi=
g<br>
&gt; &gt;=C2=A0 =C2=A0sed -i -e &#39;s:^#UsePAM.*$:UsePAM no:g&#39; ${D}${s=
ysconfdir}/ssh/sshd_config<br>
&gt; &gt;=C2=A0 =C2=A0sed -i -e &#39;s:^#X11Forwarding.*$:X11Forwarding no:=
g&#39; ${D}${sysconfdir}/ssh/sshd_config<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0install -d 0700 ${D}${ROOT_HOME}/.ssh<br>
&gt; &gt;=C2=A0 =C2=A0install -m 0600 &quot;${TOPDIR}/keys/ssh/${DEPLOY_ENV=
}/id_ed25519.pub&quot; ${D}${ROOT_HOME}/.ssh/authorized_keys<br>
&gt; &gt; }<br>
&gt; &gt; FILES_${PN} +=3D &quot;${ROOT_HOME}/.ssh/*&quot;<br>
&gt; &gt;<br>
&gt; &gt; And I added TASK_BASIC_SSHDAEMON =3D &quot;openssh-sshd openssh-s=
ftp openssh-sftp-server&quot; to my OS configuration. The generated image c=
ontains OpenSSH (I=C2=B4ve checked the version) but no authorized_keys or m=
odified configuration.<br>
&gt; &gt;<br>
&gt; &gt; What is wrong here?<br>
&gt; &gt;<br>
&gt; &gt; Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards<br>
&gt; &gt;<br>
&gt; &gt; Ing. Daniel Kampert, M. Sc.<br>
&gt; &gt; Embedded Systems Solutions<br>
&gt; &gt; Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland<br>
&gt; &gt; Phone: +49 (0)174 6932561<br>
&gt; &gt; E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" target=3D"_b=
lank" rel=3D"noreferrer">kontakt@daniel-kampert.de</a><br>
&gt; &gt; Web: <a href=3D"http://www.daniel-kampert.de" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">www.daniel-kampert.de</a><br>
&gt; &gt;<br>
&gt; &gt; <br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
<br>
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards<br>
<br>
Ing. Daniel Kampert, M. Sc. <br>
Embedded Systems Solutions<br>
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland <br>
Phone: +49 (0)174 6932561 <br>
E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" target=3D"_blank" rel=
=3D"noreferrer">kontakt@daniel-kampert.de</a> <br>
Web:=C2=A0<a href=3D"http://www.daniel-kampert.de" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">www.daniel-kampert.de</a> (<a href=3D"https://www.d=
aniel-kampert.de" rel=3D"noreferrer noreferrer" target=3D"_blank">https://w=
ww.daniel-kampert.de</a>)<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64874): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64874" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64874</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111378266/361=
8097" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/111378266/3618097</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:alex.kiernan@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">alex.kiernan@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000032434062f05bd6d--

