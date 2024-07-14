Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB217C3DA49
	for <webhook@archiver.kernel.org>; Sun, 14 Jul 2024 08:14:27 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.12720.1720944865060733050
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Jul 2024 01:14:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BYC7BgYU;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-25e43dda1edso2047057fac.0
        for <yocto@lists.yoctoproject.org>; Sun, 14 Jul 2024 01:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720944864; x=1721549664; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/lo7S4vu0OgfkzhTp1AF+A/ZosO+DwzCX/t9VqRVmVA=;
        b=BYC7BgYUTtWkYEadBEQlkVj4PmXVR0IKwfWlg02PYX13vY4a2pD3T82epF9Gl7E6+b
         ioH51exIzcziLDIqVazfOR9Ylh/rKwbV5xEHtZiQvpJOYK6SXxjCruswLeiTVK3OkFuC
         9uZRGWNc0HbNo3xJbzwVoP0HYcK+4l5LNiecvZjlgoWoy9MjNp2ydCU8BLNJEK0zuD/5
         H+HbJjn4SyjNQ3F18mNXVo3VnO7tBm6G1N5VrxyJeDRC71fodK2s0sB90x4JEoabOrRv
         P/58Gh5jqFaCG+NTsfeLXocrBW6LzbkCvL1qj4nNEkW29WPH5aeNRj5MenHY1+QoDAC0
         08JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720944864; x=1721549664;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lo7S4vu0OgfkzhTp1AF+A/ZosO+DwzCX/t9VqRVmVA=;
        b=Rsb80B8aoFIdgtjo8WMmWJgJHdzwwkTP1lgaQe3xLKTswDljRkNIV0kT0raAaPGv0M
         7lq32ICEKUvT2EhkRNvY2HobfIIQtKb2AC1REy1ree70rOm+Rb2yFDta/LkvUIjsp9dD
         eEC+OBESwxOKDvAQ2mx3pcz1rt/H+P1mD/HOVZ4cnMpStjETNI7t0t9AWfdKotR4lsRy
         PDamrIlONYie6rzsXK6BRiJxto2fn0vabOHqiXdxTJLZn95jWnQw7ZKUA9+9Ym/xr71W
         n3ih7oM38jH/889wZcucdhqDB2SZVoEO+rNedkaB8c+fB+k1eENwdWRNKwEu76121Urv
         p+hw==
X-Gm-Message-State: AOJu0YxKyHU99MsFT0Pm0CbeupZRi6a+Hf6UXDqqgrCjMWbOhezRSQ9f
	opaEVqLBpki3C/TYPNLOjemdjAKoO7ugsrLv3BEO4qxEX88XF9NzU1B6EqQ1+nWlVa0uBc775HJ
	1t2oXOKBpFS3u4X1q/mLN70yoyP8=
X-Google-Smtp-Source: AGHT+IFhaXM3U75J3Clw+1gXXjdt/ltslzqLFpIvQM9MBy6w++T1sl7WIPGTvhWkH35v166vVviy6RECSzSVMMR7DV4=
X-Received: by 2002:a05:6870:ac26:b0:25d:7cc4:caa8 with SMTP id
 586e51a60fabf-25eae74ac40mr13496623fac.10.1720944864099; Sun, 14 Jul 2024
 01:14:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1so2LCk5ntBSOs7d5wnj-+nb0ESbcXUBORDqpcOYj5MWGA@mail.gmail.com>
 <1227.1720941438433774566@lists.yoctoproject.org>
In-Reply-To: <1227.1720941438433774566@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 Jul 2024 01:14:12 -0700
Message-ID: <CAMKF1sq6Fy5ODtHP=YE14c0hDAWZcfB+wEkBxDwurugE30_14A@mail.gmail.com>
Subject: Re: [yocto] Bitbake: arm-poky-linux-gnueabi-gcc not found
To: gavrosc@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004d8304061d30b313"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jul 2024 08:14:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63490

--0000000000004d8304061d30b313
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 14, 2024 at 12:17=E2=80=AFAM gavrosc via Lists.Yoctoproject.Org
<gavrosc=3Dyahoo.com@lists.yoctoproject.org> wrote:

> hi
>
> yes you are right! I have placed this instruction in the local.conf file
> which resides in build/conf folder.
> I have removed it and the 'bitbake helloworld' worked fine.
>
> One last question, do I have to remove this instruction (INHERIT +=3D
> "rm_work") when I am building individual recipes like the helloworld and
> then add it back when I build my whole image (bitbake
> core-image-full-cmdline) ?
>

I usually recommend to not use  rm_work since it has other side effects
some times. Usually if you are not hard pressed with disk space it is
fruitless

>
> I really thank you so much for your help! its highly appreciated. I spent
> a whole day yesterday before I opened the topic here :) . I am a bit new =
to
> yocto!
>
>

--0000000000004d8304061d30b313
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Jul 14, 2024 at 12:17=E2=80=AFAM gavrosc via <a hre=
f=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a> &lt;gavrosc=
=3D<a href=3D"mailto:yahoo.com@lists.yoctoproject.org">yahoo.com@lists.yoct=
oproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)">hi<br><br>yes you are=
 right! I have placed this instruction in the local.conf file which resides=
 in build/conf folder.<br>I have removed it and the &#39;bitbake helloworld=
&#39; worked fine.<br><br>One last question, do I have to remove this instr=
uction (<span style=3D"font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&q=
uot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,=
Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&=
quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;font=
-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:pre-wrap=
;word-spacing:0px;text-decoration:none;float:none;display:inline!important;=
background-color:rgb(255,255,255);color:rgb(51,51,51)">INHERIT +=3D &quot;r=
m_work&quot;) when I am building individual recipes like the helloworld and=
 then add it back when I build my whole image (bitbake core-image-full-cmdl=
ine) ?<br></span></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"=
>I usually recommend to not use =C2=A0rm_work since it has other side effec=
ts some times. Usually if you are not hard pressed with disk space it is fr=
uitless=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;=
border-left-color:rgb(204,204,204)"><span style=3D"font-family:system-ui,&q=
uot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,=
&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,=
&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emo=
ji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:pre-wrap;word-spacing:0px;text-decoration:none;float:no=
ne;display:inline!important;background-color:rgb(255,255,255);color:rgb(51,=
51,51)"><br>I really thank you so much for your help! its highly appreciate=
d. I spent a whole day yesterday before I opened the topic here :) . I am a=
 bit new to yocto!<br><br></span>
</blockquote></div></div>

--0000000000004d8304061d30b313--

