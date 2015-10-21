Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D850E00A8C; Wed, 21 Oct 2015 14:12:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C57E00A7F
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:52 -0700 (PDT)
Received: by wijp11 with SMTP id p11so3399455wij.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OquJ29ij7gBxwJeF+fLy1q1RjZTHqUcvYu+h5TXLFVw=;
	b=J7YPHnh+AcfsxVR7eOhh/KIOBJDhNss58hYmMF5nlU/x2zzCdp764M9HN7tEsin3CC
	ucwgVnDF9LNOxRHQVscb1M1GsYmy8sNVz1v22h664aBGwKE3wRF/SRhkwV6vmsJQwewt
	fkWLHo2OYQN3ir1X/PemKD+Tc3PD4jhq1kr7u2rx5BcAUs/k8PcQasiS1VlrKpTzYCVA
	SBqmjuiRwYSPw1e5IVGqld6C9Jgxbut1lW5R7SeeOIOQYDG4AnjJ+Ecnte/tCnsT/UqG
	HZbW5gc1cr3cXOO6yIP5WjddEcMmoD/gOHtj5i6BKbHcE5QpMmZ3TDchSTUuPLxc4dX5
	Nbow==
X-Gm-Message-State: ALoCoQkGtsDGtbZLBzYFK8pLkTwNXoUMTYEZmxQouOQSHckVRnnIbr17QRfmoRt+FeF1lyHbJIj1
X-Received: by 10.194.108.103 with SMTP id hj7mr12810902wjb.46.1445461971863; 
	Wed, 21 Oct 2015 14:12:51 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:51 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:08 +0200
Message-Id: <1445461931-18349-8-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 08/11] omxplayer: Bump revision
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:55 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index f4839a9..2f45fb0 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
 PR = "r4"
 
-SRCREV = "4d8ffd13153bfef2966671cb4fb484afeaf792a8"
+SRCREV = "d99bd86c9fd80ea01f98761e130d7ac9a2bb7588"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
2.6.0


