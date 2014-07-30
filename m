Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56F5BE007DC; Wed, 30 Jul 2014 03:48:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8DDE007A0
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 03:48:50 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id f8so7352622wiw.0
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 03:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=KEeSzUGv+ZkkNkFx6IPKpQdESektCeO387zh4X9KCXk=;
	b=sTxLA89xBDQueI/c0E8etgqJYk/2tD0wOHFa6Mld/cCDThC+lOvRYSeKUtQHkMdKfs
	nApOQEvvhvP9OP2ibvNpmF8FTCm+lxrnnY+aAfGqt0lsS+BshOhK4LswqZjhGnuFAjpS
	Rfp9qyUnOSGmmGtuka8WJqD+2UYNeQGMummiBfCmdOh0Q2Z/STFJh6IJOGCeFh8qnqP5
	FHZzS846DtHS5yho/qMz0AWC7RZdEQ+K+V1cYkGgmPewG1aURcNv7xeopkjCGgVnX4+r
	bKhSruZxgaIk10mui+xU3PEuPtvnseiB68NZb7NfzNoVwDtoqsIbVHcyGw/MgU1vunNR
	ipWA==
X-Received: by 10.194.158.226 with SMTP id wx2mr4841040wjb.107.1406717330033; 
	Wed, 30 Jul 2014 03:48:50 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id wu6sm4598804wjb.46.2014.07.30.03.48.47
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jul 2014 03:48:49 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Wed, 30 Jul 2014 16:14:56 +0530
Message-Id: <1406717096-26502-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Wed, 30 Jul 2014 10:48:55 -0000

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


