Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30C9EC6FD1F
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 17:56:55 +0000 (UTC)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.50611.1679507812780548628
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 10:56:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OqaDa5E7;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id 89so13278342uao.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 10:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679507812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LbagaTK/Bd7x2XukCR+wZWHGQhU5XTJBT+5XLO3A+vw=;
        b=OqaDa5E7zS6F8tB+0eFMVM7lnCoTs/yoQgS5lMDnDawNx8IoIjGzJYpPXQg2ncTC+M
         pjfD5aQe3RGV47jTdzO1isFF6BLUD09o2h7h65pjhNHpZB+TtZugp3MZ19QE2s97UB9+
         Z42DDdHfkxWmjbwHRCCrQ2sz68HcnG6Od+FtkdEIsLGyaWl+LkEmTSbUB803WBRaPakm
         qHd4kEVvj3khu+2wjQrJMwcVwB+PoOws2wAnULUlGkpkduZKhIm5ZW+7WhyAe03zH98B
         L0gaaFiZe8Q8AuRBeuuHU3ucK/9AvrwjtsbBZZ0NtdHK64d0LPKxAuF1K1y1dKlAR+D7
         UaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679507812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LbagaTK/Bd7x2XukCR+wZWHGQhU5XTJBT+5XLO3A+vw=;
        b=0W1jVkIVyZpCN0AGBuipO+vBGazXnTF7gNufT2sKLQJyY+ZjuFdGO1vozQ86//wjSt
         7E8Ed1Lb2zgJoPixRxi0pCYoDojQWTtoStdPH8FIv+w7N+OkCGU0f/d8cOEAJJn+9UE5
         6PFB9fGf2t+wBUsXytpSp1/Qg53xrmbWpUfsiTb6CroA5jiTIsLEn9mvd+Gb8ZXF89F0
         R+4WSC456fpCXCPiPLq6o+7qt3I2wfPaCc7vbI8G3y+lcHW472Tn8KNi6fmuZTTAgecV
         1WW43dd+dnCck760sAeujzpPwCGj8T/obS70RkhVG9blZ5e/ZFqfUwStV75AY1wbYgpa
         wGMA==
X-Gm-Message-State: AAQBX9etzmPo9JOLTBxtKyURh4js3akPWHMvn6c1s0f8j8IfACDWK4Jl
	c8+UOpVK05NjxmMLJB37EJ8Rwq35jDiRFFNjgGdzYa6kHguDcg==
X-Google-Smtp-Source: AKy350ZhPUmvnTKxQLrTAFw8pRpUmRbrIll7HIDE7aQ4Zqtp9wcl6Fi2V84BYYoqcjXanWl7bsP0Gtbcb00yxce5H0I=
X-Received: by 2002:ab0:3d10:0:b0:68a:702a:2494 with SMTP id
 f16-20020ab03d10000000b0068a702a2494mr4417532uax.0.1679507811104; Wed, 22 Mar
 2023 10:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
In-Reply-To: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 22 Mar 2023 17:56:40 +0000
Message-ID: <CANPvuRmH3b4aCYq6KfeTcukpuo3XWiY1MF+B0qj+_9Lutj5TwQ@mail.gmail.com>
Subject: Re: [yocto] Network Isolation and CMake FetchContent
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007a7b4e05f780e2b9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 17:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59493

--0000000000007a7b4e05f780e2b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia quarta,
22/03/2023 =C3=A0(s) 16:58:

> I have a vendor project which uses CMake FetchContent.
>
> It's simple to override FETCHCONTENT_FULLY_DISCONNECTED=3DON which is set
> in the cmake class. However, that does not fix the issue since network
> isolation prevents the CMake from downloading the content.
>
> I have not found a way to override the network isolation. Is there one?
>

please try in a recipe bbappend with

do_configure[network] =3D "1"

Jose


>
> Now this is not a discussion about whether FetchContent or not is a good
> idea and any potential other issues that could arise from using it. For
> me it's to quickly enable a functionality without jumping through hoops
> of patching the vendor sources etc.
>
> Cheers,
> Rudi
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59492):
> https://lists.yoctoproject.org/g/yocto/message/59492
> Mute This Topic: https://lists.yoctoproject.org/mt/97782979/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000007a7b4e05f780e2b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rudolf,</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Rudolf J Streif &lt;<a href=3D"mailto:rudol=
f.streif@ibeeto.com" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; esc=
reveu no dia quarta, 22/03/2023 =C3=A0(s) 16:58:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">I have a vendor project which uses CMake F=
etchContent.<br>
<br>
It&#39;s simple to override FETCHCONTENT_FULLY_DISCONNECTED=3DON which is s=
et <br>
in the cmake class. However, that does not fix the issue since network <br>
isolation prevents the CMake from downloading the content.<br>
<br>
I have not found a way to override the network isolation. Is there one?<br>=
</blockquote><div><br>please try in a recipe bbappend with=C2=A0<br><br>do_=
configure[network] =3D &quot;1&quot;</div><div><br></div><div>Jose<br>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Now this is not a discussion about whether FetchContent or not is a good <b=
r>
idea and any potential other issues that could arise from using it. For <br=
>
me it&#39;s to quickly enable a functionality without jumping through hoops=
 <br>
of patching the vendor sources etc.<br>
<br>
Cheers,<br>
Rudi<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59492): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59492" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59492</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97782979/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97782979/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span>-- </span><br><di=
v dir=3D"ltr"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</di=
v></div></div></div>

--0000000000007a7b4e05f780e2b9--

