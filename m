Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E61CE00F24; Mon, 29 Aug 2016 05:46:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scottellis.developer[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36FD3E00F23
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 05:46:51 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id v123so136021102qkh.2
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=1l7edjfw9hddQWW/ERB+if8IMSPLSvg3RlGCxSI7vuA=;
	b=USwe7sjNE8q4ZeDbNdXPEP8Gsj5qqOwr6aCVGPsaaUr4VUEOAwtKHauxZYgHxsxPjd
	AcbbbQROCFIUAgiyrVVmUT0YeDpDPHKVebA8vwdn2bjhwc6mQ9zD1iAxu53e3xwg1aJ7
	OKZIZ9fOFHuRIzX4WFF3LtnUwrIAMmm/QLKqKFSCA8O3zoPFR4jXjLra1cJkuqiXJ/R1
	ymaHtNDTbq1OX7gXDAJz24ZD7sQrQZ/hzq9pZZzXYBo0qVzg9LyMXeRGKIj4ansR92SJ
	GbRj6juNTcDLqx41LPUfD70rxVrtFWJs2Sz3JQkcDtsMivFTSDEoEhtvcheRjBKCOdiE
	BVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1l7edjfw9hddQWW/ERB+if8IMSPLSvg3RlGCxSI7vuA=;
	b=eVFX9p/HqpefOhxZkei6Lub5EIwInG8zNJnUK3q5EDX7EibdG2zXCZ1NmnVUS6GPs1
	Kg04EcCa3sCjoIhPXRNNhwI+1cozQIogvrL0KONZ7Y/aAiQ2nbBHE7njzfC/k3/gIhXL
	ZrbatPMqoOqP962Zu+GLCKgG2YGXPESK6OgtO0bXAmabI4zbH/DbEvegWylOo+3y0WrX
	fbFAgJeLAVF2FIUekGVoubGFOVg9fjqZguLcDYW2rK7nGsRYOfjikhx+pr3hyVyCWsuo
	fp1z3fl4PkO6I+0fKJPEypCrflzEJHMHM15uLIG9qNcLw3+Fsld54yFPyRZdc0p6ZED1
	haUg==
X-Gm-Message-State: AE9vXwMIY0zhenWdL7h/Qc9OyL9jQuqALJxuTZyADTRAEp3+k6BYTz2kS9lFUsWPT28VUg==
X-Received: by 10.55.26.36 with SMTP id a36mr18861922qka.273.1472474811265;
	Mon, 29 Aug 2016 05:46:51 -0700 (PDT)
Received: from fractal.jumpnow (c-73-47-157-211.hsd1.me.comcast.net.
	[73.47.157.211]) by smtp.gmail.com with ESMTPSA id
	11sm14789067qkl.15.2016.08.29.05.46.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 05:46:50 -0700 (PDT)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 08:46:41 -0400
Message-Id: <1472474801-32112-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 29 Aug 2016 10:33:41 -0700
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-raspberrypi][PATCH] userland: Add bash to RDEPENDS
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
X-List-Received-Date: Mon, 29 Aug 2016 12:46:58 -0000

WARNING: userland-git-r5 do_package_qa: QA Issue: /usr/bin/dtoverlay-post
contained in package userland requires /bin/bash, but no providers found
in RDEPENDS_userland? [file-rdeps]

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-graphics/userland/userland_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 6e73ca7..99cf02c 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -71,3 +71,5 @@ FILES_${PN}-doc += "${datadir}/install"
 FILES_${PN}-dbg += "${libdir}/plugins/.debug"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+RDEPENDS_${PN} += "bash"
-- 
2.7.4


