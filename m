Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3538FE00E08; Mon,  5 Mar 2018 01:31:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF44E00823
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:16 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id w128so14444587wmw.0
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=1SV0kZc5XkvSpLdEfkkHBwI/kKaEYdnurz18dNTPerI=;
	b=C5oAIsh2QF7tpPh5xjjdlPLwvP2gJ9aZswLtKDXUHkiyf9sfQjFlugSwyTbcSLM0ZE
	w8oXqRGahx6zysF1B2p0wRs9SQuaj79TI48l35nyzDGyQkHb0xoU65GQCqaBHH8n2+pu
	hEAZZb6g2iuYxJ1GDyCFH0J8BibOaoEZI+/VgRfZQgjcIMqJRgcu1NxzhEH4FAmDmYnX
	b2Y34dBlhJXZURv03ZjqVPPjzV7Lmk+D0Ifm0wdUfkDN2c1S9zojGSMIh/CK1FC/MuaA
	JODjWeMGUAFmAuCFf3vVCJZj9CDzoD//DoGihXeGHXi0iW9Uq2DYi2y3kI1L1I4StBKW
	SUiQ==
X-Gm-Message-State: AElRT7GuOOuto2Smp7WmqgNTIOVoq2t6xeYbD2FdwRCdSY1UfjUU5niM
	3iPuEpbQeNDp6RCpxlTwhlMaGoiI
X-Google-Smtp-Source: AG47ELtJ74qtmTVqOrAsQ+G0YS6mBFz0o6i+eycv3PJ6t7Gmr+S4FRRN2PEMwvsdz3LIF9xVEjJgZw==
X-Received: by 10.28.4.216 with SMTP id 207mr4747333wme.108.1520242275851;
	Mon, 05 Mar 2018 01:31:15 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:15 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:53 +0000
Message-Id: <20180305093106.11858-2-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 01/14] openjdk-8: clarify a bitbake warning
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

We get a bitbake warning during recipe building complaining about
unsupported architectures unconditionally. That check is relevant
only for shark builds, so it is quite confusing for non-shark
builds.

Make the warning conditional on whether shark builds are enabled
or not.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index 070ffaa..19f5103 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -181,7 +181,8 @@ def get_llvm_configure_arch(d):
     elif arch == "powerpc" or arch == "powerpc64":
         arch = "powerpc"
     else:
-        bb.warn("%s does not support %s yet" % (d.getVar('PN', True), arch) );
+        if 'shark' in d.getVar('PACKAGECONFIG').split():
+            bb.warn("%s does not support %s in Shark builds yet" % (d.getVar('PN', True), arch) );
 
     return arch
 
-- 
2.16.2


