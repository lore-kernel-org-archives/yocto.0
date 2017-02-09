Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58893E00A5C; Wed,  8 Feb 2017 21:49:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCADDE00A0C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:28 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 204so16933537pge.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=WEGGpMBu8hs7YaMbKUgMU+DM1tn9csKKrQjQix5nDyQ=;
	b=ebNiUI4v46G+VsMXb0y/710fzqXzfxTsM7AFJh+I9SX5bwulMNgiBSx+dnAtp60b0v
	jebCJ95H0IXnsdP0gy2ysTGrutgOXHMmTkdG9MYecM76Uj/bqcRBsYuMCwoEZNRILu/b
	VVEFiFZfINxdVUcyL/tKw9QmQDJKJHaxE82j16nKtUv4y/9IM9jWcB78/hwxC+4zakRT
	aZDEpzg7s3ifDo0SIWBeEtqZGT+nUpcS2RSrCLW12SFMJvJRGFPdLPZVffWNz3WYMzBM
	kXmkDteQt/cANHe18sulHSNgaw1c5TqEhKCVSOnAOKPtCu7CjTDf7lxLy6NlwUsLboex
	4u1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=WEGGpMBu8hs7YaMbKUgMU+DM1tn9csKKrQjQix5nDyQ=;
	b=dmPw5+TEOteimoaPS/ZGKuWV1lL0T54IlERvjSBYAudSPZOOlJ4ZWgeoPiLRnRUIJ9
	iBM6MEGH0RNVaGmNbP+D1KxG8bze6nmLph9iDWS1WvmwPDgwVIQsG4+sTRK4QrZNRA/6
	QP238Hljj0oDi6kJbugj5xLrtXDqGOASN/kYLP3CT9WseCpO2awPQM7bPt0/us4LQeFz
	gusdEve9I7IKwkZkR9NCL+9HYBdhH5dcpvB/le3iEZa7NVUo6EH4myxoqfD2dgFUZiJk
	ntcH6l7/Da/mSp9BEfBlOzSz6DLQGoO1pBQZGlj2h7HDW6eptgh2iquLgMTM0pth7U5z
	MbEA==
X-Gm-Message-State: AMke39m441vFiITbMqT+N2GQb4BNytMCMvE6DAiCIb6K7A290C1glMODmuci678PcmOSSQ==
X-Received: by 10.84.130.66 with SMTP id 60mr1945188plc.170.1486619368387;
	Wed, 08 Feb 2017 21:49:28 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:27 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:49:02 -0800
Message-Id: <20170209054903.31598-8-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 8/9] userland: Upgrade to latest
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:29 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index cec591d..5a83c8a 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "0f015eaa17add5bca00ecf8a354ea62e19bd7920"
+SRCREV = "d35be767ce54ba46893ffa6d612b6b9d490b1e4e"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.11.1


