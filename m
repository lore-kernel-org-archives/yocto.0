Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC398C433F5
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 01:44:14 +0000 (UTC)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
 [209.85.221.171])
 by mx.groups.io with SMTP id smtpd.web09.103.1639596191293389050
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 11:23:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qk50jLnI;
 spf=pass (domain: gmail.com, ip: 209.85.221.171,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f171.google.com with SMTP id b192so15325901vkf.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 11:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=eNDoNy7XiwiV3WzOOxxgrOznvwZfhqTeXG0jBcrVPOM=;
        b=qk50jLnIRHB6mVvyRgd/+L2ow4TsHbK26ebNy0686F2ncIk3iFZY507/YgmgIPCJUI
         vi+616hmrdj7u8bZhFE6/2pIS4BV6/kjDxzVHSkKs9mwpQZF9ZoXSnWcYAFtl5yrJFvD
         xhC2AIzfIlvDiGoE+dkVjP2l2gttCdAFn7nXAouaQdNE1bQgvQdLyT47an1zpcqljYPG
         c2zgOAVcIMz9Vnu0uWgfkyVA9pM6whtrEcJs5cjeNlYZSHv4rN68wzGEKhZMnCK6yOn8
         p34mn18eRnEljz06XkYas+xktRdsQRauSOaHLatJpWXXRNyBElM61jTIUnImZecRK4NE
         kfiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eNDoNy7XiwiV3WzOOxxgrOznvwZfhqTeXG0jBcrVPOM=;
        b=rwgqo2170nDIF9bT0kW8T7+xU9eTDTtGrNfBB5NBEcI7Pe3tjPjl815QXxEVbd7Yh2
         3MqQsO+FW2Yb/73Ezl45X/W75btvCszLc5Pu6nUkFm+LXQaiRefF4R98HNmHfN7GoVGF
         sFav+3iRmnHOBrOBMmuNBYfAU63J+eD7n71SHJYxc3/GIBytzR0YpQ1rPZfP4ECJvAFT
         BE51bRgMKrqkdf/5Wqv8yUwp92G2TAkd9NNA4LLuPpxkyCE6YfChkpvGpWQWzHuMAVfl
         IdHMn+0feOIn46X4qYl61WvBVwyAkuf4qDa+1nK/WEewxxfC8eDt08g2klzcz1iyUofz
         p/xQ==
X-Gm-Message-State: AOAM532Uddh3aedhzr3wVCbOwxsdwN8rFxiWjLZ+68jVlIZRxtSx4kDR
	RxEnWIHshjWx3KhuBTEbq0Vkor3gm1VSUEPwxe8eaeDWRZI=
X-Google-Smtp-Source: 
 ABdhPJzXqo6K8u4QtMQSszmB5ikQtgjSUqNeRRAyLcHO4H+ssSnh0lHM/YwB2+Oc16deluK0+73t6th+atneVVTiMF8=
X-Received: by 2002:a05:6122:889:: with SMTP id
 9mr4795161vkf.21.1639596190186;
 Wed, 15 Dec 2021 11:23:10 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 15 Dec 2021 11:22:59 -0800
Message-ID: 
 <CABKMkP+p3iAewWDeuwDHg2OrOBGx2r7Tzq3FsF7tKZsHqZy3Xg@mail.gmail.com>
Subject: [dunfell] hidden files/folders in WORKDIR
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007dbddc05d3343cc4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 01:44:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55595

--0000000000007dbddc05d3343cc4
Content-Type: text/plain; charset="UTF-8"

I'm finding that if I create files/folders (prefixed with '.') in WORKDIR,
they don't get cleaned up with INHERIT += "rm_work".

Is this a feature or a bug?

--0000000000007dbddc05d3343cc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m finding that if I create files/folders (prefixed w=
ith &#39;.&#39;) in WORKDIR, they don&#39;t get cleaned up with=C2=A0INHERI=
T +=3D &quot;rm_work&quot;.<div><br></div><div>Is this a feature or a bug?<=
/div></div>

--0000000000007dbddc05d3343cc4--

