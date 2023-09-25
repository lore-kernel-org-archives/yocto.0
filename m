Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17CBBCD4853
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 18:23:25 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.68847.1695666203569034863
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 11:23:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=UDQ3V2HW;
 spf=pass (domain: smile.fr, ip: 209.85.208.169, mailfrom: yoann.congal@smile.fr)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c00e1d4c08so117218551fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 11:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1695666201; x=1696271001; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qTfn23QczXwqN98O6gQni4fdE42kKT0YayO/4GVdpD0=;
        b=UDQ3V2HWXJaXLBh1es/wnLufB5XSo42zzy/EMGq5nruhzLnIZ0ujb4QQQQa8HEgGir
         puz9soarY5+cREi18L5EgM9fPMzfarEtlC9+kXcjxX5nDJBJiGVSHv4nGMMnndTE7Z7X
         J0V6nyJqD0NVDExKsYJIbC8UauxgM5xVg8HWOZV9PDxwDyNuW4uQODiRuKZdTJA7+SOb
         F/2PIIH/crxRbzYDGv0ehgn43rfE/HA363OyoholDOPu0zR4B/xTF8g8lOQZzISiXeI+
         qj/RXIDuyHXerzlUCJc/zsKM8pd/Q3ISUl+k7AInmdrnd6o7SYndmC+yge/+QyxkWTDu
         TDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695666201; x=1696271001;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qTfn23QczXwqN98O6gQni4fdE42kKT0YayO/4GVdpD0=;
        b=JA/8/Y8UP1o1n3A8+XiPF0hGJTXIcKadAUJd8mN7pJzu5iMhnPsNUCQCV4tolLL6Od
         wMxwKs2YbJJm23klA5g41xo7hW4HIoa7/HTi1Ti3h+llXAMe6UMfEkwI8Z+P1dpAz6Ie
         ScyMGfQwmuxkY8J2BA+TPs2NoL2HVBor6jJw+/e81B6woX2xjYVjUmKdBY1QcSFParVH
         ZWXr0CVvCltsFZlkap28ipQCZfrZl7QN3rEHIM2lZylbO5r8dj14Ph+4l6PoSU0Gp57d
         ijgLvJ28VWJh8cyQ7Jcs1IRUpGY6Ydfn/sbSHm6XWnifs8I4cgHFfZSh3agTj9jzBBT9
         ZD5Q==
X-Gm-Message-State: AOJu0YwlY4hVKYxG7jQLfJxVFzCsuRsI3Y6x7GJp5E0aeGRJmEy/Da23
	+sE5IlOxScfQBu/zuXHK6k638Chho0ZymzDiHUcLmg==
X-Google-Smtp-Source: AGHT+IGIQIr0KzT+FZBIut3uvPEqQPv+krYxuP5tF7pK0alvzbMMa85yqkaT7yhR1qrZ+6+cC0/hWJShXMPBSCqAUIA=
X-Received: by 2002:a05:651c:10d4:b0:2bc:e2fb:4c8b with SMTP id
 l20-20020a05651c10d400b002bce2fb4c8bmr6540163ljn.38.1695666201185; Mon, 25
 Sep 2023 11:23:21 -0700 (PDT)
MIME-Version: 1.0
References: <CO3PR13MB57996BD3F7D1ACA647B214D3FEFCA@CO3PR13MB5799.namprd13.prod.outlook.com>
In-Reply-To: <CO3PR13MB57996BD3F7D1ACA647B214D3FEFCA@CO3PR13MB5799.namprd13.prod.outlook.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Mon, 25 Sep 2023 20:22:55 +0200
Message-ID: <CAMSfU+7586KbwUnC_E9eTRcfMNZUpxmWWX3yY6u_TzJzy3Zzgg@mail.gmail.com>
Subject: Re: [yocto] bbappend not working for recipe with git in name
To: John Klug <john.klug@multitech.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009469aa0606330de3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 18:23:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61104

--0000000000009469aa0606330de3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Le lun. 25 sept. 2023 =C3=A0 06:55, John Klug <john.klug@multitech.com> a =
=C3=A9crit :

