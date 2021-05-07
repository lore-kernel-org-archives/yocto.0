Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web09.8225.1620382174331960205
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 May 2021 03:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=Y8az9mTx;
 spf=pass (domain: gherzan.com, ip: 64.147.123.25, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 304E91289;
	Fri,  7 May 2021 06:09:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 07 May 2021 06:09:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm1; bh=XzwiM/16SVQVZnEkn3PZhUpxwg
	+S3IgDY6LfkCOITM8=; b=Y8az9mTxl+r5PmJnbvKVV/0lIFB9Fcg/GMdu549tnv
	gr0RpXXWuCwakFBrlvM8MIC48TZMsCGkbadvpdggKp7bpr7WNk1C+Sk21q0bwAPY
	RZVQrxDiDRC8z0uBbwOGswJ3CMue2zQiF09B+xfdPcD7foG2wsWbIYA5in0IsqAM
	EqAH0m9lMv2V1a9MImLoD93r6GcOcoiRjYTWzOlCQ9418WQuytGSpgJf2nfvqx8w
	Oi0cgJNNrrTie7fyabSBJgNi0b23AZgU1huW2UkoKlhv4WUTGfBO3RRzS4wMHhdZ
	QQbxmYlxj4RAntuJAMaSxm3eJkQ2I9HDs391W2Gj5b6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=XzwiM/16SVQVZnEkn
	3PZhUpxwg+S3IgDY6LfkCOITM8=; b=dMLxvYT82S/bPJr2oD9DbOxt0zZ0IqgNX
	R7P9gLlKn3lkifeJ/Jg9Fe5plDmJAkTmwZ31fgAuT+OWuJm1ziHRDHmZBx/PY7Ex
	Lge1qFv1d31INTfv7UPcD20JWpMap1JjBdBht0qu3QAzKh7H+Rv2dFrtI2eckxtZ
	pKWCaobZfUX0Zi1LMKskys3wZDLdN7mnCyneE1ssbIpCEiK5r0JDN2Ty1ZzXhNYt
	1wxYegrjKIiLVhmse6CqQnBlnmN0/po2dbA5qfXqG5me6X7Diz1oaz7fQXdD+tx4
	0KdnQxWADWPgDnRV/FnaNZJgG0L9cbhrQLM8aV1AQbjsKnxpPfvpQ==
X-ME-Sender: <xms:2xGVYNzvRvwlmLlDxkYr9MJUzbuWwZ5CiD1jSwLTFdgEtfyrxbnkeQ>
    <xme:2xGVYNTkeVT-i-SJ7tpIFi8U-R-J_ebqFAeW07x4PHbmWGwnRntsZNhVYiYxvml0B
    MZ5HP-E4GJTmCHXw5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegvddgvdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehghhgv
    rhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpedvteeutdeutdfhvefggfeifeehve
    ethfeuffekgeeiiefgkefhheehjeeijeejudenucfkphepvddrvdehrdekhedrvdefvden
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
    gvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:2xGVYHU-TT50mkAKh2IXwHbzXTQ-TexA_HQGE0Sb9uumZp-TU_FEWg>
    <xmx:2xGVYPghwDuDmiRlfI9YjJwzf0bLdBU9_YQ0a5YTqmxTOr8clAYkHg>
    <xmx:2xGVYPAKN6xwI-3dx521uoThoPbs_VilCjoZRw64kAJY2Ygio9QjMA>
    <xmx:2xGVYCrV9dvzJ2u4z5h9x-XjnPdPQI4ip3HJltNk3CJH_1tukZBxqw>
Received: from qwirkle.internal (unknown [2.25.85.232])
	by mail.messagingengine.com (Postfix) with ESMTPA;
	Fri,  7 May 2021 06:09:30 -0400 (EDT)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 1/1] zephyr-qemuboot.bbclass: Fix runqemu dependency on qemu native sysroot
Date: Fri,  7 May 2021 11:08:18 +0100
Message-Id: <20210507100818.2819019-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The runqemu script depends on having the native sysroot populated for
the qemu recipes. Add the required dependency to the mix.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-qemuboot.bbclass | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
index 5ac1c86..f508b45 100644
--- a/classes/zephyr-qemuboot.bbclass
+++ b/classes/zephyr-qemuboot.bbclass
@@ -35,3 +35,22 @@ python do_bootconf_write() {
 }
 
 addtask do_bootconf_write before do_build after do_deploy
+
+# The runqemu script requires the native sysroot populated for the qemu
+# recipes. Usually, this is pulled in by a do_image dependency (see
+# baremetal-helloworld_git, for example), but in this case, there is no such
+# task, so we hook in the dependency to do_bootconf_write. This also ensures
+# that builds from sstate will also have this requirement satisfied.
+python () {
+    # do_addto_recipe_sysroot doesnt exist for all recipes, but we need it to have
+    # /usr/bin on recipe-sysroot (qemu) populated
+    def extraimage_getdepends(task):
+        deps = ""
+        for dep in (d.getVar('EXTRA_IMAGEDEPENDS') or "").split():
+        # Make sure we only add it for qemu
+            if 'qemu' in dep:
+                deps += " %s:%s" % (dep, task)
+        return deps
+    d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_addto_recipe_sysroot'))
+    d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_populate_sysroot'))
+}
-- 
2.31.1

