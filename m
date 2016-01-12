Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2DC7E00AA6; Tue, 12 Jan 2016 06:22:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AFE0E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 06:22:19 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id f206so254707555wmf.0
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 06:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=nZEOgUCFpez6ZFEDITdkf85W1a0CDAfaZijUJ2jlPayKDdO1o2VfNgaWwhU2y87HMS
	LddpElYOkngNhx0yaZUOx6zaLVBynHoIVx9ctDA7dCC4lRgLlJLNK+WLK9Jl7b1+zIoM
	gWZoOgYWFnf7FJ4kHROzGsfE+0U+ud+rhT5oCQF88ZQuF6uWDZwXClHAcH6dPGXG1mac
	5jzV9ivBuDifU5RcLs52vinJ6eaBRVyOcu+fWBJfSCbgOXzLdNEGf1ho+j0Kz6QoIN1L
	m4h49eTOFrTRi+R+2aaj9QyROLJ29sYsY5A6kECmSMSMzuL8XXwxIOZFw2Li7maOtxx6
	reQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=N6IFgHLLjPxFOHV+7euskrBETsZk9n87KdcQyCPyMua2DQXRPuAGKhRFVpxheLWVVz
	L+OJdnycHE1JSdYMYjsKj4RgJ+mV4+66IOP2YcxJfIcufCF+pLrRQPRyQpxNChGYosEM
	zMw90Ew/RXyUcsJe2sd9qJp/jlbZZru1apbO3AkCBdaVRkEWpbiH/YI2ethxmYMrK1R6
	XoZBa4Osy9zC6mTVCL3XrJtabKtwQCml/kby5fIWT8uol/w6WecXftSvdYX+B/qpb2Os
	pQPlOYuTEK4ZsBN13DkBQEm8Ndq5T5W2Gp6ZPO/bbNDY1+xjDyIwj0ALT9X8t1JZRKUD
	fe7Q==
X-Gm-Message-State: ALoCoQmYlOk/VJXk7N74KMCuuppvOlFot6CrCQmblYiunZKW/I1wfe1bsI0yr2iokqpAXxD9lAedQ3/evsm0b2rqcpAI3Axd6A==
X-Received: by 10.194.103.164 with SMTP id fx4mr121834017wjb.56.1452608538882; 
	Tue, 12 Jan 2016 06:22:18 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	g3sm124363897wjw.31.2016.01.12.06.22.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 Jan 2016 06:22:18 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jan 2016 15:22:10 +0100
Message-Id: <1452608530-20009-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452608530-20009-1-git-send-email-j.madieu@expemb.com>
References: <CAJzgOf+jeDLnwB7Jg4UkA6+KX0JaUU0qRGB7m4zK2ppg2y_Lgg@mail.gmail.com>
	<1452608530-20009-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH v3 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Tue, 12 Jan 2016 14:22:23 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index bea5a65..60f1bcb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_raspberrypi = "9"
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 
+# Let us add layer-specific (such as qt5-layer) bbappends which
+# are only applied when that layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
-- 
1.9.1


