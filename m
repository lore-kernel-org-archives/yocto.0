Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C84E015B6
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 06:44:26 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id q58so6825010wes.5
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 06:44:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SZstJ/Msa83/FFhbt6XY1r/Ng+mEN7FVcO+jGvp9FgI=;
	b=h++ptGbfsGhMqbyxykkVmxtJwNpOVczuRvgqX/BiIT8cbRD842HvUB0agLHjLme9IX
	PzP4JvI21TWb8olR7IrKgrwjQbQFyOgqOR351i6fOL2PNVVFy9RRrSVTkWQeew2b6JiZ
	kBluAaov6oY1ir4ccGMoiwkgqOO+BSpMic6Qo6Im9BpmlorAjTJE8TYb0Tg0nd0a85ah
	sodpy95hUavZS02FzJRFdu6bLjZEPID8/4eoiGQjiHYwZPwQ1tqB830Sk9zGon5LCS2K
	0D3qjNzJdOrX2u0aLD+wnybIUv4KxKD6a5OH0ilu2mfN2ODsNEJ2jSEiJRfmRi8CCb+P
	LF+w==
X-Gm-Message-State: ALoCoQm2GE5q9zRmQIV3hzqzzeMyuU3R2qW5THZ/+BNwZML4TTuuRJm66gZy7qgB5hMRW+aIjk+z
X-Received: by 10.180.189.49 with SMTP id gf17mr17258841wic.23.1378907065987; 
	Wed, 11 Sep 2013 06:44:25 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e5sm10762844wiy.2.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 11 Sep 2013 06:44:25 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 14:44:18 +0100
Message-Id: <1378907058-15114-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] dev-manual: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Wed, 11 Sep 2013 13:44:30 -0000

The variable ##COREBASE## has been deprecated, so use ##OEROOT## instead.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 7fa9149..9fadd7b 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4980,15 +4980,15 @@
      BBFILES ?= ""
 
      BBLAYERS ?= " \
-       ##COREBASE##/meta \
-       ##COREBASE##/meta-yocto \
-       ##COREBASE##/meta-yocto-bsp \
-       ##COREBASE##/meta-mylayer \
+       ##OEROOT##/meta \
+       ##OEROOT##/meta-yocto \
+       ##OEROOT##/meta-yocto-bsp \
+       ##OEROOT##/meta-mylayer \
        "
 
      BBLAYERS_NON_REMOVABLE ?= " \
-       ##COREBASE##/meta \
-       ##COREBASE##/meta-yocto \
+       ##OEROOT##/meta \
+       ##OEROOT##/meta-yocto \
        "
                 </literallayout>
                 Creating and providing an archive of the
-- 
1.7.10.4


