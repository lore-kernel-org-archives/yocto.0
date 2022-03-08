Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E9FC433F5
	for <webhook@archiver.kernel.org>; Tue,  8 Mar 2022 15:55:25 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web08.9467.1646754924803632875
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 07:55:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=yBWB3Gc9;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.175,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f175.google.com with SMTP id z3so8967479plg.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 07:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4X3WQp2gKiU47HqbJR7JI3YT5Mk1ecwfopURUwDpaxo=;
        b=yBWB3Gc97IlYvXcQ+v6jCuJMART7jbURmgcqiGv8ZQ2KUBHzrp5QzkLnWliSAJC0oM
         DFq0m8K+tWK8mQikN1G5RKGWWrfDl4UW6/EVab/7Y+vRUVV/q0MPjiLwn/Zd7W2cNVHB
         Ytf5Pc9gyR8TPOT+cJFcOHPq1iCAtTE6q6QKor5CBZTnQ1byMO/4mL+c4AAevq16n24c
         ZWAlcBxpYlPGTrR6O7PqmFjMcuSNdDE3bOGcX9F9sfk/7ygmMUpeR70XSASBf9d44OHi
         nCUkWoHrW7F4VxXjqmzeDov+7KO4eydVw2iJfSviLpLq0yPL7nZ+XtUbyjtwzndlxgoF
         Wy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4X3WQp2gKiU47HqbJR7JI3YT5Mk1ecwfopURUwDpaxo=;
        b=niGkl0Z1ubZhVwztvzTXPJYSCxaGIpGSELzUaojeXOccwXr8VLjT72zaHia2xpmn7U
         4qux7TS6sU3j2BCBUiurmwbYvvIEN/BQhYVbOY5u0bDXN94QmH8k9hcmvnoqRWI4iPXa
         KIQWBjAWQSeax4MAaBv4uCdeR+SS0qa8UypaR7tttjYXl2ni2GTX/d48l2SsAvgFq366
         ArPqqQbpgsHXp+29eoVsV0YjbbjWRxHi8CeFNCnLMONVZ8P1j07N4w2MQcVW8F8urEc7
         k5MrnW9+UZXaXK5ir0hXoheB6rExoJA0z+bT/EaCIBlMzGK9LnPsCC70DHBbi450chq1
         LbAw==
X-Gm-Message-State: AOAM533cg0XDms1yMDtmlCt8+O1iTnHa5KqLlSSCdhVdwRcnVP6p/QTM
	edbuEDQKCcTTwrG/3mI4rT4bG7QV2Jbh+aAZUHg=
X-Google-Smtp-Source: 
 ABdhPJxuVVEPw1esbfo/egJTA3Jt9NiP+0JCkcTqDiP2Br4G3aq/0uqE/G8D/bZWI0wCPxhDc/GYiA==
X-Received: by 2002:a17:902:bc8c:b0:151:8278:d2bf with SMTP id
 bb12-20020a170902bc8c00b001518278d2bfmr18298170plb.114.1646754923377;
        Tue, 08 Mar 2022 07:55:23 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 k12-20020a635a4c000000b0037852b86236sm15285658pgm.75.2022.03.08.07.55.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 07:55:22 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: enable alma8, fedora35,
 and opensuse153 workers for dunfell
Date: Tue,  8 Mar 2022 05:55:08 -1000
Message-Id: 
 <44750c19783bb61628f89cdc1d770811357f7002.1646754822.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1646754822.git.steve@sakoman.com>
References: <cover.1646754822.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Mar 2022 15:55:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56388

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 7e15105..d2aa793 100644
--- a/config.py
+++ b/config.py
@@ -152,7 +152,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 workers_prev_releases = {
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : (""alma8", centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.25.1


