Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9C02E00D31; Tue, 10 May 2016 05:04:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B64E00D29
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 05:03:59 -0700 (PDT)
Received: from 1b06OL-0001Zy-T2 by out10c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b06OL-0001b0-Ut
	for yocto@yoctoproject.org; Tue, 10 May 2016 05:03:57 -0700
Received: by emcmailer; Tue, 10 May 2016 05:03:57 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10c.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b06OL-0001Zy-T2
	for yocto@yoctoproject.org; Tue, 10 May 2016 05:03:56 -0700
Received: from sestofb11.enea.se (172.21.3.146) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 May 2016 14:03:56 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id B1699240F0D;
	Tue, 10 May 2016 14:03:56 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 May 2016 14:03:56 +0200
Message-ID: <1462881836-1524-2-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1462881836-1524-1-git-send-email-adrian.dudau@enea.com>
References: <1462881836-1524-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH 2/2] selinux: Use targeted refpolicy
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
X-List-Received-Date: Tue, 10 May 2016 12:04:01 -0000
Content-Type: text/plain

POLICY_NAME and DEFAULT_ENFORCING are set in each refpolicy
recipe in meta-selinux now.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index ab102d5..f6c2d7b 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -4,3 +4,5 @@ require conf/distro/poky-selinux.conf
 DISTRO = "poky-cgl"
 
 IMAGE_CLASSES += "image_types_uboot"
+
+PREFERRED_PROVIDER_virtual/refpolicy="refpolicy-targeted"
-- 
1.9.1


