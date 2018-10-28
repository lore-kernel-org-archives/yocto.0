Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC97DE00C33; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EDF0E00C3A
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id 32-v6so2802479pgu.2
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=bTL3g2A31GQnHoCHV+IoUgrnbI7hMbzpWZdIS3m2ADg=;
	b=XTecszx+FaveWlzcMBDY3ZL4tPU9nmMCgq5MHPLkLzgFXGLwI4aidL9sIM94m92JzT
	RsRmNxrTmd2hmnulD6P5lvzAZ9I8xXUlA2ckH0kFtPlmW6MHocMGqTgmfAVlsB4AZmva
	VdgLSUORnYE5pyjGGhYa8bB1zzaZs92bm9CAiGdtWP6bByjQuXhTxCHnYBD8wxA8HDW8
	oG4wl561a3InHsn30GB+01xWhY/cVMHCq7L09vPoddjXUxBnmAnrlt6eLeBFxiW5UX2k
	7mMVZW1dOvBLO6fiQ65KaygH9Egm9Hrsj+zJnlpZByEy9yLXInOym382C6bWqLku7iTD
	NsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bTL3g2A31GQnHoCHV+IoUgrnbI7hMbzpWZdIS3m2ADg=;
	b=GUHdPlnzP5ZJIjOzUZu08Aoq9khoP8dLNIkUJj1EAwrxlLq1gyvZbpFxt0A/LPF55H
	lKP92BSsM58D/q+5AD4K2ZIFKmn5T06PKRcVu6Q3n6VPqIQZLRcCmEjEWd35Jk/XBZ9h
	ZUak7A9shpG7ksERRrZ7TE4YfCjyQ8+nF/qc/YwrcZghY6ZPyZagAvnUV6eOQ2f2tzm9
	R3J+2T7YF5JRssvgwPV3Vr4RMgRileJH2acii6D0YHQ6Bss0yjsnCTDUO9YpC6saGa2t
	EPAp4GcTNPq+xsr1JcS6OLAfdSBnnFGH2k+hXsG+e1kyTpC56OUOTG+3DMEBWQX8nW1J
	1Bmw==
X-Gm-Message-State: AGRZ1gLtVWTkrWCHR5Qu2irC0igxZ9XgpBa0GVBc1E8HRY5Q3o5eW/Nm
	r8GNay0hEZdJmvhQaGPnF6CmeJva
X-Google-Smtp-Source: AJdET5dHus8EsFg9xKcHN25pmEfReGB+x3OdbKlaLyOBmJ0JbModJmLnBh+H9DnUujcQ2NyWLLoNoA==
X-Received: by 2002:a63:6746:: with SMTP id
	b67-v6mr11065524pgc.310.1540752641417; 
	Sun, 28 Oct 2018 11:50:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.40
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:28 +0000
Message-Id: <1540752628-10832-13-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 13/13] layer.conf: update ptest var to align with core
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 76f5bd6..19e647e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,4 +13,4 @@ LAYERSERIES_COMPAT_security = "thud"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
-DEFAULT_TEST_SUITES_pn-security-build-image = " ${MINTESTSUITE} ssh scp ptest"
+DEFAULT_TEST_SUITES_pn-security-build-image = " ${PTESTTESTSUITE}"
-- 
2.7.4


