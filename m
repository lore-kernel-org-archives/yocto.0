Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A352DC25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 07:44:51 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.22534.1716795885343748069
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 00:44:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d3683BPN;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e724bc46bfso98280381fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 00:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716795883; x=1717400683; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=loRB1SNdZhM/TyxDkfm35YMxqOTssFkJ2nB+W+vvvVg=;
        b=d3683BPNbmO0d9zbBuzXNq2yDmOkXV5bitEoEwITFx2JWhQ9msGiug7yEK6ZhiQxF1
         FaK8KwgcwfLLAxns3T4gkJv6hE5A6pNyek4gwi1UJ0B7w6ao1AD56lxSdJanDWG2i/Z/
         vUgqCkR0j6ZZhyYbgoM0uQ3oKUmGurgmJwuJq5ohIkA0sIk6c8+u8AqKbfg/r2O7u4eV
         +tdVaLx5AdvHs4uIh/yNfuPHiRPZlNjb/OcUdhBX9jWrC8jelFcXcNDLrLWPAHuYrWoR
         SC3MKSQnwT1LtXT7yPFtVsSwZMzMwFZXw0yWniVNB0HqlT6mnve01FbWB2ZUZD1Recqz
         n/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716795883; x=1717400683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loRB1SNdZhM/TyxDkfm35YMxqOTssFkJ2nB+W+vvvVg=;
        b=ZBk6tBc2jLvoFaXdWIIe4J5/5dju+/U2lpC/3OehdNWP+dxw10qSp/9GiikSFGcJt1
         NQ0t45zY+7+k5BVhFs0XkN9TqDPSOGgBJ9nQdA24W6Jog2RPpYqTp4YavNU2B46MPBNk
         eCbfNBTcMosqY2G+aZgG3F+Y2fWvo1SgblgSf2Rne463PjQ+DtC1G/8hb+0lPmhMCdOy
         4C+7My3znEwWuhqvfiWQkta2EMTWc4wnYrAa8xGZE6NFxbWTApv9ncCOL5LFpZqOljBG
         7pQixIJZuBDnCqG+Nl6+ogWwCBwC+EadrW9Z7FZtx7fbHamVqfUV3J/TWEYK1yWv6jwl
         5irA==
X-Gm-Message-State: AOJu0YyA6k8utP2cqYpW2fc7mi83xZvpi3ioL/WsUaiOGVNtv6ac2Dyf
	Jqx9zW4S5vjWiuFNuv63KL93YVsUv5oSwTQwC++dm9EA/h5nlztDSdDm8/DfUi2UnouecGIP2q2
	++AWCZRmYOLUEBfsN5nX39kgjEds=
X-Google-Smtp-Source: AGHT+IFXaHS58olP7n3AQYU/btQoY1IYygul/eY9zs2ew5c05/ARsO1D+kNukBq5OZkKsCgfJZYfxgjDgeWQw5cpFks=
X-Received: by 2002:a2e:8796:0:b0:2e9:5263:36e9 with SMTP id
 38308e7fff4ca-2e95b276558mr53923811fa.43.1716795883203; Mon, 27 May 2024
 00:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9mokexRqpZ2qJS1u-M8kuMHC3JCnX97bOjYx5aa9Y2dQ@mail.gmail.com>
 <22769.1716792790463170675@lists.yoctoproject.org>
In-Reply-To: <22769.1716792790463170675@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 27 May 2024 09:44:31 +0200
Message-ID: <CANNYZj-Pwk+gMrbyRi0fkwtsCmtzR4CSHRfHOX4BDLZcJ1Cciw@mail.gmail.com>
Subject: Re: [yocto] Run a post-processing step after image generation
To: jmeyron@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c53a3606196ab06e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 07:44:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63205

--000000000000c53a3606196ab06e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes that :) I didn=E2=80=99t remember the exact name, just that it does exi=
st and I
used it.

Alex

On Mon 27. May 2024 at 8.53, Jocelyn Meyron via Lists.Yoctoproject.Org
<jmeyron=3Dgmail.com@lists.yoctoproject.org> wrote:

> Thanks, that looks like a good solution for me.
>
> Just to be sure, when you mention that "there's a way to extend what gets
> copied there beyond the standard set of headers/libraries", you are about
> modifying the "SYSROOT_DIRS" variable?

--000000000000c53a3606196ab06e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes that :) I didn=E2=80=99t remember the exact name, jus=
t that it does exist and I used it.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon 27. May 2024 at 8.53, Jocelyn Meyron via <a hre=
f=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a> &lt;jmeyron=
=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoct=
oproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)">Thanks, that looks li=
ke a good solution for me.<br><br>Just to be sure, when you mention that &q=
uot;t<span style=3D"font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quot=
;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Ari=
al,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quo=
t;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;word-spacing:0px;white-space:pre-wrap;text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline!important;backgroun=
d-color:rgb(255,255,255);color:rgb(51,51,51)">here&#39;s a </span><span sty=
le=3D"font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neu=
e&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,=
&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Sym=
bol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-sp=
acing:0px;white-space:pre-wrap;text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline!important;background-color:rgb(25=
5,255,255);color:rgb(51,51,51)">way to extend what gets copied there beyond=
 the standard set of </span><span style=3D"font-family:system-ui,&quot;Sego=
e UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Li=
beration Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Se=
goe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;=
;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;word-spacing:0px;white-space:pre-wrap;text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine!important;background-color:rgb(255,255,255);color:rgb(51,51,51)">header=
s/libraries&quot;, you are about modifying the &quot;SYSROOT_DIRS&quot; var=
iable?</span>
</blockquote></div></div>

--000000000000c53a3606196ab06e--

