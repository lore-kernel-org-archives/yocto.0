Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79AA1E0092E; Wed, 14 Jan 2015 07:12:53 -0800 (PST)
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
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C97AFE008DE
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:47 -0800 (PST)
Received: by mail-pd0-f171.google.com with SMTP id y13so10300578pdi.2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EzxcH7SCBwvuACILi+T23uQgp8sI3HokGXAvbCHBKPQ=;
	b=CSWnom7vl1ZyYJ5WrzboO6RcUkdme1+6o0s6AgGKhN6ChiUpfTiy7wHKkHir9wOX0L
	mZJkTOZX1UB1FAEqtvYfYzvEq5sl8i65O4s4sc+edzTn2XOOqiOt7Jav3196CKDzNDlg
	0Rtvk+agbVx5Ua0xAH6bqK0m2Hxw08nES9LzvgU34RzUdtOm/Cm2pXimJySGun7L5x/p
	S/WG2UiRzXNMEP6CWgKZ+nfqHq98UUYVtUuiP1w1Klx5yjKrbBMZjzYfeU7Sm+Sq/Jif
	CSkpHL0e1zvAn+tVx5NfW7FNpRvO9iKl4Ng6yChtpwhZ+MNk+6vJj5e/26nyl5ECe0v1
	wFZw==
X-Received: by 10.70.38.71 with SMTP id e7mr6545662pdk.130.1421248367357;
	Wed, 14 Jan 2015 07:12:47 -0800 (PST)
Received: from Pahoa2.mvista.com (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189]) by mx.google.com with ESMTPSA id
	re13sm2094690pdb.28.2015.01.14.07.12.45 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Jan 2015 07:12:46 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Jan 2015 07:12:36 -0800
Message-Id: <1421248358-14391-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
References: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/5] libseccomp: fix rdepends
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
X-List-Received-Date: Wed, 14 Jan 2015 15:12:53 -0000

WARNING: QA Issue: libseccomp requires /bin/bash, but no providers in its RDEPENDS [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
index 0663656..f15c6b0 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -30,3 +30,5 @@ do_install() {
 PACKAGES += "${PN}-tests "
 FILES_${PN}-tests = "${libdir}/${BPN}/tests/*"
 FILES_${PN}-dbg += "${libdir}/${BPN}/tests/.debug/*"
+
+RDEPENDS_${PN} = "bash"
-- 
1.9.1


