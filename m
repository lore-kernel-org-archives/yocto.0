Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0F8BC7EE32
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 07:39:32 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.7161.1724917163823257038
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 00:39:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LX154l9p;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5334fdabefbso1297362e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 00:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724917162; x=1725521962; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vSvGP39zr3KsMimkY8iN/eqhQc37b+5Nxw31ENBtzSk=;
        b=LX154l9pGyNRNZO+DZuSiwE/OW21GegCJpWOdtt6OMBrpGg5XtUIeeDZJCaeaR8oFc
         t/CCe1//ATDm4GjSeEGLQvspEZmloUhVniRCZ9YsIhEsBD9Z7MIhDzGZKETvDJ+t1akU
         oe3vZ5MO1yIw9dSiknw3ouGEFRZyWpjBnUXijbk14zDS8BWxgWjmTMDtkc6xdTTCLIHh
         h20iTGiLz5QGaGbJ+jM5g4XZGCBMwH7SLXObyc4ON3pUToZ/SgeE+5yBMUpvRL+AGVZH
         Uy2kjCoFbx3RYuudXnSf4QNUsdAcAb0XW9EdfY3cJMeWZHiAdHp+oBvSmwVsQPFicmY9
         1Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724917162; x=1725521962;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vSvGP39zr3KsMimkY8iN/eqhQc37b+5Nxw31ENBtzSk=;
        b=X6wkyhIhweBMiJHVQ92hkNGjm1fdZ6kmSAPS58Wdz/DpppYVSk3Fp44T26oxsbZkpr
         9RQuWCkgTurmSxBCrHU102cVpq7vh/lelmyt9BOx1bxTtaOSgRZvvF7wVfszYm5PzNxb
         BMrnUpzak9q5S4D6qaREMI697mQuWJeV7QElOcG6FhPdf7W6fSs9ApLbfwYc7U3y4UnA
         9zDFXWzgP6lmjrKkEqMpyfrtf8p/SQ+chJ3+Blb39adk0rkD1kJbsy5d94efjPVbhvex
         95+ACgfWo6BFtX2NKXe6GR9EFjVCzX7kGdk9pNYtLByfACUDgyfuOY3eubelASjKU0ii
         OBpg==
X-Gm-Message-State: AOJu0YxV6etFsz8riZ/BDG0AxZyk4rkAL2G/dqviue2wTVvY/8wR0xtY
	TU3RXF5vSkq81epxXRdpyN12n4O+8tPX7FO8NrxK59bOVPU0jPGALLNYR0+L92IbkqLeOJQtW4u
	ldXKzOfAlm4SmvLIs9tFHs7+EdUIF8w==
X-Google-Smtp-Source: AGHT+IG99k+jmW8j1hMqRttc9b0YD2p9b2iHkXrKE2n9thCiol5jE6cnJ4JXQc9hXnrFG/TuIxeMyy6RbUyPYFFwIW0=
X-Received: by 2002:a05:6512:1391:b0:52c:ebf6:9a87 with SMTP id
 2adb3069b0e04-53541063628mr275493e87.26.1724917160871; Thu, 29 Aug 2024
 00:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAHBTYaRYHpXUuHMtk6pmN=T3GonXE9ai1RWJ4dq=Xnu4E1Vo4Q@mail.gmail.com>
In-Reply-To: <CAHBTYaRYHpXUuHMtk6pmN=T3GonXE9ai1RWJ4dq=Xnu4E1Vo4Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Aug 2024 09:39:10 +0200
Message-ID: <CANNYZj9zHSbewBuEn38NtNhGtydzN_QtgZFozgYuEaYeZ=Ms+Q@mail.gmail.com>
Subject: Re: [yocto] Parallel task limit issue on 80 core (2 CPU) system
To: yocto@lists.yoctoproject.org, cebel.efecan@gmail.com
Content-Type: multipart/alternative; boundary="000000000000a416f50620cd9245"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 07:39:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63763

--000000000000a416f50620cd9245
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

First of all, please explain where 52 comes from. Where did you see that?

In general yocto auto detects the cpu cores amount and sets these values
appropriately. You don=E2=80=99t need to tweak them.

Alex

On Thu 29. Aug 2024 at 8.50, Efecan Cebel via lists.yoctoproject.org
<cebel.efecan=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello,
>
> I have a system with 2 CPU 80 Core 256 GB RAM.
>
> I am starting the Yocto build process with this system.
>
> I set the necessary variables in the local.conf file. The variables I set
> are as follows.
>
> BB_NUMBER_THREADS =3D "80"
> BB_NUMBER_PARSE_THREADS =3D "80"
> PARALLEL_MAKE =3D "-j 80"
> PARALLEL_MAKEINST =3D "-j 80"
>
> Despite this configuration, the number of compiled tasks cannot exceed 52=
.
> I wonder what is the reason for this?
>
> Could you please support me on this issue?
>
> Best regards.
> Efecan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63761):
> https://lists.yoctoproject.org/g/yocto/message/63761
> Mute This Topic: https://lists.yoctoproject.org/mt/108156892/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a416f50620cd9245
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">First of all, please explain where 52 comes from. Where d=
id you see that?</div><div dir=3D"auto"><br></div><div dir=3D"auto">In gene=
ral yocto auto detects the cpu cores amount and sets these values appropria=
tely. You don=E2=80=99t need to tweak them.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu 29. Aug 2024 at 8.50, Efecan Cebel via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;c=
ebel.efecan=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com=
@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=
=3D"ltr">Hello,<div><br></div><div>I have a system with 2 CPU 80 Core 256 G=
B RAM.</div><div><br>I am starting the Yocto build process with this system=
.</div><div><br>I set the necessary variables in the local.conf file. The v=
ariables I set are as follows.</div><div><br>BB_NUMBER_THREADS =3D &quot;80=
&quot;</div><div>BB_NUMBER_PARSE_THREADS =3D &quot;80&quot;</div><div>PARAL=
LEL_MAKE =3D &quot;-j 80&quot;</div><div>PARALLEL_MAKEINST =3D &quot;-j 80&=
quot;<br><br>Despite this configuration, the number of compiled tasks canno=
t exceed 52. I wonder what is the reason for this?</div><div><br>Could you =
please support me on this issue?<br></div><div><br></div><div>Best regards.=
</div><font style=3D"color:rgb(136,136,136)"><div>Efecan</div></font></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63761): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63761" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63761</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108156892/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108156892/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a416f50620cd9245--

