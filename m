Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ye0-f181.google.com (mail-ye0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2594E002AB
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 11:58:05 -0800 (PST)
Received: by mail-ye0-f181.google.com with SMTP id m11so1348342yen.12
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 11:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=ok2iSQHcwUZLHBlB5KR4DKZbAUzP6Cq5XPh9sml24aI=;
	b=LSMqOYGYUq675ejNTPgATvZURJ0kBnTah5jYxps9qO91mNe4OLPAcEohm/P1NFJvkR
	rxEjRhloq5wQbEKdxRn6AbMgLAzWhlaF8EJRfu/R/HARCNTuI5lKgUe9QeUUanJN2B6S
	DzPrIL7bQOQoceUADCMJvebzW/MSv44vBI6wFdwPx8tXHfywz7NA2a4vDGl3GBg6sDCG
	u1ug+g0ELd5Ub1DMWsAjbDsJc1kCHO9gBJe0dS9mbu69Dz8Dzzpid+M5hCxFkpFdk5iK
	M+ZXVege9OfQa4MX68rWoIABn7EAr0pDNYMFOzu2DtRrbV/ji+YqD7KKoK9dhq1ejwJA
	1XXQ==
X-Received: by 10.236.132.9 with SMTP id n9mr23156562yhi.78.1356465485241;
	Tue, 25 Dec 2012 11:58:05 -0800 (PST)
Received: from nano.home ([187.112.205.158])
	by mx.google.com with ESMTPS id g77sm22446962yhi.14.2012.12.25.11.58.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 25 Dec 2012 11:58:04 -0800 (PST)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 25 Dec 2012 18:01:26 -0200
Message-Id: <1356465686-3848-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 1.7.10.4
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH] distro/poky: Add "Debian GNU/Linux 7.0 (wheezy)" as know distribution
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Dec 2012 19:58:06 -0000

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index a2ba9da..1d4e6f2 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS release 5.8 (Final) \n \
             CentOS release 6.3 (Final) \n \
             Debian GNU/Linux 6.0.6 (squeeze) \n \
+            Debian GNU/Linux 7.0 (wheezy) \n \
             openSUSE 11.4 \n \
             openSUSE 12.1 \n \
             openSUSE 12.2 \n \
-- 
1.7.10.4


