Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44787C54E4A
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:20:20 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.101539.1709565614878065858
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:20:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=tpsCYTkj;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.178, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5bdbe2de25fso4054061a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1709565614; x=1710170414; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6l3/WVPyBTL+kZqqm1/BKp4QXAnZ4p3fnJt25TPY+E=;
        b=tpsCYTkjOaTcT2iise575NYSqON9eQUpWxxU3XkTEbq8jyac6zdLtsg0pWNGZc+Ev6
         h+fBZdFDXcpGbOJmk5PGD/pysWVerX3PpFZPB39JPVweqhFT9GG6/+vx0Xw16yeMR2J+
         jNlf21iq5RjJ4XbgyDU7m97dwhSRIHJjf1Nq2ncfP/wGwXRXdV30F4q7TyWdWntcZUuL
         TyqomNGQQNuyiHaeY4LnDjXbIS7LnbuFEv/SMMZdd1vhmAS+W2TSs3Q8JG2tcCOZVnff
         tqMrdHVXTK9/481V6kfQRPXlpla5pV+th+35f387WNbpAdOfgiAaIyPvdug25xeCmrNP
         47SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709565614; x=1710170414;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6l3/WVPyBTL+kZqqm1/BKp4QXAnZ4p3fnJt25TPY+E=;
        b=jjinkjXZMt6A3co6lWTCR6Kgzgxm+knmBKkZPdbtcPunKK0BRmgkJCfAO3YPKwXV1e
         v3TLt9fQvNi4faUI2JACCjrtZuiWpCUMyXOV5qdqI0o3vIG/onrCi8dnm03Rs3T7L14K
         7PjjRXJfUFGYMy2N1D1OBWDRCxDlgw5xFTseQP9KmCu814gfuxV7SURT1/4IXLiMMM6Z
         IcR8S4veW62JY76hijwSZA8iYmILoOILlZXOTzsGHWSBGO1IfeB61De/5vW/KaK3NPRI
         257s/hwvHAMKqBKwEMcI51tLp8YiGavufV+ZsaSzheTIgM9JqzAWbTVWFik1ZLrW3/RC
         1Tpg==
X-Gm-Message-State: AOJu0YwiowV1xuLdu6nWPGkvs7Bb3hx7cRdE9VBFFgTk6DpyNyAia5OP
	mCv6vbc49SZZSGkWNBofqwR0j2tnYcTAKChnTbgayWdw3HKjXjr6WUB/ZP7L8iZVSOQCl7PP2GV
	oM7U=
X-Google-Smtp-Source: AGHT+IFCHaqn7XVjXk8zzS9+5StdhFW73X4nJ684xzXIc+H48kplBqwws5dI67kjmwPuiHGffVZ7Eg==
X-Received: by 2002:a17:90b:46c8:b0:29b:1f62:6a3a with SMTP id jx8-20020a17090b46c800b0029b1f626a3amr7489537pjb.29.1709565613918;
        Mon, 04 Mar 2024 07:20:13 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id h16-20020a17090a051000b0029932d64c2bsm8868360pjh.17.2024.03.04.07.20.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 07:20:13 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone 0/2] Patch review
Date: Mon,  4 Mar 2024 05:20:04 -1000
Message-Id: <cover.1709565401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62666

This series updates kirkstone to use the latest buildtools for selected
x86 and arm workers.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6640

The following changes since commit 9131fbeab58f0cad50c99dc9ba9003f04155999e:

  cve-report: Add summary counts of CVEs by recipe (2024-01-24 10:24:15 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/yocto-autobuilder-helper contrib/kirkstone-next
  https://git.yoctoproject.org/yocto-autobuilder-helper/log/?h=contrib/kirkstone-next

Steve Sakoman (2):
  config.json: update to latest buildtools tarball
  config.json: use buildtools for Ubuntu 18.04 (both x86 and arm)

 config.json | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.34.1


