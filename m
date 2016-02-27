Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F21CFE00B46; Sat, 27 Feb 2016 05:46:39 -0800 (PST)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC15E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:38 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 184so457579pff.1
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=lX8LJNMJftck7GHgRRRIxEpUqUKsebEtGot0ranWCmM=;
	b=iU0EYO3CZksDRwmPXDCvkU0Q3rT2ThmnnxzyG2k6HRNwDdFYrnRoWa7GplrU7O6u1W
	KC53BG8fpJetw5wEeo7gQLhrpE1IcTzRfgREo+KNbEL8kxLhMHOiBz6FDbZjj08wXVhA
	Kz81t9qSLGcEffCXdbIUYdaCd7BwnJg1+3QsKpyb8fIjQUrAIlB5yPlNALYghAPzislc
	iv9R7BPiGxdTFmybGE7GnFatUA7PsC1E6M1/uBEffb5+jImaKTOZJZZBGAM8O1jJxLC6
	lDxkuVFNUS3x7UdzDg6X6TdKaOtkg9PreFfwdRj7iHQj+aE0NQOuLliNZHw4Oi89KFcT
	O/vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lX8LJNMJftck7GHgRRRIxEpUqUKsebEtGot0ranWCmM=;
	b=ATHc+p5BYgUH2+v4ciI7ALF8DxR+/tbiw3gtvItMY2AHItqLE/ntIkKORuHTsMw0PI
	g2Xwc5mGmgcM28SIeDkkm9B7GXtcMM9EOFr5S//pLUIQpPhgYCZHU0Izj9J24Nc51qAZ
	8r4NpP2xTUTX0lecV3jO1RuCB3dkit/OGVcQ+gTH+aM3Hih+XwmNElJ3VcoPUgZYEYJS
	WMQMoZyifRypCI9AySymCIXoKapaJvqgtNYlWTCA2suJ6xyLOEGjrTsSAU64zxLl/AiB
	Bxzf3AcmJYpbzpxQvPbwqdFElpqh9dBilbgESAtHh9r+zMgXh/TXfgd/ER+pPY5i8uaB
	AiUw==
X-Gm-Message-State: AD7BkJJRGB1mTqV2tAtJK4y9HduBG/MExYlslu0asTmsQ3jqSukw9FepAni8WU6kJPfEUA==
X-Received: by 10.98.65.193 with SMTP id g62mr9460206pfd.148.1456580797810;
	Sat, 27 Feb 2016 05:46:37 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ml5sm26435815pab.2.2016.02.27.05.46.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 05:46:35 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 00:46:47 +1100
Message-Id: <1456580809-29922-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH 1/3] rpi-mkimage: install to ${libexecdir}
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
X-List-Received-Date: Sat, 27 Feb 2016 13:46:40 -0000

It doesn't make sense to install to ${libexecdir}/rpi-mkimage as it
changes the path on fido and earlier branches from:
  [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage
to:
  [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/rpi-mkimage

Using ${libexecdir} instead of ${libexecdir}/rpi-mkimage preserves
the path for fido and earlier.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
index 2c8ecb1..7dea43d 100644
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -15,8 +15,8 @@ SRC_URI = " \
 S = "${WORKDIR}/git"
 
 do_install () {
-    install -d ${D}${libexecdir}/rpi-mkimage
-    install -t ${D}${libexecdir}/rpi-mkimage ./mkimage/*
+    install -d ${D}${libexecdir}
+    install -t ${D}${libexecdir} mkimage/*
 }
 
 BBCLASSEXTEND = "native"
-- 
2.7.1


