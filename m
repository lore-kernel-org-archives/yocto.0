Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E031E00AB6; Mon, 12 Sep 2016 17:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F10E00A4B
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 17:19:23 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b187so15856616wme.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 17:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=N1dKuQ1Ehmbjqq9gcYHvetc5MXiAafBigav6bjgZScg=;
	b=lmniYYKBFDDYRhmId+VRppvc6Xi0Km5anQ4eIAHT1F0yFIvRlCOgc5JkIuSfT2kC00
	pPUXyS3zd/hrci3OgewwMsseAMDgvGhsT83SZYIqJRDel0xbOT0mv+urkdl3RrJZDspp
	qW9QKADM0vhwwiyydQjZjKRmrj8T4ZmhSOfInizdR7xjHfEfFoUYHDR816l8NYfQaTfN
	FdFWLJbnd/eVxB3mHAjsi/15PZ5RIPp0OKIIrNT6325HXOn/56u9vyVGdW6dFcMrk6zU
	ApgyjqV/kynz5vs8eJNX+2reOg41sbrwBJmc+p34g1YrmVzhrMQ8m/joEv0EZI1aOdu3
	x0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=N1dKuQ1Ehmbjqq9gcYHvetc5MXiAafBigav6bjgZScg=;
	b=NwfvMkoWGMbUeaCChrureXL1xO2J01O+/4+Plw6knHdhUr5L+uEnH+hTthE2F4iFNi
	4/IY1V3qzgdiAyXEQU2CzqQxNWxPTZ3gME50w04voDKjKhdCNW7x6IOIUXwhDr2at0PR
	Xr2mDOBSheXgx7sbEMncY/qwJ6gHY+w5pfZS3+Kz2WCl7gNlD0uLvSVuEDykJ+ijhaeG
	wNT3eOnebFeQj7jSmTg82EFDabsrW6O7ubgEv7WojZyDtDY76ax6vzFT9dcx32B+pchy
	vnQdvyDsajbs6yBh1/Jrs34tmXN5Vp2r8vY0uSfdI/gv2zXCeCpWtFNmutfDZPzzbjkF
	WQBw==
X-Gm-Message-State: AE9vXwMiZQuxml/EeE4VugLqiZ/FfrVRSh2ni4GlxvxrjgHg0EjnvAdX9+vZ28cPyAjRug==
X-Received: by 10.194.95.105 with SMTP id dj9mr18978564wjb.20.1473725962168;
	Mon, 12 Sep 2016 17:19:22 -0700 (PDT)
Received: from localhost.localdomain (p5B0A2F98.dip0.t-ipconnect.de.
	[91.10.47.152]) by smtp.googlemail.com with ESMTPSA id
	e5sm2555295wma.13.2016.09.12.17.19.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Sep 2016 17:19:21 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Sep 2016 02:19:05 +0200
Message-Id: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: remove stamp file
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
X-List-Received-Date: Tue, 13 Sep 2016 00:19:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

stamp files are not of much use and this patch fixes:
ERROR: kde-base-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 3fad6675b6fcc6b048099609adf21967 versus f0665d2ea6d2db2359c456c60a33e52e for /home/superandy/data/oe-core/sources/meta-misc/recipes-image/kde/kde-base-image.bb.do_image_rpi_sdimg
ERROR: Taskhash mismatch 3fad6675b6fcc6b048099609adf21967 versus f0665d2ea6d2db2359c456c60a33e52e for /home/superandy/data/oe-core/sources/meta-misc/recipes-image/kde/kde-base-image.bb.do_image_rpi_sdimg

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 classes/sdcard_image-rpi.bbclass | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index a04204a..f506858 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
-IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
-
 RPI_KERNEL_VERSION := "${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
 
 IMAGE_CMD_rpi-sdimg () {
@@ -145,10 +141,6 @@ IMAGE_CMD_rpi-sdimg () {
 		done
 	fi
 
-	# Add stamp file
-	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
-	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
-
 	# Burn Partitions
 	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-- 
2.5.5


