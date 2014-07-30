Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 836F5E00837; Wed, 30 Jul 2014 06:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67C8AE007B5
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 06:22:57 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id bj1so1507461pad.25
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 06:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=KEeSzUGv+ZkkNkFx6IPKpQdESektCeO387zh4X9KCXk=;
	b=QG/wBC8RDwOow1pHI1jb5aKZJvU0jVndLXqgqPDhVBu+CNLQvm4jviqhuGPCOwqzXM
	nujyoc8TvawhY7ETzvsSTOjuBeE4v9e7br9el6nCelzOGoCsUSK+SdwOaYz5eKDvjQ4r
	bQ/0anCVpoE0LcbFT4YLy6OxP40cf03ELf/s3vsD/ck/5ohE/kav9v6ROJjge5ElLux/
	8FXfHREGCIICy+WzLK8r+07JfdHHhEkwwOTJTnUwdYZM5tvACP7ao2/X2lLOQm7hHFYw
	MTvIIKvzPKI0GaQJYVf1NBjNu+f/NU9pnycjG2gisuA/nkFH9FOYH1go5ZWRaG6N4+Mw
	gDcA==
X-Received: by 10.66.243.37 with SMTP id wv5mr4791454pac.8.1406726575246;
	Wed, 30 Jul 2014 06:22:55 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id j17sm3512655pdl.31.2014.07.30.06.22.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jul 2014 06:22:54 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	andrei.gherzan@windriver.com
Date: Wed, 30 Jul 2014 18:49:01 +0530
Message-Id: <1406726341-28977-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: [meta-ivi][PATCH] Make pulseaudio run by default
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
X-List-Received-Date: Wed, 30 Jul 2014 13:23:02 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

This change will help pulseaudio run by default on the
target. On the bootup user can see pulseaudio service
started.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
index e32efa7..5401c66 100644
--- a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
+++ b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
@@ -7,7 +7,7 @@ PR = "r1"
 inherit systemd
 
 SYSTEMD_PACKAGES = "${PN}-server"
-SYSTEMD_SERVICE = "pulseaudio.service"
+SYSTEMD_SERVICE_${PN}-server = "pulseaudio.service"
 
 PACKAGECONFIG_remove = "bluez4"
 PACKAGECONFIG_append = " bluez5"
-- 
1.8.4


