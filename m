Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B5EC6FD1F
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 18:53:44 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.53874.1710960820476767936
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 11:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ISIJ1i/d;
 spf=pass (domain: konsulko.com, ip: 209.85.210.180, mailfrom: tim.orling@konsulko.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e8f76f18d3so217513b3a.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 11:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1710960819; x=1711565619; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vNh1Ld/bmO7x5X6zVkV7VsFA0QktCoLPuHJNOfDPt1k=;
        b=ISIJ1i/dzDCAPmEgOHGKyxYoN2aamCHy/S1lEOBSJpIyUzA667mBSR2DJ7FOiYtovC
         /3TWzNSLYJE/6agKIIqRK1/aBCtG++PvRwYquG2sNgeiw7UI/bCOegR5wKAeO46d0urr
         S7C01cp94HAEd2pIqUGLA4EQmIzvUUUqkD7Rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710960819; x=1711565619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vNh1Ld/bmO7x5X6zVkV7VsFA0QktCoLPuHJNOfDPt1k=;
        b=DMFXSL5TnM/7ir6ovIQCbiWhm+4DmpjAxTkLWwfG+uhgDidYokq0NMSEXRxYJ16vet
         LZ6vFcXNjjwFpO6lWwpiPOdXsPbwNNtIazTErSjqquaEt2vEmgFvnXcy7dNYBw/q5bB9
         F5ol/gkl4uhJAuXl+6f9zs7NadgPieOsqvixDlQ03aTbPSPsBLsHVcUw70k1VKyFUbne
         sfqqd1bA3H1kpP/EmOkpQc0VXERlHhHtK7nc+XfhH7xLOqwdefRbr8CMeZTZJcww3lQ7
         cCMz03EWVBKmFBwY/1GGts4LCbMtlfUzrGQAftpcFqUWRJZTyrs5Wvxbib3PHH/6QkWd
         Ryvw==
X-Gm-Message-State: AOJu0YxQYtx25FI4sUNX5hYBbfJY9iKlSXO0p+gfMvymmrLI63yB8GQ4
	3CyVrsRtc6OcXTuHcvbQwsBw+pTRU680UVq/EvIRhSb/UtYHKxhCrNEvjigT9Z6619p3ZfXfNrk
	BoIuxwg==
X-Google-Smtp-Source: AGHT+IGdSSz0hIBEroNNLABe5TkVF4gfMdTMDtW7dE2OSh4HRW5mCNg02CYofPYu1MH6J2Px1zTk4A==
X-Received: by 2002:a05:6a00:6702:b0:6ea:6ec2:8212 with SMTP id hm2-20020a056a00670200b006ea6ec28212mr57526pfb.16.1710960819072;
        Wed, 20 Mar 2024 11:53:39 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:fa32:ee43:a809:30af])
        by smtp.gmail.com with ESMTPSA id ff23-20020a056a002f5700b006e6454afe10sm11854379pfb.205.2024.03.20.11.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 11:53:38 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-lts-mixins][scarthgap/u-boot][RFC PATCH 0/2] Initial commit of scarthgap/u-boot
Date: Wed, 20 Mar 2024 11:53:15 -0700
Message-Id: <20240320185317.2173087-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 18:53:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62806


Motivated in part by raspberrypi5 support added in u-boot v2024.04-* this branch will track
upstream u-boot versions throughout the support window of scarthgap to allow newer versions
tracked in either openembedded-core "master" or possibly new release candidates for u-boot
upstream.

This is pure vanilla upstream and in no way board or bsp specific.

Tim Orling (2):
  Initial commit: u-boot 2024.04-rc3
  u-boot: bump to v2024.04-rc4

-- 
2.34.1


