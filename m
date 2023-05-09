Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 863E2C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:43:44 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.41234.1683657818451974661
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=qLkXb6E2;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-77d46c7dd10so32335231241.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683657817; x=1686249817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MItLQqX/kJapJ/gmiPDutpRyjNJKVH+Ggz53psq53qM=;
        b=qLkXb6E2PTO7zUznEvm28by8n1c3zRP9QzU4sFNqKIwtqZCPDm1nCf9xKgVJ8NIQmA
         XHQS6H0UyW2zQrn1NxvnRtZVptLsQo5veKQmBVYg9/3lne3x5DKynKAh2CZWYQrHcjkb
         4/1mWDSsdvwOhW696MaU54pNYTG3XnriuzbvVstjGwNmqkfpArVUixsHSJsAY04Av5zw
         YgF41JmuaK7rdKCdoDDWQtWwpffLluwts5bYVd4kaPuoNIl5HR3s3Cf3tecP9FhHttHy
         eyfA9KoXEnS3HTeL4S8ULFseT5VAmR66yiXd7yB0FJHIDILC29t5TQUXuZXihORhJmPF
         vFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683657817; x=1686249817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MItLQqX/kJapJ/gmiPDutpRyjNJKVH+Ggz53psq53qM=;
        b=H2m1wYtE8MdwK971/+gdhj2kjkryObD6bvTDlS2w6rSk4lqRCAT97HI5AsBmaMVlhD
         iTrSpTgEfEDCqNPbhcA9aa1je726Tu5OI1yD15b5aceo5FHBE+c5sdKFG9GnY3xWtAJW
         z/KGFb6zoU24IWFdRPlaBOjPsC0gkPzmwgUb3PVYwhw1gDVvApbzLbeKvxpL3k23L2z5
         htnAY2yfX9CFPHPEZqze23Oaem80RR0d+r3yG3+CmxAi8etQnlX911ZTbL1N2Db7nV2t
         uXlkGWGQFl9PyJYUMuuWPGevj4Jzrna5JmMGWX0bjxbUKTM7D0BFTiQ0gUnwbL3LmYng
         8kWA==
X-Gm-Message-State: AC+VfDxCwkBHui2IzLUoVGcnJZ0YfzpRVvi5eo6JNecZVXRGW4mhRA4i
	r+I/SVHgOw+SASskhF0u0kZwGZhxu0UkcLNhi24=
X-Google-Smtp-Source: ACHHUZ7zaYLp/OGCqx1fuAGRFZXQ8AJIp4/o6EQcKDqoKsVB03C6OGu4SNuQj21b+gikXG7RHQCEYbCjoJE1LG5/XHs=
X-Received: by 2002:a67:f058:0:b0:42f:ee66:6a5 with SMTP id
 q24-20020a67f058000000b0042fee6606a5mr3743180vsm.6.1683657817335; Tue, 09 May
 2023 11:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
 <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com> <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
In-Reply-To: <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 9 May 2023 19:43:26 +0100
Message-ID: <CANPvuRk1=MGv-h-kNkiB9pG9E6XQ+3kx-ZKX6_+0LZ+stt-PAQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 0/2] Drop a kernel patch and a
 kernel config option
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
Content-Type: multipart/alternative; boundary="000000000000202c0505fb4722bb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:43:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59945

--000000000000202c0505fb4722bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Stefan Berger <stefanb@linux.ibm.com> escreveu no dia ter=C3=A7a, 9/05/2023=
 =C3=A0(s)
19:19:

>
>
> On 5/9/23 14:11, Jose Quaresma wrote:
> > Hi Stefan, Stefan Berger <stefanb@ linux. ibm. com> escreveu no dia
> ter=C3=A7a, 9/05/2023 =C3=A0(s) 18: 55: This PR removes a kernel patch re=
lated to
> overlayfs and IMA appraisal file change notifictions and a squashfs xattr
> kernel config option.
> > ZjQcmQRYFpfptBannerStart
> > This Message Is From an External Sender
> > This message came from outside your organization.
> > ZjQcmQRYFpfptBannerEnd
> > Hi Stefan,
> >
> > Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>>
> escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:55:
> >
> >     This PR removes a kernel patch related to overlayfs and IMA
> appraisal file change
> >     notifictions and a squashfs xattr kernel config option.
> >
> >         Stefan
> >
> >     Stefan Berger (2):
> >        linux: overlayfs: Drop kernel patch resolving a file change
> >          notification issue
> >        ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=3Dy from
> ima.cfg
> >
> >       ...Increment-iversion-upon-file-changes.patch | 42
> -------------------
> >       .../recipes-kernel/linux/linux/ima.cfg        |  1 -
> >       .../recipes-kernel/linux/linux_ima.inc        |  1 -
> >
> > CONFIG_SYSTEM_TRUSTED_KEYS=3D
> > Unfortunately this is not enough because in the full patchset you are
> overriding the do_configure task
> > on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is
> included in every recipe that follies the
> > pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
>
> You are referring tho this here?
>
> do_configure() {
>      sed -i
> "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEYS=3D\"${IMA_=
EVM_ROOT_CA}\"|"
> .config
> }
>
> You are saying that this deactivates some other do_configure's ? If this
> is the case, what would be the right syntax to fix it?
>

Yes, this is the problem. The right fix IMHO is reverting because we can't
assume that the .config it's always there
on the bitbake build directory and this only happens when building the
kernel.

