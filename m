Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96253E00BE0; Mon, 12 Sep 2016 19:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78827E00B78
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:06:19 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id ph5so2408114pab.1
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Ce4U7lr16ZsWnmLmYgX9cMTjh7prKk2uze3ETaC8E90=;
	b=puOXDM5C78D5HtftbMrGrUt/IDf59e53oHnbg4ek6dXb/UzUl5S5V6We5QPFPVAt3n
	0kkP/5Psv925nVBjLZo9b22Qs13k3CfhLQ2zSG1/hUW9U7NjqoAqskk3g/xbszAnwx1Q
	Lg/WBWb0aQaobjzuMRCCcMzSGl9kta9byCmV6WII8e/MH3iT+YTYkdrBvTrLKttX6Ny9
	HUmPNlsXH9zdlEsNwKnaZr36Uy+WSJtf4OC+EDyJ7rOdApFHN1M4OhFOszInRdi+g+Vq
	1ENH31K3dyL/tlg5c85GaGvCrR/NI/6ijxyFcWnxOjYjRS1olDcMLvbq2fGismAisqtu
	gvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Ce4U7lr16ZsWnmLmYgX9cMTjh7prKk2uze3ETaC8E90=;
	b=EMnRmCIAXTr+oI9WUkMRHpnKEqJ+/+QQz7J+s2TyaqhbKgVqOWcWQdDcjABWe6PAcs
	I6kAsdMyn9O9Ma9rdt+abDmfm2H8uv5TpK7KNwSofrHPQNbRGEPFrv3oze+VAITtx/lR
	RFpeM6cOEYBzu5eNs/rUg4KjjPmjl4mPCZXSG/gPHTqvLYUdm52E5hcAzn1ZvhhMExZj
	Bi9EI3ng/Wod0se/BYIfD9K1r+tUsFUvDAphuTEcvfArpKTmQQ48blqATJvRuicdQimI
	6mp9VRKLkiHHjeWpD4846P7QoMjYgpjEIdlR2P9WSszY3T/N4Zs6a7eFz6rSHV/kqPx6
	pD5A==
X-Gm-Message-State: AE9vXwMjGWVzcqeCkeR4I+lo0YeYwI1R5IWLAACYlgSLZSFQJOx3qUGlBeQRRB7nphrqeA==
X-Received: by 10.66.127.14 with SMTP id nc14mr23923801pab.18.1473732379285;
	Mon, 12 Sep 2016 19:06:19 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	c66sm27208324pfd.24.2016.09.12.19.06.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Sep 2016 19:06:18 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Sep 2016 12:06:11 +1000
Message-Id: <20160913020611.9265-1-net147@gmail.com>
X-Mailer: git-send-email 2.9.3
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Tue, 13 Sep 2016 02:06:23 -0000

The IMAGE_NAME variable already contains the date and time so it is
redundant to also include the date again with IMAGEDATESTAMP
when writing to image-version-info in the boot partition.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 57cefea..388398b 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
-IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
-
 IMAGE_CMD_rpi-sdimg () {
 
 	# Align partitions
@@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
 	fi
 
 	# Add stamp file
-	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
-	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
+	echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
+	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
 
 	# Burn Partitions
 	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
-- 
2.9.3


