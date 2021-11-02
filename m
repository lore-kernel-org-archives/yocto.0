Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD4CC433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 20:04:01 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.web12.637.1635883441007104737
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 13:04:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kdE0MD6U;
 spf=pass (domain: gmail.com, ip: 209.85.221.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f179.google.com with SMTP id g18so232675vkg.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 13:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tm7PktaKtgIWkyB8wDQaEd5PRpwlm9doCLBXb89ceEk=;
        b=kdE0MD6Umu9MWI7InMVr4EWyu7F/iwfXsHdXfnTJOMnAcg2k2YDpL6apHjqxTTflqk
         lmtYJh+QYBPaCinUR8m9DXnfBkrGPRaBmOrmNCkP0yoMZ0VD6YGkPL3Nz+zZWc26F4y6
         NVgk6dhd8G1c3a+llPWYEy8E5Ad8xXLitBd+RArcD3Q7iHomqWVX7/9zkidFSd8E46Q1
         wyqCyzJe2OgGYSzSr1QRu8jCCtfIF5MXRZvNkN8hPPzztn7FiuKQpJ//cXF44ht6wkuh
         ZxZk9EVCVyMtFSUJKSFZBcsNGxhdWR2WD/HG7Aw4d/R2+UwiQA090raU9GyFbc1kgKgE
         OGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tm7PktaKtgIWkyB8wDQaEd5PRpwlm9doCLBXb89ceEk=;
        b=donlIkS5ckNQYxwjwmZZqrn4IkrAoGWiuQeY95by0nkoBfVRoCkfoivBBjH5lnPubv
         7Mtn8SmtpfSTKMlFfCinfVkS91UWrpt6xXHJOGW1S4gfP4yC1/EhKbUQkI5IX5zdLmbm
         GLkWNF78NHni3oCAs4YuIX4aNDXkFpa2szV08HSioK5KDU/0pj/kfV9YTzRFaUJqGt2Z
         pgRkHmYLT4dTGyJchllF4w/30J6sp1onTp5405t2Cx0FxaInFhYt1UFioe7OroLWvJB1
         u94pjjx3WHb/I+2lEftF4GuOboNwqTpdfqsxH+5r3cqGh84OLPYcqvSO1Emigm07a5ir
         xy8w==
X-Gm-Message-State: AOAM530OZuIb8xw86YvNBAsXA7yrhXbpnK7nYxMhdI317VlBPmj3OFZB
	/BGIz1tmqNch9Z2ALlAeo4KV1B5yYN83T/RjipM=
X-Google-Smtp-Source: 
 ABdhPJyMgrzzE+p5HlxDeCrthtgcfgBLqWi1TsQD2Gc9FEqm0/MDMw7hV07E48MbVRXMyNmrDSPHj2dVN541aQul8v0=
X-Received: by 2002:a05:6122:1815:: with SMTP id
 ay21mr17837241vkb.24.1635883440161;
 Tue, 02 Nov 2021 13:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <63c81a59-469d-41b4-2053-269465491bf5@systech.com>
In-Reply-To: <63c81a59-469d-41b4-2053-269465491bf5@systech.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Nov 2021 21:03:48 +0100
Message-ID: 
 <CANNYZj83J3Z5FKyLK4jytGQULHNqTaPFnHN1OAm9OZgRqj3zyg@mail.gmail.com>
Subject: Re: [yocto] Yocto Unauthenticated git Protocol No Longer Supported
To: Jay Foster <jay.foster@systech.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005846a705cfd3cbb0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 20:04:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55220

--0000000000005846a705cfd3cbb0
Content-Type: text/plain; charset="UTF-8"

There are patches in master-next for this. You can backport them, but you
really shouldn't be using rocko.

Alex

On Tue, 2 Nov 2021 at 20:50, Jay Foster <jay.foster@systech.com> wrote:

> My yocto builds started failing today (November 2, 2021) due to this
> (
> https://github.blog/2021-09-01-improving-git-protocol-security-github/#no-more-unauthenticated-git)
>
> issue.  Is there a fix for the yocto fetcher?  I using rocko.
>
> Jay
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55219):
> https://lists.yoctoproject.org/g/yocto/message/55219
> Mute This Topic: https://lists.yoctoproject.org/mt/86775338/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000005846a705cfd3cbb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There are patches in master-next for this. You can ba=
ckport them, but you really shouldn&#39;t be using rocko.</div><div><br></d=
iv><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, 2 Nov 2021 at 20:50, Jay Foster &lt;<a href=
=3D"mailto:jay.foster@systech.com">jay.foster@systech.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">My yocto builds st=
arted failing today (November 2, 2021) due to this <br>
(<a href=3D"https://github.blog/2021-09-01-improving-git-protocol-security-=
github/#no-more-unauthenticated-git" rel=3D"noreferrer" target=3D"_blank">h=
ttps://github.blog/2021-09-01-improving-git-protocol-security-github/#no-mo=
re-unauthenticated-git</a>) <br>
issue.=C2=A0 Is there a fix for the yocto fetcher?=C2=A0 I using rocko.<br>
<br>
Jay<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55219): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55219" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55219</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86775338/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86775338/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000005846a705cfd3cbb0--

