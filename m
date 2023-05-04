Return-Path: <antabboud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D555BC77B7F
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 02:00:23 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web10.40220.1683165614341747562
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 19:00:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Lim1mj9h;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: antabboud@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-54cb8d72c0bso1233325eaf.3
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 19:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683165613; x=1685757613;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0r8BI/y3uoEc8GZ3u+H+Fq06kj2Sva2w9kMVexOSgm4=;
        b=Lim1mj9hkc1afL4H7fdaZEw4jjVeaSnqA8cItHaStJSdHDVLXmXc421ulwa50vKjAu
         GzpsaY6/F1I2m/u9KnyjCJnAR0UCdDVrW7bw42Ke/VSqN203BJixs76DTchnGkN1G382
         LQZKsuu2jQSa/V07lEXfqCsoO+RhbeKubbFewN8+eL5nP8okxycc7m/nsy9ogfD9zLOr
         4I4rkoYcficntgyNvIj4eA9EUCZLTcFFf6N+pWT6BdzXww45y6/cB7MgW1KWGHP5zU57
         cHuCTtOa78EnYFJivPCR9+fDkw2d3bAide4Nc7NrlJiZskO2uLfM1zzC60US1hVH5yS0
         qkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683165613; x=1685757613;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0r8BI/y3uoEc8GZ3u+H+Fq06kj2Sva2w9kMVexOSgm4=;
        b=e3H8/LToPhYnYDAGgBxiHO2MbkqjR6FURQ/Q+q3vPsU36jC3m6ckyNdpLuWUKo+z5E
         AsId+zsMjM5HzNjcpfaHpYxjDZGo9oimVejbFolktPIGHS2aEjXZXy5h0KFpD+1OMF37
         b+Hif41g2D54RzAY6edu9DFn3PthqnxkIERfVIeDZtgTjn07O8ygK+kwFYINmB9lAiHG
         /eLLMvTQK/nWq6qMtgm8hJBMTYRyygQEN/uGod1OIIFO7PvexoAIN6U//3rd1H8+dV9P
         fZ9LI7r/blPvOub4MvW8CimKzYc7c4PgsphYxxQRQoGMu5nRv86rr7cieOWVgMYPPVwk
         +J8Q==
X-Gm-Message-State: AC+VfDyybZ33+eC/6o/s0Spt2DHTlT4cczzeS3QSHq4S5Bmsjsn7wPiE
	J07bt6rKUhjbTGyMklA5n2x1vEi8zExCk4M1sd6sD3av
X-Google-Smtp-Source: ACHHUZ4RIlUuePaNsjCr82yix7NINBZRaLpEWyr24QkBkBQAx3w/HMUzEz1Nwzifzi0LkPrcoZMKY2qeHtAF6dtp7Vs=
X-Received: by 2002:a05:6808:2189:b0:38e:d1b:7e with SMTP id
 be9-20020a056808218900b0038e0d1b007emr1094715oib.7.1683165613265; Wed, 03 May
 2023 19:00:13 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Abboud <antabboud@gmail.com>
Date: Wed, 3 May 2023 22:00:02 -0400
Message-ID: <CAEAv8SASgz=b8o6OzvDf5erRBTU6V7Hma62EHqayW9W4gtct+w@mail.gmail.com>
Subject: How to Disable Command Line Output from HDMI Monitor?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007a178d05fad48833"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 02:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59862

--0000000000007a178d05fad48833
Content-Type: text/plain; charset="UTF-8"

Hi Yocto Community,

First time Yocto builder here..

I am currently working with Yocto v3.1 and creating a custom image for
an iMX6 processor from Toradex, and the single objective is to display a
Qt5 application. It works great, and I managed to make the GUI autostart on
boot.

Now my only issue is that upon bootup, I will see the command line output
also be redirected to the HDMI screen. Once the GUI displays, the CLI
output, if any, will continue on top of the GUI.
I'd like to only resort to the serial port to read the command line output
(e.g. puTTY), and want to prevent it from displaying on the HDMI monitor.

In U-Boot, I was able to manually remove it post-installation by modifying
the following arguments from the "setup" env variable:
- Remove console=tty1
- Added vt.global_cursor_default=0

But this way of editing the variable is only persistent on a single board
and I want this to be pre-set on my Yocto image for production purposes.

Since I'm new to this, I absolutely have no idea what to do or where to
look. Any recommendations on how to disable CLI to display screen?

Thanks in advance,
Anthony

--0000000000007a178d05fad48833
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yocto Community,<div><br></div><div>First time Yocto bu=
ilder here..</div><div><br></div><div>I am currently working with Yocto v3.=
1 and creating a custom image for an=C2=A0iMX6 processor from Toradex, and =
the single objective is to display a Qt5 application. It works great, and I=
 managed to make the GUI autostart on boot.</div><div><br></div><div>Now my=
 only issue is that upon bootup, I will see the command line output also be=
 redirected to the HDMI screen. Once the GUI displays, the CLI output, if a=
ny, will continue on top of the GUI.</div><div>I&#39;d like to only resort =
to the serial port to read the command line output (e.g. puTTY), and want t=
o prevent it from displaying on the HDMI monitor.</div><div><br></div><div>=
In U-Boot, I was able to manually remove it post-installation by modifying =
the following arguments from the &quot;setup&quot; env variable:</div><div>=
- Remove console=3Dtty1</div><div>- Added vt.global_cursor_default=3D0</div=
><div><br></div><div>But this way of editing the variable is only persisten=
t on a single board and I want this to be pre-set on my Yocto image for pro=
duction purposes.</div><div><br></div><div>Since I&#39;m new to this, I abs=
olutely have no idea what to do or where to look. Any recommendations on ho=
w to disable CLI to display screen?</div><div><br></div><div>Thanks in adva=
nce,</div><div>Anthony</div><div><br></div></div>

--0000000000007a178d05fad48833--

