Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2A86E00829; Sun, 25 Jan 2015 10:32:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7649BE003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:31:54 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id h11so5327653wiw.0
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 10:31:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=VHH3lt/0w13F5IYG3Gbtctwyu6SBFor1N5ZECQzN1t8=;
	b=Iu2xXU/wjUxBXjN096Q/NfR0T2e5+cUAP5DRN0adF9VCX+YcYgWe6KlKMoO8S2cZN2
	elAKL+tG41ugLyN4CfhwQIQKUM9NXb4T04F797XXUyDc6D+BnRNVgDaXiQQIpr/Mdwh3
	tfZMmwXxdrUh0bnCbz6+necSXc7axTUR1Q4HsHGatH1TAaPGgC0LDpdKW6muJWHouo7p
	sng7g4Yar2n+h6T0E39lKwxNrQZ/hgfUdMzrzT0/4cZ1RYRqcU7lS7cvtu7ftxHneq+v
	QFXc1LDWp1rfFQ9coTg4DC8rhVnB4L7bkFIvFfF0RZlXqzaNWss42uaum66T1JOtNxB2
	0DhA==
X-Gm-Message-State: ALoCoQlLXdJ+vqIbDCZXCIE542IWKLy5I9jlLDhvcyWOkhpso5NigMJvRUVOlwRGEsPC+1++Edjc
X-Received: by 10.194.94.164 with SMTP id dd4mr37360533wjb.56.1422210713829;
	Sun, 25 Jan 2015 10:31:53 -0800 (PST)
Received: from otp-agherzan-l1.localdomain ([109.100.140.128])
	by mx.google.com with ESMTPSA id
	i20sm11111972wjq.22.2015.01.25.10.31.53 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Jan 2015 10:31:53 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 25 Jan 2015 20:31:46 +0200
Message-Id: <1422210706-8050-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1422210706-8050-1-git-send-email-andrei@gherzan.ro>
References: <1422210706-8050-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/2] omxplayer: Minor tweaks
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
X-List-Received-Date: Sun, 25 Jan 2015 18:32:04 -0000

Change-Id: Ic88656f2efba3d976918a4c556931b294bd00ed5
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 2c8e4b5..41ef339 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -34,11 +34,11 @@ export FLOAT = "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard", "ha
 export FFMPEG_EXTRA_CFLAGS  = "--sysroot=${STAGING_DIR_TARGET}"
 export FFMPEG_EXTRA_LDFLAGS = "--sysroot=${STAGING_DIR_TARGET}"
 
+# Needed in top Makefile
 export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
                   -L${STAGING_DIR_HOST}/lib \
                   -L${STAGING_DIR_HOST}/usr/lib \
                  "
-
 export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
                    -isystem${STAGING_DIR_HOST}/usr/include/interface/vcos/pthreads \
                    -isystem${STAGING_DIR_HOST}/usr/include/freetype2 \
@@ -46,8 +46,6 @@ export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
                    -isystem${STAGING_DIR_HOST}/usr/include/dbus-1.0 \
                    -isystem${STAGING_DIR_HOST}/usr/lib/dbus-1.0/include \
                   "
-
-# Install in ${D}
 export DIST = "${D}"
 
 do_compile() {
-- 
2.1.0


