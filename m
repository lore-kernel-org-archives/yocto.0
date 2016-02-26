Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51ACAE00D58; Fri, 26 Feb 2016 03:55:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D07B4E00D40
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 03:55:37 -0800 (PST)
Received: by mail-pf0-f171.google.com with SMTP id q63so51149114pfb.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 03:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=r0jQ15HiDUdKKmHmYybbo2UrGPJZtdB8JSYFbAWYl5g=;
	b=B1mQrKudZgWPjh91D4YggPr6VG4gxKqVpGMQub0fvMWosAyze7adubxUY2FKv95fAm
	794FJKb68Sj/LnI4tr446ykVWup9nRRk1ax8yJ27Pcsou5rsKy6zxOUDqUFa3yxnimvR
	H3iq4E1g4iKTskplpJh89pSiN2VvuNMI8cFarNn3D8QnBfAf6GJykQ9qSRkzkNRK54LL
	xUYvYlxJN4iOxbv1O1B5mRh7rVVJnJo+lQ2POwX7hTP220CNFHkmiE/CO9VAkGlBqS/T
	SGLzSevYa0MuW7Y18y6iRzXhiWn7Xdjssw/9QRtu8cBzu+dPnqG4oURNDcdCuu1sDXSR
	IDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=r0jQ15HiDUdKKmHmYybbo2UrGPJZtdB8JSYFbAWYl5g=;
	b=OGHoJBk/oAxGmoxXZRATlyat/VQ785bcNoqqFeCjsT9mJ3/TFuTJjlr8MUsYdMGRSd
	dcSWhh8K+8X92EhHd1GG4+xDh0OqtJ3DBjHrUAuoIbAvTojxQt0FABD/i5xXqjNPVoPo
	kg3+qyFZ8uZYKKckTEW14QOoGWeogzL0Jnczb0TucJsK8lSpWkJOpcO0CMJUAXjmg086
	DWOqPouI0ksyXl5i5bLvPZ6EluXfao9o1ob988DXfGw8zCdFKfip/ITFevNJaOB8hJHR
	nGNo1PTzh5/C0kNRChp0x7sc4dZYiMT8RXMB2/LMOHfsifA4b6FFKfSQrLruCeu+IogV
	70iQ==
X-Gm-Message-State: AD7BkJL6V9RxfAu0ZHOiSUG8aVt0ETAfp4Q4VYuHcg6+W7+hJhgZCkJtl2R+3csvbeXbiw==
X-Received: by 10.98.93.2 with SMTP id r2mr1450506pfb.64.1456487737396;
	Fri, 26 Feb 2016 03:55:37 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	e79sm18965099pfb.76.2016.02.26.03.55.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 03:55:36 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Feb 2016 22:55:48 +1100
Message-Id: <1456487748-11307-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH] omxplayer: bump revision
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
X-List-Received-Date: Fri, 26 Feb 2016 11:55:40 -0000

Fixes compile errors with ffmpeg 3.0.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 2f45fb0..a0690a0 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
 PR = "r4"
 
-SRCREV = "d99bd86c9fd80ea01f98761e130d7ac9a2bb7588"
+SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
2.7.1


