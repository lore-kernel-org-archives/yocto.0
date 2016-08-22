Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83FCCE00F2F; Mon, 22 Aug 2016 06:07:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB52E00DFC
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:07:45 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id g202so6357303pfb.1
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Er2C0d8LiWO3vB5kn+tyDbHv1zw9NXsK3HyPmbIobyI=;
	b=fQbMOK7mSlID6u4Yneu3WwKIOAriPFBxRBSVLl9rNhS3yvcNafCalsMLWCOkXzTGy2
	FmCA9eOTo9qqrbZ8eAQFOYNeXW1PPoknkzLDpXof8wfUb9+0Srw8vymOgQMqMNCn/25W
	3nzXMur+Rph6yYLjHLBB41ULxZAJS2kFoa2+y+tiDOggEUoDzCqQkwvSzHT+JpqV7Jm4
	VdpkkpRSpZPcqZ2MSDrglUO8bf/vImaRJ8C6hs4DvCXv/vps2JzHiDVaJiIwVwvVK9KK
	J3BUd0msaWIls8cmBwsjY6KLUDHOPYTsSnd/qZ9v2kl2Nc/yoE32FFCxMIGlexqPFi2m
	ZSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Er2C0d8LiWO3vB5kn+tyDbHv1zw9NXsK3HyPmbIobyI=;
	b=NTduisn57Qv2Rgeyk2RvwM8ByxVrgEYt7tHBe1/qoZ7pHVHR469qz8K0GMy70sf0bb
	E+0IY4P5J6rrYbcpGKZVybwC1+CGCYi2+BYaOp0DfYYIDCIaZDvPxA/vcDw+QS7rEvBA
	yKZBqeu1pnOGAg6OhzVdMrddhCj6uvRdzUVcAsZUndxFsSgtN/0aC/TUQ6aROlQNtCEK
	rnxtyMcuOm5fFbsXBL5uIXz3s6JbBz2wdD7PZQWM7YS4y+Mgrub/W2Rz6xOQ/bF11OaC
	JDdJmN1m/lv+t+RYT0BfGW3EFPcqYwb85PzxwlKMEGPSBE3IZhEC9xrid1rVzXLrFAHG
	3XLA==
X-Gm-Message-State: AEkoouunm3DpQeBcfeU8t+6ctHxQJpYod0nvMdVP68p4PqOCZPPnNaA5g9K5TWfSBH2CIQ==
X-Received: by 10.98.205.6 with SMTP id o6mr41899230pfg.37.1471871264759;
	Mon, 22 Aug 2016 06:07:44 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	p4sm27289678pfp.60.2016.08.22.06.07.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 22 Aug 2016 06:07:44 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 18:37:37 +0530
Message-Id: <1471871257-28149-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 3/5] selinux-autorelabel: add systemd service file support
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
X-List-Received-Date: Mon, 22 Aug 2016 13:07:46 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add systemd service file for handling selinux autorelabel, this change
improves handling of systemd service functionality like:status check,
re-run, debug etc. compared to sysvinit compatibility mode scripts.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../selinux/selinux-autorelabel/selinux-autorelabel.service   | 11 +++++++++++
 recipes-security/selinux/selinux-autorelabel_0.1.bb           |  5 ++++-
 2 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
new file mode 100644
index 0000000..9520f6e
--- /dev/null
+++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=SELinux autorelabel service loading
+DefaultDependencies=no
+Before=sysinit.target
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/selinux-autorelabel.sh
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux/selinux-autorelabel_0.1.bb
index 2664863..4eb2b4e 100644
--- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -11,7 +11,10 @@ ${PN}_RDEPENDS = " \
     policycoreutils-setfiles \
 "
 
-SRC_URI = "file://${BPN}.sh"
+SRC_URI = "file://${BPN}.sh \
+		file://${BPN}.service \
+	"
+
 INITSCRIPT_PARAMS = "start 01 S ."
 
 require selinux-initsh.inc
-- 
1.9.1


