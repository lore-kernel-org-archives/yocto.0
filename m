Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C349EE00820
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:27 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id d4so3227024qej.24
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Gm1WzJrsfm6NDcWFgMEKA0HUIOUTKXYuOOjSIh+6pW0=;
	b=VtObKDuTp+DrEMd7XOOUlFFThPWWSda2WdKizJpcXtDvzzSx2zyVzjdWhUK/lsxwnP
	3ll8GOlpK/X4oDrf7VCF14tpwrv6iU6vvTqNoZsiOupWn1G8PlEz5jx54guh/ezuh7kj
	DjKNSlFi0VUcg72VBSbfJaz9BbSb2H32zPGKC+0xlspHgd/I3w1pL1XCAD53v24jnAb3
	tojgmWmZAID3fcXHfhmdoUMZOZlgkE2Xcz68y2bu/C71HYPCZmC5xZqNrH/3LM4R06h+
	SSulBDXSvS5R/klWlqZ4YCoaRa3hIDDTyAwILmtEn+QXUccoxjDlYzhidxW349Vmg9s5
	ie3g==
X-Gm-Message-State: ALoCoQmDlGZSDMN5xb1R4IvkuJ+janBnV2dQ0qDr8P7VNqLiUOyCb2mUA2DFs3Azpl7yCSj1iQEz
X-Received: by 10.224.70.84 with SMTP id c20mr3794484qaj.48.1389970287228;
	Fri, 17 Jan 2014 06:51:27 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14398658qag.15.2014.01.17.06.51.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 06:51:26 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 16:51:12 +0200
Message-Id: <1389970274-26349-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
References: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/4] packagegroup-rpi-test: Add test packagegroup
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
X-List-Received-Date: Fri, 17 Jan 2014 14:51:29 -0000

Change-Id: I74f7c0d33d5f9692a427587bf0f8ef9980ebfcd3
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-core/packagegroups/packagegroup-rpi-test.bb

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
new file mode 100644
index 0000000..3f1866a
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "RaspberryPi Test Packagegroup"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+inherit packagegroup
+
+RDEPENDS_${PN} = "\
+    omxplayer \
+    bcm2835 \
+    wiringpi \
+"
+
+RRECOMMENDS_${PN} = "\
+    bigbuckbunny-1080p \
+    bigbuckbunny-480p \
+    bigbuckbunny-720p \
+"
-- 
1.8.1.4


