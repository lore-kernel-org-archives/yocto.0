Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15236C77B7F
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 18:02:12 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.2823.1750788128540417771
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 11:02:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Px2DwAvy;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-451d6ade159so42733635e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 11:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1750788127; x=1751392927; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JuYadaaaJK3ijGeDAhw05rs1BrOn0SvdsV+N2G2ZVQU=;
        b=Px2DwAvyVfiQc+EKao3cPnyZKIQ2/sYj9JKGOLchRd+fVAJiwnv1QHT6p1oifMFhpS
         9k28sYOaZPIkIwbcn6Tx2/nV4hKmXqEaOKHU5A+9nJEWytY3kJ4il/BXYos+U/bI0aFT
         tXV3L9XSHxPi0leJoFVYIBmCW2lxEfRjYUuTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750788127; x=1751392927;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JuYadaaaJK3ijGeDAhw05rs1BrOn0SvdsV+N2G2ZVQU=;
        b=BvizhVnKkWDhU+/PIa/4FuSkXCd+Jl+8ZutzRjuXHcoHgNDolzBXeUPeEBFUQnEPcW
         ocVoCYEgOKdVimut4VRKalAlZ85Gm6DPHoJN/gobtIIuMqEJO4F5sFyE7n3fpKVQqXNz
         dhJlhMVbCfVEWIX89RBtbFKW5s3Z1EKSuCHd3rKfeuV7sIvd6C2U8kj/JIA+sSDRyt1A
         uiyzaNWA631EzST/MZ/QACj0ZKH8DXJXgfeABOgztHvQz7vgjtIGbhuVvmtrD4jJzyMd
         cjLbbHyK1ws48oaobM9WjY8Dm0BgJp+YJ6kRe4o+zAsRMiRsS+jzu3Ru3XDKaWlwU94V
         Lldg==
X-Gm-Message-State: AOJu0YzBqCn1TaqitqRwxJkij6bEAzg6hSE3qb9NStKpX0hPd0e0T+wm
	/ezIjIyCjM6I2Q7k/wMCBlIO3UOLrN+KzDs1nCIuckHNbpbn8kakfPyudfEANsKooD8D0wgX1My
	oxKYa4cBH+iwR/cOAuqHVfTiHPBY6z+rrf7V5hqztZbVvy974kXIzKGQvqA==
X-Gm-Gg: ASbGncs5eG9fR7xi1t8Z+tg0eO942bLNZswkyOyPAg/fwASzR3mJGgTFtMhAcukzd+K
	GJ1QZYe5cV5+A07q7kT+V461UnfkJXguZTJ3JEpHT/gITzV7wItAZcVY1GH6tpHvg2AqBtaxZ4h
	pWF33B2kN4Mxaz4zl1YrkMFqlIc0yzNAMqOTiowfy0bX0Gemq4+tC2VDLRZUXEvd6JnFzVb+7zE
	cHf8A==
X-Google-Smtp-Source: AGHT+IFCF7CPGyZT2NGzgyP8piU7/pRj4MM1fno+0Sa/DUFj2T9bv4/HjQbB2pyuIcqLvVUBxdPsU+McqolsCoKlb1o=
X-Received: by 2002:a05:600c:1f0e:b0:450:d5bf:6720 with SMTP id
 5b1f17b1804b1-453653a33d9mr204988255e9.3.1750788126350; Tue, 24 Jun 2025
 11:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <7002abdd-c152-47f0-a5cd-f06fa20d4fea@ibeeto.com>
In-Reply-To: <7002abdd-c152-47f0-a5cd-f06fa20d4fea@ibeeto.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 24 Jun 2025 20:01:40 +0200
X-Gm-Features: Ac12FXyhLWoc-u2yrD1uY43MloxzecgJ_CO1ydNtIq11BWMbVMm9RnxgkzqSpJI
Message-ID: <CAMSfU+6pczmddDTG8tsU46Z71Y-rzpfHFFxRqc3qeYX7r3=eig@mail.gmail.com>
Subject: Re: [yocto] Scarthgap native build errors
To: yocto@lists.yoctoproject.org, rudolf.streif@ibeeto.com
Content-Type: multipart/alternative; boundary="000000000000594559063855201b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 18:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65543

--000000000000594559063855201b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Le mar. 24 juin 2025 =C3=A0 19:06, Rudolf J Streif via lists.yoctoproject.o=
rg
<rudolf.streif=3Dibeeto.com@lists.yoctoproject.org> a =C3=A9crit :

> I am building on Fedora Core 42 with gcc 15.1. I am currently seeing two
> strange errors when building native packages for cmake-native and
> git-native:
>
> cmake-native:
>
>
> tcu-firmware/build/tmp/work/x86_64-linux/cmake-native/3.28.3/cmake-3.28.3=
/Utilities/cmcppdap/include/dap/network.h:31:39

