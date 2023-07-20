Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A51EB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 11:40:25 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.10772.1689853216554473389
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 04:40:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=VCrchDW/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-317009c0f9aso606008f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 04:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1689853215; x=1690458015;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8vNpPcBU4EcKEX3ZClshrpClGOz1sSffswON4z2Azsk=;
        b=VCrchDW//RdgMAzNhI++H+ydr+6myZPoE7YHF7ukMK5AVnsC5tnfxhRYuCf1sK/R9c
         VKSbKROou+axFbxUWqxDKJ55LAFsZmaTs4GN56sCvwBdPVu3cgXPAyWF+GWOQFYmKj1v
         PXGUeH6I+4bP7epHyea89SCctFcr77mW5tXB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689853215; x=1690458015;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8vNpPcBU4EcKEX3ZClshrpClGOz1sSffswON4z2Azsk=;
        b=Hvv7z0nUlzGdVjYpNR53c27hwKrR7UV0c/UZv7zdySVEnvz187Rm9Z2XVXRraQXxan
         Hyq3S6W9zw3hIgmgq6Zmd9KpFKUHtXwjK73QeKOkg8TL2TmYEiPWbCHXgGjBlkvqQVLs
         47IjwzkT80tKMVRyqs9qrvxD57PotLtwFR0oL7jUqg8vBnpVFMP0nI0rZ4DGn9/MaNe5
         oZ8vlRK2wRgAHRe2cr/CLsiDyQJbapQDPcDSh+pFK7GCbuFkhRKPhcWW+UMupqZdPvtp
         qV2WLpwS9HCQ5RoUvfD0rp9OMZEhLWk3P9Sdn2+D41u8fnQYVcc57NtfoTrKZ68nfjps
         WKFg==
X-Gm-Message-State: ABy/qLaLnUVvxx4r6FZmCO+r9LT38VbPv4cK1Ur9uLMYNYXkYFRJJtBK
	ifLJwCbX5Pe3CKyQI28ZWH3oU/BwnYP9ndws4iU=
X-Google-Smtp-Source: APBJJlEF5PyG9cRaCKO3+sIfsYsa60Vz62b6mKOk8ZnLurJnGJCnQdb5AxCoYy2dPRsAbnFHgH0uFQ==
X-Received: by 2002:a5d:480e:0:b0:314:1313:c3d6 with SMTP id l14-20020a5d480e000000b003141313c3d6mr1713759wrq.33.1689853214629;
        Thu, 20 Jul 2023 04:40:14 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ba5b:ff9f:e968:6d69? ([2001:8b0:aba:5f3c:ba5b:ff9f:e968:6d69])
        by smtp.gmail.com with ESMTPSA id r1-20020adfce81000000b0031128382ed0sm1100900wrn.83.2023.07.20.04.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 04:40:14 -0700 (PDT)
Message-ID: <e7e05ead7e1740041e7633d71943345460472964.camel@linuxfoundation.org>
Subject: Test regression report for 4.2 M2
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, 
	"alexis.lothore" <alexis.lothore@bootlin.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Lee Chee Yang
 <chee.yang.lee@intel.com>, Jing Hui Tham <jing.hui.tham@intel.com>, Michael
 Halstead <mhalstead@linuxfoundation.org>
Date: Thu, 20 Jul 2023 12:40:13 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 11:40:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60621

Hi,

We have the 4.3 M2 build so I was curious how the regression report
looked this time:

https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc1/testresults/test=
result-regressions-report.txt

The good news is I think this is improving and we're getting there,
this one does have useful data and the comparison looks much improved.
I'm pleased we had the comparison data there, thanks Michael and
Alexis.

I think the biggest missing piece is I suspect when we show regressions
with PASS -> None, we should also note a "Additionally there were X new
test results" if that is the case as it would suggest tests were
replaced. I suspect that may be the case here but I can't know for
sure.

In this build I happen to know that:

* We added rust tests for many machines but there is no mention of this
(it isn't a regression but it would be nice to highlight the change in
summary)

* We fixed ~125,000 gcc tests for qemuarm64

* We fixed ~60,000 gcc tests for qemuppc

so perhaps we need some kind of summary about improvements too?

Ross is looking into some issues with flaky ltp test reporting. I do
have a fix queued to improve the glibc test results too for the next
milestone.

It is nice to see things starting to work better!

Cheers,

Richard



