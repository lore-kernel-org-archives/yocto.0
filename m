Return-Path: <meerkoetter@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10835E00C2E; Mon, 28 Nov 2016 11:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (meerkoetter[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A68E5E00BFF
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:51:06 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id he10so1207016wjc.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Q2Af4RNFVB5z9+sMaMXuOVeB4oeD0oMB+0WTguRNaRA=;
	b=WVM8OvUBaNyZHvnISL9p4kVQkl9bD3JaOHQGpGuncSOC62Rz/+TWFCn19/31+1kcpJ
	gJek61J6M/ynNccpkkt2L9tUPXwJvguVGNSPLNI+00jBUH6IYStK9aHLXm7UY3LaKgBy
	RH8On0drHbAOW6CZA2tfsBWQhw2ZSWZMJDWkzxllbJMWyDtGjpeLFxmVDYBhj52hBWES
	kNQnBx5I+Y725BOS7PPQbhTCFgwKuL0uC3jgMS3VeW8pXUzd6PWJIYFJIs6PNauBJljW
	4TjSHwsFRgjQBe14KVmuJddmIgLfWOs25TgW394BsLwpa4LM8NpatMiy5LzJ2azA/scZ
	4zow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Q2Af4RNFVB5z9+sMaMXuOVeB4oeD0oMB+0WTguRNaRA=;
	b=fMtORduwYXMO7uKlseBFnh+mLDtm2Rl4GtRfxIlv0/F+6WvJ28F6Qwep1pqd+1H6CN
	HXZpP7bJqT0KNVpzjpje0VunQINuwXTYMZFgFOT6Uau5jUiG8CkJw6HAQyIAl36XV/6W
	rgGPxVrjaPzynpra6QDbTKnUE2B+fDqaHYn5knJB0c8jgGZxWPgGr5W/3bvx5VG11MwS
	ZkdjBoGJSYofTHa3nuSi0ykDUREyCNVddqPsr5ijLlyMI3kwJ2M6xrN1+x3xYxP8U23B
	v48gz0of+ycqPJJQN8mAvO3s1tBOg5p38UNvZyIW1YhCoiuhEAkkTLR/N0B9XQ2ffZ8W
	Us4Q==
X-Gm-Message-State: AKaTC00PQpzAcLWo3dD2kQwTgXEbrEx+BKLpxZ89U2G7SoZVRDLvdyKMd6TN6CT6neHFqA==
X-Received: by 10.194.145.197 with SMTP id sw5mr20540948wjb.156.1480362665391; 
	Mon, 28 Nov 2016 11:51:05 -0800 (PST)
Received: from naos.fritz.box
	(p20030071EF27C90038C08788B208AAEC.dip0.t-ipconnect.de.
	[2003:71:ef27:c900:38c0:8788:b208:aaec])
	by smtp.gmail.com with ESMTPSA id
	b3sm47839321wjy.40.2016.11.28.11.51.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 11:51:04 -0800 (PST)
From: Frank Meerkoetter <meerkoetter@googlemail.com>
X-Google-Original-From: Frank Meerkoetter <frank@meerkoetter.org>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 20:51:01 +0100
Message-Id: <1480362661-11072-1-git-send-email-frank@meerkoetter.org>
X-Mailer: git-send-email 2.7.4
Cc: Frank Meerkoetter <frank@meerkoetter.org>
Subject: [meta-chip][PATCH] Fix unclosed file
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
X-List-Received-Date: Mon, 28 Nov 2016 19:51:10 -0000

WARNING: /projects/meta-chip/recipes-kernel/linux/linux-chip_git.bb: <string>:14: ResourceWarning: unclosed file <_io.TextIOWrapper name='/projects/meta-chip/recipes-kernel/linux/linux-chip/defconfig' mode='r' encoding='UTF-8'>
---
 recipes-kernel/linux/linux-chip_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-chip_git.bb b/recipes-kernel/linux/linux-chip_git.bb
index 6f0b193..38df4ad 100644
--- a/recipes-kernel/linux/linux-chip_git.bb
+++ b/recipes-kernel/linux/linux-chip_git.bb
@@ -69,4 +69,6 @@ python () {
     if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
         depends = d.getVar('DEPENDS', False)
         d.setVar('DEPENDS', depends + ' lzop-native')
+
+    configfile.close()
 }
-- 
2.7.4


