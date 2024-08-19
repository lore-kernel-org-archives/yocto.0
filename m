Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ED1C3DA4A
	for <webhook@archiver.kernel.org>; Mon, 19 Aug 2024 16:19:18 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.214611.1724084356034921780
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Aug 2024 09:19:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=COMJs+Ep;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-70938328a0aso2333561a34.1
        for <yocto@lists.yoctoproject.org>; Mon, 19 Aug 2024 09:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724084355; x=1724689155; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hQyvX+G024uERSGKLRoZX3Stxwb0XrsfIPVb+JOb8E4=;
        b=COMJs+Epp1Om7qoUiUSYJhBbmEJn9z+1OTOOeIQDgKBtiHasJKTTH5rgQ1Xv5oh/Ag
         4bBbXGhlDh98pa+4X4EGxRpSbOpnEZtb/PS5aeH7yCxoPLZ/eFP3utMhBMQ7hs5zF7j6
         g9lemA2m/stiecdDMGnTi98LMwfHqW4K/3hpUkchtjP3berSIA3mHMqAE3XUOdx3duSd
         K0o+XeM67uZsaXsnKiIADHF4RD/ReJl2idgYVVuzAFI3LfBfmKAVS0F/chBLzu5QI0sO
         yqRmuWeA83Gb8YsbGSHmskzWB+FJ2bcPqRVx+emkshol8LbJDwsM3iLettFirk2qxhBa
         7J5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724084355; x=1724689155;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hQyvX+G024uERSGKLRoZX3Stxwb0XrsfIPVb+JOb8E4=;
        b=U8DPHdDzTzGS6FOmk8S86gYrckWbAYvc6HRImWNkoDIBakwd7rEvKzTBqGlYmARFxh
         zTgtxZHJfDL+MewWohjUP3YW/1ibqvIGIRRU/e8V0KwduM+F8Rxc4LEZ7KzNB3YiJzzl
         HkxIP515DthmKARQTBOx4hDaJr4y32kXGT45F2Af9I5seoyAHukjnZtYwVidkhTli75o
         bkVy6+NShzhpKilMON1O111nzCj1C81chuvcU7DREC/on5oXCnAx4NhNHXvSDLG9sGxs
         iwGV9K/mVJRBYTwQrj0Qh7s7vbkNbRdnh/bZYK7YLRIWqI9nlyK7QFwAH0oHLiJl/6J5
         F8uA==
X-Gm-Message-State: AOJu0Yz8O+W5sT9FqjdkmCEq4KGinH3d/S9xtwtcLeOj0uDzDXeqk+dU
	ufn6uXWJWFS+iG1OHWbYpTB9ZcIGuyr0K/KcibMdXDkOvFc0/AuXhpwHLtY0mpbE8UDY6ZelgWy
	vMfm5dnAc3UHewX9jOZlPRcrLgPFFTptl
X-Google-Smtp-Source: AGHT+IHrV2gpaK4POmDS3e11mFgZDnITEMpUz5mGL1F+y1BlsuHheAfIOs/MWRC/p3Jyc+85Er76IivNVzKaquHGlbc=
X-Received: by 2002:a05:6358:3106:b0:1aa:d7aa:62a3 with SMTP id
 e5c5f4694b2df-1b3932d8481mr1641103955d.28.1724084354858; Mon, 19 Aug 2024
 09:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <i47theeraamzdqpvz4ks4zequqwvzrghomunhwnmkfymui4y2x@m6fblppgsank>
In-Reply-To: <i47theeraamzdqpvz4ks4zequqwvzrghomunhwnmkfymui4y2x@m6fblppgsank>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 19 Aug 2024 17:19:03 +0100
Message-ID: <CANPvuRnNWOGhFKvyckz3opw1CyrAze6MM+P4A29GBRDpgeYsDA@mail.gmail.com>
Subject: Re: [yocto] Where to send patches for ptest?
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
Content-Type: multipart/alternative; boundary="00000000000088c86e06200babec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Aug 2024 16:19:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63722

--00000000000088c86e06200babec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi J=C3=B6rg,

J=C3=B6rg Sommer via lists.yoctoproject.org <joerg.sommer=3D
navimatix.de@lists.yoctoproject.org> escreveu (segunda, 19/08/2024 =C3=A0(s=
)
16:48):

> Hi,
>
> where does the development of ptest happen? What's the right place to sen=
d
> patches to?
>

The git repo was available at
https://git.yoctoproject.org/ptest-runner2/tree/README.md
From the README the paches should be sent to the
yocto@lists.yoctoproject.org.

Jose


>
> I've created a commit on a Github repo, but it doesn't get any attention.
>
>
> https://github.com/alimon/ptest-runner2/compare/master...jo-so-nx:ptest-r=
unner2:master
>
> Kind regards
>
> J=C3=B6rg
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63721):
> https://lists.yoctoproject.org/g/yocto/message/63721
> Mute This Topic: https://lists.yoctoproject.org/mt/107983379/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000088c86e06200babec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi J=C3=B6rg,<br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">J=C3=B6rg Sommer via <a =
href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;joerg=
.sommer=3D<a href=3D"mailto:navimatix.de@lists.yoctoproject.org">navimatix.=
de@lists.yoctoproject.org</a>&gt; escreveu (segunda, 19/08/2024 =C3=A0(s) 1=
6:48):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
where does the development of ptest happen? What&#39;s the right place to s=
end patches to?<br></blockquote><div><br>The git repo was available at <a h=
ref=3D"https://git.yoctoproject.org/ptest-runner2/tree/README.md">https://g=
it.yoctoproject.org/ptest-runner2/tree/README.md</a></div><div>From the REA=
DME the paches should be sent to the <a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a>.<br><br>Jose</div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I&#39;ve created a commit on a Github repo, but it doesn&#39;t get any atte=
ntion.<br>
<br>
<a href=3D"https://github.com/alimon/ptest-runner2/compare/master...jo-so-n=
x:ptest-runner2:master" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/alimon/ptest-runner2/compare/master...jo-so-nx:ptest-runner2:master</a=
><br>
<br>
Kind regards<br>
<br>
J=C3=B6rg<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63721): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63721</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107983379/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107983379/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000088c86e06200babec--

