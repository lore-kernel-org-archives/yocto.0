Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ACF9E01562
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 19:38:12 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id c10so30132530ieb.10
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 19:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=d1XiZSdJCLz9p7kMcKqL2kpIjGpJKpUJrSbhRd3lcrE=;
	b=o+y064lyoGOxAvRTPEEJzhgP+FoNtQrQdJTS9SDOLhhhITwTONvXCxgk+ZJ9KtRPj1
	f/+n/0yM1SPVd+vXimzB2RwhdssNOfEp8Cw3J3qxFDQU6fa7kOvTvnttOsCogDeZtdpf
	kRobXXyyx5CYADk2tOWwb1I6QBSRsuz+Q4Pkytux3jn9pgwKms07GHATZfl5KrYIHaA/
	+ymJ3nfJa9fdZkJuvwkTeOpX/S8/2aY/SqJdw6wub7iAQcLyOKsJcNMkY7fdEy+rTTPM
	xLG99O1e+eDqmC5Z5mvPfQqn02jvk9WDE3roOt4toIDbOniabV7qpwdWyBsyDkGoZCnD
	2Rbg==
X-Received: by 10.50.114.229 with SMTP id jj5mr1080899igb.36.1372214291979;
	Tue, 25 Jun 2013 19:38:11 -0700 (PDT)
Received: from suse64-i7.site (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPSA id ri10sm6335026igc.1.2013.06.25.19.38.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 19:38:11 -0700 (PDT)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 22:37:49 -0400
Message-Id: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 1.8.3.rc1.44.gb387c77
X-Gm-Message-State: ALoCoQlbNvT8tzxIZGxKbiW1HuKgEwAWHe8lunwutRyDVrkcWMzDlSFKbx2ZWAY29CFapD0pxR4P
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH] dev-manual: referencing bugzilla issues
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Jun 2013 02:38:13 -0000

Based on observations from the various mailing lists, it is obvious that
bugzilla issues are almost always referenced using square brackets.

Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
---
 documentation/dev-manual/dev-manual-newbie.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 0c849f5..55e0c58 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -1405,7 +1405,7 @@
                 references - any commit that addresses a specific bug should include the
                 bug ID in the description (typically at the beginning) as follows:
                 <literallayout class='monospaced'>
-     Fixes YOCTO #&lt;bug-id&gt;
+     [YOCTO #&lt;bug-id&gt;]
 
      &lt;detailed description of change&gt;
                 </literallayout></para></listitem>
-- 
1.8.3.rc1.44.gb387c77


