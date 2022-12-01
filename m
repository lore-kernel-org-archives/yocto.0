Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0391DC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 04:27:28 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.34813.1669868846878896406
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 20:27:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ELGg2QjV;
 spf=pass (domain: gmail.com, ip: 209.85.221.41, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id bs21so803668wrb.4
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 20:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gviWF/dp0EzqBGTuD1uvu5egAMMmsLwO4MTsxEOt7iw=;
        b=ELGg2QjVfeEVzu8I2n76wQAK+dJ9vMqGPo1jOmFPSwDF7cRakP6VtCNhF/o2HJfBFq
         PlLpWv0Q/+4nJrwd4pJBMzCmlCc+sFYMazA8Exm1+tR3FMPA4bt15B0my2palvSzcr/g
         uknarc3kg35Gj2we34PdF46iWDsWyM8UYh06T/arHOtdbVwlxA4zHPdh6FyJ9s9EMkS+
         XQw+iKwGh94YcvdRwWJcQD0RsRtRRclM9zFcg2ZtDmaJqRY+xAqLj0TL7SuFg/0D3g4Y
         hygC05tlBHDeTiC1TEo8HrIoUf877687JRKLum4UWBZSBFNM6Ekl1+ZfryKfJeaW/hfc
         hbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gviWF/dp0EzqBGTuD1uvu5egAMMmsLwO4MTsxEOt7iw=;
        b=BJrxIp0XdHPKQyBaVWvHCZAiZBONU4GuWD2wYSHY3/Db5S7Vda28bpuiglq5UFrSRm
         SgE+W/ExFpy2p2kjyfwvbpcdifglSY6xiUHYzOdTmEipvUfeEW46++rv6TXu2oitXpiQ
         YX96+/GHxcRXKz/jYBiaHcFV/QRakn7mP2Tv/TbCEw3lglWPpE+142qvythHhyt1ZF00
         xqLQB9pHTVskJS9Chi5dILIgl8a+pNzTFu9Il/VzBvT7mYOA/ZNTXqzeA0ZdD9s0Op+u
         e18nsH66yRcMUg76DkLKMW7JBSfgULee/pP4EvGaB/V/xQ9QjehcOg2RJGpMHPolYxej
         hNuw==
X-Gm-Message-State: ANoB5pntdbNz7+zpem3q6iUYB7JZKjUzLRnzpTVcfl/DAEGubvjGk0jZ
	txFHp+IXOUP+pzE6hNTBEWRXRx/KsaRaPNpsrklzAZ500s4=
X-Google-Smtp-Source: AA0mqf76Xn1+kxYNRgVQ+TlPmxcs2L/6EAUB/Orh/w/W5LC7+XWbyLBTW+Iwba6qG6R8uuF7lEXVDR9dUHQA2GhJgDE=
X-Received: by 2002:a5d:6088:0:b0:22e:5149:441d with SMTP id
 w8-20020a5d6088000000b0022e5149441dmr39482276wrt.661.1669868844835; Wed, 30
 Nov 2022 20:27:24 -0800 (PST)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Dec 2022 05:27:13 +0100
Message-ID: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
Subject: LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 04:27:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58689

Hello to Yocto community,

As I am much more passive yocto wise these few years ( working on
Android build systems and around, this is also a nightmare, I should
say ;-) ), I have one Yocto question which I never really understood.

I will ask it by example. I have one layer for the CAN tools and apps
which I have created 4 years ago:
https://github.com/ZoranStojsavljevic/meta-socketcan

In there, in conf/layer.conf:
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/layer.conf

I have the following line (layers' compatibility):
LAYERSERIES_COMPAT_meta-socketcan = "sumo thud warrior zeus dunfell
gatesgarth hardknott honister kirkstone"

I do not understand why we need to explicitly name releases for such
simple generic layers?!

Instead, for a virtual example:
LAYERSERIES_COMPAT_meta-socketcan = "${AUTOLAYER x}"

So all the layers might be included (or for at least lets say x = 4
latest releases, where x = 0 would be include all)? I do understand
that complex layers could NOT have such a definition (because of the
dependencies), but for the generic layers (as such presented), this
would be beneficial.

Thank you for the answers,
Zee
_______

