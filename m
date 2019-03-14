Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308D0E00D35; Thu, 14 Mar 2019 07:29:35 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3A1E00D24
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:33 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id v12so4123404pgq.1
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=s7d485W3h+5u0w2LpJ9JlNczYFcPy2QDunWPhGeC4ig=;
	b=PDm2Ce278ums3b9sbHXGqLKuikZk+7tMsa7CeNT/qt5Zhr96VkYQXoLdvsNU/ccF+M
	qtLsmMgAKo6xWT8XjDJX1DiDlWGFcwE5RPFwM88tuk0mgFuM/svPpFQ7s3wLsxM2hq7J
	SKVFpIVTfllRZU65brHW7AnfOSDy8PigkE27dUJtQfXiJzrdey17dJ/MYJXe1NFZZ+44
	mB2dNFPhUVY/k2F86AidD3rqlcOA13GNygpF1iyRk5OLNw64M2w1B7Xt2Lv4164lgI6t
	JPtyOnEG9k9BsN+2xAuAeacpghZhbMTzIhj1B9f+axrI4Cz+Yo93G+22kPayfAZDbk/y
	Uakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=s7d485W3h+5u0w2LpJ9JlNczYFcPy2QDunWPhGeC4ig=;
	b=X20qmZ+Fg5Uo5Zs6E8a2J3XaMKT7pCIcUt29/fNqfJaTbia2pgas5R4hyNLUOBx+tx
	bpkHSxxkcm514bgAkqfPa3Jgq2N3N1KW5gs2euIJ4aBCUo0uHF+pxLcMwQJn35hfNTBL
	DSoHEzlzjsAxUKpNyFxQEK0OpMj5evCZmoAg9+SUVseWM5ajVZCxU+0uAin5BwO0j1n3
	AhGlEidiHkKKxB3v5Kx5ZzvDVy6IgwmDj5mga4t1i0nQrdoWEkdqZkdleyV/PnZuFkOp
	2xXGccCJs5tFc52U3YyIoBjv/g8buy+/AKEjLTmNCFkI32Lc+aNCSqZ5EH8sVLYTCIhd
	5JAw==
X-Gm-Message-State: APjAAAW7R8xEIT1TXHVWHMc34hMasBXOrT3vGANGu6rL9WEenx04LzXu
	loeO+UcbzzUhiwGhXr53vfIxJEwt
X-Google-Smtp-Source: APXvYqzWUiE/qJ+WpHW6NM5x7kRTuTUUAL4gzXVwwRH0tkBqv5Et7+wfoe0BohIO/ScRjex9PkIrew==
X-Received: by 2002:a62:41cc:: with SMTP id g73mr48588718pfd.145.1552573773210;
	Thu, 14 Mar 2019 07:29:33 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:26 -0700
Message-Id: <20190314142928.1458-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314142928.1458-1-akuster808@gmail.com>
References: <20190314142928.1458-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/6] tpm2: move tpm2 apps to recipes-tpm2
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:35 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/files/tpm2-abrmd-init.sh                           | 0
 .../tpm2-abrmd/files/tpm2-abrmd.default                           | 0
 .../{recipes-tpm => recipes-tpm2}/tpm2-abrmd/tpm2-abrmd_2.1.1.bb  | 0
 .../tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb                      | 0
 .../tpm2.0-tools/tpm2.0-tools_3.1.3.bb                            | 0
 .../tpm2.0-tss/tpm2.0-tss/ax_pthread.m4                           | 0
 .../tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch           | 0
 .../{recipes-tpm => recipes-tpm2}/tpm2.0-tss/tpm2.0-tss_2.2.1.bb  | 0
 .../tpm2simulator/tpm2simulator_138.bb                            | 0
 9 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2-abrmd/files/tpm2-abrmd-init.sh (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2-abrmd/files/tpm2-abrmd.default (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2-abrmd/tpm2-abrmd_2.1.1.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2.0-tools/tpm2.0-tools_3.1.3.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2.0-tss/tpm2.0-tss_2.2.1.bb (100%)
 rename meta-tpm/{recipes-tpm => recipes-tpm2}/tpm2simulator/tpm2simulator_138.bb (100%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
diff --git a/meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
diff --git a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
rename to meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 b/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
rename to meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch b/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
rename to meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.2.1.bb b/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
rename to meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
diff --git a/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb b/meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
rename to meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb
-- 
2.17.1


