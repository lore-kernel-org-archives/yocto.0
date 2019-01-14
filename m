Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D9FE00CE0; Mon, 14 Jan 2019 06:42:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C40E00CDE
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:18 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id a62so9168644wmh.4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=RsAReTjsgB3mr1cA/m/2R4X0OlahjWGUGoMCg4InOXw=;
	b=jMwrnqQz83pReHOeaNiKwxZfohMwVq+mChoj/EmkkkcJi7DyT5sWe7qZLhDAn4bPOq
	dFXTuncjN+xADUYU7qY6MRDWzXKL50fycUn/KVponvR/YovTl1OwMZpF8+8GhBEdAVJl
	v316FI7Pk/WmS7dWHJ9LrtraKIKC362o58vlB0tAi5WPInnohn2xwvcSU3BrpbyDpm3l
	GSSI1qSou6YNW6Ag+aX6uovu1bILiAJdT5lpN0k5IZiAXZQiKJzSV8W61hD1gxtc82I7
	4VX6977rOzlDXs3zhGuRILm1jYuiOzQmTXuFOd1N+nukePb6b9xm1LhB4PgBaqltyDK6
	9Leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=RsAReTjsgB3mr1cA/m/2R4X0OlahjWGUGoMCg4InOXw=;
	b=H/G+SNpZiG+PEYZ1gugWUz1InOI7s/WIRpvNpSiC7zXc6vZ5d9BOmpEhQTE/N+qMMN
	ItSkxWoutzusavmWal+YZQiLg2IBltGQTrk/y0JAm+E7dqa1IdRlhXuGTXvArNY3Qdoj
	zN3wx1b8a/Gfi3rAFFDvhXOyyDF3AzfTiz6d6uljylbXlZ1IU/4ZLV8KIZWw1OyPA6Qa
	BClEnprK0uAQwClLILuKjPkJ2iXzdFg/1KOVVKbFpSDo+sCm2cMAPDgvOvTo2A1VLfGN
	TGTbld5jx/qbati81L33dohKq5caDMbP5U+hyCpBL3ACb8q54KFfxCu3MbZM6U91AaAl
	iUHQ==
X-Gm-Message-State: AJcUukc8aoxxGZLU+5u54X04m+5zfPKlJcRiHYHnBQ3wUQL7Z7iAQ4XO
	1uHD0ron0yF8TNG7lO4Ir4qVESnxa4c=
X-Google-Smtp-Source: ALg8bN6MOzIRjUYLU1Q1neeprZJVojigE1K05LFhMZxjTZ5ihmLlBYAeRkgp0hwZYGCeJEeY6qLUzw==
X-Received: by 2002:a1c:6607:: with SMTP id a7mr11690571wmc.129.1547476937273; 
	Mon, 14 Jan 2019 06:42:17 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.16 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:16 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:41:59 +0000
Message-Id: <20190114144208.14353-2-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 02/11] README: remove Saul from maintainers
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:19 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README | 1 -
 1 file changed, 1 deletion(-)

diff --git a/README b/README
index c15fea9..5abb0e2 100644
--- a/README
+++ b/README
@@ -65,7 +65,6 @@ $ git config format.subjectPrefix meta-security][PATCH
 Now you can just do 'git send-email origin/master' to send all local patches.
 
 Maintainers:    Armin Kuster <akuster808@gmail.com>
-                Saul Wold <sgw@linux.intel.com>
 
 
 License
-- 
2.11.0