error: =E2=80=98uint32_t=E2=80=99 has not been declared
> |    31 |                                       uint32_t timeoutMillis =
=3D
> 0);
> |       |                                       ^~~~~~~~
>
> This can of course easily be fixed by including <cstdint>. However, it's
> still strange that this is happening and it's the first time that I am
> seeing this.
>
>
> git-native:
>
> | reflog.c:211:104: error: macro =E2=80=98unreachable=E2=80=99 passed 3 a=
rguments, but
> takes just 0
> |   211 | static int unreachable(struct expire_reflog_policy_cb *cb,
> struct commit *commit, struct object_id *oid)
> | | ^
> | In file included from git-compat-util.h:225,
> |                  from reflog.c:1:
> | /usr/lib/gcc/x86_64-redhat-linux/15/include/stddef.h:468:9: note:
> macro =E2=80=98unreachable=E2=80=99 defined here
> |   468 | #define unreachable() (__builtin_unreachable ())
> |       |         ^~~~~~~~~~~
>
> The weird thing with this issue is that line 211 in reflog.c declares
> the function unreachable() with three parameters. However, the compiler
> interprets it as the macro unreachable for stddef.h being called.
> Unfortunately, I don't have a solution for this.
>

Looking at your cmake version, you are on Scarthgap.
Fedora Core 42 is not a supported distribution for Scarthgap :
https://docs.yoctoproject.org/5.0.10/ref-manual/system-requirements.html#su=
pported-linux-distributions
So, the official solution is to use a supported build OS (as a container
for example).

FYI, Fedora Core 42 is not even tested on master right now so it is
definitely too recent for scarthgap.

Regards,


> Thanks,
> Rudi
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65542):
> https://lists.yoctoproject.org/g/yocto/message/65542
> Mute This Topic: https://lists.yoctoproject.org/mt/113810984/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--000000000000594559063855201b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 24 juin 2025=
 =C3=A0=C2=A019:06, Rudolf J Streif via <a href=3D"http://lists.yoctoprojec=
t.org">lists.yoctoproject.org</a> &lt;rudolf.streif=3D<a href=3D"mailto:ibe=
eto.com@lists.yoctoproject.org">ibeeto.com@lists.yoctoproject.org</a>&gt; a=
 =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">I am building on Fedora Core 42 with gcc 15.1. I am currently seeing two=
 <br>
strange errors when building native packages for cmake-native and <br>
git-native:<br>
<br>
cmake-native:<br>
<br>
tcu-firmware/build/tmp/work/x86_64-linux/cmake-native/3.28.3/cmake-3.28.3/U=
tilities/cmcppdap/include/dap/network.h:31:39</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
error: =E2=80=98uint32_t=E2=80=99 has not been declared<br>
|=C2=A0=C2=A0=C2=A0 31 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint32_t timeoutMillis =3D 0);<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~<br>
<br>
This can of course easily be fixed by including &lt;cstdint&gt;. However, i=
t&#39;s <br>
still strange that this is happening and it&#39;s the first time that I am =
<br>
seeing this.<br>
<br>
<br>
git-native:<br>
<br>
| reflog.c:211:104: error: macro =E2=80=98unreachable=E2=80=99 passed 3 arg=
uments, but <br>
takes just 0<br>
|=C2=A0=C2=A0 211 | static int unreachable(struct expire_reflog_policy_cb *=
cb, <br>
struct commit *commit, struct object_id *oid)<br>
| | ^<br>
| In file included from git-compat-util.h:225,<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from reflog.c:1:<br>
| /usr/lib/gcc/x86_64-redhat-linux/15/include/stddef.h:468:9: note: <br>
macro =E2=80=98unreachable=E2=80=99 defined here<br>
|=C2=A0=C2=A0 468 | #define unreachable() (__builtin_unreachable ())<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~<br>
<br>
The weird thing with this issue is that line 211 in reflog.c declares <br>
the function unreachable() with three parameters. However, the compiler <br=
>
interprets it as the macro unreachable for stddef.h being called. <br>
Unfortunately, I don&#39;t have a solution for this.<br></blockquote><div><=
br></div><div><div>Looking at your cmake version, you are on Scarthgap.</di=
v><div>Fedora Core 42 is not a supported distribution for Scarthgap :=C2=A0=
<a href=3D"https://docs.yoctoproject.org/5.0.10/ref-manual/system-requireme=
nts.html#supported-linux-distributions">https://docs.yoctoproject.org/5.0.1=
0/ref-manual/system-requirements.html#supported-linux-distributions</a></di=
v><div>So, the official solution is to use a supported build OS (as a conta=
iner for example).</div><div><br></div><div>FYI, Fedora Core 42 is not even=
 tested on master right now so it is definitely too recent for scarthgap.</=
div><div><br></div><div>Regards,</div></div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
Thanks,<br>
Rudi<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65542): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65542" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65542</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113810984/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113810984/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000594559063855201b--

