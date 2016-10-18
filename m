Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13361E00C2A; Mon, 17 Oct 2016 17:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD52E00C1D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:42 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 128so13669675pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Ja1BFDSyVm63BA9KmJo/wmq7aRjH6apu7eRAyh6xeeg=;
	b=kmQSolpLftdCRrb/Cy5RLhsNJI2lYbBvg94Nbp1jUnZfNREcThGnoxl9ZQ3JtzCDnN
	j3lEMrpBK5d1j+k1o3zm43YhjtxgEAC4ZD5O/GeUVRfLE6DsRwzyuyQiRasOS2rRXPmj
	dmsdBNupZqSKbIOdRgQ+ke5x3Q1ElnxTzpqWWvmeZWp/2B/pvnd02NqUWFvC0DRaskkS
	JbF/CY0ElslbYHUP6JsJP+dT74Px4yYAc6mVD5G1HW3yd5TyOLJQN2eHyrR3DLNLaMtC
	JXKcZ93bUrvQqKhPPNgm3U4/Qc+sadLGU9GgH5nmj5HB8nzQzFLWnAv3t3lwuKePMLBz
	/+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Ja1BFDSyVm63BA9KmJo/wmq7aRjH6apu7eRAyh6xeeg=;
	b=jmsQCRmI7UVGlH7mFLZpEzc6cs2Pf5SOEA/gX0YJ2RhmxwO2nQQbRFwc9Q28iYESbH
	/9u9CVuLRvh/8w13BYel8spD2NDs8tikkO+u79HfWa4S/KUyvIwSl50RR8X71JGcc6qW
	eDiktB20y8AH248RvItLliOeX2hnCKu4MV56EHudIYZvsv8TwpSHGIFDCZNtnZQO+tDL
	cRPovL+rJXViXtRAgOwaWii7LDKIEyxeCXxb9yLxF4H/J9zchjqmcgaSLBFTg9Xd3B83
	odfoPYszcsUQZOlYUuEMWYCVGywVvZnGgeBaWLNyKeOVtfYz+a1zgH18Xs6mve8eiLxb
	h14w==
X-Gm-Message-State: AA6/9Rmq04w3A5xISseV5d79mRr6JrDsU7XLetgJGI7xZDx4HB8JUiz9vLgKOjwptkM9vg==
X-Received: by 10.99.157.78 with SMTP id i75mr142705pgd.148.1476748961928;
	Mon, 17 Oct 2016 17:02:41 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:23 -0700
Message-Id: <1476748950-21342-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/17] tpm-tools: Fix gcc6 compile issue
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:45 -0000

.8/src/tpm_mgmt/tpm_present.c
| ../../../tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c: In function 'main':
| ../../../tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c:358:5: error: this 'if' clause does not guard... [-Werror=misleading-indentation]
|      if (szTpmPasswd && !isWellKnown)
|      ^~
| ../../../tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c:360:2: note: ...this statement, but the latter is misleadingly indented as if it is guarded by the 'if'
|   return iRc;
|   ^~~~~~

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../gcc6_missleading_indent_fix.patch              | 24 ++++++++++++++++++++++
 recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb           |  1 +
 2 files changed, 25 insertions(+)
 create mode 100644 recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch

diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch
new file mode 100644
index 0000000..aec5e7a
--- /dev/null
+++ b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch
@@ -0,0 +1,24 @@
+Index: tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c
+===================================================================
+--- tpm-tools-1.3.8.orig/src/tpm_mgmt/tpm_present.c
++++ tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c
+@@ -349,13 +349,13 @@ int main(int argc, char **argv)
+ 		}
+ 	} while (flags[++i].name);
+ 
+-      out_success:
++out_success:
+ 	logSuccess(argv[0]);
+ 	iRc = 0;
+-      out_close:
++out_close:
+ 	contextClose(hContext);
+-      out:
+-    if (szTpmPasswd && !isWellKnown)
+-	shredPasswd( szTpmPasswd );
+-	return iRc;
++out:
++	if (szTpmPasswd && !isWellKnown)
++		shredPasswd( szTpmPasswd );
++return iRc;
+ }
diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
index 99ea8ee..790894a 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -15,6 +15,7 @@ SRC_URI += " \
     http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
     file://tpm-tools-extendpcr.patch \
     file://03-fix-bool-error-parseStringWithValues.patch \
+    file://gcc6_missleading_indent_fix.patch \
 "
 
 SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
-- 
2.7.4


