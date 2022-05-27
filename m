Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42C56C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 16:23:50 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.5659.1653668629718732648
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 09:23:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PsVrpeVA;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id b135so4707577pfb.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 09:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D1GkzkFjp2F5VqVcsB1uBjiKDh+5yc7h4BikuH4G1dY=;
        b=PsVrpeVASxy8j1C2RJ7b2Un6AVMW9aVOk9Am0xxviXvlaGa1VCrEPIlqtEURBfcrSL
         WP+XBC+PnjpFKBNLFxtyRgxBINZJvEZ7w+bUIOVfU96lcJdaAv/To3yoraD6pEy5jF5b
         7eAcA6UadI/dlJp33sVSJBsT8HV1KKsMzEei833dAUMtHDsXoyyN7iYv8JKByNJV69OD
         2Jfa+X99i32/XyL5L05qZVOD5ft6u+zn4LMb2rbCJVwWy6wXXwQPOHDZB4+2bioRq5Bh
         HOatxnNkK+I4Xw7/GRWbvQxrX7nr6EJ7rpnJDmuMvwhDSvUPDvAYnZ8nqfpBQR746ZR2
         rUVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D1GkzkFjp2F5VqVcsB1uBjiKDh+5yc7h4BikuH4G1dY=;
        b=f8oLAC7GzUPU+opULrtCaL2kNktJSF9h2RK2eBUf/DjXW8bSmgFK6Vn6Tsy0Mx3yAZ
         +Ut25R94emdV+IYWPNy3a+jMoKiIuO5wdHR20GGOQto17PXPWK1cBxu7P74IHS5PuG3T
         /aZe/cyslwerRDCB9L+lFzhmSqhW5F8EYfldR1ZO4PVVDm+HQhmu5H1TpBcBdubgd967
         +Zd3iG06x/210tg9Qq+vcvkapkG8FiPXToSl1hzaROCg6tbhsjOmnnd17p86N8m5yVWV
         +k9MwEgvzaIrkLfOkbEQcmRLRhYvsqh+QSY3iqDNtAWPFQhlZ/5aXUqjLqvze3dH4sF0
         Az4A==
X-Gm-Message-State: AOAM531U8n57AeB68XZGocnL7yZxbIU97ZeeIY7nCMZKdM+bhtoJ16l8
	WwSwsIaUduvuJOQB3BtWpJBSV5lRDPJhtt0Duco=
X-Google-Smtp-Source: 
 ABdhPJztFsrGKfHaEA2bpDhDwrpAMLQyGN7dyjVcBIJZlqrmeRAddh3H7DogSLytih6N0+qgGCxYh2U3DUQnABOAIpY=
X-Received: by 2002:a63:343:0:b0:3f6:52e5:edbe with SMTP id
 64-20020a630343000000b003f652e5edbemr35360132pgd.272.1653668629166; Fri, 27
 May 2022 09:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220527135751.54a29f24@melee>
 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
In-Reply-To: 
 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 27 May 2022 09:23:37 -0700
Message-ID: 
 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
To: Jan Simon Moeller <jsmoeller@linuxfoundation.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	AGL ml <automotive-discussions@lists.linuxfoundation.org>,
	Scott Murray <scott.murray@konsulko.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Marius Vlad <marius.vlad@collabora.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000037bdc605e000bb25"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 16:23:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57206

--00000000000037bdc605e000bb25
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <
jsmoeller@linuxfoundation.org> wrote:

> Hi !
>
> Yes, we need to look into this and likely change the location of the
> RDEPENDS.
> Thanks for flagging.
>
> polkit needs to be in DISTRO_FEATURES and the recipe needs to have a chec=
k
for that (and inherit features_check)


