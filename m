Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B8A1E00CDD; Wed,  1 Aug 2018 01:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1284E00CCE
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:52 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id t2-v6so6276754edr.5
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tmrUWvnAtMQkZuL0lxPBGxdSjBHnF4ng7Z34pz3Pw9A=;
	b=afbx19HPJXn7fW+8qgReHIcZvG6oJBakDmmjzI0RaK81ORUQ3lAmlwjQ5Plp9BALXD
	c1Ndz/br321LdQ1wcdRXFzIKwFSOxMwVO93o0hgQ177qa2q361INeAx+t55bA1TrKB5u
	isDAGGh0vLo/ewi/aWgIIm1sik3RBdfvibo19zDrVMqUSgcdMoUBJBswJHXd2MKyqp/A
	mgmXKJlp/LAZlvjdhLAc4S+J3Kv3tod0+81wcIVD5wdKER9L4ORSkRFJbFxA++IVjsCS
	CQBAwUVu8j0azrFfZBxTGyzml+3B/YztY/OLpl4232URjV/4DempmSgLdsEGFrEP3Dd4
	f3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=tmrUWvnAtMQkZuL0lxPBGxdSjBHnF4ng7Z34pz3Pw9A=;
	b=gi7VwRVpsc15bU+fIB4/TT+T65LySZTuQv1WE6Or1UggLDejVgUIpgJpAoJk6k7nYd
	dRUaMKpp2hhUqRfF7PCmnhb+bidRX+zJyGblFpQ8CxrRQ+V6yrvFSz1jcmPWB+pajc+5
	GMlLdWh0em6ap7r5iBvi3fCNm88FqGvNodVWNvNcFFOX8Tcualoc+0T5YNJkTit7Cprn
	cwqbm/HUqUHMCrZFmJ0iXfBMkeAj1ZEbzi9ixxJ9ysKyro2ajuJDaBDvwIpGKvpqUgbf
	pKt+n/Qndtd4W4ymw85BiHznGVzoArWnuWAvcHd7HYpOx30Z874fj/te2SynDwYfB0NG
	vY7g==
X-Gm-Message-State: AOUpUlF19z9qhXs09U+7KdVtvFRjA62CwvxcMKpXlt5CiuP/yEbvXOnc
	PRglJD7QhoccBbaXk3AcNLb6r+a7aLE=
X-Google-Smtp-Source: AAOMgpe3F9RDAf6bHQNcLePnEfRtMgx8PWApRzAR2KLY0w2mgcFyPlioJqUqSyOjAVxnrOI+o9luQQ==
X-Received: by 2002:aa7:c24d:: with SMTP id
	y13-v6mr2926433edo.266.1533110991915; 
	Wed, 01 Aug 2018 01:09:51 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:51 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:27 +0200
Message-Id: <20180801080927.26522-10-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 10/10] suricata: rename ${PN}-python to ${PN}-socketcontrol
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:53 -0000

This describes the content a lot better. RDEPENDS are still missing, so it's still as non-working as before :/

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 8ea1486..6efa351 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -73,9 +73,9 @@ fi
 
 SYSTEMD_PACKAGES = "${PN}"
 
-PACKAGES =+ "${PN}-python"
+PACKAGES =+ "${PN}-socketcontrol"
 FILES_${PN} += "${logdir}/suricata ${systemd_unitdir}"
-FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
+FILES_${PN}-socketcontrol = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
 
-- 
2.9.5


