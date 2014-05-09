Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7221E00BEF; Fri,  9 May 2014 06:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f53.google.com (unknown [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03DDDE00B99
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:21 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id c13so2634981eek.26
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gyNnG3T3qHRnzBAzAVMiRa+TlaHo3cVLo/wHFlyIdD4=;
	b=BZAlkVEhDmPAJPhK79Snsk1ziX1khXNX1jGZcfPqcvvuk7PPN8ohEAe+nEfeeF1f9N
	orBL397q1GLZz2dqEyw/ppSeAdjfNTtBYfUKeLluHaJvw5z3wT9vOiqGeHdyn3/0o0lM
	RQyMDmKUmMLz2+yLZk7hbDhmRp4bdz3IEJ7kIv5ndublMW4IWQRThfVBF6Bz7IyS+J0K
	BXIF5FgixoFZXQByE4RSD4ZEq8Yj6q9OLo+rynQCL72Gh+GbtL5dKC4qtja/b9eXGJGs
	5zetvJtQRc9pAqbS31qhsROOvr37kVKHYzWBEhRP7udbyflgcOqpCPUM4RyVIsTG6vbm
	745w==
X-Gm-Message-State: ALoCoQl84cCiXN4XJ9cSP1FjDJw23ZRXfyptFVxDJb9oWUOJ0cNZsNoOLGQeHqqO/vTV80seQkga
X-Received: by 10.15.49.8 with SMTP id i8mr10834814eew.33.1399640960616;
	Fri, 09 May 2014 06:09:20 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.19 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:20 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:04 +0300
Message-Id: <1399640946-21680-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 7/9] userland: Update to remote's HEAD
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
X-List-Received-Date: Fri, 09 May 2014 13:09:36 -0000

Change-Id: If0e36184c741da5d68c158e1fb582050f5835bf9
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 07c8381..a348090 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,7 +11,7 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "8181677fc08814cd5fcd1475ab73046f89f8dc80"
+SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.8.5.3


