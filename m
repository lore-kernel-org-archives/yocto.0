Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D1D6E00857; Fri, 13 Apr 2018 15:41:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 219D5E00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:41:31 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id x4-v6so6842103pln.7
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=j0t/X2ggzxuSKveJcjQ+d3vUp2ds3POACFBhLHTPb5U=;
	b=YzLQVjnOM3nO3JJ0f1BZKvr3BoU9+DlCSaz4YX4n3NZasjfcyLYba7Q3MwbwrbMpSl
	mnjdsnA1xS5Blv0mqIh8LiOawJ1qPOQ5YmAOX9HM+Cnvu5o5kA9LKuD+D60RVkwVNfKl
	EOg++yu0w2kNfhYAky1Q3N+ID75qZcNrGdeR2xwyhifUQ3eKM2qTFvibCramuUCY1UJn
	f/2P4Q+85+4sAki8Y27iOxIAqiCK4mwN+8AbQW820kJpLvwf0SWAx5h5KozVxgL06eS4
	0p+qBQ64MIDis4WcETEKI1DysGeTbFWhHLrSEN9Xi2s/Athe8AMEecO3Bh594mH3JpiE
	V/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=j0t/X2ggzxuSKveJcjQ+d3vUp2ds3POACFBhLHTPb5U=;
	b=apdoLHoaUjRCgmqFARIpPFsS9jjmjyEM6PTxdKxKsuzHwvB8nzb26usBeMwP/ttqes
	0cMw737enRa0Gv3TwXSDdzQHFLylvhSNJYF+lYblc5pXNtNmU9wwQ0gHApASkYZuKbQL
	oNCb2w3DKhfr3ZqM6HtsR7UBglaFrvm4aEwtR2m6BFzfuZ+ZGPYK6B3qa+PLySwbfm4Z
	zLC3R/XKb8zuUTAZkRJiSEGkgL8h0hb1GPAYWCuQM0K+qyBuvhQesM1rvQaMKOWc03re
	AYjq1I6Q1zdCunYPbYt44SN/0fCr+3hConEQlNl1m2Kq0Xr6+mF/Ksh9kypN1SN7lMeX
	iBQQ==
X-Gm-Message-State: ALQs6tCAnFEm3Rogq5C1GTqfu0OhwqlUbHj/2KiymUkbwqSbLB3V+PRB
	tliACqcPlUFWVEMrYy4QUTI=
X-Google-Smtp-Source: AIpwx4/4HQIjHPsjWa2EIqpk/PUeVeI+Gycc84ktGBVi9cxDZ3e4iqF7IbzVydYZDtN6Kp/qkHitkw==
X-Received: by 2002:a17:902:76c3:: with SMTP id
	j3-v6mr6846732plt.257.1523659291444; 
	Fri, 13 Apr 2018 15:41:31 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	w12sm17364235pfi.180.2018.04.13.15.41.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:41:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:41:28 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:41:26 -0700
Message-Id: <1523659287-17805-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt3][PATCH 1/2] layer: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 13 Apr 2018 22:41:34 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 84ab5f7..2100ffb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,4 @@ BBFILE_COLLECTIONS += "qt3"
 BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
+LAYERSERIES_COMPAT_qt3-layer = "rocko"
-- 
2.7.4


