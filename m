Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F8EE00D0A; Wed, 21 Sep 2016 22:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A69DE00BE7
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:06 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id w84so12084891wmg.0
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=2Ui0b5VQku08/hg75d3yZM3bq8FeGLrYwMIgpAabw4M=;
	b=rpbyAfeFLa4zF9uRFlqgUOOWIekDYJr7ben07vFuKLciHHa08ls/aQpkYK3vgOwM1l
	/xjsq8+LG08pyDKWr84cdmirPajRNloXNNwX2mmXEd+BZn/aUlvkYWOJGdmLGciVBErj
	UHAulatuni+N6YCnNByOuVzM30vmgm1vsyivW5OoUEdssmMOS1QbqtFI2ULp5LkTNark
	hLNr733fMsPUoWYkgoLtu8JEJWAlSk7upyNqsZC4iJjQ4/OTivXIJ+xa6Jw8OlEpTv4h
	BjcGBwjIU76MW2F8rr0HFa+O+XMkwLoRwcmv4kFMC/AeSC6YnVqc2n48G8QOpyT/wia4
	lewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=2Ui0b5VQku08/hg75d3yZM3bq8FeGLrYwMIgpAabw4M=;
	b=OYaplUBP3GJ0J7vENXFGRBJDllIggE/T87TzgmKHRfv4X8A6VfbbHh/NNz12vljIAF
	+nCzGSBSQujXSbt2mHEtQgtI7JTrgnibWsksfFt+a4o4rc9d0Yr1wCWo8SMy+0NuOYve
	2cGYY9V8TU2ai/qOGpLkt5CP5IMtRpt3AkkQiNk8/3cwiUPVbGXlslxR5Tmha9buUdvA
	Yw74EnWuFL+W0lQG3giKRJgxP2ouQfjjlbTor2X0dkXSGNVjaBfFfPykSDtR5vOcyJai
	TNflfgHWFiPzj0iA9/0rzRcJgkzP39Pw41tcizkgKosDNI7nJzBBghQRoKWQzjdF3Hr/
	0x7Q==
X-Gm-Message-State: AE9vXwPjBSjRr+cEINKji1P0R6kY79gllKyVE0/ggwZqvZaQbJWcR3lrNzv4EzOzIHqBUQ==
X-Received: by 10.28.91.12 with SMTP id p12mr583159wmb.34.1474523285703;
	Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:50 +0200
Message-Id: <1474523274-3883-3-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/6] xorg align for vc4
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend

diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
new file mode 100644
index 0000000..a5a6af3
--- /dev/null
+++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
@@ -0,0 +1,9 @@
+OPENGL_PKGCFG = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'dri3 xshmfence glamor', '', d)}"
+
+# slightly modified to oe-core's default: add ${OPENGL_PKGCFG}
+PACKAGECONFIG_rpi ?= " \
+    dri2 udev ${XORG_CRYPTO} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'dri glx ${OPENGL_PKGCFG}', '', d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "xwayland", "", d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd", "", d)} \
+"
-- 
2.5.5


