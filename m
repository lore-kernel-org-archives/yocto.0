Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C918E00480; Sun, 12 Feb 2017 07:26:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1641DE003DB
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 07:25:59 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 75so7305081pgf.3
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 07:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=/6DtYbTuGbbl6QRK4LSX+FlVIi9kNhbBFboMTMYJy8U=;
	b=NDHyAmKgWqoLB0ru3fveOcwiw4/KmrLe7dibue8MoCBG1xAW7i7ZfMJkO9i0w7Kmvi
	VMHoXFEt8/0LFllL8bucxmcF8OfiNqiNve3m3iLZShNTxs9q7qRk62yzVPs5H334OUxv
	Oceomrjgj8tTnlUxUmRQH7v/RoPTjtXb9a89lNA3285gVI+EW/CJTGL6n/BMFvDn819/
	snXPk5epb/b5Qt4gPBw3RLQgdgz/tyWPcEbqu4k9/YD8GTQ1S3Jkv5abLy5Vy6jmz9Wv
	55wnGwl5/QCEq0W1p0e5TQ1VIMoWD5CwTwS9uUP/Z4o0/b5sMYcCPpgIIoIs2dxK8ZUg
	at1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/6DtYbTuGbbl6QRK4LSX+FlVIi9kNhbBFboMTMYJy8U=;
	b=mwPBp2KnHaEM8wi+Gl24ktqqRY7q205QzCg/+Pts3OCsV4H2pUBQb/UTIzT0vcpNSd
	M0iQc/ppMnnBKxROKEzUs4h97N4MmCE/VPZPEwZWY0rBCLIa8QcDHrR0JBkuv8irzkqn
	2e37QDJvGad9lBZ+D69NolEZFysP1AifSbzarMSWwf0i94F+ESaF5PiEvKLIt+mhPGnd
	/3pa8HidFqDv1OS/QveVAazj96NmRH3ioe8InQVrjLrB4gTD6I8MzrEZU7ef9oHE67ev
	6ZYtnrUrVDq9Eoq1zTHMShn6+0cJz4I0g1J25zOL3WjNKMovL5UuggdqKE70LJGbVVz+
	3hGg==
X-Gm-Message-State: AMke39nRm1bg08gwrI9UkLH4j3Db/4C1NO+t2u35v8TmS9T6bqJQQ3iPzqDFSI2le20Heg==
X-Received: by 10.99.116.22 with SMTP id p22mr22000837pgc.161.1486913159052;
	Sun, 12 Feb 2017 07:25:59 -0800 (PST)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id
	y21sm9510539pgh.52.2017.02.12.07.25.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 12 Feb 2017 07:25:58 -0800 (PST)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Feb 2017 00:25:48 +0900
Message-Id: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 13 Feb 2017 06:11:37 -0800
Subject: [meta-raspberrypi][PATCH] rpi-base.inc: Add xf86-input-evdev to XSERVER
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
X-List-Received-Date: Sun, 12 Feb 2017 15:26:00 -0000

In order to fix problem that mouse does not work.

This is removed c40558173ffd96c499d101155f6c4c2be85d9f0f.
However mouse does not worked from this.
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index e069e70..051c717 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -11,6 +11,7 @@ XSERVER = " \
     xserver-xorg \
     ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xorg-extension-glx", "", d)} \
     ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
+    xf86-input-evdev \
     "
 
 KERNEL_DEVICETREE ?= " \
-- 
2.7.4


