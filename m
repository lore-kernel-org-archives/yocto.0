Return-Path: <otavio.salvador@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 888984C800FB
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 13:27:38 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so366864gwj.35
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 11:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer; bh=tfEWQUWgyiTokF4jNP3TVg6XZB1fOYU+pii7GdlG5TA=;
	b=XpUZQ+zQP+kh46veSgzvkjbJ8ebISGXgKS5EJqklRp9UjfjLRQeLgnY4kywfHy2V+0
	8uLByITnW8Th5dzAS1d++0+bo8o4rmgG8tfl5ku2AHvOIHFYqzpnm6kSjHeDvipr/nOE
	yDcBtk35+o7QkUXaQ9KC4YR8Hs0O5g6K+9eNI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=t5hIbu96eipSXJy10XRoYJGNQGLv2/76e5qslbyMJfb966vVxfEtF5K+sCQrEunLCu
	y0BggYYwYJL0KWxj2geospD4jEW39gV+qgQ7S0mkOyRTmK50Dr2O6cfAH99pjtVDuBzG
	edqqs+FiUunRHldPUxvTe4zD7EADlklpcSR7k=
Received: by 10.236.183.132 with SMTP id q4mr930495yhm.329.1305656858038;
	Tue, 17 May 2011 11:27:38 -0700 (PDT)
Received: from localhost.localdomain ([189.114.111.55])
	by mx.google.com with ESMTPS id l27sm312009yhn.87.2011.05.17.11.27.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 17 May 2011 11:27:36 -0700 (PDT)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 17 May 2011 18:27:25 +0000
Message-Id: <1305656845-15849-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 1.7.2.5
X-Mailman-Approved-At: Tue, 17 May 2011 13:40:05 -0500
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH] README.sources: use git.yoctoproject.org as server for the BSP repository
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
X-List-Received-Date: Tue, 17 May 2011 18:27:38 -0000

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-crownbay/README.sources     |    2 +-
 meta-emenlow/README.sources      |    2 +-
 meta-fishriver/README.sources    |    2 +-
 meta-jasperforest/README.sources |    2 +-
 meta-n450/README.sources         |    2 +-
 meta-sugarbay/README.sources     |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-crownbay/README.sources b/meta-crownbay/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-crownbay/README.sources
+++ b/meta-crownbay/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-emenlow/README.sources b/meta-emenlow/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-emenlow/README.sources
+++ b/meta-emenlow/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-fishriver/README.sources b/meta-fishriver/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-fishriver/README.sources
+++ b/meta-fishriver/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-jasperforest/README.sources b/meta-jasperforest/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-jasperforest/README.sources
+++ b/meta-jasperforest/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-n450/README.sources b/meta-n450/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-n450/README.sources
+++ b/meta-n450/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-sugarbay/README.sources b/meta-sugarbay/README.sources
index 8814e70..5c8b5c7 100644
--- a/meta-sugarbay/README.sources
+++ b/meta-sugarbay/README.sources
@@ -14,4 +14,4 @@ addition to the code contained in this BSP, can also be found at the
 following locations:
 
 git://git.yoctoproject.org/poky.git
-git://git.pokylinux.org/meta-intel
+git://git.yoctoproject.org/meta-intel
-- 
1.7.2.5


