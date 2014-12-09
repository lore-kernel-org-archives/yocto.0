Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 333A1E00931; Tue,  9 Dec 2014 06:33:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50065E0090E
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 06:33:01 -0800 (PST)
Received: by mail-qa0-f53.google.com with SMTP id bm13so454541qab.12
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 06:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=XKLNk9mSev7J8TzQ/qIP5mYIqKgj8kv+/NNYSYdFyqA=;
	b=RIgQjVd8xZLoXlXKvpfEAdCHKWJnmnzlMSTr0s6NjNWS9RWxC4R6LCZzFGc0hC+Zg4
	1PKItFOhLHcsGgNe/r+jMaig0bL9UxKeHuHUFMGvXsWxLyeGNBftQCQ5iGPILhATPCZz
	PxHk3kyagOuN63rUh36pUUJmAtLiALG415qzvG9Mb6NO11teKE39Yk1hMeoiZibm4mSu
	eiFVrhMbJ/8vbvXnC0RA+P8MmQk2HhRqb8y1oTPsOdt7YR/CvHSTSPo5LjWq1I9bdNDK
	9VGDXGTlNVgbLLeF3xR+RdgoFuWz+c9m7UKfK74+R6PbzYvHgR7Uch3C3j6aFLk9Xuhh
	+Mzg==
X-Received: by 10.224.137.198 with SMTP id x6mr5949822qat.11.1418135580920;
	Tue, 09 Dec 2014 06:33:00 -0800 (PST)
Received: from nano.lab.ossystems.com.br ([177.194.193.50])
	by mx.google.com with ESMTPSA id g12sm1195227qay.44.2014.12.09.06.32.59
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Dec 2014 06:33:00 -0800 (PST)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
Received: by nano.lab.ossystems.com.br (Postfix, from userid 1000)
	id C898F1C93437F; Tue,  9 Dec 2014 12:32:56 -0200 (BRST)
From: Otavio Salvador <otavio@ossystems.com.br>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Date: Tue,  9 Dec 2014 12:32:52 -0200
Message-Id: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 2.1.3
Organization: O.S. Systems Software LTDA.
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 14:33:06 -0000

The Debian 8 (codename Jessie) is frozen and has been in use in our
machines for some time. It has been working fine and as it is about to
be released it is better to whitelist it and remove the ugly warning
from build logs.

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 0e66e84..6aff7b9 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -81,6 +81,7 @@ SANITY_TESTED_DISTROS ?= " \
             Fedora-20 \n \
             CentOS-6.5 \n \
             Debian-7.* \n \
+            Debian-GNU-Linux-8 \n \
             openSUSE-project-12.3 \n \
             openSUSE-project-13.1 \n \
             "
-- 
2.1.3


