Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22E9BE00C17; Wed, 16 Nov 2016 08:00:15 -0800 (PST)
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
X-Greylist: delayed 133 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Nov 2016 08:00:02 PST
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A9BE00CD0
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 08:00:02 -0800 (PST)
Received: from 1c72aq-0004dW-UB by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1c72aq-0004wH-Uv
	for yocto@yoctoproject.org; Wed, 16 Nov 2016 07:57:48 -0800
Received: by emcmailer; Wed, 16 Nov 2016 07:57:48 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1c72aq-0004dW-UB
	for yocto@yoctoproject.org; Wed, 16 Nov 2016 07:57:48 -0800
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 16 Nov 2016 16:57:37 +0100
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 65D314422D8;
	Wed, 16 Nov 2016 16:57:37 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Nov 2016 16:57:37 +0100
Message-ID: <1479311857-8775-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH] core-iamge-cgl: Remove kernel-modules
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
X-List-Received-Date: Wed, 16 Nov 2016 16:00:15 -0000
Content-Type: text/plain

This is already included in packagegroup-cgl-kernel.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/images/core-image-cgl.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
index 5975601..7117493 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -18,7 +18,6 @@ IMAGE_INSTALL += "\
     lttng-tools \
     lttng-modules \
     ${VALGRIND} \
-    kernel-modules \
     "
 
 IMAGE_FSTYPES += " ext3.gz"
-- 
1.9.1


