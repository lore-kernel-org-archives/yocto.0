Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60ADC83F03
	for <webhook@archiver.kernel.org>; Sun,  6 Jul 2025 21:56:33 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web10.45716.1751838213396459606
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 14:43:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kwxNbanK;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: schonm@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e84207a8aa3so1534145276.3
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 14:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751838212; x=1752443012; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPLg0eYZixPJlNqoSs2coKiEyA8AOkzmn4Fp7bN+ePY=;
        b=kwxNbanKtDqpv+Yi0oWLOgy3dNcAQjDz2yHCKxGjbPGhGjJYkf+oMvT3J4x5KaSJS9
         JQXUMNc5zXossELAdl7xAAnW+Go/B07BE36w+T/xpO7nt8j44MMuI8HV9KhK6SZdbwQz
         WkPdWAilP4yQzRAMvi1GMX22hm/8w4eVRSWZddF8Q/+bsyH5TtflJCo9yj2pzukkMlmz
         E4hDE1IRWP6Hyc2gy1kA8ipqmth/zMbx/Btkg9sw1R1EElPnNTnuyDNq8cGGSfdYHz5S
         YRI0IGbcNHVbDR6EnKRQmPO4bakJcOEyTE34ce+vu+lUdNT8FZXKfuPaMeWARJW4a/kv
         vjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751838212; x=1752443012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPLg0eYZixPJlNqoSs2coKiEyA8AOkzmn4Fp7bN+ePY=;
        b=ChX0MqIXvmjZC00HkCL4D+Rhho6Xfe+HF486GaTPQZ2NqQRaxRSAw13+ldMjfGNjfF
         l0+R3ilU+82vWNlvRMC3qPnWl5lxFB0RF+AJPPnppWiEls876ZI2X5gFFsTPzBSTVOuR
         TPV5y+ObbJN39RUWI+HpqtB1bRXrim5xwAuLDtEG4GCXzpQbggYDkrD4/n8Epwj4qzH5
         8SCrn11irxWTl4T1xdwKL43Q4naWXT3uNaAbqf9IGLLGEOqKiFUXxpR08cxBZGDnTeOY
         CQ6l2OyIX5ZboGH9O/zUZ3FJT/osr/QohTuTqGzV7CHR9YbUK19lR00p9W3xtzwNYXsB
         SEkQ==
X-Gm-Message-State: AOJu0YwDa8qsD1MMxPp/SsaH35lt5Br/xFM+Dbi5+TqUBR8OYqAg0UMw
	JWa2hDPxN8hkjGrHfHcM4QdVv5OZzKFtkvx+2zXWbOvYtHsoDFFf/Qk5RI7HZG4y
X-Gm-Gg: ASbGnctWBpB7ccliJYYCGDAR8yHgJNpJTbKCqoJkK2jQixpy0X9dIdrmO3hVanBFIou
	85VM509ZxIl+E8gEJRlllMhmfiynwAZH7duLphTYp1pv9mdEtqVu6+GS/uevX/wkVBZISdDr+Ls
	hlkNcrAVonEmoV23GWgPxHKaPUpcoAquMvI7DGXeJBf/F+6PHf8RAg4vwCz5J312YCcxPjXAr3f
	dzk9SXmAEbNTj9tmtMr8zbcPET0U8aXsvxS9Y//SY15Izhi+s8Q99W5iAZc/kDCMGGEMY2jlzMI
	J4VxExYHDW5N04uxb/xM6O9Qwm6Yur3EVkjZ5AdqzbRLWXTS5zdZktaKrsVBbv5l6IriIrXrIzv
	uS3+h63wGlnoeqjmVUJvI
X-Google-Smtp-Source: AGHT+IEgNfcaNLFAUABofWHQMhtm/wkYNQQPba7h+SmsyXXM7iKyFLSpGOAD9AXNiZzj2Z8XUmC2GQ==
X-Received: by 2002:a05:6902:906:b0:e81:e494:eee0 with SMTP id 3f1490d57ef6-e89a0cb1205mr11865489276.27.1751838211808;
        Sun, 06 Jul 2025 14:43:31 -0700 (PDT)
Received: from localhost.localdomain (71-208-4-221.ftmy.qwest.net. [71.208.4.221])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e899c340aa3sm2237479276.21.2025.07.06.14.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 14:43:31 -0700 (PDT)
From: "J. S." <schonm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Jason Schonberg <schonm@gmail.com>
Subject: [meta-raspberrypi][PATCH 1/3] Update layer to work with oe-core master, which is currently set for "whinlatter"
Date: Sun,  6 Jul 2025 17:29:53 -0400
Message-ID: <20250706213926.1813828-3-schonm@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250706213926.1813828-2-schonm@gmail.com>
References: <20250706213926.1813828-2-schonm@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 21:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65614

Signed-off-by: Jason Schonberg <schonm@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index cdf8112..aadbf0b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "raspberrypi"
 BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
 BBFILE_PRIORITY_raspberrypi = "9"
 
-LAYERSERIES_COMPAT_raspberrypi = "styhead walnascar"
+LAYERSERIES_COMPAT_raspberrypi = "whinlatter"
 LAYERDEPENDS_raspberrypi = "core"
 
 # Additional license directories.
-- 
2.43.0


