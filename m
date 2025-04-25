Return-Path: <youngseok1.jeong@lge.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F523C369D1
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 08:48:37 +0000 (UTC)
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.52])
 by mx.groups.io with SMTP id smtpd.web11.2425.1745570915575238227
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Apr 2025 01:48:36 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: lge.com, ip: 156.147.23.52, mailfrom: youngseok1.jeong@lge.com)
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.52 with ESMTP; 25 Apr 2025 17:48:32 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: youngseok1.jeong@lge.com
Received: from unknown (HELO ys-server..) (10.177.121.106)
	by 156.147.1.121 with ESMTP; 25 Apr 2025 17:48:32 +0900
X-Original-SENDERIP: 10.177.121.106
X-Original-MAILFROM: youngseok1.jeong@lge.com
From: youngseok1.jeong@lge.com
To: yocto@lists.yoctoproject.org
Cc: Youngseok Jeong <youngseok1.jeong@lge.com>
Subject: [error-report-web][PATCH] views: Increased send-error-report version check scalability
Date: Fri, 25 Apr 2025 17:48:30 +0900
Message-Id: <20250425084830.741984-1-youngseok1.jeong@lge.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 08:48:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65251

From: Youngseok Jeong <youngseok1.jeong@lge.com>

The following error occurs due to incorrect url encoding caused by the
version increase (0.4) of send-error-report.
ERROR: HTTP Error 500: OK
DEBUG: Response Content: {"error": "Invalid json"}

This patch changes the version checking to be a bit more extensible.

Signed-off-by: Youngseok Jeong <youngseok1.jeong@lge.com>
---
 Post/views.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Post/views.py b/Post/views.py
index 3575c1d..9d24686 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -50,8 +50,9 @@ def addData(request, return_json=False):
     response = ''
     if request.method == 'POST':
         user_agent = request.META.get("HTTP_USER_AGENT", "")
+        user_agent_version = user_agent.split("/")[-1]
 
-        if "send-error-report/0.3" in user_agent:
+        if user_agent_version >= "0.3":
             data = request.body
         else:
             # Backward compatibility with send-error-report < 0.3

