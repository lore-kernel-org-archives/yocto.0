Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 043C5E00BC6; Sun,  8 Jun 2014 03:51:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 864C0E00B9F
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 03:51:22 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id x12so1965814wgg.10
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 03:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=BpAA+6Q9uPFodk/z/k0feSd5LMfF2jS1T6GrF30SyzA=;
	b=exQITPaGfFL5KQbDzMWpE0ecLL1C8Lr03p1KA8xWTRvUW/XL+kiqP1rOAxXczuhzrS
	EeJU8duyMJfiSefQqs8sYlJKJfptqoMRjMmaOq1ritbb9St1SphRgyG0nQbnyhCP6/T2
	xIEG6GZAUaKh6O7enwVzrwJLuKYlD1Mh1tirr9kmcHFtYk/P3CHN4mJr1/d0DJuMzM/G
	AxJb72fYfyO6iYRI9UrGf68t6SOHl9jBqQZlHRVKVPKYBHVp8l/ApGWYhHS6NQRhgSMr
	bUvqp8WCiC8ky7+IDzIAPzDherMurPPOVDba9kyETTn6fx6SzoCQzZNGvMoX+Rej+U4o
	hGWw==
X-Received: by 10.194.174.168 with SMTP id bt8mr22384142wjc.72.1402224681746; 
	Sun, 08 Jun 2014 03:51:21 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id fg5sm8220938wib.17.2014.06.08.03.51.20
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 03:51:21 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  8 Jun 2014 11:50:39 +0100
Message-Id: <e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Sun, 08 Jun 2014 10:51:29 -0000

This changes the build slightly as there are some #ifdefs in there for Raspberry Pi.

Also the codec configuration file used by gstreamer1.0-omx codecs, /etc/xdg/gstomx.conf,  is set correctly to core-name=/usr/lib/libopenmaxil.so

Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
 2 files changed, 3 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc b/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
new file mode 100644
index 0000000..eb7cca4
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
@@ -0,0 +1,2 @@
+GSTREAMER_1_0_OMX_TARGET="rpi"
+GSTREAMER_1_0_OMX_CORE_NAME="/usr/lib/libopenmaxil.so"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
new file mode 100644
index 0000000..bd54419
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
@@ -0,0 +1 @@
+require ${PN}.inc
-- 
2.0.0


