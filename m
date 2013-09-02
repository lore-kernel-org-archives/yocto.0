Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12CC5E01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 13:12:11 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id y10so3957139wgg.24
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 13:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=c7qrFMvFhX/tUF2ePLZlcUvWAUuFt0B/c61noeod/NQ=;
	b=jGo/Yjc1zfo8U5uWbOZenKSbcfipOpwz5Sz4oLcK/NlleuaHwNe9d8Pimr3Nbio+Bk
	1S11EEEYrFtgwbRMKb05pz4AZtmGYDlkMpEd7codbdOERX6HyyD5JCmapGyjesUf5GfU
	V4ED5qgyenD23X/V/h2ltrojVB+AgWJHX0+n+ybr2+dBfhUMkNlCt2b/hAdSUtyz5gab
	McTMta2dQHCPMJmT8Q+/awDDW1U6ANWe6qD3VdR0RfCQZy4v1EAOkIQI1vEq/dMVtyQc
	XjkB6iAUnfnLDRpBJn2xwvj3cB/MMXFua7tGaNwsqqjIRL5bB35J7ggXXHb4hDvltZUV
	eAEw==
X-Received: by 10.180.13.83 with SMTP id f19mr14997255wic.54.1378152730794;
	Mon, 02 Sep 2013 13:12:10 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id a8sm20789514wie.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 13:12:10 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Sep 2013 21:11:49 +0100
Message-Id: <1378152710-10291-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.4
In-Reply-To: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
References: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH v2 1/2] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Mon, 02 Sep 2013 20:12:16 -0000

Image files will typically contain lots of null blocks and should compress well.
This will help with distribution of images over slow network links.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 README                           |  2 ++
 classes/sdcard_image-rpi.bbclass | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/README b/README
index db88066..6f947c7 100644
--- a/README
+++ b/README
@@ -112,6 +112,8 @@ How to use it:
 	IMAGE_FSTYPES = "tar.bz2 ext3.xz rpi-sdimg.xz
 2. Overwrite SDIMG_ROOTFS_TYPE in local.conf
 	SDIMG_ROOTFS_TYPE = "ext3.xz"
+3. Overwrite SDIMG_COMPRESSION in local.conf
+	SDIMG_COMPRESSION = "xz"
 *Accommodate the values above to your own needs (ex: ext3 / ext4).
 
 2.B. Optional - GPU memory:
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index a2fcd52..3ee4e94 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -50,6 +50,13 @@ IMAGE_DEPENDS_rpi-sdimg = " \
 # SD card image name
 SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 
+# Compression method to apply to SDIMG after it has been created. Supported
+# compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdimg file
+# is kept and a new compressed file is created if one of these compression
+# formats is chosen. If SDIMG_COMPRESSION is set to any other value it is
+# silently ignored.
+#SDIMG_COMPRESSION ?= ""
+
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
@@ -107,6 +114,19 @@ IMAGE_CMD_rpi-sdimg () {
 	else
 		dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
 	fi
+
+	# Optionally apply compression
+	case "${SDIMG_COMPRESSION}" in
+	"gzip")
+		gzip -k9 "${SDIMG}"
+		;;
+	"bzip2")
+		bzip2 -k9 "${SDIMG}"
+		;;
+	"xz")
+		xz -k "${SDIMG}"
+		;;
+	esac
 }
 
 ROOTFS_POSTPROCESS_COMMAND += " rpi_generate_sysctl_config ; "
-- 
1.8.4


