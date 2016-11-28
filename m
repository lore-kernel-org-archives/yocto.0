Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 191C0E00A30; Mon, 28 Nov 2016 04:18:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
Received: from mail-wj0-f176.google.com (mail-wj0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC05E00724
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 04:18:15 -0800 (PST)
Received: by mail-wj0-f176.google.com with SMTP id mp19so114338826wjc.1
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 04:18:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=IgIrieP+rfEI0nHOPfoqfk7V6qp5CpRFDv1FD9GiJDQ=;
	b=O+cBSKTbdEEY6nJAglws21GSfr+BrPV9iO8EcBCeIXEPt2KnASQ6kvP+7oYE+MR5Zv
	Vz1w2iWOFivlN5AqyJzgdfQOfg4XzhrsEq3CojD2fQh2S0/+4eN2kJqIY4zR8qdH7DfR
	IgzJ9aXGAzlWwayxEGJt5yClhvFCt6+BTJWGjmnmn6F1dZBIr1QcsxbNRc4VFm3nZ5H3
	Yw916+mhdHFR8gWPLfTSQz/q7DVa2exaZl2C5VTIBJEp6wqZFJbtvvqtM8bfjRxzDJKd
	Czju1AS4ee256uHtC632PsAC6kmp3eaXwxCIsDurCRGLyrYVv5OPekxd/AOcNSRmoe68
	RWsg==
X-Gm-Message-State: AKaTC00WSe0Zx3Lnle1R9AZvAr1DueR872y4H2TEnB+rwXlTpgHXrsEzmw6G9jYVTFtVPg==
X-Received: by 10.194.71.228 with SMTP id y4mr21286727wju.136.1480335493939;
	Mon, 28 Nov 2016 04:18:13 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	v2sm62291341wja.41.2016.11.28.04.18.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 04:18:13 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 12:18:12 +0000
Message-Id: <20161128121812.31416-1-git@andred.net>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] swupd-client: fix invalid directory in do_install_append()
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
X-List-Received-Date: Mon, 28 Nov 2016 12:18:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 recipes-core/swupd-client/swupd-client_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
index fd4716f..3aed480 100644
--- a/recipes-core/swupd-client/swupd-client_git.bb
+++ b/recipes-core/swupd-client/swupd-client_git.bb
@@ -38,7 +38,7 @@ SWUPD_FORMAT ??= "3"
 SWUPD_PINNED_PUBKEY ??= ""
 do_install_append () {
     # TODO: This should be a less os-specific directory and not hard-code datadir
-    install -d ${D}$/usr/share/clear/bundles
+    install -d ${D}/usr/share/clear/bundles
 
     # Write default values to the configuration hierarchy (since 3.4.0)
     install -d ${D}/usr/share/defaults/swupd
-- 
2.10.2


