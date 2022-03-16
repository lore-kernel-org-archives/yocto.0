Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0334C433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 11:14:53 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.23718.1647429293161305227
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 04:14:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fZlLLQSK;
 spf=pass (domain: gmail.com, ip: 209.85.218.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id bg10so3422830ejb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 04:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yg2mNHzGgsKugQeMCBcpMIUaY9lx4AXyRs5tE+bzMNI=;
        b=fZlLLQSKEQ3mCPRNuUXQ0qkS0QhICr7cg5AQtN98Mt0NbCT0PtMBtx2XSolgtFCFmj
         WhUuvxaTOlo0epSB2/yrcRJy93BmUfb6d6VjKwO/e1UcfP1EwWmyqa9cu0OMcmRdldVu
         ikwX+dTcb8LZ3UVddpB7AC99h/85verTr9uigTYhtoH+VDs4c++CipOlfS7hWQ37zjgl
         mjs5RCP2BWNnn1omBm7S79vE+Sz2Lh5c3b2LlYWUntG6QbMFQBMuQZ+JKkqMdqsOz8NJ
         BUGh35YapfgCHGytFjoHyQbt9P+6i63kKrmMfRytZ3usJx9tWAR7zkd4/FChav1wOhhl
         2ntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yg2mNHzGgsKugQeMCBcpMIUaY9lx4AXyRs5tE+bzMNI=;
        b=NQKIzxhlmaSmoJcZWGJrfnhltWAZVX7oCwJsfHNagt3q4hGUNkpANxQyab28UB3lh1
         P89ihvFwcpR6g2PrTqeKVi4B+SpWhxfQKmKj5aoqQFCvsM9GqlVBzqmdYQFWf8K+rGHc
         /CDv9tqx2V2eXOGAbMU40bOqW2q3NakH8kR37g7YGqAIBsoPa2CU9SqRqPQbHiQ9EtSu
         +Me0R1tV4vgtmTs3rjgXK3qGEQMiyrDJulpO4uUM9PR+oNzlaAW/w+9yUD8uU9afPKmN
         jLzHE4F2LCgqf19DEmWitkW1M+k/B5lR7dLK8AsDHo9jAA+OlU1Nmmgc2GoidKE8cKXP
         l5Ig==
X-Gm-Message-State: AOAM533zdl1FbfzUHeG+2YzwIjHNmKbBDgIVO4MsCJoCUxxHRE8OH1DO
	WuoXjJ6uC/x5Fl3NJEmMllhaQ4SnAOeONqPgiJI=
X-Google-Smtp-Source: 
 ABdhPJzjkV0rFOipwb8owUGkYKoEqc1kbd8ytncq0ghsEZulfQUbeXK27BKIMSUpgUqv0kjW0bLa7sj4FHYc9VtBrko=
X-Received: by 2002:a17:906:c151:b0:6db:2b7f:302f with SMTP id
 dp17-20020a170906c15100b006db2b7f302fmr26908853ejc.4.1647429291399; Wed, 16
 Mar 2022 04:14:51 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj80x0ctmqN2pKgythw2NOYChYdmY69wsUkheL63Txv60g@mail.gmail.com>
 <18958.1647428273046847077@lists.yoctoproject.org>
In-Reply-To: <18958.1647428273046847077@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Mar 2022 12:14:39 +0100
Message-ID: 
 <CANNYZj_f2=uTw7AMGC5N4ja+r2yndfbVfFfUg4W2VdU-z8YCqw@mail.gmail.com>
Subject: Re: [yocto] How to manage disk space while working with Yocto?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/related; boundary="000000000000b4ffd005da540509"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 11:14:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56465

--000000000000b4ffd005da540509
Content-Type: multipart/alternative; boundary="000000000000b4ffcf05da540508"

--000000000000b4ffcf05da540508
Content-Type: text/plain; charset="UTF-8"

Are you running in a virtual machine of some kind? It's better to get a
real linux computer. Otherwise you need to check how to allocate more disk
space to the virtual machine from the host.

Alex

On Wed, 16 Mar 2022 at 11:57, Sourabh Hegde <hrsourabh011@gmail.com> wrote:

> Hi Alex,
>
> Below is the output of "df":
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56464):
> https://lists.yoctoproject.org/g/yocto/message/56464
> Mute This Topic: https://lists.yoctoproject.org/mt/89817082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000b4ffcf05da540508
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you running in a virtual machine of some kind? It=
&#39;s better to get a real linux computer. Otherwise you need to check how=
 to allocate more disk space to the virtual machine from the host.<br></div=
><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, 16 Mar 2022 at 11:57, Sourabh He=
gde &lt;<a href=3D"mailto:hrsourabh011@gmail.com">hrsourabh011@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v>Hi Alex,<br><br>Below is the output of &quot;df&quot;:<br><br><img src=3D=
"cid:attach_0_16DCD7493032AE20_3194@groups.io" alt=3D"" width=3D"534" heigh=
t=3D"140">
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56464): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56464" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56464</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89817082/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89817082/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b4ffcf05da540508--

--000000000000b4ffd005da540509
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64
Content-ID: <attach_0_16DCD7493032AE20_3194@groups.io>
X-Attachment-Id: attach_0_16DCD7493032AE20_3194@groups.io

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
CIIg4vx/HzwW+0fwbCMAAAAASUVORK5CYII=
--000000000000b4ffd005da540509--

