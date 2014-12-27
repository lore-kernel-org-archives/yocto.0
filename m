Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 675E1E00830; Fri, 26 Dec 2014 18:48:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
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
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E11E00571
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:24 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id et14so14060052pad.1
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=1OXweuqxXiNkKRs/NAor0jvNPUNG2zkWctmT1glG0s4=;
	b=bhb08z7vFNcgznxWmBTSvkaAkstDn80SHsCGn/D0fhd59N5rKQqcF5cE72MObriDj5
	kg/w3fQuDC8GiR2S4yWq5joZU45mNTabWXyPpH0TVNiLl5WlVjjfCpc+n1MPKmJ37DJq
	umn8r2YVD6ScZDLRTwHYH2bAudGr7wbIFkyo6e9PKjKqAGnx++nRKe2QdtJcEw6ytw+i
	b9mqTKmnO9e8yl+dojiaBwiRkj7+i922jouALSi8j6J+IbpLrUOWSFbshHTgoZi9yK9/
	3CXKvLTnugT7afDu6HnOZySRweHkNreoBSyG3P9Q0/EYDNvsIbQwLuTaLAS1jEzkvOTo
	veZQ==
X-Received: by 10.68.211.193 with SMTP id ne1mr73114661pbc.49.1419648504220;
	Fri, 26 Dec 2014 18:48:24 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id s3sm26212811pdg.28.2014.12.26.18.48.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Dec 2014 18:48:22 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Dec 2014 18:48:16 -0800
Message-Id: <1419648497-10738-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1419648497-10738-1-git-send-email-akuster808@gmail.com>
References: <1419648497-10738-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] perl: reorg recipes to match meta-perl.
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
X-List-Received-Date: Sat, 27 Dec 2014 02:48:27 -0000

move security perl recipes to a more standardized
recipes-perl layout.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 {recipes-security => recipes-perl}/perl/files/libwhisker2.patch     | 0
 {recipes-security => recipes-perl}/perl/lib-perl_0.63.bb            | 0
 {recipes-security => recipes-perl}/perl/libnetaddr-ip-perl_4.069.bb | 0
 {recipes-security => recipes-perl}/perl/libwhisker2-perl_2.5.bb     | 0
 4 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-perl}/perl/files/libwhisker2.patch (100%)
 rename {recipes-security => recipes-perl}/perl/lib-perl_0.63.bb (100%)
 rename {recipes-security => recipes-perl}/perl/libnetaddr-ip-perl_4.069.bb (100%)
 rename {recipes-security => recipes-perl}/perl/libwhisker2-perl_2.5.bb (100%)

diff --git a/recipes-security/perl/files/libwhisker2.patch b/recipes-perl/perl/files/libwhisker2.patch
similarity index 100%
rename from recipes-security/perl/files/libwhisker2.patch
rename to recipes-perl/perl/files/libwhisker2.patch
diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-perl_0.63.bb
similarity index 100%
rename from recipes-security/perl/lib-perl_0.63.bb
rename to recipes-perl/perl/lib-perl_0.63.bb
diff --git a/recipes-security/perl/libnetaddr-ip-perl_4.069.bb b/recipes-perl/perl/libnetaddr-ip-perl_4.069.bb
similarity index 100%
rename from recipes-security/perl/libnetaddr-ip-perl_4.069.bb
rename to recipes-perl/perl/libnetaddr-ip-perl_4.069.bb
diff --git a/recipes-security/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
similarity index 100%
rename from recipes-security/perl/libwhisker2-perl_2.5.bb
rename to recipes-perl/perl/libwhisker2-perl_2.5.bb
-- 
1.9.1


