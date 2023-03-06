Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23ED0C6FA99
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 17:55:58 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.2091.1678125354656643113
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 09:55:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TuI9nCOK;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id h14so9735282wru.4
        for <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 09:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678125353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PpBJ9JRRltC2XyjfmniI/dDxhMcCUypWO75+IRnHsx0=;
        b=TuI9nCOKlvkFsE5SS/EUGZBqbaORaW2cS5TIao5HhR4v9RypVA8tMwfMrcNWfPn8Hl
         kpUWsQAjJIYwDNs13Xak9vQ+39Q2O10Dtw9H61KcW35kHQ3lXr6RzWNHkM82g0tdTqI6
         20m3h2En3kntPEkmIiTLXfA5DJ2oarjGAJ4J54DoegSLKW485X3WUvBxFOjVSlR8D/91
         uwtSsKKpJrQNV21LcFeZ0cqK6p+hgx7r6+ruG49yXthDB054kiZJTfRZAH/ul9WffkHN
         uk7UwdNcv9+FQ/h5fXAikXfCXnaUgWoCbkLbOEih/QH/sVpaE8349Gs56eeo4eDDEDJq
         B4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678125353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PpBJ9JRRltC2XyjfmniI/dDxhMcCUypWO75+IRnHsx0=;
        b=Z9L1xIfwV4WAlbnEoe/dH2v4OKWbDS0FJsiLKGBQnc1pLkkUVCBuZncLyLI5hGV5wm
         LYpoHuqjli7/SkEQTxRmmAYh8J5PqgNCHw1vJydJja1jy2epkWoe2B7QqkVjAGxyna5D
         hJF0Qppmjm3VDL/0aNj41wO+Fi+tiTc4Z/n40/Q8fkBoftuwYOXro6nZu63QyeWle/bk
         h2IoTKi4JtP4SLrhI9jGJEdnL6RhRc0unwz6YnlMPewCnsyLJ6v4edc8NDgT0fhVFFJB
         It8hD+JnXATXdbH2Web7Eliv/jrL93klc6zllzpgCzn9oSdk2jrBGmfhyUATEauo5Wkj
         1PDg==
X-Gm-Message-State: AO0yUKUrzjvE45lD8++lSjccEf5HgogMH38zeE85fqIMrNbiod9IAPyQ
	5rkWS1cRtDXuHT+aRH/dWwiUAOh/9Kg=
X-Google-Smtp-Source: AK7set+u8Q7cgWLnRrMBqaPJk8B+O6Qw6sp4ohDe+91DawVf56qisi9HHRPIWW2dujCxiq+SPJSwSw==
X-Received: by 2002:adf:f006:0:b0:2c5:98f2:5b16 with SMTP id j6-20020adff006000000b002c598f25b16mr7730473wro.1.1678125352884;
        Mon, 06 Mar 2023 09:55:52 -0800 (PST)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id j29-20020a5d6e5d000000b002c59f18674asm10424685wrz.22.2023.03.06.09.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 09:55:52 -0800 (PST)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 2/3] meta-security-compliance/layer: lower the priority from 10 to 6
Date: Mon,  6 Mar 2023 17:55:27 +0000
Message-Id: <20230306175528.395007-2-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230306175528.395007-1-jose.quaresma@foundries.io>
References: <20230306175528.395007-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 17:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59349

The priority change on sumo version without any description.
Since then is very hard to add in other layers a new version
of any recipe on this layer with such priority so these patch
reverts the priority back to 6.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-security-compliance/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index f07532c..82409a6 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_scanners-layer = "10"
+BBFILE_PRIORITY_scanners-layer = "6"
 
 LAYERSERIES_COMPAT_scanners-layer = "mickledore"
 
-- 
2.34.1


