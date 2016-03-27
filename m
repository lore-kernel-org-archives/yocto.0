Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08367E00A9C; Sun, 27 Mar 2016 11:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5DDE007D2
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 11:03:34 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id d205so147416356oia.0
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 11:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=xOxTWzQlEQSKmlGJy/eHf6f/HeH71asVvFk8IkVBVpo=;
	b=xybthUwq0/ngWwfXNcRpZxuzI3FyherXusE4OCEtpPvq4TfyvfvjV1Xk8aJ3k8jH4y
	EUVTvoI9W7KsQkXUHtcv6UZaqNL+IFKM7cmMvFIb3HMr9/jbhbxRgwSDQ8s6OEeNTD+b
	AeGFggUbHDjF11dRXJGpM5sKlvHCwOCYXT5ViLTZCGqjCUrO4oj2q81kiPQeI3QTcTER
	ZtmFOsiiSeRZmCucSzoGK20+nT35ci+9CezyFpEgDpuPskKG4TXyBQQ7oRFQ6SEorjMh
	4dqQ9S3N6g3zmOtx/Pj2YO3PZhbNy2XK2wQqQ5PgZuW372YDwDNOzCcPoJvgAKnr5xHK
	Q56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=xOxTWzQlEQSKmlGJy/eHf6f/HeH71asVvFk8IkVBVpo=;
	b=l45pEutdUJkNq3SmMqrx0mSvzCkgBh2rZhrHjWGLjne2mVmBX83964YMG7ipm7tH6Y
	E+3daaEu1RJA2DrSxkFNPIuvqLck9xKjqTIdY1KGYOAdAJ7t6Uv6lOK+NFdtp+C7H+7+
	ScyQsDPDSNRpLYnyKoLuTg4c8f2cdmhnnDgZ0KcfnLH7N8rnn6PDgIEsOUc9Z9wymQwC
	0SFHmaJAgZcMhz5utRf8nbKkntWZLBbmtdOynclDqCMAe88gNC2oFeK8Q7IIge5gXVHx
	QRvKM/CjBw31DsuVsXUUdF6bQDmaSArIUJzuC6rcZZYDmTuPUykDmsEQ98A8kkiuHoQO
	L8TQ==
X-Gm-Message-State: AD7BkJKPe3nVtqydCTYj8Oxk2eyWNZweshUNdGfuTd3WmnOQKPe2WNQxGZEQCr9RiBHubQ==
X-Received: by 10.157.57.131 with SMTP id y3mr9121096otb.169.1459101814317;
	Sun, 27 Mar 2016 11:03:34 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	tx1sm6530410oec.13.2016.03.27.11.03.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 27 Mar 2016 11:03:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 27 Mar 2016 11:03:19 -0700
Message-Id: <1459101799-6776-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Sun, 27 Mar 2016 18:03:39 -0000

use CC from build not host.

this fixes the below error.
WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained in package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers found in RDEPENDS_paxctl? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index 8eadad1..67419ce 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -12,6 +12,10 @@ SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
 SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
 SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
 
+do_compile() {
+	oe_runmake 'CC=${CC}'
+}
+
 do_install() {
 	oe_runmake 'DESTDIR=${D}' install
 }
-- 
2.3.5


