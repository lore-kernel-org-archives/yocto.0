Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0274AC001DF
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 21:10:53 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.39549.1697749845755460429
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 14:10:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V0alenAJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1caa371dcd8so945865ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 14:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697749845; x=1698354645; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jm5+bQh3HmavfvbW3Pak9jGzcSUjJvLcnPQ8CmeBpYc=;
        b=V0alenAJ5od0UARnWXab8wsquc/DpZjMzo2S1nqlHqDSExX09IPt55htB9dSDc5Jjp
         Hb0/NWUkzdza+t2BMviOHMAWt+EaKl+9siK+JrzBbeHvRqxccQBNNo614FCAOtEl52xs
         Gm04LwB57U5sKQx8w0zvXZrP8BZC3CBIk0f5f/ms5iRT2jQo2ycS8dX72WDIPNqDBWKQ
         kRG2rR5JxVEaLiFGcJZEBSiTv+SJqg96mIHYA9z0fIpkH6Xc2bkFVsPgWWNkaBAoSqub
         aqK6Sd+ucLvCayUeJDIrJ/wVMvEuUH4zU2ia7FriQgovBO/hzy8Qg58b9PwivlyCcl0Y
         oytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697749845; x=1698354645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jm5+bQh3HmavfvbW3Pak9jGzcSUjJvLcnPQ8CmeBpYc=;
        b=sNZMk14yFdV4Gjcf5c4S5rNOCudCRRsbqkWUHCxmjQkEWrfMF4+SSdcwDlXAoBtBAT
         JxV9uCoeK2Oz+8NfcwImEQP//PWLRil0eiuBNs+cK6YD6g8HphkfCvrWg8chrR0vX/Ti
         r9F6woJc2+mVIbJp/HNNIuJuBJSV7Hh8lJAzIUCWUbxNpLemqCoGoksR4hG8p+0yxQoY
         x9HBdkxEFey9F9eTya+Cop0PPia4IX+W2bPVRQUD1eDxSE1XAeaMX/9Yd44e9LScJa1d
         GJQtSXmdlLTnPXizc+E6eN5FzZfWWF06bPR8+YV0/yyfoCDTHYpnl8Fh9F29/XgAIHS7
         06yg==
X-Gm-Message-State: AOJu0YzCkKEHurjg34Bl3/ibe4mKJAwnJrarPQRYAm+G0SVK/GMaFlGS
	C/3tTTbcWzivxsiP0iWyThtGT3ZN7ZzYAw==
X-Google-Smtp-Source: AGHT+IEeisZcLUJoh+MLYcQDUyl9YLpgcONugq2Dk15mbMOOX3Gbk97uljXqHrRa7v5EWkN1vVUhNA==
X-Received: by 2002:a17:902:f7cd:b0:1c6:30d1:7214 with SMTP id h13-20020a170902f7cd00b001c630d17214mr34277plw.55.1697749844881;
        Thu, 19 Oct 2023 14:10:44 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:774:24af:42e2:c333])
        by smtp.gmail.com with ESMTPSA id i17-20020a17090332d100b001c32fd9e412sm159737plr.58.2023.10.19.14.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 14:10:44 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] bootstrap: fix typo in minified file name
Date: Thu, 19 Oct 2023 14:10:35 -0700
Message-Id: <20231019211035.3447002-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 21:10:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61423

Fixes dropdown menus so they are functional again.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 .../static/js/{boostrap-3.4.1.min.js => bootstrap-3.4.1.min.js}   | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename layerindex/static/js/{boostrap-3.4.1.min.js => bootstrap-3.4.1.min.js} (100%)

diff --git a/layerindex/static/js/boostrap-3.4.1.min.js b/layerindex/static/js/bootstrap-3.4.1.min.js
similarity index 100%
rename from layerindex/static/js/boostrap-3.4.1.min.js
rename to layerindex/static/js/bootstrap-3.4.1.min.js
-- 
2.34.1


