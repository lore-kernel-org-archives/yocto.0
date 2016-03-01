Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8517E00D00; Tue,  1 Mar 2016 15:52:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (h4nn35.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4952E00CC8
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 15:52:10 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id l68so61262750wml.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 15:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=VDurPDQbB1Wm2hbMc5+lQ8JI/HgSech7HMHhR0aXg8E=;
	b=sCB9hrafdZQHE1mchK2UyNEgFaG3LsJgagvWbt0UdQnF/jhIp0+6X1FuoYmwaRr+hH
	woqMCeQ15Deeps935bRsegvikQFR8/tJndLL+ZaCj2EYXB1MJyj68HD+xyUNXx4bZp3e
	b9nH5l+jzC++iEYlvEfdSDfwoLZyqjcY++LtT3amwv9zo88FJtb3DJsTzPHr2PC+GWqj
	Sh5ngP+mlGH1mLVnMq7F5GRcoem+6A0+m/78ZglXoywlC6zmyGGLsyv2BwrwhQR6e2WH
	CcwA73Gq9tweqcpKYOzV8DPeBflUv1KJW4W5fj1+7UQRNZVV7+sjxFp/zqaiPtPgkPuF
	LdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VDurPDQbB1Wm2hbMc5+lQ8JI/HgSech7HMHhR0aXg8E=;
	b=Wh1z2gPY87/5wtnhhtM2lJvKwqHATXg9UwgDG1Cdc1s7VKD08BTbP9BeYzMU+G8QvE
	CV5ew6BQLeaRvOT6r3C7alYFNHAPqPcu4QPRYOH/UwHQrWDkSCiIi+wjbi1JkBHLHKmb
	/C6swfgpoijhVvvWcsRTpKzQQAg1BTAPpU/8eHsqSjS7HZyswEGaPVGWLLy8iPZbxYOe
	JifD9/x5NrniOjDM8EKPL0bEcNCTJ8bp6zi1lQCAx8HNrOawViybFi4e1px5okehvlPc
	NYAQ6hyf2EO2iGweYuAOna6NRP2zTmCNc87vGy4dpZ7Rrs4ysggQ+dhThFLZIM9GQTdq
	JVNQ==
X-Gm-Message-State: AD7BkJJy7zqniamvwBiSKZScjlvBGMTTMTKC/M0HVI2H1QvMM5PFaEX01mjnYKZ6/m5vJg==
X-Received: by 10.194.86.68 with SMTP id n4mr27043350wjz.150.1456876329864;
	Tue, 01 Mar 2016 15:52:09 -0800 (PST)
Received: from lenovobook.localdomain
	(ipbcc1bda1.dynamic.kabel-deutschland.de. [188.193.189.161])
	by smtp.googlemail.com with ESMTPSA id
	xx3sm33077226wjc.32.2016.03.01.15.52.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2016 15:52:09 -0800 (PST)
From: Johannes Pointner <h4nn35.work@gmail.com>
X-Google-Original-From: Johannes Pointner <johannes.pointner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:52:02 +0100
Message-Id: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
X-Mailer: git-send-email 2.7.2
Subject: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Tue, 01 Mar 2016 23:52:41 -0000

This patch adds several cursor to the transparent-theme which are
used by Qt for example.

Signed-off-by: Johannes Pointner <johannes.pointner@gmail.com>
---
 cursors/Makefile.am | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/cursors/Makefile.am b/cursors/Makefile.am
index d699942..587f4e5 100644
--- a/cursors/Makefile.am
+++ b/cursors/Makefile.am
@@ -26,10 +26,17 @@ CURSOR_NAMES = \
 	bottom_tee \
 	center_ptr \
 	circle \
+	closedhand \
+	color-picker \
+	copy \
 	cross \
 	cross_reverse \
 	crossed_circle \
 	crosshair \
+	dnd-copy \
+	dnd-move \
+	dnd-no-drop \
+	dnd-none \
 	dot \
 	dot_box_mask \
 	dotbox \
@@ -40,21 +47,27 @@ CURSOR_NAMES = \
 	exchange     \
 	fd_double_arrow \
 	fleur \
+	forbidden \
 	gumby \
 	h_double_arrow \
 	hand \
 	hand1 \
 	hand2 \
+	ibeam \
 	left_ptr \
 	left_ptr_watch \
 	left_side \
 	left_tee  \
+	link \
 	ll_angle  \
 	lr_angle  \
 	move      \
+	openhand \
 	pencil    \
 	pirate    \
 	plus      \
+	pointing_hand \
+	progress \
 	question_arrow \
 	right_ptr      \
 	right_side     \
@@ -67,9 +80,17 @@ CURSOR_NAMES = \
 	sb_up_arrow \
 	sb_v_double_arrow \
 	shuttle \
+	size_all \
+	size_bdiag \
+	size_fdiag \
+	size_hor \
+	size_ver \
 	sizing  \
+	split_h \
+	split_v \
 	target  \
 	tcross  \
+	text \
 	top_left_arrow  \
 	top_left_corner \
 	top_right_corner \
@@ -77,9 +98,12 @@ CURSOR_NAMES = \
 	top_tee \
 	trek \
 	ul_angle \
+	up_arrow \
 	ur_angle \
 	v_double_arrow \
+	wait \
 	watch \
+	whats_this \
 	xterm  
 
 CURSOR_DIR = $(datadir)/icons/xcursor-transparent/cursors
-- 
2.7.2


