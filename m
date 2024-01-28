Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E2C47258
	for <webhook@archiver.kernel.org>; Sun, 28 Jan 2024 19:11:51 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.48284.1706469103089612402
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 11:11:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nAunViLW;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33ae3cc8a70so973262f8f.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 11:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706469101; x=1707073901; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tjHXXRVqfxz+ljxkFWsIGJClVCBZYJTYvEIKcCN0w5k=;
        b=nAunViLWeh3SHT9SgTx/u1SwfaH6r3juiqzl8w2jbmbUAkvn2jrloFKRBZt+y2BILP
         xEP7eOR7B48TcPgSyq9RaRmpeT+cDpULJnIztzzdq1hrDNpfGBTCViB8hX3v2t5pCzK0
         UhtiPir/FNbKmQ2lj0IXZmI2+9s4pgmyLDU78Ca+YV5T2J2s/fF6URCUPu4uwDG8rn7g
         mJhALyIvm2AsyfM90GzaKyvN/CEunVVwFjiuZRd+LDpEMk/V5y/AN9aoVJD2GSYr2UQh
         3Ci7ZTGXyeLKv3xmCIYewC+yFiRPlSmlzfoobuT6knj+/Jh+yzmxlex3w7C1EkMRK6tB
         2yOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706469101; x=1707073901;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tjHXXRVqfxz+ljxkFWsIGJClVCBZYJTYvEIKcCN0w5k=;
        b=FVH7n83DZDZegXjXX4g+8f7/+QsEg2BMaK4mXJsyEl201bGoTMg3ZAIMswWWO72hCu
         iJM56w3OckH2xiB+t4BWNeUs2usTR1+sFBNAils9qgkMs0WprsOf8G8110fn8w54LWdF
         bUFtkp+3J0zM5gQMsqcmms5fvtJ+OZCrYy33xnD5Xn3UTPA+/K9T2ytcNLlA+yAKJ7Zm
         bdnjugPF1c0brl6kZTl5yr5FqRk7LlOPGZCVI5SbJqLV5i7mWFtZoL8RfKIGWF7kmpta
         nyM4MTgWK7szGW+qDKVVKz2WMdlBSG/+THBO6Dvj1vPZTtaV60pznVeOQhs+vuLwNbfg
         k9IA==
X-Gm-Message-State: AOJu0YwrehkzaFZrMhJten1cp7TjfyRQo8WgM0n1ZB7ArA6UKpJ2K/EX
	38O9/Dv60/jV/Z4bwWUPbJdbflBE/oLxm3Mhx9PFXxxtI3mAU17eJ6GmbkxhtGm4MFmtV7mxilq
	iB55PNWkJiLK/Nh+eOtGUtAZqarn4Opv0i6o=
X-Google-Smtp-Source: AGHT+IH/NV7qt7CmXisDOEbVdfe3MDJfjqZWLHkd9oIdDM7P+IsLOVnt2uWcXR5Nl+WW023oKyZDKghwWr/WE2LYI/M=
X-Received: by 2002:a5d:4f12:0:b0:33a:e5e5:5121 with SMTP id
 c18-20020a5d4f12000000b0033ae5e55121mr2031353wru.18.1706469101344; Sun, 28
 Jan 2024 11:11:41 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
 <3472.1706432485345899127@lists.yoctoproject.org> <17AE83B5B764CF93.23935@lists.yoctoproject.org>
 <CANNYZj9i+k=TUL7T2hEtbBX4d40shBVQgH8bS-VD7rX2NpBGCw@mail.gmail.com>
In-Reply-To: <CANNYZj9i+k=TUL7T2hEtbBX4d40shBVQgH8bS-VD7rX2NpBGCw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 28 Jan 2024 20:11:29 +0100
Message-ID: <CA+chaQexC9xhELtmuidLorUnUH3z3dY43LrZm7gQ=E-CHgEF9w@mail.gmail.com>
Subject: Re: [yocto] How to build two images with different settings of a
 recipe in Yocto
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
Content-Type: multipart/alternative; boundary="0000000000009b1c930610064c81"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 19:11:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62317

--0000000000009b1c930610064c81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 28, 2024 at 7:59=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> That said, if the difference between distros is only in specific
> recipe settings, then I think the builds will reuse each other's
> sstate, other than the recipes that differ, and their consumers.
>

