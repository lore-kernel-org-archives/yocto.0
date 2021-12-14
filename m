Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4A2C433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 02:21:46 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.20689.1639448505590652934
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 18:21:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CrBFiQfr;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 k6-20020a17090a7f0600b001ad9d73b20bso14886901pjl.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 18:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=BklMKJWwV29zAATIYnVg5kZrOBJYwoO6hdoPLNv7LPg=;
        b=CrBFiQfrWlOLVAcPYX7sFlU3WgEwo8SuuIaZK8482sWqK8Q8uEwud6HnnfcJ6nD6hh
         M9ss7hHYHpqg6kVp1s8FL57kh3S27hdhOKQFKYU6lKIy1+oAkQnucFsHTRqsdQb8Mo+D
         KGJDzN9JyPtjS0Y6lWZOJ5zHLPntccxnlIweRRoSBxkxlvIe/B52AuC67ZhNvgZ+qLCP
         TkHtsDBXHN9Wg02HVKPsKQ9NcuEk+tSb+ihVJCENNDYXNRxrcY347Se8/FMsY3TQj2kx
         AfW4MzR3lUhPQsk1xie+vArlGZLRoazSquVXwxSWjq+l82wlx7S6PL9LN+geRN2klEPC
         rH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BklMKJWwV29zAATIYnVg5kZrOBJYwoO6hdoPLNv7LPg=;
        b=lbiGsXL/A338MmXSAwVto8vobJIQRmCMDrOA7Uvk9mTSsTzsuTQL/OrCrfRczMTbPU
         Zz7NszSfLQQX+8j8J3SCkHIeiPIoyj0BBUVj1XocB0LN6hzv++I+x1xC/ffMCdbF8QZI
         eVdmxmFrOA66Lat8JG4uVyszjlEPsYNkupR99n72oYtQnhaq2MvD9egdqc5u9DCFWQS5
         j/OYBzG1oDPrj/QFnyfsKs0rBnqT/UkEIIv3QBwjx1jHPn4Hbwp43uBvQwRhIDuqjL07
         bGg+/KPe6y6Fh0q9m5B9OBw4oceHa09zumAlnWuISRxorEd0zNLqXRsDUC7zy/rzrnXg
         rxog==
X-Gm-Message-State: AOAM533J3XDboLf5YW5TWlkXPikBW8SJ32AaBzQ78ujJ7gi8W/F4P+bl
	UnWo14R1TsUKKOtkDM7BSZnTZ4RFA682KFIkJ8PgI5mg
X-Google-Smtp-Source: 
 ABdhPJzP/fhWc2YhR9c+bIFEX/zIULqLuSPhfwzGerKQjxnrwzY1YZkp3bcLky2PD5cTONlNe3se4CR96YOKPv04z6w=
X-Received: by 2002:a17:902:8f93:b0:142:8731:1a5d with SMTP id
 z19-20020a1709028f9300b0014287311a5dmr2269421plo.60.1639448504649; Mon, 13
 Dec 2021 18:21:44 -0800 (PST)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Mon, 13 Dec 2021 19:21:28 -0700
Message-ID: 
 <CAE+BM3kpKNrJjPwB8ivuT4A2+WgEtOm+6XoSXtD_9Q6z08EKhA@mail.gmail.com>
Subject: Running unittests built by SDK
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bf4eb105d311d9eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 02:21:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55571

--000000000000bf4eb105d311d9eb
Content-Type: text/plain; charset="UTF-8"

We are building our software with a Yocto SDK we created against our imx8m
board. We would like to be able to execute unit tests (C++ tests written in
Google Test) quickly without having to copy our unittest binaries over to
an actual imx board to execute them. For sanity, we are also building our
linux distro for MACHINE=qemux86-64 and beaglebone-yocto.  So we have SDKs
for imx8m, qemux86-64 and beaglebone-yocto.

Is there a MACHINE type that we could build that would be suitable for
executing compiled C++ google test binaries directly on Ubuntu 18.04 or
20.04?
Thanks

--000000000000bf4eb105d311d9eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We are building our software with a Yocto SDK we crea=
ted against our imx8m board. We would like to be able to execute unit tests=
 (C++ tests written in Google Test) quickly without having to copy our unit=
test binaries over to an actual imx board to execute them. For sanity, we a=
re also building our linux distro for MACHINE=3Dqemux86-64 and beaglebone-y=
octo.=C2=A0 So we have SDKs for imx8m, qemux86-64 and beaglebone-yocto.=C2=
=A0 <br></div><div><br></div><div>Is there a MACHINE type that we could bui=
ld that would be suitable for executing compiled C++ google test binaries d=
irectly on Ubuntu 18.04 or 20.04?=C2=A0 <br></div><div>Thanks<br></div></di=
v>

--000000000000bf4eb105d311d9eb--

