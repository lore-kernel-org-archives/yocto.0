Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36ED1E00B8B; Sun, 27 Mar 2016 16:26:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1EFBE009D7
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 16:26:14 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id tt10so85041909pab.3
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 16:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=5FKHXXLctQ9S+7KjRhYGmY0ZVN5+CF8aq1jo+97OIhg=;
	b=HOWCnXfHPLWp3of1kRAgWP/dGkS0OdfC7BbjLATMGq6gqcXWuxYbSdv4MzbC97psG+
	hrfc7QCXAM3HpPIjfTESaPtHQE4tqAkKI5z+eNm8c5o6yCY2g/75ww+iKPTGHSL2s1b/
	AxjGKAkPiVvOgXMrKoQm+iDycv4GcDzLOA8odkk0WkvXP8F93orJ/cwoaJAVB9D8HzzT
	oc09T6yQbW+o4KaaTsnKEXCyvZ28tndfFApI6r0vCawK5kRV92gSV0pt1UHa9JOHqHBc
	BR1KCM71Hgk4yBOpRvE9gIulQlZ5802/RRsbBjEOqk53l0rF8DZodgkKoAqiEqUrFvc3
	x4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=5FKHXXLctQ9S+7KjRhYGmY0ZVN5+CF8aq1jo+97OIhg=;
	b=AhCiunQgw3B8yi9GRQw2wkZH9Zk1q9eRvIfpflmtHy3gwziAmfDy/zfZgtGm7hWZXU
	U0KMOxHI2ipR90ekERNiRJtYE+NgCLOvhpJ5qGOKEsRAWRWn//bsM8ftMUWnnZEOKiIv
	3hLhoSXqm9bU4A4drlejZqro15aXDmo7RbsgHjls4tymf8VlQWGSg2oTVMfIbsigIfK+
	YSCMZJ5VTHs0LC4U/it03Eq13Jwg/R15uBbG1UCiYp0xFOI6hev3apLYMZ26GMDoYZ6G
	QMUEhZLoaWNcOIjOTt9ea5twItZE7DdVIrO6b7k5dSmzK1CDQVxpMQPDHVPK1WNEQfER
	XkDg==
X-Gm-Message-State: AD7BkJIwP8dS+OroUKHXciDFzCIm0iDBCLMkUKCO33rLagP3w+FCe+TT+ofirtxAksxocw==
X-Received: by 10.67.3.67 with SMTP id bu3mr37723605pad.39.1459121173988;
	Sun, 27 Mar 2016 16:26:13 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	dy6sm30751670pab.48.2016.03.27.16.26.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 27 Mar 2016 16:26:12 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 27 Mar 2016 16:25:59 -0700
Message-Id: <1459121159-8890-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][V2]PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Sun, 27 Mar 2016 23:26:18 -0000

use CC from build not host.

thanks khem

this fixes the below error.
WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained in package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers found in RDEPENDS_paxctl? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index 8eadad1..b3405cd 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -12,6 +12,8 @@ SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
 SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
 SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
 
+EXTRA_OEMAKE = "CC='${CC}'"
+
 do_install() {
 	oe_runmake 'DESTDIR=${D}' install
 }
-- 
2.3.5


