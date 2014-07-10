Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D81BE0077E; Thu, 10 Jul 2014 07:31:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C04E00748
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:49 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id eu11so11186244pac.39
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sWur8g3eMnla0E6TgXgScYUBQsFyawScjadVC7/5m0s=;
	b=Y8uriZ3xV5fiMT36Y+a2Jswoj3dRLwWg+9RwqeaRrYevHDMXr0rFjtjN3gAF3q9AGV
	vAB6eQ28CLZ8ZMK5we5DlRsvGzgyjObXI2sqHKgH6QfFREIpNle94tNn3ow3RIRGoRLO
	NifvYyfOiCmnnxXRP9A6TupnU7K0dJUuWndKhUDCwpy6w6HFF5mg3nHyGSsjY12yo7Gf
	CRlIX+ZGY6iOIg6frJ7s11dUkfYlbaGj3/KrRnDQshMKE9OaLhjBYrprcz3W9ZXRd0RN
	Os7Cjcd0qBXKzcag2Z0ZeU13FuxhDpgxf64Qdl9t2tEyREZPTatdn1I22jlSJz5heqwk
	fFwg==
X-Gm-Message-State: ALoCoQnVkUqEoufkJ338nPAYYDa/wx5srABTOXiK8loFwVIiiZl3eZKUGdzEj+oDNQdU2eTiToCf
X-Received: by 10.70.87.138 with SMTP id ay10mr17322298pdb.103.1405002649157; 
	Thu, 10 Jul 2014 07:30:49 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	ek2sm62152507pbd.30.2014.07.10.07.30.47 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 07:30:48 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 07:30:33 -0700
Message-Id: <1405002633-2125-4-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1405002633-2125-1-git-send-email-akuster@mvista.com>
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
Subject: [meta-security][PATCH 3/3] distro: Add distro
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
X-List-Received-Date: Thu, 10 Jul 2014 14:31:02 -0000

This allows us to include security_flags.inc

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/distro/poky-security.conf | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 conf/distro/poky-security.conf

diff --git a/conf/distro/poky-security.conf b/conf/distro/poky-security.conf
new file mode 100644
index 0000000..5092dfa
--- /dev/null
+++ b/conf/distro/poky-security.conf
@@ -0,0 +1,4 @@
+require conf/distro/poky.conf
+require conf/distro/include/security_flags.inc
+
+DISTRO = "poky-security"
-- 
1.9.1


