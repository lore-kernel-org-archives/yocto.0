Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F4E0E7E34C
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 08:46:22 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7473.1775205973180117362
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 01:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=eXm5gBzC;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4887f49ec5aso23164045e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2026 01:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1775205971; x=1775810771; darn=lists.yoctoproject.org;
        h=message-id:to:subject:date:content-transfer-encoding:mime-version
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=x2ij0beFau+VVnOSxhglSrjx+pucKOljB0763HQsV7c=;
        b=eXm5gBzCbvT0dRuwIAShSvftyUAtzqfqkZfzCYN7cmTvdPE64FiNcOkVl9mx12W9+g
         tUSwhe46ns6Tdr2SwiOvvlZQMaRSnjE3VUFL5Eewfs3bB/D6Lj1lsxabcAGJ74jyEbfL
         J18HpYILinBC3FOqu5V5zTpHc3KQ5G30onfwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775205971; x=1775810771;
        h=message-id:to:subject:date:content-transfer-encoding:mime-version
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x2ij0beFau+VVnOSxhglSrjx+pucKOljB0763HQsV7c=;
        b=XVX97Ex4mNdgpRzVu9EStELn76T38wvnytATJ1vZlTFkrv9sPG3UVG6hCQahlI+lgc
         VicQ8b3XSyrKtefwi1BbojhWYEpnp/OOUHS/0r1Z4UnFfW4YEHfz2DnXpYNAfCp4pVbB
         oVQMRhIeHm8vnmnWQtHr/XdIUGT58t17wMs8ZROBM9QS+Y1S9TZflM75PCzH592NSBus
         ouROWJF/daTSOXEZ0OtIu9D3/rumzcxhb56XcZidP7/MKM4fHCW4VoKHL6QJECFKGGZq
         N7ZuKebuoOsfyBtry9RPWX7Uww5KE5ICPPlkz8ttX4XKPb513DLBUw2sqC6xL53gZNLZ
         b16g==
X-Gm-Message-State: AOJu0YzPxCyPYPWPL3JHd7hrmexRijBYPRotXwFDFCzl6QYZBm+rklJG
	nYgkj/PnlZsM7DHRGS5E0Z6eZzn95sZGa9T82TUJ0C2H1V1lwCsVV6DGaF79f7hu43XiqUOxIjP
	zlGd2AeI=
X-Gm-Gg: ATEYQzw5wZdET2fx/QRgqbOjqjEGc7+qfH/LtBuhspeTSDtkJLDpoHyaNlXKVC/K8Nb
	fRQUoJR3AVw5oEflnpvSSqgUMTuTzCMpjEZ7utZcHgj2sv43Y8N4qQORur0u8RQ1R/fW7KXqxlT
	lHKVwq9PtptGWGGY70E/dlupF/AoTZ2DaVGoUNFAZr5ITVXRJXBCxAO5eJxCTAhO9Z8Gh2uTpNp
	H2707GeHUu5TpEDGsDxumcwjZwoMFZBsdEBk0MU8upzXZ/UxL48ctx+bRGT5vu27cw0ek1IBm3Z
	cXaQS4N/UCPzISwqYjLZISSoz2kc6d0VYKrPCH4IlIQvRP0FgFY6PCn2XSVaqRFwsI0Pcqk0UTG
	8i+iviekgFDQxGX0u703SyFfJ5oevDHk9CAAsCqHXLdR9vSD8hfZx/aAt6YbZWga3pd0X4c+mzT
	ac2saDzP427hcYD+U31jQKVEYSuQyfn3H5rxSxEUCgWhqd/zdoikjK8cazIBH5Vd7rusS1W1vIO
	eKjM1Qrks0Mkg6Q
X-Received: by 2002:a05:600c:c166:b0:487:338:b4df with SMTP id 5b1f17b1804b1-4889978006amr36520995e9.15.1775205971207;
        Fri, 03 Apr 2026 01:46:11 -0700 (PDT)
Received: from localhost (2a01cb001331aa00dac7300510953f30.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:dac7:3005:1095:3f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488980db973sm26469655e9.3.2026.04.03.01.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2026 01:46:10 -0700 (PDT)
From: yoann.congal@smile.fr
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 03 Apr 2026 10:46:10 +0200
Subject: End of whinlatter stable support
To: "Yocto ML" <yocto@lists.yoctoproject.org>, "OE-core ML"
 <openembedded-core@lists.openembedded.org>, "bitbake ML"
 <bitbake-devel@lists.openembedded.org>
Message-Id: <DHJDUJSPA7LG.3IKCP2QUJBMRL@smile.fr>
X-Mailer: aerc 0.20.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2026 08:46:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66382

Hello everyone,

As you may have noticed, the end-of-life date of whinlatter (2.16 for
bitbake) is near.
The last release of whinlatter will be the 5.3.4 and will be built in
the week of the 20th of april 2026 for a release the week of the 6th of may=
.

If you have patches that you want to see merged in this last version,
please send them before the 10th (next week) so we get enough time for
review and testing.

Best regards,
--=20
Yoann Congal
Smile ECS

