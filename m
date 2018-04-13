Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91C67E00B66; Fri, 13 Apr 2018 15:47:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18CD7E00B1A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:47:46 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id t20-v6so6853753ply.9
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=RFrGmJaBKlVtJrOwGFPs1gFXMbrUPo31V33Jlgl/45o=;
	b=CmSzASbqMgu+tMfu/FK7ykfeJuy6hoy+dUMyKBNhCYUzKuWdtZaRST1hRbbhsvxO03
	x8JL+7NFMxRpISvgHEn2PVZeGBU2zaqZYgSxzLk4KNk9+lGPh35Hk87tnr8Eg4VqvYVc
	YIhW6j7BeeveoFD8xkLZKxOGFiP8mJ0o+FNuast7ot5xb8Z1eSNGC5cMVOz5dcZWIaRD
	D+SlksoNyBby74i7zcIlKD4EIXo0bMyAqkT/xFomwhCTse376+Xm3JLBroy24mHH+1g5
	eojyDTT7GytQPfQwQX9U/tiCbMpYFN+ApBEt+ezx+7YNC1lmuLngqWLMeyGCRlU+Gp+Z
	bmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RFrGmJaBKlVtJrOwGFPs1gFXMbrUPo31V33Jlgl/45o=;
	b=DNEmykW2kS8lWAyosV7ojT0ZEVZ7YCrO/8gSUPRQ5iYQZOJ1kBGZMn0bLRD0edIeV6
	NbdtTAofYsHg4GicOTHbqqa+S1aNBQN5tfrBIlmG6IU6oIujx+5+yT+7AI6l5S1s7HqK
	r0kCQJyt7PAaDLm4SfFSDWJT8/Oc8jiKsNt6WnfcYOpnBqTchkNrtsbGLj3gMMmekdb9
	jq6cKrn/tALxtcX3cZ+yBrkPuAyrlizEEX/mFah1CRB9RYVJdUVLOEykK82tI4wvJrko
	9EqiIIMyLHAxZE5fM9hISmwRT4lbgVTLGkDztdKJ8YWPev27mzJKsWmnU33s0JG7E5C0
	reog==
X-Gm-Message-State: ALQs6tBG16KxuYbilzWCHw18P3jCMPQ1k3T9fsxPbRvpWFxRAdIss7sj
	8qzKbV8UeWQfnCPso1dG7fo=
X-Google-Smtp-Source: AIpwx48en5hfQYL79pubn/VCIJ2eujdXOeMchAsaKa3Qud56/fRr5eKbuZJ3fwB8TkvOd0DhXJJ3DQ==
X-Received: by 2002:a17:902:584:: with SMTP id
	f4-v6mr5803640plf.290.1523659666775; 
	Fri, 13 Apr 2018 15:47:46 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	v1sm13785996pfg.144.2018.04.13.15.47.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:47:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:47:44 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:47:41 -0700
Message-Id: <1523659662-18201-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt3][v2][PATCH 1/2] layer: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 13 Apr 2018 22:47:47 -0000

[v2]
Fix type in name

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 84ab5f7..0197197 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,4 @@ BBFILE_COLLECTIONS += "qt3"
 BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
+LAYERSERIES_COMPAT_qt3 = "rocko"
-- 
2.7.4


