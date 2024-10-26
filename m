Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A82ED10C02
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 18:15:37 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.15814.1729966533850938684
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 11:15:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=bV17AWXg;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.50, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a9a0f198d38so427942866b.1
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 11:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1729966532; x=1730571332; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+pG5n8srCGpKrnoSn4Zzquqs7YQaYv4xTQFppf8ogM=;
        b=bV17AWXgMy+zfPf1FU6jAauuMWR5EoD6Lfgz2wh92us3twY/j4WaRUcNQz1F78OcJI
         DW0EVM/SJ7Tw+75ofkHLexMiko4U2qO3R9R7jYuC1lRFIir8A6UAjVPmZQX7QgTZal2o
         o5pxixfeqyFv14kG4syDtIa1G3xGywM0WcNs2vp9/yxDzzTLeOYdcqNQfNDJ21nQtE2U
         O3Px6Tz/QNpvHrkdzFoH2UG0HKcbaPirTAUj9rZCh53+Jp1EfIMEG8ZVbw7kvawTeU0x
         qz7/db0kHv8cU/IGwYJstafqRhf6u31VSmkWMxeeLVPCxcdgXX0yvschFMfHWUGYjVr2
         7Ldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729966532; x=1730571332;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S+pG5n8srCGpKrnoSn4Zzquqs7YQaYv4xTQFppf8ogM=;
        b=aMDP9D87V0cRJO0kCKZ2hWP5VRSUtJMSoh2vf8AglJh5kg1ieEYXWm82vSfDANKmnc
         vu3Imf4Gv32/mOSGpOVZ3BKLmRJQhAj5Wi6gNWW10glG3+eUJwrT7ycVAQsdaFdSc7tA
         g5x4rY8a0YKuZNApBC9Q1ywa92oWsQz+H7k9a3pSFHSnbXRvj33viNEoZVFMbI7qSekC
         77kNKpZGfDG7UsC0IfhP4i1bAD/DJ0Hrj6bSN90LNkn1jJUT3so9BoTjIJ0mqQnn0fjA
         2F63ulxoLZRcxr9uUTOJraSANABanuSTWD7ONp+CRXAHWS48XZGWZ/Yr4xg6fp1bOfJA
         a8eg==
X-Gm-Message-State: AOJu0YxyPpqvc4WxFDD2rIyZTkUbbcQPk812M72GWiCCIG2eJK1Wr7A1
	e3YpgBnBRXM263Sfil5rVt9rV4nKkFEnSRSvpAys8INzsKQlfU69PbGkYWXfBv/kwXeeUn0L3XJ
	niSGYN/b8Wxc2LF+FalkPMFd8jlUeUxYYNlauRHlw4iCUC+tBGyg=
X-Google-Smtp-Source: AGHT+IGhrgBOczQd+LwO3vPxFubQQMxQ5hviGgnL6BrSASFfjY3Ml/SSQu09SkugvlrinNoy34HgLKy7fhtxV8hQdlk=
X-Received: by 2002:a17:907:7e86:b0:a99:77f0:51f7 with SMTP id
 a640c23a62f3a-a9de62ec48amr211309766b.61.1729966532110; Sat, 26 Oct 2024
 11:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <aBJH.1729941405307412646.B4qJ@lists.yoctoproject.org>
In-Reply-To: <aBJH.1729941405307412646.B4qJ@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Sat, 26 Oct 2024 20:15:06 +0200
Message-ID: <CAEt6NwqXzcLhSe-wtKNCQHUx74HNSCGC_ab26uMFrTx4-qb8RQ@mail.gmail.com>
Subject: Re: [yocto] [Issue/BUG] Yocto Project Releases Downloads Page with
 403 - Forbidden
To: yocto@lists.yoctoproject.org, joao.ccabral@parceiros.nos.pt, 
	helpdesk@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009ed0580625653867"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 18:15:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64143

--0000000000009ed0580625653867
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

pinging @helpdesk@yoctoproject.org <helpdesk@yoctoproject.org>

On Sat, Oct 26, 2024 at 1:16=E2=80=AFPM joao.ccabral via lists.yoctoproject=
.org
<joao.ccabral=3Dparceiros.nos.pt@lists.yoctoproject.org> wrote:

> Almost all the folders on the page
> http://downloads.yoctoproject.org/releases/yocto/ give 403-Forbidden with
> a nginx template.
> All the folders/versions changed in 2024-Jul-30 and 2024-Sep-21 are givin=
g
> the mentioned error.
>
> This is a major issue for me as it is breaking the compilation step right
> at the beginning.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64137):
> https://lists.yoctoproject.org/g/yocto/message/64137
> Mute This Topic: https://lists.yoctoproject.org/mt/109223182/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009ed0580625653867
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">pinging=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyC=
hip-1" href=3D"mailto:helpdesk@yoctoproject.org" tabindex=3D"-1">@helpdesk@=
yoctoproject.org</a>=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Sat, Oct 26, 2024 at 1:16=E2=80=AFPM joao.ccab=
ral via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a=
> &lt;joao.ccabral=3D<a href=3D"mailto:parceiros.nos.pt@lists.yoctoproject.=
org">parceiros.nos.pt@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding=
-left:1ex"><div>Almost all the folders on the page <a href=3D"http://downlo=
ads.yoctoproject.org/releases/yocto/" rel=3D"noopener" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/releases/yocto/</a> give 403-Forbidden with=
 a nginx template.<br>All the folders/versions changed in 2024-Jul-30 and 2=
024-Sep-21 are giving the mentioned error.<br><br>This is a major issue for=
 me as it is breaking the compilation step right at the beginning.</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#64137): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64137" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64137</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109223182/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109223182/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009ed0580625653867--

