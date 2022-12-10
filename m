Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AA2BC4332F
	for <webhook@archiver.kernel.org>; Sat, 10 Dec 2022 12:03:52 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.13626.1670673824181845998
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Dec 2022 04:03:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q2jV8ADq;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id b13so11088238lfo.3
        for <yocto@lists.yoctoproject.org>; Sat, 10 Dec 2022 04:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KXd0QHb3h1oKHeslDy6BfCqp3cdxM4E2ZMyIVVJ+MTk=;
        b=q2jV8ADqdIAHpC4i/RMgVoz3axfbGLig2NwtkdwuAjWBsPpUj0AewAYSfbSuAqic04
         HI8DcxGI3BGCnzJb7tpfSTJt+ngk9Dorg5Z6VUFXJ81obPeiVMP282wC7Cw/rQZL78CS
         Jw9YW4jTJqly5dvp12qIVU/qT0ObxzdskFgEtgKWBMN8GyFEeWlNhNalW4dPQ0yIEHFS
         uXk/ludgsLxtOFgqs45gZzRoHuvYU/87YwAaKWovAcn/mMvkYrbEUaDKFFLvl3G5BXam
         0IB6L0geV30VSntXt2wkIXF2kFFaX7mbWPx21zWJ3APEOJIDHZ75c4Yeqtkc+yH6+5EE
         yX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXd0QHb3h1oKHeslDy6BfCqp3cdxM4E2ZMyIVVJ+MTk=;
        b=Yt9mlzaytTtEjw+wLy5dYoY79updmPr4+L2jXykBrI1PRVpupKVQ5r757LqkOXuZOv
         vWA1jZJBi7aHQXlCQFoqVCCk6mgxsrhLcXSP8nSwpBi2PoYFS4biiozWj8Nrb9e0NviC
         iUc/MetlgbsTEypX8p2AmABkL5CcCMQH6rdOFMrjOVWILLV0zP/3yhfoWKrEWKskwKqc
         samcrwZxdCCLANP8gJPkzvpPn1xu9gjfjuUz1iZ+MKKhSA5jyy/OPqgCKilrHYq14wM7
         eC/wDPT5LLIYsp33B7Ptveg6fhg0Jt9zYqiOUFay7nVn7gv5tQJ5yNilCTAbRBBVpGS4
         uvDw==
X-Gm-Message-State: ANoB5pnQxb35M99VgHMbT3pcjVgvTXLVvGJObNl9kWmovw7QyGbErjfY
	jBL/eFizcMXrDiK73h5SNoisj8U7+myABd3+6IEZkGCd
X-Google-Smtp-Source: AA0mqf5MpqRwQVfbGyAp6Hgoey8GXpB9ZciKnnSFjXo3BNAMXkDlzcVcGmYY1ytNzwtAD3OKY4UVdFhQ5T+HS9xubug=
X-Received: by 2002:ac2:5391:0:b0:4b5:4502:1323 with SMTP id
 g17-20020ac25391000000b004b545021323mr10190966lfh.345.1670673821749; Sat, 10
 Dec 2022 04:03:41 -0800 (PST)
MIME-Version: 1.0
References: <durf.1670673629488309004.atDw@lists.yoctoproject.org>
In-Reply-To: <durf.1670673629488309004.atDw@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 10 Dec 2022 13:03:30 +0100
Message-ID: <CANNYZj8fDsCWXCRxCZBMx-ujohUu5wXmGQq1BkP_a_JsfdUHAQ@mail.gmail.com>
Subject: Re: [yocto] Make recipe conditionally download code from Git Repo #yocto
To: ali.ahmad@rtl-corp.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ae586a05ef780fde"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Dec 2022 12:03:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58775

--000000000000ae586a05ef780fde
Content-Type: text/plain; charset="UTF-8"

Can you explain the context and use case please?

Alex

On Sat 10. Dec 2022 at 13.00, ali.ahmad via lists.yoctoproject.org
<ali.ahmad=rtl-corp.com@lists.yoctoproject.org> wrote:

> I have a recipe for an application. I want it to download its code from
> the Git repo only if it does not already exist at a specific location on
> the file system.
> How can I go about achieving this?
>
> Thanks
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58774):
> https://lists.yoctoproject.org/g/yocto/message/58774
> Mute This Topic: https://lists.yoctoproject.org/mt/95580174/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ae586a05ef780fde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you explain the context and use case please?</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat 10. Dec 2022 at =
13.00, ali.ahmad via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a> &lt;ali.ahmad=3D<a href=3D"mailto:rtl-corp.com@lists.yoctopr=
oject.org">rtl-corp.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(2=
04,204,204)">I have a recipe for an application. I want it to download its =
code from the Git repo only if it does not already exist at a specific loca=
tion on the file system.<br>How can I go about achieving this?<br><br>Thank=
s
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58774): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58774" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58774</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95580174/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95580174/1686489</a><br>
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
</blockquote></div></div>

--000000000000ae586a05ef780fde--

