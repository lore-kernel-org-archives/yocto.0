Return-Path: <janmkubalek@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BB1C433FE
	for <webhook@archiver.kernel.org>; Sat,  8 Oct 2022 19:25:44 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.6994.1665257135571364647
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:25:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NiZID4xU;
 spf=pass (domain: gmail.com, ip: 209.85.128.50,
 mailfrom: janmkubalek@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id ay36so4674909wmb.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sg+AZklSCiv9//2GRM2pH9zE4hyRb4rQsm2Rw1GjH60=;
        b=NiZID4xU31TVNKXTsVO9P7Smer8hF0Tt70Ll8+Qqk/HPhUmNjHahWC4HvPir2UOYBy
         J7M7eY6E7wxxYau7l09WAM40rQQ/Atasza671V9D+57A0CF+9Vss0ALUqHtOBwtPwpXs
         WqHPNufRA4nboPRfVg8clZ0RqffsnehRnS+lKYQvHYpybPHrYRzfSvFfWeG54lF6rZI4
         N3dqi4Tmi7fwgkVU9b3IVwP6iC62xzemAOmsi8Ir4f1OhYKKgF5da1K3ex9S1GyXjfpb
         of5UspMEnZaMyXwyqa8oVQFTLIyrV30U3/Zol7QYwvRS7qyNM/cmAwImu7Wd6AFLLIap
         aK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sg+AZklSCiv9//2GRM2pH9zE4hyRb4rQsm2Rw1GjH60=;
        b=HT9piBjbP6dSmklpmHKYVbk8Dh+ey8blOTayOvrkafFG7SL42M37sEC7raHicMGDnO
         FMmA/gIrE7VYatBK4WQ1cQtgbIn73iIhbTg5Q2Nysce3mA+KBv90SFHWZhhmcCKoDKvh
         BI85VsvIvHA20+IVTyCdid8piA30IzZg/mFdZL1+fmauy4MJ72aGDwP/1UINjr1ZYPm6
         NbbRxOTL+tvM0Y8gxUCTruwBug8UPIoHfDcj8hP6Ix2vqgwG64vO8hl7vnmtYcIy3ZXa
         a0qbDQb5OTL0+QHk1FFtw1ZGCvXvZadwmucUKq0hzNgYGjLh7J9rl5QCjikQMhGoUFS2
         Q6TQ==
X-Gm-Message-State: ACrzQf336PI1ijHtK/H7VNyrcO+1Uai6zcoEr9q2Wk5TaGdGX5stnbtB
	JrAifiDCdHZS9J3IFmOcnFSyDnHwTJcLD5dF4h9gFo0yBMwx9A==
X-Google-Smtp-Source: 
 AMsMyM6F2Zukq3U9PAdy4itJsWs9sud7u5M8RwGavf4254stxeO0I73hIW6C7cCdNLOQ8Cwv3W8yfv1SDDCWVRVIZAI=
X-Received: by 2002:a05:600c:350f:b0:3b4:c5f2:4295 with SMTP id
 h15-20020a05600c350f00b003b4c5f24295mr7420537wmq.200.1665257133612; Sat, 08
 Oct 2022 12:25:33 -0700 (PDT)
MIME-Version: 1.0
From: Jan Kubalek <janmkubalek@gmail.com>
Date: Sat, 8 Oct 2022 21:25:22 +0200
Message-ID: 
 <CAD7aZ34WijQFsY_=znbZ+0RToxEYnfZY=p-wuqnKwz+GsTdUrw@mail.gmail.com>
Subject: Problem with download files during CMake configure phase
To: yocto@lists.yoctoproject.org
Cc: Jakub Trubka <jakub.trubka@bringauto.com>,
	"martin.hofbauer@bringauto.com" <martin.hofbauer@bringauto.com>
Content-Type: multipart/alternative; boundary="000000000000e8a48105ea8ae332"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Oct 2022 19:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58293

--000000000000e8a48105ea8ae332
Content-Type: text/plain; charset="UTF-8"

Hi,

We have a C++ projects configured by CMake.

Our CMake files download some dependencies from our git by standard "git
clone" command during configure phase.

If I add our project as a recipe to Yocto the git command always fails with
exit code 128 (resource unavailable - no internet connection, protocol not
supported etc.).

What's wrong? How Can I solve this problem? In a standard env the configure
proceeds without problems.

We use
- Yocto >= 4,
- Bitbake >= 2,
- Ubuntu 20.04 as a host system

Src URI spec:

SRCREV = "<commit_id>"SRC_URI = gitsm://<path_to_git>;protocol=ssh;nobranch=1



Thanks a lot for your advice :)
John

--000000000000e8a48105ea8ae332
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We have a C++ projects configured b=
y CMake.</div><div><br></div><div>Our CMake files download some dependencie=
s from our git by standard &quot;git clone&quot; command during=C2=A0config=
ure phase.</div><div><br></div><div>If I add our project as a recipe to Yoc=
to the git command always fails with exit code 128 (resource unavailable - =
no internet connection, protocol not supported=C2=A0etc.).</div><div><br></=
div><div>What&#39;s wrong? How Can I solve this problem? In a standard env =
the configure proceeds without problems.=C2=A0</div><div><br></div><div>We =
use</div><div>- Yocto &gt;=3D 4,</div><div>- Bitbake &gt;=3D 2,</div><div>-=
 Ubuntu 20.04 as a host system</div><div><br></div><div>Src URI spec:</div>=
<div><pre class=3D"gmail-code gmail-highlight" lang=3D"plaintext"><span id=
=3D"gmail-LC5" lang=3D"plaintext" class=3D"gmail-line">SRCREV =3D &quot;&lt=
;commit_id&gt;&quot;
</span>SRC_URI =3D=C2=A0<span style=3D"font-family:Arial,Helvetica,sans-ser=
if">gitsm://&lt;path_to_git&gt;;protocol=3Dssh;nobranch=3D1</span></pre></d=
iv><div><br></div><div><br></div><div>Thanks a lot for your advice :)</div>=
<div>John</div></div>

--000000000000e8a48105ea8ae332--

