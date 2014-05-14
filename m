Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 219AEE00724; Wed, 14 May 2014 15:30:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 382 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 15:30:48 PDT
Received: from mail-pb0-f42.google.com (unknown [209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1652E00B9D
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:48 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id md12so184732pbc.15
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=MEZtjfTUrCkimm2Z8oLlLfZOv6RdJ97VwUEuebOA5y4=;
	b=AAthagJMQx9AKt94hV6AgnKZ0NkViZoAIo0E5OvYYQg/390Iyw8PUpempDQi6BvlII
	dOVjAeWgiAvC2xr4GqvDWNyWi+BulBhiyCNYOROTtrKtPBWSE/suPG5NAMd5rbH4SqQ0
	K15sAw9EA0qvP0rl2tpNaxkrO9IFZ2rSA/h8b3qVLDHbW2mt/ev6QdA53U0D0aaHizZI
	5AXkFXmVUkVsqeXKA59QzrsTOiAgS4GqO4W9aVP6k1hUy2/GTtexmukKo0nulDgoJe+i
	aDz7LE1AyHrj87Vz0yXDQ/u+ziapLM/7E7GZCtDymxjYc6bYFIaIWrlDIck9cL3iUx7c
	Io1g==
X-Received: by 10.68.163.100 with SMTP id yh4mr7858819pbb.122.1400106285893;
	Wed, 14 May 2014 15:24:45 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.44
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:23 -0700
Message-Id: <1400106263-25100-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 9/9] setools fix do_configure
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
X-List-Received-Date: Wed, 14 May 2014 22:30:54 -0000

	setools: change autotools to autotools-brokensep and bump rev.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/setools/setools_3.3.8.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
index 78ed06d..b3bad6b 100644
--- a/recipes-security/setools/setools_3.3.8.bb
+++ b/recipes-security/setools/setools_3.3.8.bb
@@ -12,6 +12,8 @@ SRC_URI = "http://oss.tresys.com/projects/setools/chrome/site/dists/setools-${PV
 SRC_URI[md5sum] = "d68d0d4e4da0f01da0f208782ff04b91"
 SRC_URI[sha256sum] = "44387ecc9a231ec536a937783440cd8960a72c51f14bffc1604b7525e341e999"
 
+PR .= ".1"
+
 SRC_URI += "file://setools-neverallow-rules-all-always-fail.patch"
 SRC_URI += "file://setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch"
 #SRC_URI += "file://setools-Changes-to-support-named-file_trans-rules.patch"
@@ -69,7 +71,7 @@ FILES_${PN} += "\
 	${mandir}/man1/sesearch.1.gz \
 	"
 
-inherit autotools pythonnative
+inherit autotools-brokensep pythonnative
 
 # need to export these variables for python-config to work
 export BUILD_SYS
-- 
1.9.1


