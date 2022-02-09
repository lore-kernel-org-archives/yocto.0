Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED51C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 12:30:50 +0000 (UTC)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web09.25916.1644409849274560525
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 04:30:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ebuHcGx2;
 spf=pass (domain: gmail.com, ip: 209.85.221.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id 48so1089562vki.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 04:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mJRSoDURqvAPAopIJmPR9CzPGcGxtIL+pzaGuIM+rXY=;
        b=ebuHcGx2P+o27UQwe1n9IXs6DdGmSTr4R8wGDZUns3J+1yliShJ2xxuYPV0yK5qa0I
         AJjEJSKK9G28QI9zjJLM34dSGiowiGZXElC+qO4AT5HJJXTZ81L0W2B/djtOtfwTbT0s
         kFEiKh7OxNIR96ZbjLQs2Ifmkq1O18Qpe+sloaLqXq7N9zIwhg0YrJrnHzL6gTKBHoVJ
         AbXMgbwV+I1vr3DR9gqKTkQU1+/nKX0wip7qr6jHOntpE9PhgRQYY3SAkU62P3gP21OZ
         hIOzGF6mMFq/suKgii2/NuG/bOmdou42gHQfa/CkM1s3Y5J76XOcx3gEqR0dyPuueA9m
         KFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mJRSoDURqvAPAopIJmPR9CzPGcGxtIL+pzaGuIM+rXY=;
        b=4/lWDrHYg8xQgi4XHP51IK8Fgd3YvAsKhY/bi9/43AoOWDXHWhpEyhLgkJTnJOABwE
         JZ3nyOieFxaiwGVK+BgldB6XJX+iR2zOesx3oY3hkDBP3T2aUaZ5/gWWImw9iMgWCM1y
         xEkXYsMAZ5JVBd6qEtkg+L1pOv4axUJ2J/IBpoNN7acvsVvysnXkQsDEOex1SnVOCi7l
         55RMnjE+qCS8OwBC3UJZMd80mVayNv33x2XEJVZ8s9RiwFGzh4PyjSFcsAgdive54UXo
         4h6A08cpGzoz/AqzT+GV51PcO9/6eTeWK6/Dx0UrUfJ1F8NlVlAdRa5oiPV1csIJII+r
         DrOQ==
X-Gm-Message-State: AOAM533DADGgC04xG5kJxz1MIwNOgzf716crZmYqljAdnTGzhEMyYrUB
	cOeTEemYmCzyX4X1lEHtnEBttIwUXdemBH4YfCA=
X-Google-Smtp-Source: 
 ABdhPJyeOAxPTR1ioOpw2NvMkqq8xDGOxQ/LO277Aw8mymGWAVanPty34BOH0mkZ0AspUi8MSz75OVNrpFDyDhvR0Ck=
X-Received: by 2002:a1f:ab56:: with SMTP id u83mr681770vke.30.1644409848323;
 Wed, 09 Feb 2022 04:30:48 -0800 (PST)
MIME-Version: 1.0
References: <gP5N.1644409166710026367.bVoI@lists.yoctoproject.org>
In-Reply-To: <gP5N.1644409166710026367.bVoI@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Feb 2022 13:30:37 +0100
Message-ID: 
 <CANNYZj9NqjP31f2droyUqOyK3SajLm2pmASo-F4VK6Ldd5vFBw@mail.gmail.com>
Subject: Re: [yocto] AUh: upgrading recipes bbppend files only #yocto
To: Manjunath Ks <ksmanjunath681@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000dfe40005d79500a4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 12:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56117

--000000000000dfe40005d79500a4
Content-Type: text/plain; charset="UTF-8"

AUH does not actually do the update, it runs devtool upgrade/devtool finish
to do the update and modification of recipes/appends, so you need to
replicate the issue using devtool, and see what needs to be changed in its
invocation by AUH.


Alex

On Wed, 9 Feb 2022 at 13:19, <ksmanjunath681@gmail.com> wrote:

> HI ,
> I am currently working upgrading  recipes using AUH(Auto Upgrade Helper )
> tool where in i am able to upgrade recipes,
> custom settings such as SRCBRANCH , SRCREV and SRC_URI in a recipe file of
> interest.
> I am able to upgrade recipes in their recipe(.bb)files only i.e., after
> completion of upgrade process it is able
> to update SRCREV commit hash to latest in the repo.
> If i set the above mentioned variables in extended recipe
> files(.bbappend)  by removing in main recipe instead,
> main recipe file still gets modified/added with variables SRCBRANCH and
> SRCREV(latest hash) after upgrade process
> is completed, leaving behind same variables with previous data which was
> set, how to make the tool to update extended recipes only.
>
>
> Thanks & Regards,
> Manjunath
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56116):
> https://lists.yoctoproject.org/g/yocto/message/56116
> Mute This Topic: https://lists.yoctoproject.org/mt/89019979/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000dfe40005d79500a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>AUH does not actually do the update, it runs devtool =
upgrade/devtool finish to do the update and modification of recipes/appends=
, so you need to replicate the issue using devtool, and see what needs to b=
e changed in its invocation by AUH.</div><div><br></div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, 9 Feb 2022 at 13:19, &lt;<a href=3D"mailto:ksmanjun=
ath681@gmail.com">ksmanjunath681@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">HI ,<br>I am currently working up=
grading=C2=A0 recipes using AUH(Auto Upgrade Helper ) tool where in i am ab=
le to upgrade recipes,<br>custom settings such as SRCBRANCH , SRCREV and SR=
C_URI in a recipe file of interest.<br>I am able to upgrade recipes in thei=
r recipe(.bb)files only i.e., after completion of upgrade process it is abl=
e=C2=A0<br>to update SRCREV commit hash to latest in the repo.<br>If i set =
the above mentioned variables in extended recipe files(.bbappend)=C2=A0 by =
removing in main recipe instead,<br>main recipe file still gets modified/ad=
ded with variables SRCBRANCH and SRCREV(latest hash) after upgrade process<=
br>is completed, leaving behind same variables with previous data which was=
 set, how to make the tool to update extended recipes only.<br><br><br>Than=
ks &amp; Regards,<br>Manjunath
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56116): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56116" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56116</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89019979/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89019979/1686489</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000dfe40005d79500a4--

