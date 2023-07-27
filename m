Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1721C00528
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 18:08:01 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.14477.1690481272956323515
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 11:07:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=E0T1vURw;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-577497ec6c6so14076227b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690481272; x=1691086072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGUdnHZT/MBG2x9juVoiPAOeOITzH7n0VSK1nLtbmZs=;
        b=E0T1vURwJ6S4ZR/FwBhWx38J9RLANP6kIcdRR5pPvFSVJYgpJPi67cG7QFzlD5/uvy
         ItMkjgNY877dD8oyFbiAwA/vA8CCg0LyBzRLkks1/b+SfUJv2w0elvY56PQNRYwGRTSS
         EeBFUPNS/UZlBe3TYyXisF9J/9cZlZZlAZWq3mq359m5hyFgpoUaFItf1vKBm01zepBQ
         TNcMo1dGBgf1AxU/emvLdEAG5nBDgbsx/wUVi32KT2B0RIHq0H93zEaBn3SrDOfOsHkx
         qbCwa0my14hgeycjm6M/45StedHV0/JcUSumM8NAEQwTkZBh8vQEPs/D7NM4yXmhiN34
         OI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690481272; x=1691086072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGUdnHZT/MBG2x9juVoiPAOeOITzH7n0VSK1nLtbmZs=;
        b=mBtHYHvAScxbTQlRqMnMA6WENmj11Imepco0/jINeRxN0zfBP4aT1rfDwr17L6wi19
         n77fttQJb4bi5TO3hmgNqQJg9EAM9CeBjefdFrhzPcigeAMCivGJD8GIWDVIVjgItVNm
         3Ic7clhziYOpY8wY0QZovP7lnNL/Z8A/MFGT9YRrlsq+zqmDOkUatOBe1WJullbeT4qo
         +kcLCiIdwxZljaYXiehhuZSY6TWN++WxndlmgAX5vI7qQ6M2G+bRUNDyR1b+AYcbB+Pv
         M3M8WC+nCxpn3E2thtDp2H6EYbhYbkkr6wx6qCIxhKBm4y/m1d5ki6NriDlWW/54CcSd
         ts1A==
X-Gm-Message-State: ABy/qLZStHIaexnnKf8yIp4+hRXDxsIJqPL3FtEgInCCKB4qF375HaaE
	/PnferGQFqHBzDNt88aq1vHNPNp6cIk=
X-Google-Smtp-Source: APBJJlFEgJka1mzXQU1PWMTsPEcwGnhI0dJXNpJlc42nUun8l8YEWuzwii6t9WAV8dBx3S2IFyBwMw==
X-Received: by 2002:a81:a20b:0:b0:579:ecfd:bb90 with SMTP id w11-20020a81a20b000000b00579ecfdbb90mr70869ywg.1.1690481271952;
        Thu, 27 Jul 2023 11:07:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1:6648:c79a:5757])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0058461c9524fsm558361ywf.12.2023.07.27.11.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 11:07:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Yi Zhao <yi.zhao@windriver.com>,
	Joe MacDonald <joe@deserted.net>,
	Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][patch 2/4] audit: set correct security context for /var/log/audit
Date: Thu, 27 Jul 2023 14:07:46 -0400
Message-Id: <20230727180748.107196-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727180748.107196-1-akuster808@gmail.com>
References: <20230727180748.107196-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 18:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60665

From: Yi Zhao <yi.zhao@windriver.com>

By default /var/log is a symbolic link of /var/volatile/log. But
restorecon does not follow symbolic links then we will encounter the
following error when set /var/log/audit directory:

$ /sbin/restorecon -F /var/log/audit
/sbin/restorecon: SELinux: Could not get canonical path for /var/log/audit restorecon: Permission denied.

Use readlink to find the real path before set security context.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
(cherry picked from commit 8b79480663bc9de2343e0146ed8d3d0e59ab48be)
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/audit/audit/auditd | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 mode change 100755 => 100644 recipes-security/audit/audit/auditd

diff --git a/recipes-security/audit/audit/auditd b/recipes-security/audit/audit/auditd
old mode 100755
new mode 100644
index cda2e43..6aa7f94
--- a/recipes-security/audit/audit/auditd
+++ b/recipes-security/audit/audit/auditd
@@ -86,7 +86,7 @@ do_reload() {
 
 if [ ! -e /var/log/audit ]; then
 	mkdir -p /var/log/audit
-	[ -x /sbin/restorecon ] && /sbin/restorecon -F /var/log/audit
+	[ -x /sbin/restorecon ] && /sbin/restorecon -F $(readlink -f /var/log/audit)
 fi
 
 case "$1" in
-- 
2.34.1


