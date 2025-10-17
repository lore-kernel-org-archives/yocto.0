Return-Path: <anirudh@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BC06CCD183
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 00:08:06 +0000 (UTC)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
 by mx.groups.io with SMTP id smtpd.web10.4751.1760659683414249357
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 17:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@astranis.com header.s=google header.b=hUESrjhu;
 spf=pass (domain: astranis.com, ip: 74.125.224.51, mailfrom: anirudh@astranis.com)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-635355713d9so1464383d50.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 17:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=astranis.com; s=google; t=1760659682; x=1761264482; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ad1OmIJ5ebffUGhkbgSQbLQwiWuROxZwVXDX/xRFZGg=;
        b=hUESrjhusUYbNXN2fd4HYOKsQKwI6/LvvtLhjIif5/sn+5HqfauhY8vdGA5lp0lehM
         A2b/Cz5c6vaou6g5f+gfA+C+KijFG5PaN1O6sh4xW+ZMqOvOjYCPs0IzAcoFyTR3idto
         E4ouyTSJC/EwZClOgryuFeeW8lmbVicghQlAtUNplwmpo4Y7LDn6B/yJj4SZZSbW0Av0
         OtH7rvSbTJGNDD1PDVZvzb9yZL82kGpt0Ooc95veCOkSOYmb1BJpFRBQ5ZOVRsxgge4v
         XwT4FFkgDbLeNcoT66mPhJJB4om76HA0ha1WuExu3QBlDAXsMExRUikZESM4/upxRgt1
         vtAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760659682; x=1761264482;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ad1OmIJ5ebffUGhkbgSQbLQwiWuROxZwVXDX/xRFZGg=;
        b=XzqCuifHnxrKmJESb+Gqf4RhwDEyhQrmInI4q9gYo1zbdztjZtP23O2qVnmo3iK/sw
         wGJj7yJcizHsJrjHKJMzCiUy3tGRdBCgpEdLRA4G9I4OvD1fRg9PgBSbcJmeU7Ir56+/
         P+q8wcX89h3VvbQQduCZWM/FQkbszrqrlJ2np3ITerAgG4+bhZ4z/yIqyDH32QMiSsdD
         IVyOSgsL42XI83XYcAa6gZjjKTTqCfxyNC7OzIBo0bMnpcz8XGqRUzM7dU0pJ3ZufiQ7
         olcg20JC34G0Sm57Duj6cpRVdvIaSy9aXPpJz5nDQ/G1NYegFB7BQJUGolSyFmxenWmE
         HD+A==
X-Gm-Message-State: AOJu0YyNBTJImuVTJxgSHdWgDpIf4tN9ocYMFrK87dzwamrYktq+qnMN
	Nt27jdnODlV9pWX4TSCEAwLfxOu9lKB7uDCH/54T2yWrL4hTiiX9qndpsxy/LpFWx++nzy0FD9w
	7bPHmuq/BxuYSQ32KAWVRJSRA3hW5sjF0wzTIKQDIL+sN+xCk/dDVykB3DXrhngOPw/XZqyr1+F
	HJhUVBC2dZjT0O0y95g1GbHxBe+N2XirMo0vnpmYsxbd2Ivz4ltw==
X-Gm-Gg: ASbGnctolLERtRjVxs0Ai4OYNWj+gWxhrpaJ2ZObwjpH/TdXyTNURoq6utNRH1NEO7o
	AIeSkF6Aug0gfQBxrJWio2AgFE6LlEt8iT6gE3YpmicE0Eijix1t+43w1e72YT6jy3u2r7SnjNn
	MTBksRxqWuyQR6BVc7ZE80TayKwnrAcw7Ym+B4feHoo0OXZh+r3fe1vZWnrZdbNHYtIKPauFwrF
	vAXbThHjuwZsnJxHbZpF49/HCLVv/k0HDoAA9iIeIayAmTBMCAsAz+zNvvMkA==
X-Google-Smtp-Source: AGHT+IG332pKqoiyu3mxfKdcBuv8gBY/2pUzbUJ+Us2HTsMsF8kj8i/V5MV6ZB4snPjphrMMA6Qer+SQjR2w9hXFnWw=
X-Received: by 2002:a05:690e:1289:b0:63e:17d8:d96b with SMTP id
 956f58d0204a3-63e17d8daefmr1357797d50.43.1760659682142; Thu, 16 Oct 2025
 17:08:02 -0700 (PDT)
MIME-Version: 1.0
From: Anirudh Mathukumilli <anirudh@astranis.com>
Date: Thu, 16 Oct 2025 17:07:51 -0700
X-Gm-Features: AS18NWA9xdWCAfFMGOlj2_EuHeu5GkHEPtO96gpalYNWojS7m_X2h9blP1kiev4
Message-ID: <CAH7FQfg7_Eo+B6tDbOPhx99t5hAo=oqh9arxMLZw0y7xWYfbcg@mail.gmail.com>
Subject: Building u-boot with clang
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ed304506414f8616"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 00:08:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65939

--000000000000ed304506414f8616
Content-Type: text/plain; charset="UTF-8"

Hey folks,

I'm trying to use Yocto to build a u-boot image using clang. I need to use
clang because the system I'm targeting is not supported by GCC. So, I've
integrated the meta-clang layer and have assigned `TOOLCHAIN = "clang"` in
my local.conf. This seems to correctly select clang as the correct compiler
to use when building u-boot; I've verified this by trying to build with an
arm64 machine and seeing clang work.

However, when I switch my machine to the custom machine I'm targeting (a
powerpc variant), my yocto build fails trying to build the GCC cross
compiler for that architecture. Why is Yocto attempting to even build this
cross compiler? Is there a way for me to tell yocto to not use GCC at all?

-Anirudh

-- 


________
This email and any attachments may contain Astranis confidential 
and/or proprietary information governed by a non-disclosure agreement, and 
are intended solely for the individual or entity specified by the message.

--000000000000ed304506414f8616
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey folks,<div><br></div><div>I&#39;m trying to use Yocto =
to build a u-boot image using clang. I need to use clang because the system=
 I&#39;m targeting is not supported by GCC. So, I&#39;ve integrated the met=
a-clang layer and have assigned `TOOLCHAIN =3D &quot;clang&quot;` in my loc=
al.conf. This seems to correctly select clang as the correct compiler to us=
e when building u-boot; I&#39;ve verified this by trying to build with an a=
rm64 machine and seeing clang work.</div><div><br></div><div>However, when =
I switch my machine to the custom machine I&#39;m targeting (a powerpc vari=
ant), my yocto build fails=C2=A0trying to build the GCC cross compiler for =
that architecture. Why is Yocto attempting to even build this cross compile=
r? Is there a way for me to tell yocto to not use GCC at all?</div><font co=
lor=3D"#888888"><div><br></div><div>-Anirudh</div></font></div>

<br>
<font size=3D"2"><br><br>________<br>This email and any attachments may con=
tain Astranis confidential and/or proprietary information governed by a non=
-disclosure agreement, and are intended solely for the individual or entity=
 specified by the message.</font><br>
--000000000000ed304506414f8616--

