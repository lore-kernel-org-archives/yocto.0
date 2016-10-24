Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3174CE00CCD; Mon, 24 Oct 2016 02:28:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2978E00CC7
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 02:28:24 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id d128so8879988wmf.0
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 02:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=rBkTgN5ens/gfKNUS1w4FB5v0aWvOqXrUbz1T59Y8Io=;
	b=wezVSLiJEPtYAivPa5/6iLTtIsRV6zkrk46Zp2sskAwOVT4eG7ngQM8D6hmimHKA0F
	RDaRG3KKHNiBo6PIeC9eb/r5FIcoBCwbntxJT7md9wWQLqDQd6iGpZ9ec/4NawIFxhPw
	VMpYbVScJ5xT8ixggUMDkoWsb5TDVM1qBFz6PwFtoCDrMXepan3RcmwMTENJxhSsQILZ
	0aMSLSCaH4KKl68eoGN1w6P2ttbpXHIALu8XRjgHyoidU4NhArNAJsBfvI9q6NXvz4rK
	vVBo1t4qpNwPj9CTvE3LJJ9rIvq4Ektd5pTLhks34BLNK6/kwgwCt7C08DyiwD/C9WO7
	KIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=rBkTgN5ens/gfKNUS1w4FB5v0aWvOqXrUbz1T59Y8Io=;
	b=dbl3gVTos+UtEkVf2eEH/i5NP3v6eZKIzOkF5cVkQzbczevmVXhCJbAPZqlRKcr0yo
	GS5+2eu8jsjh/xxZswR62mnYU9BZOz5FUWVzxnfFhUP2t6wTrmUZGiwFSfcusrmGPuow
	Vnk3WbW1CXSq02GqX5w4pxG9n9bDyZEK/navbtSoS96IB9WWiZ2SJ9oOZioq5W/Vsw+W
	o9DXCnxXfKrLSkA6nRywcGh5PdUjkxENxCteKcoMb3TI07Q7UTiWkGG0v3a1YecWLM+w
	4j7sMQa0t+UbF8AlyDp+JY/4LVj8aDwwBucWp7MmhoLBvBCxml0Viv9Da6UpwOhminPM
	oDYg==
X-Gm-Message-State: ABUngveJG0BRbPN4v79kq59loa7geB+7tzgJH8jIdluXC5Qg9AWvtZQEPdW7SvkmZ4Da7g==
X-Received: by 10.194.148.162 with SMTP id tt2mr11010355wjb.147.1477301303129; 
	Mon, 24 Oct 2016 02:28:23 -0700 (PDT)
Received: from sgxcmp483.sigfox.com (ram31-1-82-234-79-177.fbx.proxad.net.
	[82.234.79.177])
	by smtp.gmail.com with ESMTPSA id q8sm18319825wjj.7.2016.10.24.02.28.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Oct 2016 02:28:22 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Mon, 24 Oct 2016 11:28:19 +0200
Message-Id: <20161024092819.18559-1-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.9.3
Subject: [meta-measured][PATCH] Fix tpm2.0-tss package issue: libraries are not ship into the right packages
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
X-List-Received-Date: Mon, 24 Oct 2016 09:28:28 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index 453523e..175d36b 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -40,28 +40,28 @@ PACKAGES = " \
     resourcemgr \
 "
 
-FILES_libtss2 = "${libdir}/libsapi.so.0.0.0"
+FILES_libtss2 = "${libdir}/libsapi.so.0.0.0 ${libdir}/libsapi.so.0"
 FILES_libtss2-dev = " \
     ${includedir}/sapi \
     ${includedir}/tcti/common.h \
-    ${libdir}/libsapi.so* \
+    ${libdir}/libsapi.so \
     ${libdir}/pkgconfig/sapi.pc \
 "
 FILES_libtss2-staticdev = " \
     ${libdir}/libsapi.a \
     ${libdir}/libsapi.la \
 "
-FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0"
+FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0 ${libdir}/libtcti-device.so.0"
 FILES_libtctidevice-dev = " \
     ${includedir}/tcti/tcti_device.h \
-    ${libdir}/libtcti-device.so* \
+    ${libdir}/libtcti-device.so \
     ${libdir}/pkgconfig/tcti-device.pc \
 "
 FILES_libtctidevice-staticdev = "${libdir}/libtcti-device.*a"
-FILES_libtctisocket = "${libdir}/libtcti-socket.so.0.0.0"
+FILES_libtctisocket = "${libdir}/libtcti-socket.so.0.0.0 ${libdir}/libtcti-socket.so.0"
 FILES_libtctisocket-dev = " \
     ${includedir}/tcti/tcti_socket.h \
-    ${libdir}/libtcti-socket.so* \
+    ${libdir}/libtcti-socket.so \
     ${libdir}/pkgconfig/tcti-socket.pc \
 "
 FILES_libtctisocket-staticdev = "${libdir}/libtcti-socket.*a"
-- 
2.9.3


