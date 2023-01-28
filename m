Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA26C636CB
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 23:29:27 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.6616.1674948561806546064
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 15:29:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=noOekgIy;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-4c131bede4bso114235307b3.5
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MgXf4f4sxguipfncXhGG6CQWqHhpWW8AXaQwSeWSLhk=;
        b=noOekgIyNCOn6u9SoMni4OVfeoRlSGxwZtLMXXl3EiMG93cDs6RqZS3RfaLBUlQhUL
         1r8X5K1F31EaQqRvnnCAuWNcX/5Am4HecDDrz6/yOuVjFoksg4MDirTOfn2JgU2hrXN4
         2pLmlFUHkT5iVNugyINCd+NfurvugzsdMyiBj9Fk5rjr+ytV6KqxQSig+KFQH5eO9zKm
         fca0vNScQm1sV8BtRFCla1FKDWc7xcrb+29R5Vuo2VfI/TmRITtPcl6ep7lrbz6dD69v
         rPHAJmyPFYtIORkEo9VMpX+6pMY9cFfkF5xGF2z9UtQ9+ZqrArDsguYAqnDk0KOaNtaF
         UVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MgXf4f4sxguipfncXhGG6CQWqHhpWW8AXaQwSeWSLhk=;
        b=5TYlRMUo161nNBu37qns4xHV3ug7m5fNSsfU1Mja270aXPrQsk/5lNJb91H+tde8/B
         yt2rSmll6qqq28ReTdmNSgGEUS1Tjle3hUaJ0cmO3h/s0OXRUhK4dYfGP4RVJWDKEB2t
         8ZGRWmsQ2pzlrskdJDRiqf93PK6+W6fRQQi2XtTlu54JGwEZ2uJ2w4/meXElpjoUWFdX
         ztulMO0nEqondq0YQdd725YiJqRkZmLT4nZGwoXcKpAargNXGQW3wjFr8XlbHAWjOgvq
         +z2onPCubEn5nMBgzKJynwbnP2ciCN6et4/wKf860Fq1nPB595ii80gswFH8F9FF2jdx
         svkA==
X-Gm-Message-State: AO0yUKV6l6e1ofkYUmqcOFhusEj2V1+KQ2U3ab+U18TZUzF0v5NzUX1L
	uDRSAMPAopbrkwqNxBA4DZm1gXM7ykqHNQA/f0g=
X-Google-Smtp-Source: AK7set8DRWXs1x1mlS9zCN4FzoM88HBXNJ9bAhFKbBJE8K5rPtAV9AEXu59mkSzLqJp4Z08O8U8wC2IRWUYbQnH6nRQ=
X-Received: by 2002:a81:ac5b:0:b0:50e:79ff:8381 with SMTP id
 z27-20020a81ac5b000000b0050e79ff8381mr671207ywj.91.1674948560744; Sat, 28 Jan
 2023 15:29:20 -0800 (PST)
MIME-Version: 1.0
References: <CAJekvNToLOBwvDRmST97En5K6vEb-KB1oe8GOSZHd+qzp3sqcQ@mail.gmail.com>
In-Reply-To: <CAJekvNToLOBwvDRmST97En5K6vEb-KB1oe8GOSZHd+qzp3sqcQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 28 Jan 2023 15:29:09 -0800
Message-ID: <CANx9H-A3Y0WR5zwvqvNm7MwW85aa4KZ2Rq-CTnEpc7gCW8Gt6Q@mail.gmail.com>
Subject: Re: [yocto] Hardware accelerated video decoding and display on AMD hardware?
To: Ori Pessach <mail@oripessach.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000faf7a005f35b5921"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 23:29:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59093

--000000000000faf7a005f35b5921
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 28, 2023 at 2:47 PM Ori Pessach <mail@oripessach.com> wrote:

> Hello,
>
> I asked this on the meta-amd mailing list but got no response.
>
> Can anyone tell me what needs to be added to an image if I want to enable
> accelerated video decoding and display on commodity (PC) AMD hardware?
>
> The image is currently running Xorg and, at least on Intel hardware, is
> capable of accelerated decoding and display using VAAPI and OpenGL. The
> user application uses gstreamer for decoding and display.
>

I don=E2=80=99t have any direct experience, but a search for =E2=80=9CRadeo=
n=E2=80=9D on layerindex
gives some hints:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3DRadeo=
n

So you probably want xf86-video-amdgpu and linux-firmware-amdgpu.


> Thanks,
>
> Ori Pessach
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59092):
> https://lists.yoctoproject.org/g/yocto/message/59092
> Mute This Topic: https://lists.yoctoproject.org/mt/96596912/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000faf7a005f35b5921
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Jan 28, 2023 at 2:47 PM Ori Pessach &lt;<a href=3D"=
mailto:mail@oripessach.com">mail@oripessach.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)"><div dir=3D"ltr"><div style=3D"box-sizing:border-box;font-fam=
ily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;co=
lor:rgb(51,51,51)">Hello,</div><div style=3D"box-sizing:border-box;font-fam=
ily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;co=
lor:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div style=3D"=
box-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:14px;color:rgb(51,51,51)">I asked this on the meta-a=
md mailing list but got no response.</div><div style=3D"box-sizing:border-b=
ox;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-s=
ize:14px;color:rgb(51,51,51)"><br></div><div style=3D"box-sizing:border-box=
;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-siz=
e:14px;color:rgb(51,51,51)">Can anyone tell me what needs to be added to an=
 image if I want to enable accelerated video decoding and display on commod=
ity (PC) AMD hardware?</div><div style=3D"box-sizing:border-box;font-family=
:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color=
:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div style=3D"box=
-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;font-size:14px;color:rgb(51,51,51)">The image is currently runnin=
g Xorg and, at least on Intel hardware, is capable of accelerated decoding =
and display using VAAPI and OpenGL. The user application uses gstreamer for=
 decoding and display.</div><div style=3D"box-sizing:border-box;font-family=
:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color=
:rgb(51,51,51)"></div></div></blockquote><div dir=3D"auto"><br></div><div d=
ir=3D"auto">I don=E2=80=99t have any direct experience, but a search for =
=E2=80=9CRadeon=E2=80=9D on layerindex gives some hints:</div><div dir=3D"a=
uto"><div><a href=3D"https://layers.openembedded.org/layerindex/branch/mast=
er/recipes/?q=3DRadeon">https://layers.openembedded.org/layerindex/branch/m=
aster/recipes/?q=3DRadeon</a></div><br></div><div dir=3D"auto">So you proba=
bly want xf86-video-amdgpu and linux-firmware-amdgpu.</div><div dir=3D"auto=
"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)"><div dir=3D"ltr"><div style=3D"box-sizing:bord=
er-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fo=
nt-size:14px;color:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div=
><div style=3D"box-sizing:border-box;font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)">Thanks,</di=
v><div style=3D"box-sizing:border-box;font-family:&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)"><br style=
=3D"box-sizing:border-box"></div><div style=3D"box-sizing:border-box;font-f=
amily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;=
color:rgb(51,51,51)">Ori Pessach</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59092): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59092" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59092</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96596912/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
96596912/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000faf7a005f35b5921--

