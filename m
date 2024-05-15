Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2434AC25B79
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 17:11:48 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.690.1715793105840442730
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 10:11:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=chsOjvG1;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: rybczynska@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6f4e59081e6so4123387b3a.3
        for <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 10:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715793104; x=1716397904; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Df+o13oLmvOtNzaALHktXB9S3HX0ppmpRFo13YYalNQ=;
        b=chsOjvG1FobtPYzI389okM0MI13ZeZDHXW2c7xmXToWTaPjQJXhv0+v/VsAseDSCIe
         AgHEb+/7jzDgnq/w7CMw9bMhJDQeVDmQttHmBM+o1KCvE08OPYO8vgf4V3yoH86NBU24
         e0NZsSOQpA0ppXloocQiOypqG1lwVomZTwcH7gqh4L8txOLJ/oBZt9Wehbf9Xt+ivL8D
         2ii4VVHh7lEMpuVs+aXaL1LQUO8mL+uMDyxctu3cZEUPGrrRDF93PIB3yZyzT5BF1wqq
         o5H3vE/NhGxvOAFkcnNoEmFGNEjbzhCv+S5x+aa2Afq04sNlDdKcf4XpgyYhnWzI6lyK
         lUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715793104; x=1716397904;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Df+o13oLmvOtNzaALHktXB9S3HX0ppmpRFo13YYalNQ=;
        b=hYk4n0V5cUr4o+yKpZPUKqbwJ7slZ2VLXcL24xCYcS6d3lOUvvZ3Lx4jRw/G4mFs+f
         aOilMkVc/WvR7FMoCWQ99zCsUzJMhYFh6wUm9ID2uEK6Kd0CNjpKpMfj3pvzgQi6FDJr
         0W0+d7EQGYG+CjW5cYvlrlxtii5odd8LTWVDVUzMwkB4Rnxbnx+5EpH0bu0l4QQg8fTc
         eBNaR+aWQl93OU1rxz5sZ/H89avzX3RPwkHgjsZ8YBol5GGXugBCfwyT6WnbzyRxVpqS
         4nGthyC+nHWBG1nOXUcgkLgfuDZCrXbrQC4TcycFXlTj01dtAfP2/OIgkVqa0mjDcGOn
         pSqw==
X-Gm-Message-State: AOJu0Yw/krivsXAQacbZli/S2n07jZQPYml5+Tg8wKlSh6ByMcNt99Kl
	ynDBYFRjaravwrXHSYc4me+9ZieyFiX6uGGYEwQSikcw01jatKNMSAxtyRFs0o/gpaonyGORmU4
	Nv6rR5qNgIp7P+ScKueN+D6tkUoYTfg==
X-Google-Smtp-Source: AGHT+IHqq+VwnenIxvizS1q1GyaZReDRVss9A4K8+Hbh40Uq93oFjtkVSQ4vZY7UTVxosmP4HBieT91BpRNRoy+PMmU=
X-Received: by 2002:a17:90b:947:b0:2b2:d086:6f84 with SMTP id
 98e67ed59e1d1-2b6cc340547mr12730710a91.7.1715793104309; Wed, 15 May 2024
 10:11:44 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 15 May 2024 19:11:32 +0200
Message-ID: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
Subject: SPDX delivery
To: yocto@lists.yoctoproject.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Joshua Watt <JPEWhacker@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007d9a83061881364d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 17:11:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63098

--0000000000007d9a83061881364d
Content-Type: text/plain; charset="UTF-8"

Hello all,
As this discussion might be interesting to multiple people, I post it to YP
list and the OE architecture list.

In the VEX work (the status will go out in a moment in a separate message),
we're collecting SPDX and CVE files for builds to re-run the CVE checks
later (potentially months later). The CVE check file is generated for both
the image and the build as it is (including the SDK).

On the other hand, the SPDX archive is generated for the image only, and
contains only packages from the system image itself, omitting the build
system. This is possible for us to get all the partial SPDX files from the
build dir, but we do not expect the complete build dir to be kept for
months.

So, the question is, what people plan to archive from the build? Do we need
to archive the whole SPDX output too? This is an interesting question for
example in case of "world" builds..

Kind regards,
Marta

--0000000000007d9a83061881364d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div>As this discussion might be inte=
resting to multiple people, <span class=3D"ng" style=3D"background:none!imp=
ortant">I post</span> it <span class=3D"ng" style=3D"background:none!import=
ant">to YP list</span> and the OE architecture list.</div><div><br></div><d=
iv>In the VEX work (the status will go out in a moment in a separate messag=
e), we&#39;re collecting SPDX and CVE files for builds to re-run the CVE ch=
ecks later (potentially months later). The CVE check file is generated for =
both the image and the build as it is (including the SDK). <br></div><div><=
br></div><div>On the other hand, the SPDX archive is generated for the imag=
e only, and contains only packages from the system image itself, omitting t=
he build system. This is possible for us to get all the partial SPDX files =
from the build dir, but we do not expect the complete build dir to be kept =
for months.</div><div><br></div><div>So, the question is, what people plan =
to archive from the build? Do we need to archive the whole SPDX output too?=
 This is an interesting question for example <span class=3D"ng" style=3D"ba=
ckground:none!important">in case</span> of &quot;world&quot; builds..</div>=
<div><br></div><div>Kind regards,</div><div>Marta<br></div><div><br></div><=
/div>

--0000000000007d9a83061881364d--

