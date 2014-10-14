Return-Path: <kevin@smartthings.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B12CE008A2; Mon, 13 Oct 2014 22:30:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F9ACE0089F
	for <yocto@yoctoproject.org>; Mon, 13 Oct 2014 22:30:01 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so13175332igc.12
	for <yocto@yoctoproject.org>; Mon, 13 Oct 2014 22:30:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RmsLrmStqy/f5cWJgdxS/J6+FG63pzn5sCYy2r7T7Tk=;
	b=RxrP8EvP9ZooFyWEG1Vr8mVj3FJQIT/hU6u2e6wREadQazfRaG4FUQmne3NOtn7bCc
	hVkTarfM7wQk6Zfuf9pVjJoWI8R+vcOlPqZnFWjJ4yLBLBW37uULgwIyvVdLRd2AbE1b
	uLhCVZWPkTIBtC0pADJkhhHeAqmMOh91skXZgedj/u8S/x6zFwq7GprEEMPfMkXKv6Cj
	jAElhhIQM2HDKVqzShgl6H26A3lzxqT5kGnnplKevMSL1yN2nf2JbmO7A9qzYQ34vbp6
	ANnLEs9np/oWGCBhkUAUGqjkuHe6IsKjgeUZdi1HOOIM9JOcYnI7bRAMKfp4VFPJ8s/z
	05Rg==
X-Gm-Message-State: ALoCoQkUBFq0MS8dlRcfAl9ALmIBij6f4B5YPcZDLPlx/fqAR9gzfP5q1KF3QClI6X5uXDvKewV+
X-Received: by 10.50.78.166 with SMTP id c6mr4387162igx.16.1413264600548;
	Mon, 13 Oct 2014 22:30:00 -0700 (PDT)
Received: from localhost.localdomain (c-98-250-20-24.hsd1.mi.comcast.net.
	[98.250.20.24]) by mx.google.com with ESMTPSA id
	mk5sm10750912igb.15.2014.10.13.22.29.58 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Oct 2014 22:29:59 -0700 (PDT)
From: Kevin Vanden Berge <kevin@smartthings.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Oct 2014 01:29:19 -0400
Message-Id: <1413264559-12816-1-git-send-email-kevin@smartthings.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Wed, 15 Oct 2014 08:20:56 -0700
Cc: Kevin Vanden Berge <kevin@smartthings.com>
Subject: [meta-oracle-java][PATCH]] Adding the jdk for arm. Version 1.7.0_u60
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
X-List-Received-Date: Tue, 14 Oct 2014 05:30:14 -0000

---
 recipes-devtools/oracle-java/oracle-jse-jdk-arm_1.7.0.bb | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk-arm_1.7.0.bb

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-arm_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-arm_1.7.0.bb
new file mode 100644
index 0000000..61a447d
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-arm_1.7.0.bb
@@ -0,0 +1,12 @@
+PV_UPDATE = "60"
+BUILD_NUMBER = "01"
+
+require oracle-jse-jdk.inc
+
+SRC_URI = "file://jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
+
+SRC_URI[md5sum] = "715b0e8ba2a06bded75f6a92427e2701"
+SRC_URI[sha256sum] = "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c"
+
+
+RPROVIDES_${PN} += "jdk-arm"
-- 
1.9.1


