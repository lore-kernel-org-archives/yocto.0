Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7876CC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 13:48:42 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.10088.1647956921967261523
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 06:48:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VhsLsx2Z;
 spf=pass (domain: gmail.com, ip: 209.85.210.172,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id s8so18147415pfk.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 06:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=J/YhOUYKP87EpQlnJ+GNu4bdRoOLgnlTJ9thouK5Zlk=;
        b=VhsLsx2ZSjWzD9T150NkyGyCEzjBUDp2e6MlPcHJD9L2VM3tBjGTAapsjQMSjoI1ep
         j4tCS+GvxLQxPVCLHroClmZqOT+d0rM9G41FalBe4Ny3GgDwz6AnLpK1AR0/wDCFeY4P
         0GAZG9pRGbWBym26Ibt+CUn4QhO5C3wGVc0PB/pl/4rmVAJjMJ99gT0ESqmj3kK+XUHz
         +RVLkjlcWqgDFLcPyuQrEHtgK4c7PQmq/R8NwuLtHzCTwcfG8coDcgyKHJ8G2fEX4QsJ
         /HKW9OR2aYtw6E+VbYDbJ+KiGs9nroPZFb+84WtZwvjT9FFEPmtBJX0D2bNmnDDP836R
         khxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=J/YhOUYKP87EpQlnJ+GNu4bdRoOLgnlTJ9thouK5Zlk=;
        b=Ru4ppFW0FZAznL5EC7uWwHuZN/2coAr05ZAgxMJVip6eMdogDpJkR1bSnlu3DoV5bS
         Dp3u2BEp+ixx10EiPsIYV3YWFzmbEc7K7QMrOHr5ta2eZuUULmC1q/A/RZqDDJl2aQun
         zbOBMiyqc+CNkZF6CjQwOuP9DM2tH+gIO5vJ/Ghr/OhbiqfBRkY/4X7BAV5AfEmIkZkd
         YukSsIDjyBJhGNbJbRMnNJZ81Ht5bQCjO7ZfXfXzyg7bn1x3w9RxnyqPIWO6+RHuW5M8
         PR1LwEV2X4mdmwCUUyIycgM8FjBN9eJ9DhRT5KAoXCHVx6Y1vD2kXVSJgFAKbZn/NSRZ
         uR/g==
X-Gm-Message-State: AOAM532Zbaak8Slw+Pl+q+vu0+99cqXECXCoP1on08Qa+OMELx+8rV9R
	JZ357P5Q/JJweO6ZSZg57zftFkAka9+IkayaOuxPldeN
X-Google-Smtp-Source: 
 ABdhPJwPxlx20DlJmog8mwKd/0MveAT/qORHdLA9ko9XwlN1zHKhi4+5oQ7b7WEfX55sSh6w8tQa4ohZb9V4T7nBlh4=
X-Received: by 2002:a63:fa0d:0:b0:372:d581:e84 with SMTP id
 y13-20020a63fa0d000000b00372d5810e84mr21538090pgh.414.1647956921071; Tue, 22
 Mar 2022 06:48:41 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Tue, 22 Mar 2022 07:48:26 -0600
Message-ID: 
 <CAE+BM3meYkLa3J_CUbmvRiz7w5LFE_QqyqkoDrkibuk-ietPFQ@mail.gmail.com>
Subject: SSTATE corruption
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e2be4e05dacedec8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 13:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56526

--000000000000e2be4e05dacedec8
Content-Type: text/plain; charset="UTF-8"

Is the sstate cache sensitive to different releases and or the ordering of
the bblayers?   We are upgrading our Yocto-based distro from dunfell to
hardknott.  So for a while we will be building our distro on both releases.
  Do we need to keep the sstate caches separate for these builds?

Another related question... Does changing the order of the bblayers corrupt
the sstate cache (ie require a fresh sstate)?
Thanks

--000000000000e2be4e05dacedec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is the sstate cache sensitive to different releases a=
nd or the ordering of the bblayers?=C2=A0=C2=A0 We are upgrading our Yocto-=
based distro from dunfell to hardknott.=C2=A0 So for a while we will be bui=
lding our distro on both releases. =C2=A0 Do we need to keep the sstate cac=
hes separate for these builds?=C2=A0 <br></div><div><br></div><div>Another =
related question... Does changing the order of the bblayers corrupt the sst=
ate cache (ie require a fresh sstate)?</div><div>Thanks<br> </div></div>

--000000000000e2be4e05dacedec8--

