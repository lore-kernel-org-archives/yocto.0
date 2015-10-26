Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D11B3E00978; Sun, 25 Oct 2015 23:46:23 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65524E00978
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:20 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so179229349pad.1
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=3zxJ6/Q0gEDCFu+XJSQP9yP+kdgfA451n7CQxFREaYM=;
	b=SaaXkoLX7jve/CKr8mCumAMjTnfVurirWk6Na/Ln+VzdR7V0R9KkDbK05swpHVCjN/
	hBdKD3BsTJtoDAG4/eMsLNUyKI/JjcD8rKWk+vg2Wcf9obxoPk0GOYK3u4Wb+W8VH6Kd
	leCqG4m78kDCj60hsSYhTWqGpc8oqSc9GaxroM/r6oiAeRKgJW4OnbOVFJVbjHn8ifxr
	vCRRHC+9R/QS432fzfxnl/bsSYnUP+8ps/TduKMaBjhoOri7ziBJtjPa5bIDLP83Xt5+
	CjWDasKUF9ddM7+4jWlnNa5K/sf/mdCW3Yiz4k2mEBawaX2Qo+sCtaUaF+Q8mZRiXmvx
	On9w==
X-Received: by 10.67.13.39 with SMTP id ev7mr20881221pad.100.1445841979974;
	Sun, 25 Oct 2015 23:46:19 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ph8sm31862504pbc.8.2015.10.25.23.46.18
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 23:46:19 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 17:46:26 +1100
Message-Id: <1445841987-2917-2-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1445841987-2917-1-git-send-email-net147@gmail.com>
References: <1445841987-2917-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] sdcard_image-rpi.bbclass: include boot.scr if present
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
X-List-Received-Date: Mon, 26 Oct 2015 06:46:23 -0000

Allows including a script to use for U-Boot.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 2efc36d..c6995b6 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -128,6 +128,9 @@ IMAGE_CMD_rpi-sdimg () {
 	"uImage")
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.img ::${SDIMG_KERNELIMAGE}
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
+		if [ -e "${DEPLOY_DIR_IMAGE}/boot.scr" ]; then
+			mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/boot.scr ::boot.scr
+		fi
 		;;
 	*)
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
-- 
2.6.1


