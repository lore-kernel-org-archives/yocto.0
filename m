Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D8C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:29:47 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web08.5628.1664353781579840518
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oXcl8xNP;
 spf=pass (domain: gmail.com, ip: 209.85.167.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id k10so19285477lfm.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0zPzoYZaUaIpK014QKXOKLbo9pm1EDv2McoyfzR9sU8=;
        b=oXcl8xNPU0vKeWfQBUbKFRLBFfyENzqNkoGGFm62e5hNbFnZL9dM57t+le88V3pInj
         4a7WjmS+5+QlOhrg9eyVTczO8dZ7N5cFiFGHgK98GTjpn3MDyL5PbR7G+RwGPFc98tgg
         qieV/reKUgbHVApSNtVVQyzaDjza0HvfjP1Wzjj/cd0RMwFuP9deIxkaVr8qgaDVTc8G
         ieNlhyWi5w9rShM3bkCVVDnrZ24d/25KFtiv8XPn+AFiZPXiFjWXD6+iZjW1ia/4FHHq
         nloEidHb3aMAJPAGMEyzE553iSzdc11L5QDcYgLOG3mDuIwlKoJ13Z56RrCrZ1hCLnM1
         4Xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0zPzoYZaUaIpK014QKXOKLbo9pm1EDv2McoyfzR9sU8=;
        b=0dNQ+U3CHPZN/rvZ4EAVj/E1u7pMTdGDE6yA94xGIj3a4zg7ibdclGXz2SyWZKQ7he
         bR5Lrt1i1nPzKZmGcvAiMFr+QNjxrQGvoM15esraMs1p+I99qT51p8i/xJdIAlNVudtM
         j0//fr64vntxWKbu0UXKe/vspyGqHY2u1hJehodMGLPivTwizVdVbrpxx8z3RTRkhzM9
         88d/lCPYqyVoveP92f2PDFjyJzJHI9OVSA7dSqLK8G0vO5M8OyiW/ZAEjDmbRJJBnlAU
         9yex+lEJYqzHvUEtl/Sk4bBuOKrVyjY/CT6mvlJ84D2+kWxugYIUvzu3+0nnnWcMSCay
         1+VA==
X-Gm-Message-State: ACrzQf2VI3xFj3AqKGEa85TcypRIu7ISJCRCqYCVWDSfHCg5V0y9OIY1
	YvPKMv4hxofdvcMM6NiLv/2I9j6xcfAn1v5O09I=
X-Google-Smtp-Source: 
 AMsMyM4sFezdN3X308/B++qeZc/DlJ8LDISJ5l7smkQnGQNHF6qb8fYbHvwO70KhmT/EawRj+75ZY9ZlSkGkGBd9sFU=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr12413467lfa.380.1664353779731; Wed, 28
 Sep 2022 01:29:39 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Sep 2022 10:29:28 +0200
Message-ID: 
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d2559705e9b88f78"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:29:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58200

--000000000000d2559705e9b88f78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would first check whether any of that work in the branch has meanwhile
landed upstream. The post is from 2021.

Have you tried the software Vulkan in the guest?

Alex

On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:

> I try to enable vulkan according to this tutorial
>
>
> https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-ena=
bling-new-virtual-vulkan-driver/
>
> According to the author the modified qemu branch is still necessary so I
> want to enable that.
>
>
> Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <
> alex.kanavin@gmail.com>:
>>
>> You need to clarify what you want to do exactly. Why can=E2=80=99t you u=
se the
>> existing recipe?
>>
>> Alex
>>
>> On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wrote:
>>
>>> Greetings,
>>>
>>> I want to change the git repo url in order to test the Venus driver. Ca=
n
>>> someone tell me which variable in which recipe I'd have to set?
>>>
>>> Regards
>>> --
>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#58196):
>>> https://lists.yoctoproject.org/g/yocto/message/58196
>>> Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> alex.kanavin@gmail.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>
>>> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>

--000000000000d2559705e9b88f78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I would first check whether any of that work in the branc=
h has meanwhile landed upstream. The post is from 2021.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Have you tried the software Vulkan in the g=
uest?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 28=
. Sep 2022 at 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com">heide=
ggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:so=
lid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div>I try to enable vulkan according to this tutorial<br><br><a href=3D"ht=
tps://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enablin=
g-new-virtual-vulkan-driver/" target=3D"_blank">https://www.collabora.com/n=
ews-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driv=
er/</a><br><br>According to the author the modified qemu branch is still ne=
cessary so I want to enable that.</div><div><br><br><div class=3D"gmail_quo=
te">Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin &lt;<a hr=
ef=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.c=
om</a>&gt;:<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.=
8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-l=
eft-color:rgb(204,204,204)">
<div dir=3D"auto">You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a h=
ref=3D"mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)"><u></u>


<div>Greetings,<br><br>I want to change the git repo url in order to test t=
he Venus driver. Can someone tell me which variable in which recipe I&#39;d=
 have to set?<br><br>Regards</div><div><div style=3D"white-space:pre-wrap">=
<div>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.</div></div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58196" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58196</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93968127/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Na=
chricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></d=
iv></div></blockquote></div></div>

--000000000000d2559705e9b88f78--

