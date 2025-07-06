Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCA7C83F09
	for <webhook@archiver.kernel.org>; Sun,  6 Jul 2025 21:56:33 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.46015.1751838189960711024
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 14:43:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Mk5OKyLk;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: schonm@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-711756ae8c9so15557087b3.3
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 14:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751838189; x=1752442989; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=e8jzQ+wz7GC29YT0QOUNzzdqsum4giCSgpf9eauWG/k=;
        b=Mk5OKyLkarR79U+mZEChOVAsalDlRk1RPQjiOJ5uB9rT2RTpB6P7uPir7G2HlgLcXP
         C8JQd5RuZj/s8cBpsJCpxSlXInAEswhD8yvYrZwHFZRb7RDVhIj0q6VIYyLLYV23D6dR
         dOxq3/3420jBymKIOzF8bUd69QD42+qH/ETEY+PN3ouFXbflHZhjh7uS+M6Wu3BS8eev
         qH/4GeCUD8QKclIqxbCg3iZwDtmfBpI041jaKw8xSUwrfAtO/Lc0uOM/GyKqOJfN/FlN
         q7habPtOsvboR7z1dxvMf7wzDE9Vhaf2SXT4k2Ui2UErioqbCzj6+vF7xaBW2PLNgA+B
         6s0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751838189; x=1752442989;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e8jzQ+wz7GC29YT0QOUNzzdqsum4giCSgpf9eauWG/k=;
        b=Kqq/57/ZiSP8MjwzO2Bl3AUCZbD3NXrmjqhXbp/t8ltKye4bVCW8yG91NCtYYtXXIL
         tXhjHz8DSFrPPZOPP9iTlptKzNyuelk+DJ+t7mQuMkQKl44iMQDT8+Sho0N/Yi2c48eI
         VO92KCUjiRwNXDfINDnCimxQrXc1uH6doyUzsPTAfOUOwM7ADnVSayEKexmvLbuDrBLM
         CZyU7qSptDolo3QfyshzKjJ4o14YAOp9AqA9AM4Wa2mFEUWQMU2d+9kOY9fzw3DPfq/L
         RyDkP5GGPNuKz/30krl1FOYaZNBCaEq/DQm/nIhEtRI2CIfb368DIHrWnmpuHckdcDK1
         +h3g==
X-Gm-Message-State: AOJu0YwFvCQJh9UHIn4A1IHkbuJb4orkU8jtdtdbfNuIaZWm2AUVEiWr
	55vc2CPIGb0tBW0e9qxijL5CZzsG+Iww1FbzOAratHRANMFIDxRNf0QCAXuWjP2K
X-Gm-Gg: ASbGncs2S4mSWGeFFW+0cqblglXupye20ms/CGEmVAL4Hck6sNspxNPjQBLEqdei597
	TzDyFJlJorafjCx0jeNTZTjy+ONm4sBzC2S2zSp8zY05pDJSCDdud91WvDJH9YsroYkN9E/Mivr
	rTFctj8HFglnIc/30hVOSjIg2H1ErB80++BOWqXiKshqPv4n6WrtAHvUYDnDj+rodylIz7COlh1
	K+TTxBjuhyzy6fAlLGZemlFswAZKhyiB7S5qQ6Zmqaipxbl4L/hHREJrYarSyhXXIsr5llOiXiY
	hZVIJ2/VLmrFt0wLfoVdRcykA01s6v35CC2KwIQTtfJDBdb6R8VMzNIua82JHRAqJB5k0aSnG4J
	bCHrBlcINSi/FnyHgjUpT
X-Google-Smtp-Source: AGHT+IFum0GLP5yavvV2zzQ1WGsja7t2gTB4nqZasMwj7p00d0oA8G4286fVXjhnpKvGxygYjImQ1Q==
X-Received: by 2002:a05:690c:d19:b0:711:4392:7024 with SMTP id 00721157ae682-7176ccea183mr88377117b3.37.1751838188420;
        Sun, 06 Jul 2025 14:43:08 -0700 (PDT)
Received: from localhost.localdomain (71-208-4-221.ftmy.qwest.net. [71.208.4.221])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e899c340aa3sm2237479276.21.2025.07.06.14.43.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 14:43:07 -0700 (PDT)
From: "J. S." <schonm@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi] whinlatter
Date: Sun,  6 Jul 2025 17:29:52 -0400
Message-ID: <20250706213926.1813828-2-schonm@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 21:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65613

The patches provied here for your consideration, allow the master branch of
meta-raspberrypi to build with the current master branch of oe-core.

The patches are probably appropriate for a whinlatter branch if/when that
branch is created in the meta-raspberrypi repository.

Your feedback is, as always, welcome.

Jason Schonberg
[meta-raspberrypi][PATCH 1/3] Update layer to work with oe-core
[meta-raspberrypi][PATCH 2/3] Changes to S as requried by oe-core
[meta-raspberrypi][PATCH 3/3] Fix WORKDIR / UNPACKDIR issues in a few

