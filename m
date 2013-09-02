Return-Path: <paul.betafive@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98030E01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 13:12:13 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id cb5so1466838wib.10
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 13:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yzZrLtP1WkSRkZ5dgkBCAvaMIViyMk5Y36G9txsOmjE=;
	b=rCZT9eGsNmVYc77LTu3ogrG1CVwVw+nyeduO5u0JRlD5PxLlT4WrzLzy+/u28pPxqA
	bcye2qv2OHbgV1JR1QkyxzUO9QZSaGO36jiNEhH9Rz8NXJq8eucFfc5+jWUF+QoXo+by
	GTT0R7wD5PuwrZOyZOpL2fFqJNYH5bGON3jxlowrf6smSPXdGubnufsUw07gz7QeO59W
	2rct+7YcAv0UualFfzl8rIBORaJsgHcMgIRycMyRXN2V729+nylB8ydxSA/hv8sxqiPV
	vs/XQctbpNVaUKlMkbjA9hfBIILxyumWDFehyxJZqe+RYsmJlj3G9OJKkeqrwFuXFY73
	8v9w==
X-Received: by 10.180.100.202 with SMTP id fa10mr8182456wib.8.1378152732270;
	Mon, 02 Sep 2013 13:12:12 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id a8sm20789514wie.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 13:12:11 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Sep 2013 21:11:50 +0100
Message-Id: <1378152710-10291-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.4
In-Reply-To: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
References: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH v2 2/2] README: Fix IMAGE_FSTYPES example
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
X-List-Received-Date: Mon, 02 Sep 2013 20:12:17 -0000

The SD image is always created with the extension "rpi-sdimg" and this cannot be
changed by editing IMAGE_FSTYPES.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 6f947c7..8fdfdd2 100644
--- a/README
+++ b/README
@@ -109,7 +109,7 @@ How to use it:
 2.A. Optional - compressed deployed files:
 ==========================================
 1. Overwrite IMAGE_FSTYPES in local.conf
-	IMAGE_FSTYPES = "tar.bz2 ext3.xz rpi-sdimg.xz
+	IMAGE_FSTYPES = "tar.bz2 ext3.xz"
 2. Overwrite SDIMG_ROOTFS_TYPE in local.conf
 	SDIMG_ROOTFS_TYPE = "ext3.xz"
 3. Overwrite SDIMG_COMPRESSION in local.conf
-- 
1.8.4


