Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C7FE004A0; Wed,  1 Jun 2016 09:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C3CDE0045E
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 09:34:21 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id f144so18171235pfa.3
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 09:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=uPpsiQjJALfxP/hWMpJi3QbiVpUA6gJGpIXdThVxeQY=;
	b=zxVHHw8A4ysfF9NatFTlZw5HcR0LCwsxMhlYKjOeUsHICRKSVAKk5elhzMhnUYEtzE
	OdgIOlG/tAwAONKpcRB8J9VwK127gU7Lrm8W6EXkcEZjJzvZ8DHeRxBtZA0HEzMn3q9t
	QlBNAbvOZjUxFRaCnxkbqNcQyDDb2TeslP+TuBz9EU5/uoSoTgJ9nbo1JcMfWUk0yt06
	1CIFqk/Rlnn3AA+BcusIMYYnOyilChpRLWwR85yE86jTGAz1KtDkDtY15m9mxiiJ/T2i
	0Ig9OVEWVvvpJTlDqoMnSvD77PDbCbaNBU1mWMqIJfN/jaxprej1mK5jyBv4J778hNfD
	N1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=uPpsiQjJALfxP/hWMpJi3QbiVpUA6gJGpIXdThVxeQY=;
	b=MZb2AlqOBrdqJFqWjlNA0eDDGRo8PRCE1zQ3JCQKmBvvuZWggWLg6jAFKbQ9qD8ani
	O3LQJloQClWp/N1LQhnp04JP+U1ErGlynnqnm4IUD1jrMc8I96+DD86AKFSBvluinyJY
	zCL3pYanpvoF3Q+QIoYthIoFfJZ0IQguZzefKwIc/Q6bJAXzhyjA0JEdcROW0LYYATk5
	3m/qI1Pf6JKhR9nWzEU/e1BzVRo0qS47oENWLjAp87W9FdEwvEJvT5QyO4NfdaVEcCbc
	hB8rJ7soV0+0dbYXIN1uJmldqHDFDOJUOJdMDrTlGMqRhYK65CNhCOmFGpzMngUavynz
	GUpg==
X-Gm-Message-State: ALyK8tKax9lFErcFqsgWpKA6mlP2gMFIr9LBzVngTEYU9PhR/O8u+tsYu6u3vVTS7myEBT+h
X-Received: by 10.98.66.86 with SMTP id p83mr10413053pfa.25.1464798860874;
	Wed, 01 Jun 2016 09:34:20 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	r64sm19757472pfi.54.2016.06.01.09.34.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Jun 2016 09:34:19 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2016 09:34:17 -0700
Message-Id: <1464798858-7014-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-cgl][PATCH 1/2] heartbeat: Fix new qa WARNINGS
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
X-List-Received-Date: Wed, 01 Jun 2016 16:34:22 -0000

NOTE: /home/akuster/oss/clean/meta-cgl/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb: base_contains is deprecated, please use bb.utils.contains instead

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
index 7fbed11..cc2643c 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
@@ -77,7 +77,7 @@ do_compile_prepend() {
 }
 do_install_append () {
     sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/heartbeat.service
-    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${libexecdir}
         install -m 0755 ${S}/${SOURCE1} ${D}${libexecdir}/heartbeat.init
         install -d ${D}${systemd_unitdir}/system
-- 
2.3.5


