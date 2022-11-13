Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F40FBC433FE
	for <webhook@archiver.kernel.org>; Sun, 13 Nov 2022 12:55:53 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web11.2233.1668344147680163575
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 04:55:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PyckHkv/;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: yishai1999@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id w26-20020a056830061a00b0066c320f5b49so5275900oti.5
        for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 04:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U33LKyVyOPPkqhZPEXLz4ROjCnxelCFGesb75EfTXNI=;
        b=PyckHkv/9JUGmheWLIUjnOAMENF0LpnPACBiSu2E+07BloV8F6fcbCPqzwIJJBbb6j
         udWEIoUToitPzI6Vg2km+Rdw85EC1wyyoYQlKtRZhuj3I0gUiK+Z2ykxTvWYDmBq3AVz
         JV1T/EYLi4ttoZ/+Jb5/YDL2Sp5Iovs+oKVv5gFwPpvG6g/HDkBTJPPYa4b5Fyc9sLow
         KpOvCANLFCe6HgT/5wGmVt8+xeuRtSlzwDEB01b74eTuTq62/U3j6zkPPnRptOihJxjq
         QjHGtZ3vG19ePQAxVRyGY2AUT9jqnN4xsZSTpTlqdwPHW/rGVa4xjd+f7tvtqkIllL59
         RikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U33LKyVyOPPkqhZPEXLz4ROjCnxelCFGesb75EfTXNI=;
        b=NIRVYrEqCXpQL6QgVlgtmMu+SJITJeP1EIKnTZ0g+BWKnenXUecw7AqeW7h70vnquw
         0B08fR88lj4D6eUvI7YhSTPdr3i4QeTMNdT/aC2c/1Ry97NC8f7Wxjjj4Xy3bHa7TgYZ
         hamKnsZWPUl9ZpiP2/XQjzhKtXMS6juU+arh2EbrgCH1/+LzVKF5oYRiIO35md06PLuM
         d6wz2pyZWxiBV7R1wgJMXM0OBGZNaJvl89PXoUYVSe+A/zFeWWUfka5sVasNU6hVwUiG
         B4luQpf6OUit5hqelPmIcLc7QWlnVP+dEhWfk/X0LhhrRLQkUmNrwb0HYlkwo6AykqeJ
         TIDQ==
X-Gm-Message-State: ANoB5pmEx718F6lJ5xgFnhccKcoLJLafvqd7QxZsm48a61wn7koxkhsp
	O8hhZyJkzFol8IoikrRm/NxzE9+vz3qUzLvn79u5QV//PPc=
X-Google-Smtp-Source: AA0mqf64mKEnFg1XoW8Ca/Js5N0CiS93mnAIkvbSaAUgIVltfSOwT7dJ6rGSVgdsWCX13I5agLDDPkfNGdJ7FlQ6U4o=
X-Received: by 2002:a9d:6d0e:0:b0:66c:fd8d:b22f with SMTP id
 o14-20020a9d6d0e000000b0066cfd8db22fmr4431076otp.294.1668344146733; Sun, 13
 Nov 2022 04:55:46 -0800 (PST)
MIME-Version: 1.0
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Sun, 13 Nov 2022 14:55:35 +0200
Message-ID: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
Subject: source-less python
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003aae9005ed59a4d4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 12:55:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58548

--0000000000003aae9005ed59a4d4
Content-Type: text/plain; charset="UTF-8"

Hi,
I was wondering if there has been talk about support for source-less python
on an image. Installing py and pyc files doubles the size of python on the
rootfs. I can imagine this being implemented as an image feature.
I know that in buildroot it is supported.
Was this discussed and decided against? Is this an open issue?
I have a working patch that implements this. I can submit it for review.

Thanks,
Yishai Jaffe
Yishai Jaffe

--0000000000003aae9005ed59a4d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr">I was wondering=
 if there has been talk about support for source-less python on an image. I=
nstalling py and=C2=A0pyc=C2=A0files doubles the size of python on the root=
fs. I can imagine this being implemented as an image feature.</div><div dir=
=3D"ltr">I know that in buildroot it is supported.</div><div dir=3D"ltr">Wa=
s this discussed and decided against? Is this an open issue?<br></div><div>=
I have a working patch that implements this. I can submit it for review.</d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thanks,</div><div><div dir=
=3D"ltr">Yishai Jaffe</div></div><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature">Yishai Jaffe</div></div></div>

--0000000000003aae9005ed59a4d4--

