Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8305E00953; Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 839D4E00953
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:28 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id d19-v6so6517977pgv.1
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EvwzzFreAiHkrdwBlkezBzerJDf4BfRBN/XTbWLtjO8=;
	b=g2RUsKz4wkotcbbXZwtj6qbLcN6SQlcVYvNciMz+w8avQCZu8mtkMbGtlcSC9gvUq4
	cKBU7cfIU14oWeZkGsMHa0tnscT9PDNOBHCs4liis98L8JAtILckSmFVUuPEBthAJyel
	WwtvuVJiZNPUVI+uuKza3scIOyz6LV+xK9W8w/3ul/Oi55l3CybiyKDr39aRYwIn7u9J
	xxCsL9OHEWzFM4ZuSEvhaOHJwS8dZ8iQS3nyRwk5PUpvUfuD49k5qpFzbEwSkyfXubf6
	60UU9j2gfwAx/loRvXCp4SyLHtL+shklfr0ldoyOvvRbsCHwUhoCQoWEi7H/8cC5K1wf
	5xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=EvwzzFreAiHkrdwBlkezBzerJDf4BfRBN/XTbWLtjO8=;
	b=VUIjPJ/ZiB8thZYTA+Fqbk10kHaqTlwL+vXpk6Avnn2WJBYBcbFUmIVeY4N5xX7ksl
	BY7G5HJVAJ1ir23FNbRy7bozhvnpD9Keyseoh51UloxVboKqSRFCdZa6wngGJZyho9HL
	IphEOXi4QLCo8nXZCHllztQ5vFLa6GP7KnsnawgoOOs793Tv9S2d1n3R+fFxoW5Rnx9z
	U1lnlhrNFLRw+hNlTLdq4HGn82iFVyphQU54BBA5pMCS8EAWVAwyjqxLrlPoINZ63kP5
	eM3vtqs0eaeDSI26HiMMX+F6Q/UfHTdm19AHzYKxZxQjnE8E3Vj67erh/z4b+wShdwpP
	ZT6A==
X-Gm-Message-State: APzg51AbYgn58kYJwTIERMRmaDsW5xuoSPUqrA+Hc/k+aygFraQaYH9H
	ENpZxHSx34vIM+iMRgZJh1jVCZcb
X-Google-Smtp-Source: ANB0VdYqsHnOdXxyyzrvgP8HeIkZ9A/VaYZDWsolGxvO4F4l8LkYKn+aq6+SVamD4PdkDTg1FVp6Eg==
X-Received: by 2002:a63:174f:: with SMTP id
	15-v6mr16279708pgx.31.1537113447900; 
	Sun, 16 Sep 2018 08:57:27 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.26
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:01 -0700
Message-Id: <20180916155719.9911-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/25] openscap-daemon: update to 1.10
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:29 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{openscap-daemon_0.1.6.bb => openscap-daemon_0.1.10.bb}   | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)
 rename meta-security-compliance/recipes-openscap/openscap-daemon/{openscap-daemon_0.1.6.bb => openscap-daemon_0.1.10.bb} (86%)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
similarity index 86%
rename from meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
rename to meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index fb01a11..a6a9373 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -8,11 +8,9 @@ LICENSE = "LGPL-2.1"
 
 DEPENDS = "python3-dbus"
 
-SRCREV = "3fd5c75a08223de35a865d026d2a6980ec9c1d74"
+SRCREV = "f25b16afb6ac761fea13132ff406fba4cdfd2b76"
 SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git"
 
-PV = "0.1.6+git${SRCPV}"
-
 inherit setuptools3
 
 S = "${WORKDIR}/git"
-- 
2.17.1


