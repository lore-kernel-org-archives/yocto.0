Return-Path: <tomasz.dziendzielski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1114CEB64DC
	for <webhook@archiver.kernel.org>; Tue, 11 Jul 2023 08:55:38 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web11.3258.1689065728419236685
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jul 2023 01:55:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=VEEQo9yD;
 spf=pass (domain: gmail.com, ip: 209.85.222.45, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-7948ad98b85so1437560241.1
        for <yocto@lists.yoctoproject.org>; Tue, 11 Jul 2023 01:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689065727; x=1691657727;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=isjRI/FPUL1T98sXzel9Q/n7IXhY/FzUEUeLU5bb6h8=;
        b=VEEQo9yDWpF5qIW6zz+0A8wuVn+arjeibRyaY1BUEhwjkWIF48hKRLYllaz45AbUTw
         2R4ybMwD/MOyaa3yBs3pmsslFVBA3nKPGWSnRQT1ZIQixsY4aTQoda+HiZhCoqUy9l+d
         h9lierW/Fwy75qkRZPKGkDnnGBbl2jrTEvkhxZ5ToA5DPVNUWyyE/1vudL83TefyBRXU
         suNc5ddD71fO4RNtBlxXDIozdrPei8O3XvqiT0egSKEQrDfPD4DDfHvaIuKJJKNnc/fd
         n3rufF7b4cgeyVYPG5E9AGozC3km2J0V2L5JtDUrLk9bBFJA4XqLB7C36t2aXYRbynuz
         ++mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689065727; x=1691657727;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=isjRI/FPUL1T98sXzel9Q/n7IXhY/FzUEUeLU5bb6h8=;
        b=bj9lEDhe0RvFNko/Bwg+2LgmfN5dRwZg/OXp6q1TCNU7Sb53aj4IOPEv/bEtueb4DC
         a4yhAFHcdsWloo+g86xTe/V5P+P7pZDoJQUyyzlZGXVXW/xKoeb3VG8aiqyevZlJhvn1
         ZUGgsJGsGGAPYHjepc+29DD1hXgn6ynbKPrA+QNh+WPUZ3xti+n+DCtA57zLohwrIIRC
         gfZhslwWOETvyMm+ptLGASRoY2BtpajxNmaDwc3XQ4N4gv4sUsxBFuS/pNq3in8o5hO0
         9h0qf+4vbKWHB+Ce22C1V7+haeQkUfD1RnpEic8u7+3U3yTrZGTbZtiEOOwk0/TUesrT
         vvVQ==
X-Gm-Message-State: ABy/qLYoZFEu9h+9+4py26t98/kou9B4O2dgSxxjtUffvK8zAP534PxQ
	Bx3ANASfEWZzmL5whUOB9Y/XDa1SfQ87RyqXLnutJenOsFKHDQ==
X-Google-Smtp-Source: APBJJlHhxmy6ujX4M2BqcaOcl1hkWwN1YWUt5T00gbm0SE8K4eQXkOrluvjpVoxu7Pc4yqlAkfrA3PNcWuqX3/tMltA=
X-Received: by 2002:a67:f048:0:b0:443:6397:250f with SMTP id
 q8-20020a67f048000000b004436397250fmr4569304vsm.27.1689065726966; Tue, 11 Jul
 2023 01:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230515115507.9216-1-tomasz.dziendzielski@gmail.com>
In-Reply-To: <20230515115507.9216-1-tomasz.dziendzielski@gmail.com>
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Tue, 11 Jul 2023 10:55:15 +0200
Message-ID: <CAJkqNs3=LvFuCC1eQswc3z7rGSphPw5fb+dkZ1-w5TYFjH1XgQ@mail.gmail.com>
Subject: Re: [meta-tensorflow][PATCH] bazel.bbclass: Fix build with bazel from sstate-cache
To: yocto@lists.yoctoproject.org, hongxu.jia@windriver.com
Content-Type: multipart/alternative; boundary="000000000000a87f890600324270"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jul 2023 08:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60547

--000000000000a87f890600324270
Content-Type: text/plain; charset="UTF-8"

Hi Hongxu,
I can see you disabled the uninative back in the bazel-native recipe. Can
you please provide steps to reproduce the "bazel/bazel.real: Input/output
error" so we could investigate why it happens? Disabling uninative will
cause the failure if bazel is taken from sstate-cache.

Best regards,
Tomasz Dziendzielski

--000000000000a87f890600324270
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0<span style=3D"color:rgb(51,51,51=
);font-family:sans-serif;font-size:13.3333px">Hongxu,<br>I can see you disa=
bled the uninative back in the bazel-native recipe. Can you please provide =
steps to reproduce the &quot;</span><span style=3D"color:rgb(51,51,51);font=
-family:monospace;font-size:13.3333px;white-space:pre">bazel/bazel.real: In=
put/output error&quot; </span><span style=3D"color:rgb(51,51,51);font-famil=
y:sans-serif;font-size:13.3333px">so we could investigate why it happens? D=
isabling uninative will cause the failure if bazel is taken from sstate-cac=
he.</span><br><div><span style=3D"color:rgb(51,51,51);font-family:sans-seri=
f;font-size:13.3333px"><br></span></div><div><span style=3D"color:rgb(51,51=
,51);font-family:sans-serif;font-size:13.3333px">Best regards,</span></div>=
<div><span style=3D"color:rgb(51,51,51);font-family:sans-serif;font-size:13=
.3333px">Tomasz Dziendzielski</span></div></div></div>

--000000000000a87f890600324270--

