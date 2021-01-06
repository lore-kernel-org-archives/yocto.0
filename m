Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7982.1609940344426935943
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 05:39:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=bdKCpMkK;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C07A538C05C1
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2021 13:39:03 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id r4so1545452pls.11
        for <yocto@yoctoproject.org>; Wed, 06 Jan 2021 05:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=5qljY+nDrTeSvNjxCWqORODEQJPjed0lYUfz/BXpKHw=;
        b=bdKCpMkKeXnvxzSvth9Y3neJLDXoOSIyvl6einvMdKv+dansWwR1+PjreWjMn0EYmk
         GShkEIc14VHuyxAuCpIyHokIwuKlYaw+Wc1uXbf7SldauaxmVqEAXB5R1VpmzKrVrPUD
         pINjk/feu4Y6VL6fhJ2klg0Re7qQGYy1VZDn+sWsi+Z/yR8tKSGHrbBhFkocPKDhMowQ
         Yf9NzGfKGkqNR6ZPy7/h58PK6RpGdWa1eD1toDeLcGrggnK9XCEN/aHD1TrjLmGHXyS9
         SwkXipnzXfjtGBzOjB8S+AUVgH4XX3OHzXa7VdaCLeJOtuEHpbJoPv6OGpCfk9pUjiWs
         LLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=5qljY+nDrTeSvNjxCWqORODEQJPjed0lYUfz/BXpKHw=;
        b=qjJSPXPQAnHV/MndH9A4tJEPI26ntJyzQ1zRL6N2zKxg9LgjXniYEvndoEwdOWuEN4
         I+4tIPxbT/ey0cUz12ofcnLCgJWBMjzHYu0ufT2f9CUFMLLoHSqFsntVWyZaGA1xm+Xm
         dVgt3gFvsQYLMXIAYfr7r3aIU137peOmmEFrBsmQNXulJQuXDZGsp/LiO/1GicdQ2Ind
         FW4UzKCrAN1RpRsCddi+T1tHddohvWPlvFSi28wkyD++2sQMKtPq68/PJJ0pEcz8YSfp
         hzUIZD6mvDQdhGE2ZC5QYNakZWigL5YVp8qZ34mGf6gSuwwuO3EWQe0G6hNbTbyP0nX4
         JgDA==
X-Gm-Message-State: AOAM531BFqx3iTMo34pVD+Ryoj04ieZ69/nTJpbXN6Yb7UtaEgHXd+5t
	wFr/p1fNDMKERupjVnwFEFq/Hwk3HKYBtg==
X-Google-Smtp-Source: ABdhPJzTUb0qenry1qQVCmqqkiIy7PPapFQgJP/5yY4aQZk4IVb2FmdlD95VqaDVxefRgxXQFXattA==
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr4404923pjs.47.1609940342794;
        Wed, 06 Jan 2021 05:39:02 -0800 (PST)
Received: from dell-latitude.mvista.com ([103.102.57.109])
        by smtp.gmail.com with ESMTPSA id a136sm2943716pfd.149.2021.01.06.05.38.55
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 05:39:02 -0800 (PST)
From: "Milan Shah" <mshah@mvista.com>
To: yocto@yoctoproject.org
Subject: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
Date: Wed,  6 Jan 2021 19:08:37 +0530
Message-Id: <1609940317-21943-1-git-send-email-mshah@mvista.com>
X-Mailer: git-send-email 2.7.4

Instead of just providing local.conf info, add layer names and their
revisions with bitbake version information into error report
makes it easier to understand and reproduce failed build.

[YOCTO #9700]

Signed-off-by: Milan Shah <mshah@mvista.com>
---
 meta/classes/report-error.bbclass | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/classes/report-error.bbclass b/meta/classes/report-error.bbclass
index 1a12db1..9cb6b0b 100644
--- a/meta/classes/report-error.bbclass
+++ b/meta/classes/report-error.bbclass
@@ -6,6 +6,8 @@
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
+inherit base
+
 ERR_REPORT_DIR ?= "${LOG_DIR}/error-report"
 
 def errorreport_getdata(e):
@@ -64,6 +66,8 @@ python errorreport_handler () {
             data['failures'] = []
             data['component'] = " ".join(e.getPkgs())
             data['branch_commit'] = str(base_detect_branch(e.data)) + ": " + str(base_detect_revision(e.data))
+            data['bitbake_version'] = e.data.getVar("BB_VERSION")
+            data['layer_version'] = get_layers_branch_rev(e.data)
             data['local_conf'] = get_conf_data(e, 'local.conf')
             data['auto_conf'] = get_conf_data(e, 'auto.conf')
             lock = bb.utils.lockfile(datafile + '.lock')
-- 
2.7.4

