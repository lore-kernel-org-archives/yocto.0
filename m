Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF149E00E2E; Thu, 21 Jul 2016 01:48:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FA48E00DA9
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 01:48:26 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o80so1756214wme.0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 01:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=s7s88lHmLwmpzdtbun8aCG/b2RN67CSbMV1GpAqs8xs=;
	b=PA5QLYNr3OJ0PhuUmBQ6fW1t+S1lYxP8/FEv8S2YFV27V/jqICI39BUGY+lTz49TqZ
	4MaOXpDcpFiqxtmVeZoPSXgrV0EZub602OAEfetzigVJhGDuk+cxTrOYp+GdBPl4CJjy
	/8iOALhT/p1iqCv41l7Jr+CkrqOACi9hvAYOyY7Y3PSvq2hMUW6EbLAQvnjeVyRQvu3v
	VVvaqSvlXFvX1vuDKvmal0WIubwB8Mm2qPsXlEumItEkjnkpdySBUfa0dOfoqh/hzKZG
	jN7ISSe13uLhWIPC4s7GxbAhR3sPQTCmTosPkmjL4k83gsIkIo+PFvbp09v5k9XAdLqk
	kzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=s7s88lHmLwmpzdtbun8aCG/b2RN67CSbMV1GpAqs8xs=;
	b=gW0k89T9qKrMzqzrtjZCCR6Xqlay0kQc5ovSLcnRUhyIQEFAHfmjxn7g1bv2adRvrl
	EpYg9ARQcESZAdBO5H468MUwbMUUgJvBEP5jndaJdfYkxLESP9HJ1EDnZVBSvgAUbCGM
	pV065Aj0PGQfddS81Tc5x10joO8gSJ6PWODpoN0QIlIkyZW3dIv1Ffw8vxfQRFkYLdIp
	jqFpDpnNIDzNy8bgXxXmsNyiUTluBQE470ZF1UT+EKsVJAJ+ExQ1TQmIeus4LW4X/6Zj
	ZezcwGYUxlgJJuu2S5bTkCqyBAdeymuuTGPmJhIH8MFy6252tMUHFItBRQmAVVOMqPQz
	7G7Q==
X-Gm-Message-State: ALyK8tLJOfkKPuL2ElthwvwYAsDenF3gVvEarAI9pUsx7kYH46ABDYDMksmNrv0uhxUCxA==
X-Received: by 10.194.193.103 with SMTP id hn7mr5787986wjc.115.1469090904959; 
	Thu, 21 Jul 2016 01:48:24 -0700 (PDT)
Received: from sgxcmp131.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id ej2sm5271937wjd.8.2016.07.21.01.48.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 21 Jul 2016 01:48:23 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 10:48:20 +0200
Message-Id: <1469090900-29903-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-security][PATCH] Fix a trousers build on when not in use systemd: unparsed line: 'inherit'
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
X-List-Received-Date: Thu, 21 Jul 2016 08:48:28 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-tpm/trousers/trousers_0.3.13.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
index e274972..6853f18 100644
--- a/recipes-tpm/trousers/trousers_0.3.13.bb
+++ b/recipes-tpm/trousers/trousers_0.3.13.bb
@@ -16,8 +16,7 @@ SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${BPN}-${
 SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
 SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
 
-inherit autotools pkgconfig useradd update-rc.d
-inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
 PACKAGECONFIG ?= "gmp "
 PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
-- 
2.1.4


