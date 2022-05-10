Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C075FC433EF
	for <webhook@archiver.kernel.org>; Tue, 10 May 2022 22:11:25 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web08.3538.1652220679123754775
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 15:11:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VceuMS88;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id x88so467091pjj.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 15:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=c5rNYeUuhrScqMPH+UZRvEp0waitdQ37tqEZtiSFgiY=;
        b=VceuMS8818FxR7bIcctj8Tu2E87zZFMklR7DY+z6MVQx2vjsZEOM7qYTwagEczRWRx
         v7uK1FLwVr+HOjLUk6uOU+3d7hCH0jrPYadhf0YIsydquwjXdVqP8JKs7PZeBdprVm4t
         NbIEzBJDmj4bIRGKca6WqJO5rXiWQhUDxgqYpQUIlOdtz0cNL7LNU7aKFuThe+Fm3YqE
         SUAWLgsLD8Q6wbgs8keJ9V3me1Nglh5vqWPMG5XceSgJSrZqOpZSIzsXpbYiI/S/slgw
         nJUzYIWXRmH1ot5819YMclRkwxTy0/qX12Rujh9Mc+/ndRYz8n/jTxj7TbKLLbn/Hddv
         UFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=c5rNYeUuhrScqMPH+UZRvEp0waitdQ37tqEZtiSFgiY=;
        b=YwmTr1UgdQ/X8IqEy8liqotoInatyQNLAS11vuD7XISifvDFaXDIr7s1aNWVJFIz7h
         xECULWlhLpIoZlti5kCn2DnPuwdouJt1bn8TfNUtz2HU83gHf1/dFsSQzzcTgQ1RZ1Zn
         5odlz7Fkim2T62oHxKwJU49q170Rt0ksyU9jj3hqDy+Ym/R4//o3Fq3hh3PkHxwmy8K2
         6bmmK5amOthexlUljjVLnStYHbNnZNCU4YD2dKMPP2nJ1Gkdn2oSskwg6tyiydhvEljv
         7DxzBljzlTzMPPMlZ/QNvgGl1ybhMBnatLzkkmOZ9Tj21P+cK5Bvg8P3dLB6XHMTlZxp
         jcdg==
X-Gm-Message-State: AOAM533udqMzaZ2FzqWy4rIXIbx5+fZ/+np+Oryb19Gqwj5xw5Pemjze
	QVjteFOMuMmWI/pbRBGh0y3rI8Ar8PNS6RaHVr0mMoGN
X-Google-Smtp-Source: 
 ABdhPJzcYxd+7DOFQpE50B/1bJ4t6bsvDSGcJPmyoZPCzaxJ+RqR+T555RpA/Ec+gda+FOhze/GtXIu+KA7J8Jgo6IQ=
X-Received: by 2002:a17:90a:fa06:b0:1d7:765d:111b with SMTP id
 cm6-20020a17090afa0600b001d7765d111bmr1950878pjb.185.1652220678177; Tue, 10
 May 2022 15:11:18 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Tue, 10 May 2022 16:11:02 -0600
Message-ID: 
 <CAE+BM3ku0_4Vmq30e49cMzPp8Bvmitc7fNs8trF2q1UukEaxqA@mail.gmail.com>
Subject: SSTATE cache getting huge. Delete or use sstate-cache-management.sh
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009d062f05deaf9a15"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 May 2022 22:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57052

--0000000000009d062f05deaf9a15
Content-Type: text/plain; charset="UTF-8"

A few weeks ago, our NFS-mounted sstate-cache was about 748 GB in size. I
ran the script "sstate-cache-management.sh".  It took a very long time
(about two hours) but was able to free up 307 GB of space.

What is the benefit to running that script vs just deleting the
sstate-cache directory entirely?  I know the first build after a delete
will take a long time. But that's offset because just deleting the
directory as a whole doesn't take more than about a minute.

Does deleting the sstate-cache affect the preserv and the autoinc values it
is returning?

Rusty

--0000000000009d062f05deaf9a15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A few weeks ago, our NFS-mounted sstate-cache was abo=
ut 748 GB in size. I ran the script &quot;sstate-cache-management.sh&quot;.=
=C2=A0 It took a very long time (about two hours) but was able to free up 3=
07 GB of space.=C2=A0 <br></div><div><br></div><div>What is the benefit to =
running that script vs just deleting the sstate-cache directory entirely?=
=C2=A0 I know the first build after a delete will take a long time. But tha=
t&#39;s offset because just deleting the directory as a whole doesn&#39;t t=
ake more than about a minute.</div><div><br></div><div>Does deleting the ss=
tate-cache affect the preserv and the autoinc values it is returning?<br></=
div><div><br></div><div>Rusty<br></div></div>

--0000000000009d062f05deaf9a15--

