Return-Path: <xerofoify@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639B2C02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 06:57:20 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web11.63775.1738911438748327156
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 22:57:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F92RGSkA;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: xerofoify@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5fa2685c5c0so702360eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 22:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738911437; x=1739516237; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VEpWFxg5as1XKCNO+hdqQ71XlMpPGTy1ZnAaGAVdK0s=;
        b=F92RGSkAePNf2nUrI8MxNam7JAYFGfCud73dOEsQPCEMswT+L14U9ncVMWDQ+Ew46z
         6+EX+7uKWBRiLbUbhNrXgFWIsnrnk9EY4ocMBObep8Wuesv5IjAHitnsyaKhnPkbybDv
         7PToP7PwGBvHN0oYQIzuG7lVqqM8/q6DQOJGX2tJ6P036qSzl4baaDq9/cVjmtUqDscB
         WGn4FuB4R//TXOAygi3KxgU9FRLTHHjSShfTbbel2ZxCuS8O9qYDie3XHK7pJUPgZxxm
         U5U3Ecjrs+s7Jx0W4pavL6j/r3QOtJO1IHy8Y7krnPtTxqnPvBMPg6CYY9EOCEGdwW10
         +p6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738911437; x=1739516237;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VEpWFxg5as1XKCNO+hdqQ71XlMpPGTy1ZnAaGAVdK0s=;
        b=dguVBJUwzIgG1AYiuXNgbKI6+DDdyyLmgsZ+FZCUZNlb6y6DsLd0sx6I4z2iFctNAN
         /zuQH+/txvAnHmufG7pJoKpknSsYkU/bFCi/OFq4egl50tSaSzI+dKWAgiJz9HMRTxY6
         emVL8KFSKlFL4S27FLf/0lMefH/ZAp0k40UHHwGIn9N+By+EZ5m3oYcAuGZxPa98oMei
         kHPb62bQOK9AIcH+j/QUN2B5grUhxe1VdDnOdLysbnSD8VFBLmvMP7Mg6EXGvqEXndj8
         E4BLtXm7Mn/1/4+dpzrJA4W7CRTDv9S3vsxH+SOxfPwN/C1zUZ7DfAvaWpK35EaWhhmQ
         0ULw==
X-Gm-Message-State: AOJu0YyTiUiDLaxDeuRGsqF1id/d035vIvaB/TWl5b1Rv4m6JoOfwRKB
	B0vjtKPJCJc5z7qTicc+t81WLlhpuQ6b0KWPZaikuM0txrpcyHc/9Wk97LpF6/v31UPbpDZ5oGb
	phPO1kUaXfhQO7lGfRhQ4cP6F+Wg8k6NKM3A=
X-Gm-Gg: ASbGncuc/meErBhFDysP/07l/kBqS3btIM6n6eex8/V/bz7MgMkQ6ZrWxbg0Kpzcw9U
	NZEmBnn+oUAZleBSNwZ59vHxlFE1LDhNzJlkMf5dcyJnB9yhJ+gFpm+EUR2l7Xv+70IymW+KF7+
	s=
X-Google-Smtp-Source: AGHT+IHJlLD5iblx7PnsTABJQBsJcaZj4bgCZU7DS0sdH3RrcfqDmLzUrgQWlrBEYgngOllJ0KiJCW2maVK9ieIiQTA=
X-Received: by 2002:a05:6870:e305:b0:296:ff26:3cd1 with SMTP id
 586e51a60fabf-2b83eda0329mr1338757fac.21.1738911437459; Thu, 06 Feb 2025
 22:57:17 -0800 (PST)
MIME-Version: 1.0
References: <tQXD.1738909987245736479.Qv8u@lists.yoctoproject.org>
In-Reply-To: <tQXD.1738909987245736479.Qv8u@lists.yoctoproject.org>
From: xerofoify <xerofoify@gmail.com>
Date: Fri, 7 Feb 2025 01:57:05 -0500
X-Gm-Features: AWEUYZksUV_byGmVe-08bl9Qt2bYbE9Qofsb4yiYjyApv0vT246CozsP_LHe5wg
Message-ID: <CAPDOMVift7nZLgPSAmqdRbo26rr2s2H6jmfBEer9uchXdWPtPw@mail.gmail.com>
Subject: Re: [yocto] Help to understand buildhistory installed-package-sizes.txt
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: multipart/alternative; boundary="000000000000869986062d87de9a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 06:57:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64738

--000000000000869986062d87de9a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings Ahish,

The Yocto reference manual may be of help:
https://docs.yoctoproject.org/1.8/ref-manual/ref-manual.html#enabling-and-d=
isabling-build-history
.
Build history should be for all packages and modules for the kernel are
separate in some cases. It's not just for user-space as kernel trimming
or similar is rather common in certain cases and therefore no surprise for
it to be enabled by default.

Cheers,

Nick

On Fri, Feb 7, 2025 at 1:33=E2=80=AFAM emailaddress.ashish via
lists.yoctoproject.org <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.=
org>
wrote:

> Hi Members ,
>
> I am tying to reduce the RFS for one BSP  and making use of  buildhistory
> / installed-package-sizes.txt
> I was expecting this file will have all user-spaces packages only.
> But i do see kernel-image-uimage & many kernel-modules also in the file.
>
> Hence wanted to understand why this "RFS package list" has kernel and
> kernel modules also included.
> Any pointers will be helpful to understand things better.
>
> Thanks ,
> Ashish
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64737):
> https://lists.yoctoproject.org/g/yocto/message/64737
> Mute This Topic: https://lists.yoctoproject.org/mt/111048154/3618653
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> xerofoify@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000869986062d87de9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings Ahish,<div><br></div><div>The Yocto reference=C2=
=A0manual may be of help:=C2=A0<a href=3D"https://docs.yoctoproject.org/1.8=
/ref-manual/ref-manual.html#enabling-and-disabling-build-history">https://d=
ocs.yoctoproject.org/1.8/ref-manual/ref-manual.html#enabling-and-disabling-=
build-history</a>.=C2=A0</div><div>Build history should be for all packages=
 and modules for the kernel are separate=C2=A0in some cases. It&#39;s not j=
ust for user-space as kernel=C2=A0trimming</div><div>or similar is rather c=
ommon in certain cases and therefore no surprise for it to be enabled by de=
fault.</div><div><br></div><div>Cheers,</div><div><br></div><div>Nick</div>=
</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Feb 7, 2025 at 1:33=E2=80=AFAM emailaddress.a=
shish via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org<=
/a> &lt;emailaddress.ashish=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div>Hi Members ,</div>
<div>=C2=A0</div>
<div>I am tying to reduce the RFS for one BSP=C2=A0 and making use of =C2=
=A0buildhistory / installed-package-sizes.txt=C2=A0</div>
<div>I was expecting this file will have all user-spaces packages only.</di=
v>
<div>But i do see kernel-image-uimage &amp; many kernel-modules also in the=
 file.</div>
<div>=C2=A0</div>
<div>Hence wanted to understand why this &quot;RFS package list&quot; has k=
ernel and kernel modules also included.</div>
<div>Any pointers will be helpful to understand things better.</div>
<div>=C2=A0</div>
<div>Thanks ,<br>Ashish</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64737): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64737" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64737</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111048154/361=
8653" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111048154/3618653</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofoify=
@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000869986062d87de9a--

