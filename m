Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F422EE00D8B; Thu, 16 Jun 2016 10:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC79E00D84
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 10:43:57 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id n127so7655116iof.2
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 10:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=sNXTU2jBwjXfPGdugfJksi1aKzvS8GVKh3b30AsNeLc=;
	b=TtDtRMa2J0jzgbVq2EFyirQT9at+a5aK9pE4k0cj1V4GNKwws7XFq6icryJP3hlcW5
	hdg2SaJd0nhHKTaBRUBH+SdQzGNZgJYOFYxhdydBWnpvx2+QcRks4wuVoLGoma9HfL4E
	U8SZaJnyhDOzkoIufv6pGZbqcflvRO3+r0zL2O2c5O6yGsUBgBuX5e/ppFNFnSwb3jSG
	wg21Re/lVQTzAD1MdXxvySw7MYLhAsFwJLg3BBQdpm00GUONqPgp8KUvRyXbcFc57sg7
	ieUUu2JAmIvBslKyP1gEIgFaVuyANVwKQVR7VSkH4sMmp+/DN9U6iaScQdwD2bteRGOq
	vyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=sNXTU2jBwjXfPGdugfJksi1aKzvS8GVKh3b30AsNeLc=;
	b=VZFOPyqiwTdQZw9koZc+ujEI7BipCYtZ/r8qva/C+dCv9iyHwJ/zu9JTsXB6YejmUj
	CZT1telhai7X9zQD7wPDLpYD5652tXUHwJvRbnBY3+3OihudiceOpeb/I62oRfVR0kdm
	tMUr4oeLIVDERShENG9BsMqKJnzjfEutC6U5eI0ilYt044R71rmCoVmat1K8FLdSBtri
	gFc57BXAey1HRujb8ImI57b5G0BABw7gBZItMMuGwplSyeuKQ9mo+LibN0glJNP2vacN
	m3QPi3t78m8ML34PVxAEfGWZAwOExgc7qtrNdjhcSCf7DG+G7IsxYlinFYJcE92DiMYV
	WnxQ==
X-Gm-Message-State: ALyK8tIWxUb+Vfo9Jofo8SMkocMRhD1o21TA6+5Ly2KoPjW5/LwZLY8jHyrA/rkquhvgSg==
X-Received: by 10.107.149.82 with SMTP id x79mr9570254iod.141.1466099036850;
	Thu, 16 Jun 2016 10:43:56 -0700 (PDT)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id w70sm7256436itc.4.2016.06.16.10.43.55
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 16 Jun 2016 10:43:56 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Jun 2016 13:45:28 -0400
Message-Id: <1466099128-29289-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] e2fsprogs: Update bbappend
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
X-List-Received-Date: Thu, 16 Jun 2016 17:44:01 -0000

e2fsprogs has been updated with oe-core commit
f221f331704c0bdfc7c1dd361e666ce2158fe282  Update our bbappend accordingly.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .../e2fsprogs/{e2fsprogs_git.bbappend => e2fsprogs_%.bbappend}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/e2fsprogs/{e2fsprogs_git.bbappend => e2fsprogs_%.bbappend} (100%)

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_git.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
similarity index 100%
rename from recipes-devtools/e2fsprogs/e2fsprogs_git.bbappend
rename to recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
-- 
1.9.1


