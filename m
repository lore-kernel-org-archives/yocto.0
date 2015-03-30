Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D699E007A0; Mon, 30 Mar 2015 13:51:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E0E5E00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 13:51:32 -0700 (PDT)
Received: by yhfw71 with SMTP id w71so9767398yhf.2
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 13:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=YiTQIhXyjGvEvWemcgLWyBu4OYv5o40863Co2dMfCAc=;
	b=Z1fo0l0GJOLKo0jp0v2jnhr2DMFoHedJSrH0XEjBQZMVnJ0heiNxfGO2rQFdyazivs
	A013ULLme5fAS0Ve/F2VLvja5mH2Y86nh2NIMRV2d5vDW6IPVKeipPrnW02IyEYn9ufJ
	oCX7dSr6pyvQzLnP0Xnc5rK4YGpuqQhJJk/DiWI6AIotAqK4dUVA6TYnmCHaCcnmTuPH
	dfAF/FEcnNUtLzzsmPMLpiVVRcRYM/Ic6uru6U73+3viWXkXvzfFqe/yDl7gS8R2Z4PD
	XvlWuWMvulqIDXjvzRMEXDRp9MzCdLKMK3OuMa+QLDgcVlog6reAobU5rqOoypeSV+wq
	Q8uw==
X-Received: by 10.236.222.105 with SMTP id s99mr27764955yhp.160.1427748691759; 
	Mon, 30 Mar 2015 13:51:31 -0700 (PDT)
Received: from speedy.75.75.75.75
	(173-10-226-189-BusName-WestFlorida.hfc.comcastbusiness.net.
	[173.10.226.189]) by mx.google.com with ESMTPSA id
	g55sm11462298yhb.37.2015.03.30.13.51.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Mar 2015 13:51:31 -0700 (PDT)
From: Chris Hallinan <challinan@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Mar 2015 16:50:53 -0400
Message-Id: <1427748653-20274-1-git-send-email-challinan@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] Gracefully abort if rootfs.img gets to big
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
X-List-Received-Date: Mon, 30 Mar 2015 20:51:35 -0000

See https://bugzilla.yoctoproject.org/show_bug.cgi?id=7541

Current implementation of live image type cannot support image size
greater than 4GB. If the image gets too large, the build simply 
hangs silently, without any clues or debug output to indicate why.
This patch prevents the build hanging on rootfs.img getting too big.

---
 meta/classes/bootimg.bbclass | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index b1c03ba..e143e24 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -84,6 +84,13 @@ populate() {
 	fi
 
 	if [ -n "${ROOTFS}" ] && [ -s "${ROOTFS}" ]; then
+		ROOTFS_FILE_SIZE=`stat -L -c "%s" ${ROOTFS}`
+		bbnote "do_bootimg(): rootfs.img size = ${ROOTFS_FILE_SIZE}"
+		# Actual limit is difficult to determine
+		# This leaves ~128MiB headroom for initrd and boot files
+		if [ ${ROOTFS_FILE_SIZE} -gt 4160800000 ]; then
+			bbfatal "Root fs (rootfs.img) is too big for live image"
+		fi
 		install -m 0644 ${ROOTFS} ${DEST}/rootfs.img
 	fi
 
-- 
1.9.1


