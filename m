Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A340FC25B78
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 21:06:20 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.25422.1715893572275111946
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 14:06:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QSyptPjn;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: simonkbaby@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1ec4dc64c6cso62715175ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 14:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715893572; x=1716498372; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b+9zeq6LkXckRLy9tgU+yp/hFHaLwquFufv92umL2Z0=;
        b=QSyptPjnrMdAK8rtCbmFrV5vi1upZ4wTQ2x6+OHZbzvqfr5aCD6T4DAV5MpQ2fSvyo
         bISZ+cNTRvj9aVqHXCUJ2btejyqNfQ6mKHl2YJKqYn490qnGBbHaNtDwptA3hyQ+lrpZ
         MAtsgDQfC9+12Y259/2rdV5l57q/ZQJ9x/1B2oODrGkjwnbuPW52Ua6R9XOgFUTYA7r4
         FGJZY/I5ZzU0hkCgG5y6S04nCpR0kJSCiD5IYvrm653O1wSoEADe62ua8T90U15IwXs6
         PhG8HdvfNO81RdhRCJ0Y0R4358DUdQ5bLbxgkCioiI+Fm6BpaRuvzxU8seZnu0M9rxg5
         a9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715893572; x=1716498372;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b+9zeq6LkXckRLy9tgU+yp/hFHaLwquFufv92umL2Z0=;
        b=wm2MYAtVCMAaVdQ3Xm3VqI6EzK470zfu4pa2h0M5f4f7+zaYU6VcE209AXr2grphHV
         GNJ3PJvoZ8pRMbLKIEdaxBa67jTXB+bx+P1h8pfh7HH4++XtPBV+eRpwBOs1fOXI1iXm
         dEr70JmeYG/oHs4dnlGPqPH9QDMbDYtD1gjg6okCHjQv9UOsIhCJQAmomaKiDwINZnbB
         LbmUxZLoQOyx9eK30BWznMR5PJ3/Rdjc0LijGUfy7o37A2eSThTBDDQ9IY5ik0KIeZea
         ZyvGGutJZjFTd7Pa5KfU7XzovEaT/iBSTORA0Xa9Jtdsq+vArYIxVzlfpPtUEDYk4RCT
         Ljxw==
X-Gm-Message-State: AOJu0Yxy6IM7IehXFIy5bhieGObr2xonyDT5CUbYD1B6ssJc7Qlf10iw
	9FQCHRk88jKtXdO257J35+V3JsT5OJmOSYa64cp6NPVrvvbHctvl1C0lt5feuZ/o/n8h9NrB2Fc
	h9cYJRdgLIIrAt4p8tGekwc3/O50=
X-Google-Smtp-Source: AGHT+IGMAuHhS4wslcHvCe09CEw7i2fPN8o2QVV3QDsdZ0rQbxV857TJZzULh0uvEU6gOgC15B8gk0Ns/LXEcKc+dAM=
X-Received: by 2002:a17:902:cf07:b0:1e0:ca47:4d96 with SMTP id
 d9443c01a7336-1ef43d0ad15mr277375865ad.3.1715893571572; Thu, 16 May 2024
 14:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
 <CA+chaQdFtjos0jHY71mO-dy-MneHoP9-Mmp4FEm9rSBoLCx14A@mail.gmail.com>
In-Reply-To: <CA+chaQdFtjos0jHY71mO-dy-MneHoP9-Mmp4FEm9rSBoLCx14A@mail.gmail.com>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 16 May 2024 14:06:00 -0700
Message-ID: <CAEFUPH0XuCXv0DTK+MdOEC31AhYkLjyb79NPuZNJ16n1UfGvwQ@mail.gmail.com>
Subject: Re: [yocto] packages not generated in output folder
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ce63fc0618989a5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 21:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63128

--000000000000ce63fc0618989a5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

sounds good . I have fixed it already. My local.conf file has rm_work and
after iIremoved it, it worked.
Thank you for the quick answer.

Regards
Simon

On Thu, May 16, 2024 at 12:55=E2=80=AFPM Martin Jansa <martin.jansa@gmail.c=
om>
wrote:

> You probably inherit rm_work somewhere, use bitbake-getvar to find out
> where and remove it if you don't want the files to be removed after
> the build is finished.
>
> On Thu, May 16, 2024 at 9:28=E2=80=AFPM SIMON BABY via lists.yoctoproject=
.org
> <simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > I am building some applications in 5.15.0-102-generic
> #112~20.04.1-Ubuntu. My yocto recipes aeh building successfully but I am
> unable to see any package folders under the tmp directory. I see only log
> files under temp are created. Nothing else. Can I know if I am missing an=
y
> configuration?
> >
> >
> tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0=
$
> ls -ll
> > total 12
> > drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp
> >
> > This is valid for other recipes as well.
> >
> >
> /build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4.0-=
r0$
> ls
> > temp
> >
> >
> > Regards
> > Simon
> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63124):
> https://lists.yoctoproject.org/g/yocto/message/63124
> > Mute This Topic: https://lists.yoctoproject.org/mt/106141357/3617156
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000ce63fc0618989a5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">sounds good . I have fixed it already. My local.conf file =
has rm_work and after iIremoved it, it worked.<div>Thank you for the quick =
answer.<br><div><br></div><div>Regards</div><div>Simon</div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, M=
ay 16, 2024 at 12:55=E2=80=AFPM Martin Jansa &lt;<a href=3D"mailto:martin.j=
ansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">You probably inherit rm_work somewher=
e, use bitbake-getvar to find out<br>
where and remove it if you don&#39;t want the files to be removed after<br>
the build is finished.<br>
<br>
On Thu, May 16, 2024 at 9:28=E2=80=AFPM SIMON BABY via <a href=3D"http://li=
sts.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproje=
ct.org</a><br>
&lt;simonkbaby=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=
=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am building some applications in 5.15.0-102-generic #112~20.04.1-Ubu=
ntu. My yocto recipes aeh building successfully but I am unable to see any =
package folders under the tmp directory. I see only log files under temp ar=
e created. Nothing else. Can I know if I am missing any configuration?<br>
&gt;<br>
&gt; tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7=
-r0$ ls -ll<br>
&gt; total 12<br>
&gt; drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp<br>
&gt;<br>
&gt; This is valid for other recipes as well.<br>
&gt;<br>
&gt; /build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4=
.0-r0$ ls<br>
&gt; temp<br>
&gt;<br>
&gt;<br>
&gt; Regards<br>
&gt; Simon<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63124): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63124" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63124</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10614135=
7/3617156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/106141357/3617156</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">mar=
tin.jansa@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000ce63fc0618989a5b--

