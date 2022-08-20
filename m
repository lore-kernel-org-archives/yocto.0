Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 142CDC25B08
	for <webhook@archiver.kernel.org>; Sat, 20 Aug 2022 20:51:24 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
 [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.740.1661028676208808214
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Aug 2022 13:51:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lqobre8+;
 spf=pass (domain: gmail.com, ip: 209.85.128.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-333a4a5d495so202251547b3.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 20 Aug 2022 13:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=jwJVIKp6rS/tqcbGWqgKJVx+zTwwUJwViislGqZkhIY=;
        b=lqobre8++QPAkns+ejjFZ5GEdtWwJqz8AoOvw5yOWyoUHMUCy7CzO5CZehnxGUclCP
         U1lRopyW+vh3QQE6Ws6mq/AJYRsV3FmudqAUfIVdOj+H7bMzI4loTrNF0Y87Bs9tzkqR
         bKsfzqHHmv9NvaFM1P8KsfSE83YnnyD8pAF1M26rvVTt31o0NHlWmfHU06KIZR1IwHOB
         BdstcH+mBeTMkh+kvaLT4xt3qfyPDogJ4Z5O58meE2ccoZWvlLVnqgMVxZGvQ9DY1AMT
         GzxZc8Yovvob/dkZq5HuqFM0J6P6Fu/ApCPULjS8ar7LaXScXR9PycZ1kPBUCwehDISK
         D7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=jwJVIKp6rS/tqcbGWqgKJVx+zTwwUJwViislGqZkhIY=;
        b=sej+JdF+P0dTCG6NpP1az4wIV0SQk14Ss4RQK0zE/QoRjfEdgPSYGNaNJdzzi6Q4XW
         JK1iVa0SwYw3vBnPhBn5GmsD6779oubeOkPhJmcZI4G4PoFvUFhyhSInEC4uTSQFDVa1
         5hIR7/bZfGgL1WpTvINqKpfXmyI6iwfhLXb0HpKILa1lpgQTRZ18aDYnL7UYB5EtVQVr
         o/C5gGBXg6znTpXbxXnYx9A6JGL2QG/owlfruaBQnwNLPmK0y9XRR7bvygaPegokN0N5
         1Ms8i0cMskOqUNFQjQC81wcH3XVRvhcskCN+sCBgX1yHRdL2AZUrOPAwHmGBdJ9Zp4Gy
         7EBw==
X-Gm-Message-State: ACgBeo2PDcFG+AB67d0uFP2QuVkSpftUtzE+3i69aJUsiIXxni8XMeGa
	lUH8oZGLSNYbh7BqZcKXRhnWjkdUaRlTGZH4w2Q=
X-Google-Smtp-Source: 
 AA6agR5vdelaa6b0bCcn5teMdXqXYqf605iNWMZMPdTS4G8oKoQ7jZpnWpZmkq2DQ40SxZNyTZMrZgOyCk2ZpWX8CQQ=
X-Received: by 2002:a25:b986:0:b0:671:a73:1ea6 with SMTP id
 r6-20020a25b986000000b006710a731ea6mr12674050ybg.405.1661028674941; Sat, 20
 Aug 2022 13:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <TqOC.1661021557343936224.PfAS@lists.yoctoproject.org>
In-Reply-To: <TqOC.1661021557343936224.PfAS@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 20 Aug 2022 13:51:03 -0700
Message-ID: 
 <CAMKF1soSGVanC9Cfv-h3zM6h-wYtMnjrJGQ=D578Lq4oz_uF_A@mail.gmail.com>
Subject: Re: [yocto] Create the patch for the linux kernel module #dunfell
To: mahendrasondagar08@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021b94d05e6b2606f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Aug 2022 20:51:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57867

--00000000000021b94d05e6b2606f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 20, 2022 at 11:52 AM <mahendrasondagar08@gmail.com> wrote:

> Hi... Community
>
> Hope all are doing well
>
> I'm dealing with the yocto dunfell branch with the STM32MP1
>
> I know, how to create the patch for the device tree source (DTS) and add
> with the custom image
>
> My intend is to modify the busb.c to work with my bluetooth USB dongle
> I have create the patch for the same and adding the same way as i does
> with the DTS file
>
> But, unfortunately, it's causing the issue wile baking the image!
>

If it=E2=80=99s in-tree kernel module then you create a patch with your cha=
nges and
apply it via recipe like any other recipe is going to do in metadata

However you need to share specific details on errors so someone can get a
better content to help you

>
> Can any one redirect me to the tutorial to customize the kernel module vi=
a
> patch under yocto ?
>
>
>
> All suggestions and comments welcome
>
> Thanks
> Mahendra
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57866):
> https://lists.yoctoproject.org/g/yocto/message/57866
> Mute This Topic: https://lists.yoctoproject.org/mt/93149593/1997914
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000021b94d05e6b2606f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Aug 20, 2022 at 11:52 AM &lt;<a href=3D"mailto:mahe=
ndrasondagar08@gmail.com">mahendrasondagar08@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><p>Hi... Community</p>
<p>Hope all are doing well <br><br>I&#39;m dealing with the yocto dunfell b=
ranch with the STM32MP1<br><br>I know, how to create the patch for the devi=
ce tree source (DTS) and add with the custom image <br><br>My intend is to =
modify the busb.c to work with my bluetooth USB dongle <br>I have create th=
e patch for the same and adding the same way as i does with the DTS file <b=
r><br>But, unfortunately, it&#39;s causing the issue wile baking the image!=
<br></p></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">If it=E2=
=80=99s in-tree kernel module then you create a patch with your changes and=
 apply it via recipe like any other recipe is going to do in metadata=C2=A0=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">However you need to sha=
re specific details on errors so someone can get a better content to help y=
ou=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><p><br>Can any one redirect me=
 to the tutorial to customize the kernel module via patch under yocto ?</p>
<p>=C2=A0</p>
<p>All suggestions and comments welcome <br><br>Thanks <br>Mahendra</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57866): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57866" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57866</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93149593/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93149593/1997914</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000021b94d05e6b2606f--