Another no less significant side effect is that this change is also applied
to a wide range of recipes,
anyone starting with the name linux-*.bb.

So the full patch set should be reverted in my opinion and be more tested
locally, building for example
some recipe that respects the pattern linux-*.bb and also other kernels and
re-submitted again.

Jose


>
> It's a no-op on a .config that does not contain the
> CONFIG_SYSTEM_TRUSTED_KEYS=3D option already.=3D
>
>     Stefan
>
> >
> > This breaks many recipes like linux-firmware and maybe others.
> > The root cause of the issue is now on f4f7624d2e but because this patch
> is too evasive, maybe everything has to be reversed.
> > I am now building with the full patchset revert and so far the build is
> looking good.
>
>
> >
> > Jose
> >
> >       3 files changed, 44 deletions(-)
> >       delete mode 100644
> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upo=
n-file-changes.patch
> >
> >     --
> >     2.34.1
> >
> >
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59940):
> https://lists.yoctoproject.org/g/yocto/message/59940
> > Mute This Topic: https://lists.yoctoproject.org/mt/98789504/1792208
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> stefanb@linux.ibm.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000202c0505fb4722bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Stefan Berger &lt;<a href=3D"mailto:s=
tefanb@linux.ibm.com">stefanb@linux.ibm.com</a>&gt; escreveu no dia ter=C3=
=A7a, 9/05/2023 =C3=A0(s) 19:19:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><br>
<br>
On 5/9/23 14:11, Jose Quaresma wrote:<br>
&gt; Hi Stefan, Stefan Berger &lt;stefanb@=E2=80=8Alinux.=E2=80=8Aibm.=E2=
=80=8Acom&gt; escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:=E2=80=8A5=
5: This PR removes a kernel patch related to overlayfs and IMA appraisal fi=
le change notifictions and a squashfs xattr kernel config option.<br>
&gt; ZjQcmQRYFpfptBannerStart<br>
&gt; This Message Is From an External Sender<br>
&gt; This message came from outside your organization.<br>
&gt; ZjQcmQRYFpfptBannerEnd<br>
&gt; Hi Stefan,<br>
&gt; <br>
&gt; Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_=
blank">stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux=
.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;&gt; escreveu no d=
ia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:55:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0This PR removes a kernel patch related to overlayfs=
 and IMA appraisal file change<br>
&gt;=C2=A0 =C2=A0 =C2=A0notifictions and a squashfs xattr kernel config opt=
ion.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Stefan<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Stefan Berger (2):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux: overlayfs: Drop kernel patch resolvi=
ng a file change<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 notification issue<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 ima: Drop kernel config option CONFIG_SQUAS=
HFS_XATTR=3Dy from ima.cfg<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0...Increment-iversion-upon-file-changes.patc=
h | 42 -------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.../recipes-kernel/linux/linux/ima.cfg=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.../recipes-kernel/linux/linux_ima.inc=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 -<br>
&gt; <br>
&gt; CONFIG_SYSTEM_TRUSTED_KEYS=3D<br>
&gt; Unfortunately=C2=A0this is not enough=C2=A0because in the full patchse=
t you are overriding the do_configure task<br>
&gt; on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is =
included in every recipe that follies=C2=A0the<br>
&gt; pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).<br=
>
<br>
You are referring tho this here?<br>
<br>
do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0sed -i &quot;s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_=
SYSTEM_TRUSTED_KEYS=3D\&quot;${IMA_EVM_ROOT_CA}\&quot;|&quot; .config<br>
}<br>
<br>
You are saying that this deactivates some other do_configure&#39;s ? If thi=
s is the case, what would be the right syntax to fix it?<br></blockquote><d=
iv><br></div><div>Yes, this is the problem. The right fix IMHO is reverting=
 because we can&#39;t assume that the .config=C2=A0it&#39;s always there</d=
iv><div>on the bitbake build directory=C2=A0and this only happens when buil=
ding=C2=A0the kernel.</div><div><br></div><div>Another no less significant =
side effect is that this change is also applied to a wide range of recipes,=
</div><div>anyone starting with the name linux-*.bb.</div><div><br></div><d=
iv>So the full patch set should be reverted in my opinion and be more teste=
d locally, building for example</div><div>some recipe that respects the pat=
tern linux-*.bb and also other kernels and re-submitted=C2=A0again.</div><d=
iv><br></div><div>Jose</div><div><br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
<br>
<br>
It&#39;s a no-op on a .config that does not contain the CONFIG_SYSTEM_TRUST=
ED_KEYS=3D option already.=3D<br>
<br>
=C2=A0 =C2=A0 Stefan<br>
<br>
&gt; <br>
&gt; This breaks=C2=A0many recipes like=C2=A0linux-firmware and maybe other=
s.<br>
&gt; The root cause of the issue is now on=C2=A0f4f7624d2e but because this=
 patch is too evasive, maybe everything has to be reversed.<br>
&gt; I am now building with the full patchset=C2=A0revert and so far the bu=
ild is looking good.<br>
<br>
<br>
&gt; <br>
&gt; Jose<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A03 files changed, 44 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0delete mode 100644 meta-integrity/recipes-ke=
rnel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A02.34.1<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Jos=C3=A9 Quaresma<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#59940): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59940" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/59940</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98789504=
/1792208" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/98789504/1792208</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stef=
anb@linux.ibm.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000202c0505fb4722bb--

