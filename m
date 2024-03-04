Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7756C5478C
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 14:07:39 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.99124.1709561256758968614
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 06:07:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=g3W7LdGN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33e17fc5aceso2057126f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 06:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1709561255; x=1710166055; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=z38taVL56B7ZN/NQvnbhM6aXXGsx0qopvb9sLyyWnek=;
        b=g3W7LdGNtnJx8zk/jn0iE+azT9wk/Sa+Jy+5StMLQycLO0JheAGcaokAK9BXnQzS83
         7nWQNqnn4CRjY+d3dRreqvTLvnBJ1Q7emm1kVwFdkw/q2+dfxoUaiUiWuuiu9BlNk6pi
         iMRe2NrDWDemqguTf/vkIktpudYF0sKOFDxFA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709561255; x=1710166055;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z38taVL56B7ZN/NQvnbhM6aXXGsx0qopvb9sLyyWnek=;
        b=xJ/cL9goDrcplSIzg6Jmb1U+xIJaEU/SK8PVkmOmmEn68vCn+7bGr3N/cH4pqPkym+
         8s1C9LAegIx0iHBc4OHBuvaId/dfz/DV4zFEBVPJXHXZzwFwF968eZHjebVBnykK09iU
         qSoDLEMg9FYF5jJiT7JupsvZ+XWy0q85g+ddIMmMTdRWdV4voaAgPnbkpFWUouSvmVQO
         cRbhdAmVwXMVE2evov3HjCVJDjmoERmeuaY78domqapBu7y6RfC7xkwZgdV8b9ygYHv6
         yJxwzSQem8QbJ7FFP4FfQejPCBK9ajb1103mtJc2HJ6T3E80y8+Awmui/Tf/LxXgWPRV
         J5DA==
X-Gm-Message-State: AOJu0YzBJIbtCzcSJ2cUoZY2y5V1q3yaJc4Filoq9d6zgQvroryjdcUt
	fQtoU5KjL1v9EZ8US6s5f4G/9dDqa57jq/SvKB1O2lNT0dRW2Yu5gAOFPBwCfzoEDNeP1UyQIKn
	h
X-Google-Smtp-Source: AGHT+IE2T5U5XHkLcEn8puz8TfS8VMA0aRapFOktLcve2ohpWNwZkaxj2MA0VACwGnOSV6RCMITW2g==
X-Received: by 2002:adf:a383:0:b0:33e:1ee2:bd18 with SMTP id l3-20020adfa383000000b0033e1ee2bd18mr8994597wrb.22.1709561254934;
        Mon, 04 Mar 2024 06:07:34 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:1372:82d7:9b60:58ea])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c314600b00412e8c645a1sm708369wmo.46.2024.03.04.06.07.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 06:07:34 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Drop obsolete distros from master config
Date: Mon,  4 Mar 2024 14:07:31 +0000
Message-Id: <20240304140731.2089093-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 14:07:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62663

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/config.json b/config.json
index 0ef4d54..a1fb16a 100644
--- a/config.json
+++ b/config.json
@@ -1868,20 +1868,11 @@
         }
     },
     "buildtools" : {
-        "debian8*" : "${BUILDTOOLS_URL}",
-        "debian9*" : "${BUILDTOOLS_URL}",
-        "centos7*" : "${BUILDTOOLS_URL}",
-        "ubuntu1604*" : "${BUILDTOOLS_URL}",
-        "ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
         "ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}",
         "alma8*"       : "${BUILDTOOLS_URL}",
         "stream8*"     : "${BUILDTOOLS_URL}",
-        "opensuse153*" : "${BUILDTOOLS_URL}",
         "opensuse154*" : "${BUILDTOOLS_URL}",
         "perf-alma8*"  : "${BUILDTOOLS_URL}",
-        "perf-centos7*" : "${BUILDTOOLS_URL}",
-        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}",
-        "perf-ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
-        "perf-ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}"
+        "perf-ubuntu1804-ty-*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.40.1


