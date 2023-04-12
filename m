Return-Path: <aravinthkumarj1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D34C77B6E
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 06:12:46 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.36429.1681279965100219887
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 23:12:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=qs7GnXpI;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: aravinthkumarj1@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id y11-20020a17090a600b00b0024693e96b58so9464718pji.1
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 23:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681279964; x=1683871964;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8WNr9d6wud4lSSsbszDmKqsYIjazdM2jH75rVMoTQHg=;
        b=qs7GnXpInUf8GphHR+iwvPnrUoc7TpCGtb5cmsN0NnoiHbBS1+kTF4jzz7B828rcDD
         yZMcztq/FtU5M3X/RP6ZehLR/GkgZo+4a6VZhR/BrjnlwFhB3Wr120CZ6cFcvjF2haCv
         byIL/46cuh7inixrBZatb6K0JpWT23HoH4/Q01L4pl+iHftQVJp/tyuvq8NQvAr5Vast
         MqrcI0xBCXnHNoJj72o+l+CU1p1U8mUgDefT/S1ikf05ds1C1DDTUyrD9aoCTDTXxdfv
         K7+42tUBLpiuroeO/NBrEgcY18TaoFq+DcfmPQPCkRXgYs1/GqFEbFlxVXvjR4N7MG3N
         qWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681279964; x=1683871964;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8WNr9d6wud4lSSsbszDmKqsYIjazdM2jH75rVMoTQHg=;
        b=A/mHXestyXQfqYCPE2pT5npJThEF500vBQDlqtX/lJgz0Xv8F+bRKj904MkGTqpkbD
         HCHTf5io83uZiPn6/me38sdaEI4nyOAnBAV4oU8PS36FN1LRKcxR6ZAtl4rJ20MwYarg
         y3pX0UjushD1sFwf0OJ0ukqI6yr+y26tK/niwW0bZnmDYX0eBP/BkAHSpeCLj5SgOJpq
         WyE7wiDnOn3lCvm6YLSNxI+XdqdKM/lupuVQw6M/OIJ7Ee1sCno/LIcK51SVTIZ2BJbX
         Fr656tvLPp23XseZr8hDGLL4ReFdbJSSo4WfX+N5fLpfVdXxYTVXjyWAJ1N+IRMWyNBj
         QL7g==
X-Gm-Message-State: AAQBX9fvWahuLCMG2EQ4sqd0c6Wykz1at+8VR4tIOsB0yfgpTRB8kYM6
	fIZ1hmUWAWMe+njdIg4FnI+YUhg79dpWctoaK14QxFKht2bbgiLp
X-Google-Smtp-Source: AKy350acVK5AZ6Uq8wVCPmKUrG8WGIF8sQk0u2JgvweXdb3ID0TDGYZBD9+qRcFkqkAblCn1owRZBMqGJjeYPs11Fhs=
X-Received: by 2002:a17:90a:ae07:b0:246:7023:2ee6 with SMTP id
 t7-20020a17090aae0700b0024670232ee6mr1835343pjq.8.1681279964138; Tue, 11 Apr
 2023 23:12:44 -0700 (PDT)
MIME-Version: 1.0
From: ARAVINTHKUMAR JAYAPRAKASAM <aravinthkumarj1@gmail.com>
Date: Wed, 12 Apr 2023 11:42:07 +0530
Message-ID: <CAFsAJjgEi_yGef+PPbiJUmkcKf7kZd-xOOBjVb4APYzXwcfkfw@mail.gmail.com>
Subject: i.MX6DL dm-verity support on Yocto build
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000007d21905f91d7f1b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 06:12:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59685

--00000000000007d21905f91d7f1b
Content-Type: text/plain; charset="UTF-8"

Hi Team,
We are working on an imx6dl sabresd board with yocto linux 5.15 version. We
want to use the dm-verity feature, but didn't find proper steps to do.
Can you please help me how to do it properly?.


Regards,
Aravinthkumar,
Mb:8508139500.

--00000000000007d21905f91d7f1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team,<br>We are working on an imx6dl sabresd board with=
 yocto linux 5.15 version. We want to use the dm-verity feature, but didn&#=
39;t find proper steps to do.<br>Can you please help me how to do it proper=
ly?.=C2=A0<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div><div><br></div><div><br><div style=3D"color:rgb(80,0,80=
)"><div style=3D"color:rgb(0,0,0);font-size:16px"><span style=3D"color:rgb(=
34,34,34);font-size:small"><font face=3D"arial narrow, sans-serif">Regards,=
</font></span><div><span style=3D"color:rgb(34,34,34);font-size:small"><fon=
t face=3D"arial narrow, sans-serif">Aravinthkumar,</font></span></div><div>=
<span style=3D"color:rgb(34,34,34);font-size:small"><font face=3D"arial nar=
row, sans-serif">Mb:</font></span><span style=3D"font-family:&quot;arial na=
rrow&quot;,sans-serif;color:rgb(34,34,34);font-size:small">8508139500.</spa=
n></div></div></div></div></div><div><div><br></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div>

--00000000000007d21905f91d7f1b--

