Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70F62E00A51; Thu, 16 Feb 2017 06:58:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3E20E009A7
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:37 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id r18so3522462wmd.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=n+O3oIYJi4sgw1veCsuewfaDcipds90C0YY8YMEJUKk=;
	b=BCkeYcltUvelF7GVmoHmJ7YEpwJqh9lEFeDP2oUz+TEs96gwxapxRZge3hdmwWkfU9
	Qz1gMpl74JkjzXGvI4WTOZ57/7McYh4g9bfX7C2/dacSSpGxbQMRx3KhbTilz/r/jo7u
	pWAJ+WPNtiOX8Qq9vRjbrwq9pm1aspnlNe7GfnWFGen+a+A9mrQDPNGna1oVIZ3xbE3y
	Q2DITQdWQJZIQv2/1eFYWMMuCDx2hrc5uNpmuJMUkKugWTFSFPUjXuo0Gof8W+683jXT
	apR0l3ohQHkeRJ3ZNAE4GytITukT7kTBqN+hxOhayvTe+pzJUJb8flKtEuG8PU8zhMXg
	u/1g==
X-Gm-Message-State: AMke39mpjixyMPaCfx39igdb3vFfuWPrOwlVtpCy1EhqTywN1XTi3LnI6pFIJ7v4MGNuYw==
X-Received: by 10.28.185.77 with SMTP id j74mr2926697wmf.76.1487257116504;
	Thu, 16 Feb 2017 06:58:36 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 8sm700233wmg.1.2017.02.16.06.58.35
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 06:58:35 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 14:58:28 +0000
Message-Id: <20170216145830.21766-2-git@andred.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170216145830.21766-1-git@andred.net>
References: <20170216145830.21766-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 1/3] swupd-image.bbclass: don't fail parsing if SWUPD_BUNDLES is undefined
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
X-List-Received-Date: Thu, 16 Feb 2017 14:58:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

ERROR: Error for ...image.bb, dependency ${@' does not contain exactly one ':' character.
 Task 'depends' should be specified in the form 'packagename:task'
ERROR: Command execution failed: Exited with 1

Signed-off-by: André Draszik <git@andred.net>
---
 classes/swupd-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 771a416..d8383ff 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -322,7 +322,7 @@ addtask stage_swupd_inputs after do_swupd_list_bundle before do_swupd_update
 do_stage_swupd_inputs[dirs] = "${SWUPDIMAGEDIR} ${SWUPDMANIFESTDIR} ${DEPLOY_DIR_SWUPD}/maps/"
 do_stage_swupd_inputs[depends] += " \
     virtual/fakeroot-native:do_populate_sysroot \
-    ${@ ' '.join(['bundle-${SWUPD_IMAGE_PN}-%s:do_swupd_list_bundle' % x for x in '${SWUPD_BUNDLES}'.split()]) } \
+    ${@ ' '.join(['bundle-${SWUPD_IMAGE_PN}-%s:do_swupd_list_bundle' % x for x in (d.getVar('SWUPD_BUNDLES') or '').split()]) } \
 "
 
 python do_fetch_swupd_inputs () {
-- 
2.11.0


