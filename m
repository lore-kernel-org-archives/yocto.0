Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 79E5BE00738
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 09:55:37 -0800 (PST)
Received: by mail-ea0-f178.google.com with SMTP id a14so2420661eaa.37
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 09:55:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=dVNKvnHDQH/gQVkqEdtE3sszacnTbKDTqvcoFb5HvJk=;
	b=gmQf2KOcOaxP3XDWIaS3fKYWZG4Gwz56CHJFHmEUgz1fe1evDc/OfY/X+B1dRbZ7LA
	ntskiSQuFhHjhVngL37jW+6JVRxx9nwAUfp4TvBo7CnQoZ2ROB9zGgRx3vLEQ2yTIhA7
	KOtu4yrMlgtKMVGvYegoEpv/DuSroKAoHja9q3qQasT3T3ZIGOAxH5lEgub+i88eX0wt
	m+3h50K+O/JpKqjmY24dQIlRvTe74Dhxc783R3x1fBAMjAGQwyrnFePvY4uOmzKrvfMj
	njneoRG/Y0ZvDjBUgmWN723kIvDB1TV5NKgap17eIqttXAe41IWEme33oiPqDKtFBHoV
	iNYQ==
X-Received: by 10.14.204.71 with SMTP id g47mr16755930eeo.25.1360518935487;
	Sun, 10 Feb 2013 09:55:35 -0800 (PST)
Received: from localhost.localdomain (5-13-217-124.residential.rdsnet.ro.
	[5.13.217.124])
	by mx.google.com with ESMTPS id k7sm55695647een.8.2013.02.10.09.55.33
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 10 Feb 2013 09:55:34 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 19:55:27 +0200
Message-Id: <1360518927-20296-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQlC8gVi/GVv/6EdKLWYK72GDQPkCOf0h9WNHXu/3v6XUjPP+KZZoFOXQMruDjKPjjDEJlPG
Subject: [meta-raspberrypi][PATCH 1/1] rpi-first-run-wizard: Fix RDEPENDS warning
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
X-List-Received-Date: Sun, 10 Feb 2013 17:55:37 -0000

WARNING: QA Issue: [...]/rpi-first-run-wizard.bb:
Variable RDEPENDS is set as not being package specific, please fix this.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-extra/startup/rpi-first-run-wizard.bb |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-extra/startup/rpi-first-run-wizard.bb b/recipes-extra/startup/rpi-first-run-wizard.bb
index c5cef7c..6ede56e 100644
--- a/recipes-extra/startup/rpi-first-run-wizard.bb
+++ b/recipes-extra/startup/rpi-first-run-wizard.bb
@@ -3,11 +3,11 @@ LICENSE = "GPLV2"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 DEPENDS = "zenity dbus"
-RDEPENDS = "slim sudo zenity dbus"
+RDEPENDS_${PN} = "slim sudo zenity dbus"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = " \
           file://LICENSE \
-- 
1.7.9.5


