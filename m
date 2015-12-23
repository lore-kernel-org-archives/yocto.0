Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E43FE00C95; Tue, 22 Dec 2015 17:41:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01886E00AF2
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:20 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id q63so8612409pfb.0
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=CRYaEDNP00QvCFSTWUTJPi1YZIqkrGMmXguQRuq0JOw=;
	b=zWZ2ZGgSBV2vg4Cq/mG0lVqLa7OxjSqt2a8lVstRwCAcNFxX2503PIkeE9BygrX3HS
	fAddvqWGMeCyGhmxkrVOGTPtQJ+wnFDM76XBCdh0KBzQjp7KCM1My0yt9ie0svVSu0/n
	8WXe7z83ACearC02P29Hx426pksaepahMecMW/3+YglYpuXCOyyfaYZtfVs4gOSJ7FzN
	Skc/Vwo/F/X+tqQSs0QJJejzuARsUWxtpjhx7ML3aGza3hIBei+eP2iyOpE/7FcMHmvi
	BsMmM/9NNJkWXfn5s4VcLszmqSDpGU7bAFhp2YhEApTpYJnrHbtT1S8YJ21cRpOQ43yH
	wSqA==
X-Received: by 10.98.80.138 with SMTP id g10mr40346975pfj.25.1450834880130;
	Tue, 22 Dec 2015 17:41:20 -0800 (PST)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	l80sm18441716pfi.76.2015.12.22.17.41.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 22 Dec 2015 17:41:19 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Dec 2015 17:41:14 -0800
Message-Id: <1450834875-4520-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1450834875-4520-1-git-send-email-akuster808@gmail.com>
References: <1450834875-4520-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] samhain-client: update to 4.1.2
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
X-List-Received-Date: Wed, 23 Dec 2015 01:41:23 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_4.1.0.bb => samhain-client_4.1.2.bb}          | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.1.0.bb => samhain-client_4.1.2.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.1.0.bb b/recipes-security/samhain/samhain-client_4.1.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.1.0.bb
rename to recipes-security/samhain/samhain-client_4.1.2.bb
-- 
2.3.5