Except for example when e.g. icecc is used which adds DISTRO in all sstate
signatures in icecc_version:
https://git.openembedded.org/openembedded-core/tree/meta/classes/icecc.bbcl=
ass#n217

Regards,


>
> Alex
>
> On Sun, 28 Jan 2024 at 13:48, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > There's no way around this: you can't build the same recipe in two
> > different ways for two different images in the same DISTRO. The
> > different behavior has to be specified through config files and picked
> > up at runtime, and not through build time settings. All products and
> > builds and CI infrastructure for them must be planned with that in
> > mind.
> >
> > Different local.conf is essentially a different distro in all but
> > name, and less understandable or maintainable.
> >
> > Alex
> >
> > On Sun, 28 Jan 2024 at 10:01, J=C3=B6rg Sommer via lists.yoctoproject.o=
rg
> > <joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:
> > >
> > > Thanks for your reply. It helps, but I see some issues with the
> ROOTFS_POSTPROCESS_COMMAND.
> > >
> > > For the config file this is a possible solution. But what can I do if
> I need code changes? SSH announced they'll disable DSA support by default
> in a few months and for all other images except one I would stay with thi=
s
> default. I have to supply another setting to configure when building the
> recipe for one image. And I have more images they require reduced (or
> widened) settings of packages.
> > >
> > > And editing the image has the drawback that it doesn't play well with
> package management. If I install/update the sshd ipk, it doesn't contain
> the change from ROOTFS_POSTPROCESS_COMMAND.
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62316):
> https://lists.yoctoproject.org/g/yocto/message/62316
> Mute This Topic: https://lists.yoctoproject.org/mt/103992605/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009b1c930610064c81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Jan 28, 2024 at 7:59=E2=80=AFPM A=
lexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin=
@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">That said, if the difference between d=
istros is only in specific<br>
recipe settings, then I think the builds will reuse each other&#39;s<br>
sstate, other than the recipes that differ, and their consumers.<br></block=
quote><div><br></div><div>Except for example when e.g. icecc is used which =
adds DISTRO in all sstate signatures in icecc_version:</div><div><a href=3D=
"https://git.openembedded.org/openembedded-core/tree/meta/classes/icecc.bbc=
lass#n217">https://git.openembedded.org/openembedded-core/tree/meta/classes=
/icecc.bbclass#n217</a></div><div><br></div><div>Regards,</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Alex<br>
<br>
On Sun, 28 Jan 2024 at 13:48, Alexander Kanavin via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.c=
om@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.o=
rg</a>&gt;<br>
wrote:<br>
&gt;<br>
&gt; There&#39;s no way around this: you can&#39;t build the same recipe in=
 two<br>
&gt; different ways for two different images in the same DISTRO. The<br>
&gt; different behavior has to be specified through config files and picked=
<br>
&gt; up at runtime, and not through build time settings. All products and<b=
r>
&gt; builds and CI infrastructure for them must be planned with that in<br>
&gt; mind.<br>
&gt;<br>
&gt; Different local.conf is essentially a different distro in all but<br>
&gt; name, and less understandable or maintainable.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Sun, 28 Jan 2024 at 10:01, J=C3=B6rg Sommer via <a href=3D"http://l=
ists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproj=
ect.org</a><br>
&gt; &lt;joerg.sommer=3D<a href=3D"mailto:navimatix.de@lists.yoctoproject.o=
rg" target=3D"_blank">navimatix.de@lists.yoctoproject.org</a>&gt; wrote:<br=
>
&gt; &gt;<br>
&gt; &gt; Thanks for your reply. It helps, but I see some issues with the R=
OOTFS_POSTPROCESS_COMMAND.<br>
&gt; &gt;<br>
&gt; &gt; For the config file this is a possible solution. But what can I d=
o if I need code changes? SSH announced they&#39;ll disable DSA support by =
default in a few months and for all other images except one I would stay wi=
th this default. I have to supply another setting to configure when buildin=
g the recipe for one image. And I have more images they require reduced (or=
 widened) settings of packages.<br>
&gt; &gt;<br>
&gt; &gt; And editing the image has the drawback that it doesn&#39;t play w=
ell with package management. If I install/update the sshd ipk, it doesn&#39=
;t contain the change from ROOTFS_POSTPROCESS_COMMAND.<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62316): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62316" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62316</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103992605/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103992605/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009b1c930610064c81--

