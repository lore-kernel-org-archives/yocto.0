Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33AC47DA2
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:52 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.89158.1705341406816416221
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=A6vGs4r4;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1d3ea5cc137so73049345ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341406; x=1705946206; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2wYXQ8j3sfzKSP2oVzvjRm0EeUsaPvOaCQHzEHqg7U=;
        b=A6vGs4r4A6bXK9LtOysJJP/0RqJpzZ+eDuKiBP5DCwTa5Rx0CnTDiVMUdoTM5Egb/I
         ji3gw+d/i6IpXrmf8s8mzXlYCm9eDu6n0kjGpmoWs++WMQGDqdfFtHsXFi9Eq8U6v17M
         flNvaqmEptqNxkvw7UMg73zPIb3wjv5EahKn3Vv14qvQ3dPJgL/BXSR9k9g28+KYH/ew
         6qHKvwKcOl1yGU+oRChKIKahpHMPNHiSxZ8jFtXLQ/PKkL6p/wTRV+iy4CEd8CHDLeUs
         Hg9lKpACS2OYJLzNs3yg6qs7/1iCHtIL6swe3R0E8d4qIhqNGJrVJBPtkmpYf7vt/MoZ
         fULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341406; x=1705946206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2wYXQ8j3sfzKSP2oVzvjRm0EeUsaPvOaCQHzEHqg7U=;
        b=dpLs2Y3cQpku+lkAX/l+WuBBFrnXXO/8k5gN/T9hX8vARkn2Z/z3aKgXoUyZdsecx9
         dmbT8yu0ts5DJQBOVdd+uTH/xJcM2sAWuubyeSrsRQuKtyHsBWb4g/nUpzcMrM5CE0ja
         ZbR42vPKwhadOJ9GMVBHIurX44JDekYBiLy5qnilwkJPsLz7oakYwxgQvGpNTGpGTUvA
         KtxSaYAKqmAMdSxz8Ybm7j+t3ybGFIDudp8k429BKpi8hKEezvN10ciM90DBwWyg8Z4P
         BBjsyOpvftnPFu08LqhKowXs409MqMm8FIzCiMcgEfOzG3I5uK5hS7zVioxbfoe1x1WB
         uFeQ==
X-Gm-Message-State: AOJu0YxeccYcSbMkCq1OXGW4mQeQHeaR6c7x79ZZUj/IeXh6cTHJmPod
	a41/XITYSsseK6UDC7+7hG+V5KQojjY=
X-Google-Smtp-Source: AGHT+IFNqlz7vKLkXSGxEEYXM2K+uPYHrAFIO8sN08MTjc/1EoE2dY2I7bev2yP3c8P0sxBuajfZfA==
X-Received: by 2002:a17:902:694b:b0:1d5:5a2e:b32c with SMTP id k11-20020a170902694b00b001d55a2eb32cmr6100760plt.22.1705341406053;
        Mon, 15 Jan 2024 09:56:46 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:45 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 6/6] docker-compose.yml: drop version '3'
Date: Mon, 15 Jan 2024 09:56:32 -0800
Message-Id: <662ca9a4be52a21ed03e7421b51e5c1e1ef9afb1.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62152

Drop the obsolete version: '3' property, it is no longer needed since
late 2020 (Docker Compose 1.27+) and is only informative:

https://nickjanetakis.com/blog/docker-tip-51-which-docker-compose-api-version-should-you-use
https://github.com/compose-spec/compose-spec/blob/master/04-version-and-name.md

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker-compose.yml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index 8b43946..8704599 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -1,4 +1,3 @@
-version: '3'
 services:
   layersdb:
     image: mariadb:lts
-- 
2.34.1


