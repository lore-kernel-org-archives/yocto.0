Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01508E00B1B; Mon, 29 May 2017 14:15:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8BF1E0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:15:21 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id u26so13432452pfd.2
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=i1dk88lgBdDTiTNjVV41QBVeCo6O0qGM9xqzs9t6Xsc=;
	b=cVpxwxQXOMgXqKTMfOL/qHpnGQnz7i3gA31uFdyVB+fR0fefdU4HPzNUZ2+2BxZ28f
	lzgqri3Ag8QV4T+oWr5Tc5r+wrtmr6lyxOcoY1rqVRJ9d0CmsCCO+uTadqfxgEvmvD2v
	eh61oiLl+azAkyNsTRT0Acr24Jd9pDet8yP6ZOQm7Msx87WjXYeNoXhRm10wuJqSkyL8
	u/xOKsJllqLQxyk+IQYTB1kfZ6degIryMEk3fhFffs0kJmhHZnQhMNYqkdikXz5/fGhE
	6WljHQSyLEuaNWf6/UIe5LzGXue7Xwshyy3wrJZsUAOa58kmhluK96uNhdPipmfs8mfC
	aa0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=i1dk88lgBdDTiTNjVV41QBVeCo6O0qGM9xqzs9t6Xsc=;
	b=ns40nBj7VYOCo+dkAiPsdQPSRqfVzX0Ymxgqfv6WFq3DMoyE6ey9EEDLShZpPcCmw5
	2KtuDxAR3eBno9IBFc8Q7HVHSGasYLaG1PvV4y91hKTKHrnsbZl7rxhV52HUUX2fUBrf
	tzLQA5FPk+x8cTE+Di9PmJJYoPRV7LZbxf0bpGIDIQ/QDz2rIQwkrI4FFNihGP2z+odg
	4hIXlJR0Ff8B1p6CZxhK+KvLQKHyq3Z8WYfAdFCcIcmVEEGfYFqeYooShXzXXOA3tIM4
	0yYxXnN2UoA5pBpKJ1BkSrCjxIKZA2WCxxGBvBdJH7J8hAmzGcv9RaLdgYMZd8hXl2QP
	VPGA==
X-Gm-Message-State: AODbwcDzCd+dmWbboVBMv42O/1qV0FwMOCD7w5wcqxYVi7NMJXfMYOPm
	z8f6kLijjT0XNg==
X-Received: by 10.84.151.3 with SMTP id i3mr78128192pli.81.1496092520936;
	Mon, 29 May 2017 14:15:20 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c940:bb39:2b1d:3b23])
	by smtp.gmail.com with ESMTPSA id
	i68sm19074064pfi.72.2017.05.29.14.15.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 May 2017 14:15:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 29 May 2017 14:15:19 -0700
Message-Id: <1496092519-5449-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] apparmor: fix python packaging issue
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
X-List-Received-Date: Mon, 29 May 2017 21:15:23 -0000

From: Armin Kuster <akuster@mvista.com>

WARNING: apparmor-2.11.0-r0 do_package: QA Issue: apparmor: Files/directories were installed but not shipped in any package:
  /usr/lib/python2.7
  /usr/lib/python2.7/site-packages
  /usr/lib/python2.7/site-packages/apparmor-2.11.0-py2.7.egg-info
  /usr/lib/python2.7/site-packages/apparmor
  /usr/lib/python2.7/site-packages/apparmor/regex.py

use python2 instead of python3

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/AppArmor/apparmor_2.11.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index 8ad2d25..591a673 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -27,14 +27,14 @@ SRC_URI[sha256sum] = "b1c489ea11e7771b8e6b181532cafbf9ebe6603e3cb00e2558f21b7a5b
 
 PARALLEL_MAKE = ""
 
-inherit pkgconfig autotools-brokensep update-rc.d python3-dir perlnative ptest
+inherit pkgconfig autotools-brokensep update-rc.d python-dir perlnative ptest
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
 S = "${WORKDIR}/apparmor-${PV}"
 
 PACKAGECONFIG ?="man"
 PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
-PACKAGECONFIG[python3] = "--with-python, --without-python, python3 swig-native"
+PACKAGECONFIG[python] = "--with-python, --without-python, python swig-native"
 PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native"
 
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
-- 
2.7.4


