Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B59EE0082A; Mon, 23 Jan 2017 05:25:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C7A7E00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:25:41 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id c7so62490258itd.1
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ZTzG4x9VX/AkIA8BcA2ljDYiccqFIvlnKwykrn6K4pg=;
	b=fHBxzrVtg9TPBaSG/dbSz+nRyYRrhNpvuKS6fF0kFoj5b6KEnw+93neSkNrmEC/uXN
	x2sAbWq+d1US6Ryt++1iWeF73jB5h1c/upWNowMaovuZ3i6tSDg9GVJ5njFS2J0xt1NH
	/UprhDVx1YKsYSurwqVfGmRIOo9qyHEKbi0AN533+lQEFePCZCaAikXD+uaC9Ys1y5GK
	Ux3Imh3yb/0oP4lwyfAHvS93+nrXyAfgN1RxCbsveQMAji+8+mI1HAZAQ12q1jyfYr5/
	kpz6vnUcdhAvW9kt9ao9kaIoefbvCMVixXYTFnhjkV3LM8nCBrunPmGSlmy1/twGUMNn
	Z0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ZTzG4x9VX/AkIA8BcA2ljDYiccqFIvlnKwykrn6K4pg=;
	b=YR2TVQQhDKdnmOLFpT67ErjLyeFO/+srHHFScGNu1Ml3eyicAHwTUOlIOlHDK9izXK
	HWDiVmLYQQkJew0XzOahmpgOQ2FI1zwtJtc0s44OnvxNVD9X3xhYKuvnQ37ZFGnR9+/g
	jskAwp4yJ6Oh07mohkiT0sEHbOC3FVIW5T0SWFiIgF9S5tZYqt7Sf/bXL3D8yb/4VS89
	O9/njwoLe4zOnK1WPx7a9GutrRoOby3SH3zwOBowhKkXJI5i34ubQtUC17IzDZTdSVAg
	EmosHuuMlkaFm9+IkCGxXD1YBH+R9/wBOq2H95b8uI2f+kFqh8gwq53RqDrMPMwrKzwW
	/5Uw==
X-Gm-Message-State: AIkVDXJ/8jkqbf0c1PFVwg71do4HJ0188bkWOwyIXwVECNNhM27qa+zFfXJon2Pni6wnUkPJ
X-Received: by 10.36.4.2 with SMTP id 2mr13799708itb.116.1485177940501;
	Mon, 23 Jan 2017 05:25:40 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8FC12.dip0.t-ipconnect.de.
	[93.232.252.18])
	by smtp.gmail.com with ESMTPSA id z42sm6378217ita.6.2017.01.23.05.25.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 23 Jan 2017 05:25:39 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 14:25:32 +0100
Message-Id: <20170123132532.31749-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Cc: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
Subject: [meta-swupd][PATCH] swupd-image.bbclass: avoid depending on time command
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
X-List-Received-Date: Mon, 23 Jan 2017 13:25:54 -0000

The time command's output is merely informational and less relevant
now that performance is better than it used to be. Calling it
unconditional is problematic because some build hosts might not have
it.

By default the command is no longer used, but can still be enabled
locally by setting SWUPD_TIMING_CMD = "time" in local.conf or
site.conf.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 classes/swupd-image.bbclass | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 78a26ac..771a416 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -338,6 +338,12 @@ python do_fetch_swupd_inputs () {
 do_fetch_swupd_inputs[dirs] = "${SWUPDIMAGEDIR}"
 addtask do_fetch_swupd_inputs before do_swupd_update
 
+# Change this to SWUPD_TIMING_CMD = "time" in local.conf
+# to enable timing the individual swupd server command invocations.
+# Relies on a build host which has "time" as a shell or system
+# command.
+SWUPD_TIMING_CMD ?= ""
+
 # do_swupd_update uses its own pseudo database, for several reasons:
 # - Performance is better when the pseudo instance is not shared
 #   with other tasks that run in parallel (for example, meta-isafw's do_analyse_image).
@@ -504,7 +510,7 @@ END
 
     invoke_swupd () {
         echo $PSEUDO "$@"
-        time env $PSEUDO "$@"
+        ${SWUPD_TIMING_CMD} env $PSEUDO "$@"
     }
 
     waitall () {
-- 
2.11.0