> bitbake-layers show-appends reports:
>
>   Summary: There were 3 WARNING messages.
>   =3D=3D=3D Matched appended recipes =3D=3D=3D
>   kernel-module-nxp89xx_git.bb:
>
>  /home/jklug/mlinux-kirk2/layers/meta-multitech-nxp/recipes-kernel/kernel=
-module-nxp89xx/kernel-module-nxp89xx_%.bbappend
>   WARNING: kernel-module-nxp89xx.bb: missing append for preferred version
>

I may be wrong but it looks like you have 2 kernel-module-nxp89xx recipes :
* one called kernel-module-nxp89xx_git.bb which is bbappended in you layer
* another one called kernel-module-nxp89xx.bb (no PV in filename), which is
preferred over the _git one.

I guess you an either :
* Use kernel-module-nxp89xx.bb : rename your bbappend to
kernel-module-nxp89xx.bbappend
* keep kernel-module-nxp89xx_git.bb : remove or inhibit
kernel-module-nxp89xx.bb

I have tried _git instead of _%.
>
> I have also tried 1.0, since bitbake -e reports:
>
>   PV=3D"1.0"
>
> What should I be doing?  Nothing in the bbappend does anything, unless I
> make it invalid, then I get an error.
>
> SRCREV is set in this recipe as a hash.
>
>
> John Klug
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61096):
> https://lists.yoctoproject.org/g/yocto/message/61096
> Mute This Topic: https://lists.yoctoproject.org/mt/101569034/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
Regards,
--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000009469aa0606330de3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 25 sept. 2023 =C3=A0=C2=
=A006:55, John Klug &lt;<a href=3D"mailto:john.klug@multitech.com" target=
=3D"_blank">john.klug@multitech.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">bitbake-layers show-appends=
 reports:<br>
<br>
=C2=A0 Summary: There were 3 WARNING messages.<br>
=C2=A0 =3D=3D=3D Matched appended recipes =3D=3D=3D<br>
=C2=A0 <a href=3D"http://kernel-module-nxp89xx_git.bb">kernel-module-nxp89x=
x_git.bb</a>:<br>
=C2=A0=C2=A0 =C2=A0/home/jklug/mlinux-kirk2/layers/meta-multitech-nxp/recip=
es-kernel/kernel-module-nxp89xx/kernel-module-nxp89xx_%.bbappend<br>
=C2=A0 WARNING: <a href=3D"http://kernel-module-nxp89xx.bb">kernel-module-n=
xp89xx.bb</a>: missing append for preferred version<br></blockquote><div><b=
r></div><div>I may be wrong but it looks like you have 2 kernel-module-nxp8=
9xx recipes :</div><div>* one called <a href=3D"http://kernel-module-nxp89x=
x_git.bb">kernel-module-nxp89xx_git.bb</a> which is bbappended in you layer=
</div><div>* another one called <a href=3D"http://kernel-module-nxp89xx.bb"=
>kernel-module-nxp89xx.bb</a> (no PV in filename), which is preferred over =
the _git one.</div><div><br></div><div>I guess you an either :</div><div>* =
Use <a href=3D"http://kernel-module-nxp89xx.bb">kernel-module-nxp89xx.bb</a=
> : rename your bbappend to kernel-module-nxp89xx.bbappend</div><div>* keep=
 <a href=3D"http://kernel-module-nxp89xx_git.bb">kernel-module-nxp89xx_git.=
bb</a> : remove or inhibit <a href=3D"http://kernel-module-nxp89xx.bb">kern=
el-module-nxp89xx.bb</a></div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
I have tried _git instead of _%.<br>
<br>
I have also tried 1.0, since bitbake -e reports:<br>
<br>
=C2=A0 PV=3D&quot;1.0&quot;<br>
<br>
What should I be doing?=C2=A0 Nothing in the bbappend does anything, unless=
 I make it invalid, then I get an error.<br>
<br>
SRCREV is set in this recipe as a hash.<br>
<br>
<br>
John Klug<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61096): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61096" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61096</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101569034/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101569034/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"></div>Regards,<br><div><span class=3D"=
gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signa=
ture"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><=
div><font face=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div=
></div></div></div></div>

--0000000000009469aa0606330de3--