> Best regards,
> Jan-Simon
>
> ------
> Jan-Simon M=C3=B6ller
> AGL Release Manager
> The Linux Foundation
>
> Visit us at:
> www.automotivegradelinux.org
> lists.automotivelinux.org
> www.linuxfoundation.org
>
> On Fri, May 27, 2022 at 1:57 PM Luca Ceresoli <luca.ceresoli@bootlin.com>
> wrote:
> >
> > Hello,
> >
> > we are experiencing build failures of the meta-agl build on the Yocto
> > autobuilders with this error message:
> >
> > ERROR: Nothing RPROVIDES 'polkit' (but
> /home/pokybuild/yocto-worker/meta-agl-core/build/meta-agl/meta-agl-core/r=
ecipes-platform/packagegroups/
> packagegroup-agl-graphical-weston.bb RDEPENDS on or otherwise requires it=
)
> >
> > Here are a few logs:
> >
> >
> https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1239/s=
teps/12/logs/stdio
> >
> https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1240/s=
teps/13/logs/stdio
> >
> https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1241/s=
teps/12/logs/stdio
> >
> > The error started showing up today, and given the error message it is
> > possibly related with this commit on meta-agl master:
> >
> >   packagegroup-agl-graphical-weston: Add polkit to RDEPENDS
> >
> >
> https://git.automotivelinux.org/AGL/meta-agl/commit/?id=3Da8c060f736a66dd=
e56cc2ba1803d35531c62d610
> >
> > Do you think the above error can be caused by this commit?
> >
> > Best regards.
> > --
> > Luca Ceresoli, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57205):
> https://lists.yoctoproject.org/g/yocto/message/57205
> Mute This Topic: https://lists.yoctoproject.org/mt/91374765/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000037bdc605e000bb25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 27, 2022 at 9:18 AM Jan S=
imon Moeller &lt;<a href=3D"mailto:jsmoeller@linuxfoundation.org">jsmoeller=
@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi !<br>
<br>
Yes, we need to look into this and likely change the location of the RDEPEN=
DS.<br>
Thanks for flagging.<br>
<br></blockquote><div>polkit needs to be in DISTRO_FEATURES and the recipe =
needs to have a check for that (and inherit features_check)</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Best regards,<br>
Jan-Simon<br>
<br>
------<br>
Jan-Simon M=C3=B6ller<br>
AGL Release Manager<br>
The Linux Foundation<br>
<br>
Visit us at:<br>
<a href=3D"http://www.automotivegradelinux.org" rel=3D"noreferrer" target=
=3D"_blank">www.automotivegradelinux.org</a><br>
<a href=3D"http://lists.automotivelinux.org" rel=3D"noreferrer" target=3D"_=
blank">lists.automotivelinux.org</a><br>
<a href=3D"http://www.linuxfoundation.org" rel=3D"noreferrer" target=3D"_bl=
ank">www.linuxfoundation.org</a><br>
<br>
On Fri, May 27, 2022 at 1:57 PM Luca Ceresoli &lt;<a href=3D"mailto:luca.ce=
resoli@bootlin.com" target=3D"_blank">luca.ceresoli@bootlin.com</a>&gt; wro=
te:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; we are experiencing build failures of the meta-agl build on the Yocto<=
br>
&gt; autobuilders with this error message:<br>
&gt;<br>
&gt; ERROR: Nothing RPROVIDES &#39;polkit&#39; (but /home/pokybuild/yocto-w=
orker/meta-agl-core/build/meta-agl/meta-agl-core/recipes-platform/packagegr=
oups/<a href=3D"http://packagegroup-agl-graphical-weston.bb" rel=3D"norefer=
rer" target=3D"_blank">packagegroup-agl-graphical-weston.bb</a> RDEPENDS on=
 or otherwise requires it)<br>
&gt;<br>
&gt; Here are a few logs:<br>
&gt;<br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/120=
/builds/1239/steps/12/logs/stdio" rel=3D"noreferrer" target=3D"_blank">http=
s://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1239/steps/1=
2/logs/stdio</a><br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/120=
/builds/1240/steps/13/logs/stdio" rel=3D"noreferrer" target=3D"_blank">http=
s://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1240/steps/1=
3/logs/stdio</a><br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/120=
/builds/1241/steps/12/logs/stdio" rel=3D"noreferrer" target=3D"_blank">http=
s://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1241/steps/1=
2/logs/stdio</a><br>
&gt;<br>
&gt; The error started showing up today, and given the error message it is<=
br>
&gt; possibly related with this commit on meta-agl master:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0packagegroup-agl-graphical-weston: Add polkit to RDEPENDS<=
br>
&gt;<br>
&gt; <a href=3D"https://git.automotivelinux.org/AGL/meta-agl/commit/?id=3Da=
8c060f736a66dde56cc2ba1803d35531c62d610" rel=3D"noreferrer" target=3D"_blan=
k">https://git.automotivelinux.org/AGL/meta-agl/commit/?id=3Da8c060f736a66d=
de56cc2ba1803d35531c62d610</a><br>
&gt;<br>
&gt; Do you think the above error can be caused by this commit?<br>
&gt;<br>
&gt; Best regards.<br>
&gt; --<br>
&gt; Luca Ceresoli, Bootlin<br>
&gt; Embedded Linux and Kernel engineering<br>
&gt; <a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">h=
ttps://bootlin.com</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57205): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57205" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57205</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91374765/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
91374765/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000037bdc605e000bb25--

