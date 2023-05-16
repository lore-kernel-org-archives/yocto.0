Return-Path: <kergoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A507C77B7A
	for <webhook@archiver.kernel.org>; Tue, 16 May 2023 15:37:43 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.25257.1684251458754083934
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 08:37:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=i88zaecU;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: kergoth@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-52160f75920so10003524a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 08:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684251458; x=1686843458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWhTKRqUcowpEZCL+FZ87EZVOop8OtuugkuXvd44Y9M=;
        b=i88zaecUnZ3yzK41TsV4V8tmMTfLC33Ss9UVzwX/KfGpftXiFxUnbnT0v6LcAxyXSo
         iJ6abG4brf8TASuvPMmyI72Bl6yr3SE9dj4qPkBPohMUhBW3oQCVbPXmxV9cQ7C8tK8I
         bMeKNuRXHcI+yA/IiBFvBpCN2jgxjRM8OItQ4NigJAljs3gOrCdg3Da7Vn55r6IcAtXB
         v8Ia0SYTfcroJet+uTu2jFwptW3gNZlPx2Fkc5UkPyFCfY9L33U0jP4J0N4/r/aG9cCA
         Akf7BkBVylPtBpyrc6+QDp2DVlhGVE332NExOqZni7S4X95nB3zL74RvisC74o95a3QH
         Anxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684251458; x=1686843458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZWhTKRqUcowpEZCL+FZ87EZVOop8OtuugkuXvd44Y9M=;
        b=NDs5IepgNbtAb3NKCoxJ2SuxVVSHYTfBam6Q5Lzf3VBYEsOyobTbMUxQhy1b5Rq2Zu
         /YbgvfqfjoxIpRc8WSysVictuVH8BL0wj6Y6bVbPkJJ7dWTsYo1lfQHbUB9ZIlihazyN
         uDq95NeEkbyLNXfTH0fDNXMZ6KU1Lr13nCj4n+y8c+lz4by+E8ERSDvkkjsAjomzgKMm
         9TNKFgBocgdo5bJkHaZxKqY/9CfAeAde2E2H1uA8RKr9+lIuHlXDTd3S7twdfiVQJJFq
         MOI0qUZtt/miyO1qSW9PdTEq1oAFfjDOGETh+ygFGVR0oSv+wslP90psK0aFE59NKi+W
         xIjA==
X-Gm-Message-State: AC+VfDx8Tzfxu550CB3xjtIFggo0rXlY62pZjIF1QLveO9BLay+VaOcg
	YAs+HryEy4ZDzxGmsp9/To8vAaaOPRZlyZZdljM=
X-Google-Smtp-Source: ACHHUZ61nEcFqBebAJscNnsPdJq6mqXUAojfPkqyq5yQFxk5sx8jiv14aViFXiIoJxYHhUGm71V7IBIIhZiI00Kfz7U=
X-Received: by 2002:a05:6a20:4658:b0:f2:ba78:3d50 with SMTP id
 eb24-20020a056a20465800b000f2ba783d50mr37794051pzb.12.1684251457885; Tue, 16
 May 2023 08:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <CANzPQ-BRK-i17cQ0aLXscPdD2+HXmDTQjBi8=6r1yms8rMvWEA@mail.gmail.com>
In-Reply-To: <CANzPQ-BRK-i17cQ0aLXscPdD2+HXmDTQjBi8=6r1yms8rMvWEA@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Tue, 16 May 2023 08:37:26 -0700
Message-ID: <CABcZANn66Veo3U=9bh1WJUfw6e+dWJ0GOJ999dtdjq3Qw21+oQ@mail.gmail.com>
Subject: Re: [yocto] bb.event.BuildStarted didn't work in a bbappend
To: Jiliang Cai <tyrocjl@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dc1b9d05fbd1597e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 15:37:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60035

--000000000000dc1b9d05fbd1597e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

BuildStarted is a global event like configParsed, it's not fired for each
individual recipe that's parsed. You can include a .inc that does it from a
global config file, or create a bbclass that you add to INHERIT in a global
config file.

On Tue, May 16, 2023 at 5:13=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com> wro=
te:

> I add these lines in a bbappend file:
> addhandler cjltest
> cjltest[eventmask] =3D "bb.event.BuildStarted"
> python cjltest () {
>     bb.warn("enter my event code")
> }
>
> But when bitbake this recipe, no warning message appears.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60033):
> https://lists.yoctoproject.org/g/yocto/message/60033
> Mute This Topic: https://lists.yoctoproject.org/mt/98924617/3617123
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> kergoth@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Christopher Larson
chris_larson@mentor.com, chris.larson@siemens.com, kergoth@gmail.com
Principal Software Engineer, Embedded Linux Solutions, Siemens Digital
Industries Software

--000000000000dc1b9d05fbd1597e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">BuildStarted is a global event like configParsed, it&#39;s=
 not fired for each individual recipe that&#39;s parsed. You can include a =
.inc that does it from a global config file, or create a bbclass that you a=
dd to INHERIT in a global config file.</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 16, 2023 at 5:13=E2=80=AF=
AM Jiliang Cai &lt;<a href=3D"mailto:tyrocjl@gmail.com">tyrocjl@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I =
add these lines in a bbappend file:<br>
addhandler cjltest<br>
cjltest[eventmask] =3D &quot;bb.event.BuildStarted&quot;<br>
python cjltest () {<br>
=C2=A0 =C2=A0 bb.warn(&quot;enter my event code&quot;)<br>
}<br>
<br>
But when bitbake this recipe, no warning message appears.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60033): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60033" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60033</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98924617/3617=
123" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98924617/3617123</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:kergoth@gmail.com" target=3D"_blank">kergoth@gma=
il.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><font color=3D"#333333">Christopher Larson<=
br><a>chris_larson@mentor.com</a>,=C2=A0<a>chris.larson@siemens.com</a>,=C2=
=A0<a>kergoth@gmail.com</a><br>Principal Software Engineer,=C2=A0Embedded L=
inux Solutions,=C2=A0Siemens Digital Industries Software</font><br></div></=
div></div>

--000000000000dc1b9d05fbd1597e--

