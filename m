Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26108E00D5F; Thu,  2 May 2019 18:32:55 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E50E00D4D
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:32:50 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id b3so1877222plr.7
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=o9lOPPniBdHv3CxtGraGL17Hs5/a9Dx+ttdO8EiN/JI=;
	b=TD+ApGgMDp43C9JklaUGBVSGp2BJZIRYP/f4l0QNOHesuvsg1OqeQd4VLM+Vx8LjxK
	GVzpghrjjL4xpyaf60uZVqI769EtZgxPNnFJYzzo7jHzj9rFjeSwAh7llx5Qt0GoZ9FA
	P6yPMtw7wPjsbGZHTOh52ABrmfk/YYtgTz09OPTrApoE4SD/LaSkwhuQ4HBE9s0gcA3h
	EeZqn1IRb32ygyQOYHqeGYTYkC4IaQB8VdyP5jCdzBeKkjtih2QDqP6PMUFCt7Rw4jsK
	BnPTZ9abx29sWJxFJXQD6VLTSHyuQaDalKCnBIqEGgbT2eCQFwwDYc3t/p1LWWw3qFHQ
	2Rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=o9lOPPniBdHv3CxtGraGL17Hs5/a9Dx+ttdO8EiN/JI=;
	b=uWqqc8bpShXDqrTMdC52pZlquUCdj2LWTKEdXTmzMaRWzoRg4vplp6LnKNLKPMPzgD
	Ya+BFWXAY21PmdbzMyHERHyypcJiJ12/usZqlOYQihhFOyAiCSCmaZXZZGPe0jsnVdhJ
	9hiFCDE1BaNUblVDDZjmbauuhKPD8Vi+Vi8gzYnk5EU3eT90QqcbjkanXNTGSf8ewagL
	oQGXgMFAr0lHyZku7uvKS1zAoErNETbBJGCuKSq8N9X7l2nHj4WE4pzIPYlxFrdBv7xu
	e0Q9ImEgQLLtQTzhWQweNumZJCzPHu1f2KiMea9nLVgiIzBvfq4ZNwzAry7JEZykzVSF
	BYRg==
X-Gm-Message-State: APjAAAWQv/xXAyc/opZLWyyaaqGpuVj6LZGOB/1XODjgXkReQWUxrWzV
	8Su1yiJ+Hkf9QH0HNIs+LXtQZJNB
X-Google-Smtp-Source: APXvYqzc6WYfyqwV19uHPnqgLyDQ9jaueGGHhoQJ+sbD04xsP/BJodxpWZJDi6WG51hsZP7p8X95ZQ==
X-Received: by 2002:a17:902:bc83:: with SMTP id
	bb3mr6732242plb.303.1556847170135; 
	Thu, 02 May 2019 18:32:50 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:7403:feaf:ea56:abf7])
	by smtp.gmail.com with ESMTPSA id b13sm521699pfd.12.2019.05.02.18.32.49
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 May 2019 18:32:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  2 May 2019 18:32:46 -0700
Message-Id: <1556847166-24262-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556847166-24262-1-git-send-email-akuster808@gmail.com>
References: <1556847166-24262-1-git-send-email-akuster808@gmail.com>
Subject: [meta-cgl][PATCH 3/3] packagegroup-cgl-middleware: remove openais
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
X-List-Received-Date: Fri, 03 May 2019 01:32:55 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index cd97fec..6ec68c4 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -43,7 +43,6 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     vlan \
     corosync \
  ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "",d)} \
-    openais \
     openipmi \
     openhpi \
     pacemaker \
-- 
2.7.4


