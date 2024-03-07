Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 290E2C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 16:43:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.28238.1709829769372112121
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 08:42:49 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 137001FB
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:43:26 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF5393F738
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:42:48 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper 3/3] scripts/abint: fix sorting on initial display
Date: Thu,  7 Mar 2024 16:42:45 +0000
Message-Id: <20240307164245.783037-3-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307164245.783037-1-ross.burton@arm.com>
References: <20240307164245.783037-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 16:43:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62697

From: Ross Burton <ross.burton@arm.com>

The default sorting was based on the list of seen times, but it should
be based on the latest seen time.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/abint/abint.html.j2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/abint/abint.html.j2 b/scripts/abint/abint.html.j2
index f531649d..580a4a35 100644
--- a/scripts/abint/abint.html.j2
+++ b/scripts/abint/abint.html.j2
@@ -56,7 +56,7 @@
         </tr>
       </thead>
       <tbody>
-        {% for bug in bugs|sort(attribute=3D"seen", reverse=3DTrue) %}
+        {% for bug in bugs|sort(attribute=3D"latest", reverse=3DTrue) %}
         <tr>
           <th scope=3D"row"><a href=3D"http://bugzilla.yoctoproject.org/=
{{bug.id}}">{{bug.id}}</a></th>
           <td>
--=20
2.34.1


