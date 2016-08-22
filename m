Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C49E00E25; Mon, 22 Aug 2016 06:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CC76E00E02
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:08:04 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i6so6364370pfe.0
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=UQ/+p8BHxHTvP/PpegDp5uyIKFn30mR51/2Pbad/EkI=;
	b=QlrBzcxEUxadd1CFhZ2TpUIlw/uXivuwHfP7zIH87dLJTrgFJSx+m7vgCh9va2FFPp
	DGc33VkYxY8IzmyrJ84x22ZHPX8kA9h4D4oynLxo2bPMK3HJF8+VU87KDIMecUVB8mOw
	g+gLB8NmHUtvqo18oqc3cjOVs0Nifhrb99ZhZhIi0Ww6C+nBI3ReHkUaCPsr7MQgUZdn
	37B0hl0F6UNrtzR9QDutg2lHJBo40YsH4WXOsZBSSKLeKDPCTZDVwQHk/019juTHy6UO
	MZNMM66QS7d4qnKWakP2jj7ENH/jxwj7iyYZkvy6quHJ4lXGT+ilh9UxtniMk/SmWuRg
	4AoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=UQ/+p8BHxHTvP/PpegDp5uyIKFn30mR51/2Pbad/EkI=;
	b=RDyUEXwqYaj6xu2Ovso9Se3Q+idNyqw0bzJWnP5SuT/WnHpj94BJcUXL/j7RHeLiVd
	aIBwY8G9DHDds1ZUa1ym3+w6csTRNP+gm/1ijG3uPBJ1/Hnlj8C0mcEcbNhS6u31/TZq
	BnVSVnLG8JhOmw2K6K1IBrzh5KYSuFoy/7ucH2ShkEz22/JryGkYhxoCNrbHWR4xFXp1
	I2v9NFsoZ5atAQ0vxMYxZOZNsTbJbXP4Y4Ks9xqvPlRzdFkGOduINHEqtz+KcHSglGmy
	rfoYRnLbwtwAXtyNYCKXxEJUZ/w6F0FlI7VmXdJYbMw2Pcl0dbYWwSaENNveqlf/pQ6b
	O3lg==
X-Gm-Message-State: AEkooutGSulr6hYYtG5Kd6BU35vGOiZJ8qy4TPY0ZzM4ufxxK75m98V0l7MSm1zKzoqQhw==
X-Received: by 10.98.201.138 with SMTP id l10mr42704844pfk.77.1471871284158;
	Mon, 22 Aug 2016 06:08:04 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	g24sm27307581pfk.56.2016.08.22.06.08.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 22 Aug 2016 06:08:03 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 18:37:55 +0530
Message-Id: <1471871275-28187-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 4/5] selinux-labeldev: add systemd service file support
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
X-List-Received-Date: Mon, 22 Aug 2016 13:08:05 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add systemd service file for handling selinux labeldev, this change improves
handling of systemd service functionality like:status check, debug etc.
compared to sysvinit compatibility mode scripts.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../selinux/selinux-labeldev/selinux-labeldev.service         | 11 +++++++++++
 recipes-security/selinux/selinux-labeldev_0.1.bb              |  5 ++++-
 2 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/selinux-labeldev/selinux-labeldev.service

diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
new file mode 100644
index 0000000..d45ecbc
--- /dev/null
+++ b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=SELinux init for /dev service loading
+DefaultDependencies=no
+Before=sysinit.target
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/selinux-labeldev.sh
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux/selinux-labeldev_0.1.bb
index b692bb2..8eb5db4 100644
--- a/recipes-security/selinux/selinux-labeldev_0.1.bb
+++ b/recipes-security/selinux/selinux-labeldev_0.1.bb
@@ -10,7 +10,10 @@ ${PN}_RDEPENDS = " \
     policycoreutils-setfiles \
 "
 
-SRC_URI = "file://${BPN}.sh"
+SRC_URI = "file://${BPN}.sh \
+		file://${BPN}.service \
+	"
+
 SELINUX_SCRIPT_DST = "0${BPN}"
 
 require selinux-initsh.inc
-- 
1.9.1


