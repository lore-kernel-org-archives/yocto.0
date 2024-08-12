Return-Path: <maik@quatt.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E7D1C3DA7F
	for <webhook@archiver.kernel.org>; Mon, 12 Aug 2024 13:07:15 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.45798.1723468027024514262
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Aug 2024 06:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@quatt-io.20230601.gappssmtp.com header.s=20230601 header.b=l60IGRuF;
 spf=pass (domain: quatt.io, ip: 209.85.218.52, mailfrom: maik@quatt.io)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7aa086b077so380461166b.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 06:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quatt-io.20230601.gappssmtp.com; s=20230601; t=1723468025; x=1724072825; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eFl2NSP8W0gaC860N/sPCUmCyq1gdXlt7S33lh5Cq1s=;
        b=l60IGRuFZxAcnNoGLxTbaqph2MmjSmCVDhGMhMx+rh1yAVqaTeWEuRLT3+kl8fAs5b
         +7qt28cHt245bGALfej9P9FjnxTWhpKahMiINfQn7r4MaCDzcDCIxRR88M/pISRRXeiS
         SQFm718cpIYwPOl/3mWWmFogGxk9/kN3vl1GmUIVkSsgkSbKqIJo73Ez9AKgiqULeVap
         InFba5SrfHe1MI66wdqLkSmHlgpfuGPJswecIzf7F7VWn5s2OiTol+9qhKbJbVPf0rEs
         SpHtzdoY/0dxm6jL7qq1KJ0+3WkABGEE2KtR+p51MCkfiJPRB/D51/clvVWfpjxwWbzD
         D8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723468025; x=1724072825;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eFl2NSP8W0gaC860N/sPCUmCyq1gdXlt7S33lh5Cq1s=;
        b=wlNRT5IX9qg8gL9gZ3Eob7mgQRZ+X/VxOU4zitlw8mJayVmw3V6i1JOigk6Y+Tc9Bo
         Sln0JLNt4DiQzHPfWmBL73RkTSCoK+lHWN6TkyPcBZu/EclPgooTZaOBbgiVxOOUowXr
         gyWN9LOXH9964lhTRY6jNfHYik9iai1SJOtwjoroMoTYbPTDCSd6DG3XsBhiEIhnoQVG
         WAhAQQoipRHnWQqPbwX85JIP97mjlus1bgsepTr/TQatrMjdAebh0cIRf1FhlF5S/4XH
         IfnvENtn5H12sp0/Z8d4zH2v+U0Le8rCRK/cSYhN66oeGW84zWuct4y/y/3IjwY0a4Wd
         EeSg==
X-Gm-Message-State: AOJu0Yw0blKgzSuO/ZFlD05nnDAndieEsNIxeJqfhCRS5Ov27mW/ruj3
	MMJ+YbwDQTFy8Ksb3x+HPJYmDdS0zMzURb7QXrPP4HPSgGWZcrStHuDegny/BE8pJBzRAt/yy1K
	CcDsnhXw2Lb+/XQiwBsc3/GmVLJbXAWQpOvFAL8A+Z8hb5XFwrAU=
X-Google-Smtp-Source: AGHT+IFT0yn2pN5Bv/qIE+zaqkcUlPk0vMKoYBtD6Kn9xsbw0zt2vw2EP02vy4CV8+xTrzc9dOebl5L+lbf7GxV8OPA=
X-Received: by 2002:a17:907:d2c6:b0:a7a:9d1e:3b25 with SMTP id
 a640c23a62f3a-a80ed2554d3mr18814366b.30.1723468024643; Mon, 12 Aug 2024
 06:07:04 -0700 (PDT)
MIME-Version: 1.0
From: Maik Vermeulen <maik@quatt.io>
Date: Mon, 12 Aug 2024 15:06:52 +0200
Message-ID: <CALEqzqc_navEO-Q07KD=aCn3qNDHanZ8a2kLp0s7haqfW3Qofg@mail.gmail.com>
Subject: ot-br-posix error Scarthgap
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000642674061f7c2ba9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 13:07:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63687

--000000000000642674061f7c2ba9
Content-Type: text/plain; charset="UTF-8"

Hi,

Currently we are using Yocto Kirkstone and would like to connect to an
Openthread RCP with Spinel RCP API version 10. The ot-br-posix recipe in
Kirkstone unfortunately uses a slightly older OpenThread version, which is
not compatible with our RCP USB dongle, and unfortunately there is no older
firmware available for the dongle.We tried ignoring the version mismatch
warning with the --skip-rcp-compatibility-check option, but then it crashes
when we try to connect a client to our network, likely due to the mismatch.

Hence we tried using the Scarthgap recipe in our build, which builds
successfully but does not run:
systemd[1]: Started OpenThread Border Router Agent.
otbr-agent[2680]: 49d.17:17:20.280 [C] Platform------: ConfigFile() at
config_file.cpp:50: Failure
systemd[1]: otbr-agent.service: Main process exited, code=exited,
status=1/FAILURE
systemd[1]: otbr-agent.service: Failed with result 'exit-code'.

Are we using it incorrectly or is this a bug?

Thanks,
Kind regards,

-- 
*Maik Vermeulen*
*Embedded Software Engineer*

--000000000000642674061f7c2ba9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Currently we are using Yocto Kirkst=
one and would like to connect to an Openthread RCP with Spinel RCP API vers=
ion 10. The ot-br-posix recipe in Kirkstone unfortunately uses a slightly o=
lder OpenThread version, which is not compatible with our RCP USB dongle, a=
nd unfortunately there is no older firmware available for the dongle.We tri=
ed ignoring the version mismatch warning with the --skip-rcp-compatibility-=
check option, but then it crashes when we try to connect a client to our ne=
twork, likely due to the mismatch.</div><div><br></div><div>Hence we tried =
using the Scarthgap recipe in our build, which builds successfully but does=
 not run:</div><div>systemd[1]: Started OpenThread Border Router Agent.</di=
v><div>otbr-agent[2680]: 49d.17:17:20.280 [C] Platform------: ConfigFile() =
at config_file.cpp:50: Failure<br>systemd[1]: otbr-agent.service: Main proc=
ess exited, code=3Dexited, status=3D1/FAILURE<br>systemd[1]: otbr-agent.ser=
vice: Failed with result &#39;exit-code&#39;.</div><div><br></div><div>Are =
we using it incorrectly or is this a bug?<br><div><br></div><div>Thanks,</d=
iv><div>Kind regards,<br clear=3D"all"><div><br></div><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"margin:8p=
x 0px 0px;padding:0px;color:rgb(34,34,34);font-family:&quot;Google Sans&quo=
t;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif"><div><div dir=3D"ltr"><fo=
nt color=3D"#888888"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"color:=
rgb(34,34,34)"><b>Maik Vermeulen</b></div><div style=3D"color:rgb(34,34,34)=
"><i>Embedded Software Engineer</i></div></div></div></font></div><div></di=
v><div></div></div></div><div style=3D"color:rgb(34,34,34);font-family:&quo=
t;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif"></div></=
div></div></div></div></div>

--000000000000642674061f7c2ba9--

