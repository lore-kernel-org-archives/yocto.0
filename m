Return-Path: <seth.boll@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D01E014D8
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 18:00:33 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id wc20so2096997obb.5
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 18:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=TKPHZXh+Yt4tZAL5I1e/4wdt9QqhcGmntY4g0DuhqQw=;
	b=SBmkwzGXFqhFbXGDCdqwzhy8K1ZTQKo8QrnnXkCujmZSmi/HxImIewkqtOQ/cp0DTs
	4VRWjaUsCIGZd+t/bnt7AmX6C2NTQwaanEbZ1jYYaN/jarxyV16UNRNL0Q7KMRr/jbep
	MbYhQs1dah/PEN2eAug7bYrDB1djYnRuEBHi9XOk/McMJ8VpZraQOlABPGsx06biqpXx
	XmIYvkRL15p96YigKH9zVdySQcTUcGjGRqO6jcAXthK39lpiA/pc4+Vv/1zFwfdi+Tpg
	YUtS34elCOmlS7lN9eZ2k7ikMb3T9XbYCnWTY5og+Xyn9kvfGwUXl8MgB+321+jbTjz6
	SPXQ==
X-Received: by 10.60.18.233 with SMTP id z9mr19283853oed.19.1366851632421;
	Wed, 24 Apr 2013 18:00:32 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id dt3sm2559510obb.12.2013.04.24.18.00.31
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Apr 2013 18:00:31 -0700 (PDT)
Message-ID: <51788031.7080701@gmail.com>
Date: Wed, 24 Apr 2013 20:00:33 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.7 (Macintosh/20130119)
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Thu, 25 Apr 2013 01:00:33 -0000
X-Groupsio-MsgNum: 13418
Content-Type: multipart/mixed; boundary="------------070008090607050608010702"

--------------070008090607050608010702
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When the shell tests for rootfs type I was seeing "[[: not found".  I
use echo and egrep to test for the xz rootfs type to work around this
error.

Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
---
  classes/sdcard_image-rpi.bbclass |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass 
b/classes/sdcard_image-rpi.bbclass
index 421f561..7fe7c35 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -99,7 +99,7 @@ IMAGE_CMD_rpi-sdimg () {
      # Burn Partitions
      dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 
bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
      # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-    if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
+    if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
      then
          xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 
bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 
1024) && sync && sync
      else
-- 
1.7.2.5

--------------070008090607050608010702
Content-Type: text/plain; x-mac-type="0"; x-mac-creator="0";
 name="0001-sdcard_image-rpi.bbclass-Fix-error-in-conditional-te.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-sdcard_image-rpi.bbclass-Fix-error-in-conditional-te.pa";
 filename*1="tch"

From 26b0b8b79376eea69aeaf91daf43bc6807a09dd0 Mon Sep 17 00:00:00 2001
From: Seth Bollinger <seth.boll@gmail.com>
Date: Mon, 22 Apr 2013 07:23:45 -0500
Subject: [PATCH 1/2] sdcard_image-rpi.bbclass:  Fix error in conditional test

When the shell tests for rootfs type I was seeing "[[: not found".  I
use echo and egrep to test for the xz rootfs type to work around this
error.

Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
---
 classes/sdcard_image-rpi.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 421f561..7fe7c35 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -99,7 +99,7 @@ IMAGE_CMD_rpi-sdimg () {
 	# Burn Partitions
 	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-	if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
+	if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
 	then
 		xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	else
-- 
1.7.2.5


--------------070008090607050608010702--
