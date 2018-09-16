Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BCFCE00C49; Sun, 16 Sep 2018 08:57:44 -0700 (PDT)
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
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE55E00C20
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id f6-v6so6284667plo.1
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=250rLp6QHJbcMbx5xDc97GuJk0GHUkWxbnbuAAzRJzs=;
	b=fUKcGUHP0BZH71ue49sqE612vb0Xi1tEcYXctNZDcxRI4UPJPfVeBHWjnyrKClIqYz
	ur7hEUoiFy0X21iUbBkGbkDEZpI0HPV4boMKVCPWAU66cUMYdvupbs4nFV0DGYiEYmzq
	9K41CPz6AavqgXRWZ0qR/vegjpTogn+6GBKJG0bKDK14btT/yyr7zcrDUpSSGaE7DWAa
	J+6yZ/SfyB1CVHPBN6AbPD6hprzmU3iwHZrwH/ze4U9gmuR7q1A5RdAki66rKblWryP4
	CFj3vUBlc90j4v0yEXrQLlpeiDImZHalnpbWbGohwcax7E2NJGRyyLtNivIsBfZNz9gn
	FGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=250rLp6QHJbcMbx5xDc97GuJk0GHUkWxbnbuAAzRJzs=;
	b=iHF3xXCh0XMxtmL4sh6segPlDO7F75Qw+J5XslG5gi9BCZiSD5AgVO5XgJQSBXy+qj
	MV8/00rcv+hNBD0qYQzCWmS+D4fEGqg0v7tTxwmCeEwYJAyQRMNFEgAIKp39aj2q2KLK
	rapob7wgYpo/oaQsWXLrkQNdHbHVwpl4Nd2lqT6YKWzcrxazJHyK3q7RL15iTkXoRmLu
	b2fF47toQFy2IjScxvmel4795Eb+XTAPlMSe/MU5dAzEP9mFIWrs958LdcL1jcDtKbFG
	/QaMxL9QdUHhEDpRsKKxiSVvQxzsk8G5iTgJL0uE+5YVxixaMACNtphNhg+OJBFsU7Ka
	hDMg==
X-Gm-Message-State: APzg51C5lMA1hjCaKk4R527ToxHC1wEVB2Z60pQKLufC8mDMYxbnypsm
	3qVslyaK5gt0UuBLiA+YXm0FV1Xi
X-Google-Smtp-Source: ANB0VdaUYgDkKAOyGyAXu9YOiC3pjRRKmCEpWLx+BwqMCjAo+c3SH8xHF6DjFO3ZJEK6JtTVNSuvuQ==
X-Received: by 2002:a17:902:6a8a:: with SMTP id
	n10-v6mr21403381plk.288.1537113463205; 
	Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.42
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:10 -0700
Message-Id: <20180916155719.9911-16-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 16/25] bastille: fix QA error
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:44 -0000

bastille_3.2.1.bb: cannot map 'allarch' to a linux kernel architecture

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/bastille/bastille_3.2.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index eee1a38..152c03a 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -9,7 +9,7 @@ DEPENDS = "virtual/kernel"
 RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
-inherit allarch module-base
+inherit module-base
 
 SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2 \
            file://AccountPermission.pm \
-- 
2.17.1


