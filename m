Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26153C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 13:34:54 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.12019.1675172084933696462
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 05:34:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hCVvwTZ6;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: electronicconsult1@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id d132so18087799ybb.5
        for <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 05:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I71ygfkob3TMcjoKDTAhV1Pq62nOGvX7fXeQJBL6ewg=;
        b=hCVvwTZ6gQx5965u+F0MSvtMp4AM3Jhcesx1HTHkQnomun8j3x8+4DXfpudFAyXdL2
         cXJWQqyHR5iCJ0b9YGYkaVYncHoKVkcIXqgN59zswuDrjYcJvx1VScDKy7Jfbnih5fHy
         xiB3ffKDFnum4PkNcKSZEnFK3axX32Ou3D3iZtVqAdGUeBu8F+YDN3+e2nFOr608k3TV
         gqkj2DmzUbXBWoktFwm9FaH0VJn0v1T+TNzn120/rwDUs0g4LKwRSbxXfPZoh8K3VsvT
         dJrIFU4n2gu0yTiVo17zxChrXgzHcp1xQXGQ4v09bhoEwnHOKXhMM9d2ZZnxWAdTVXwY
         haEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I71ygfkob3TMcjoKDTAhV1Pq62nOGvX7fXeQJBL6ewg=;
        b=ieA+G9cPlPYxAT10qzHsnE0yP7a6AQq/Kh6O2bFhebAUTMvf/3elySXvOM7heXqtL6
         s89xttsNrh2iUaihNqpM5yQR/I4HRDIDYoox5TxXBYEippdPMgizcbSiI/RG9uCyJp/q
         fCDX6Kp+CSp44F667tCdUr79KBOOmPEayrpvYQWm9oah9MqieUKM0QORslsfTxHTd1Pe
         VNwzpP/TNDKkQEKJLyvwYa7/piv6OpM4+b9vhjlGvDgq6YLGRNXYAVDQ+9OmY9+ITt6/
         5i1JAoIaBDZ+1SSnrfIVwyeMqVsk9bu+cA/xM58qcJH/uWaMhGJB0Akh0/NE1b6/V/kE
         k2cw==
X-Gm-Message-State: AFqh2kq3oD4oSS+yaThipu95xTe+Gv6/rnEcilVv9rGSsYelYI78y6e0
	MCvxb2/oTf95K5MdMtF7Foh5/jeDhitnXfBoSoYxWbas6lfCag==
X-Google-Smtp-Source: AMrXdXs1pqnBp1DEvWSx5MFPJVGHmuKz+IJ/n30Yr/oV8xd57bEp3QhcFNDwDQWh/9ov1HllsNuwGRjG59eZn1EuMr0=
X-Received: by 2002:a25:6e8a:0:b0:7d7:d0e:5d1e with SMTP id
 j132-20020a256e8a000000b007d70d0e5d1emr6581246ybc.4.1675172083975; Tue, 31
 Jan 2023 05:34:43 -0800 (PST)
MIME-Version: 1.0
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Tue, 31 Jan 2023 13:34:33 +0000
Message-ID: <CAGUWaEFzFPQ6v3RH97Kw3-fpjaFfMTfU9VC3FTMA+7DZtEcQQg@mail.gmail.com>
Subject: Setting recipe PACKAGECONFIG with in a Bash script?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000000ca2c05f38f65e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 13:34:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59119

--00000000000000ca2c05f38f65e3
Content-Type: text/plain; charset="UTF-8"

Hello,
I've searched & can't seem to find an answer for this but I'm sure it must
have come up before.

I'd like to automate the generating of images using Bash & create similar
recipes but with different PACKAGECONFIG's. How does one do that?

It would be something like:

#! /bin/bash
source oe-init-build-env build-microchip

# Generate first image
PACKAGECONFIG = "foo"
MACHINE=sama5d4-xplained-sd bitbake microchip-graphics-images
# Upload image to 'cloud'
mv sama5d4-xplained-sd /theCloud

# Generate second image
PACKAGECONFIG = "bar"
MACHINE=sama5d4-xplained-sd bitbake microchip-graphics-images
# Upload image to 'cloud'
mv sama5d4-xplained-sd /theCloud


Thanks,

--00000000000000ca2c05f38f65e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I&#39;ve searched &amp; can&#39;t se=
em to find an answer for this but I&#39;m sure it must have come up before.=
 <br></div><div><br></div><div>I&#39;d like to automate the generating of i=
mages using Bash &amp; create similar recipes but with different PACKAGECON=
FIG&#39;s. How does one do that?</div><div><br></div><div>It would be somet=
hing like:</div><div><br></div><div>#! /bin/bash<br>source oe-init-build-en=
v build-microchip<br><br># Generate first image<br>PACKAGECONFIG =3D &quot;=
foo&quot;<br>MACHINE=3Dsama5d4-xplained-sd bitbake microchip-graphics-image=
s<br># Upload image to &#39;cloud&#39;<br>mv sama5d4-xplained-sd /theCloud<=
br><br># Generate second image<br>PACKAGECONFIG =3D &quot;bar&quot;<br>MACH=
INE=3Dsama5d4-xplained-sd bitbake microchip-graphics-images<br># Upload ima=
ge to &#39;cloud&#39;<br>mv sama5d4-xplained-sd /theCloud</div><div><br></d=
iv><div><br></div><div>Thanks,<br></div><div><br></div></div>

--00000000000000ca2c05f38f65e3--

