Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC7EE00E59; Mon, 26 Feb 2018 14:53:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65669E00A44
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 14:53:23 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id e9so2436075pgs.10
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 14:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=NdaNc1gHhj4U3MlbwKULizOfm1cKf0SF7++FJqjEHJk=;
	b=ZeMqadG+3Rg7SUYjbAtH4gM9wS7AfUvMwrwdA1lkccLYUo7KQeiu7HN5ibMJlu/eNt
	QuNOqK6W5IUaPKA7y58YMr9uQzbIwB598W1GKQ1Aesl4hgE74/FSrSA7ajZ7MPSQyXXX
	Nn+dl260GAtthwnPYdK8dNx7kMrfSU2qQUF6H5+4qTP0J8/pU/j58HY6CsSSHoGzu31/
	D0YsT1TmYrZKjn1uMhKx3iGt1LAV2L7CXs5Mk1QZS2HoRpRAJbjblaksHz3cqSL89Zt2
	w+wTIIhsnAoOpKKuvu7EjkiXjrueXjt7A5oSvzdq9MxwKRQohaGi487ArQz+hzdSrKsG
	QbXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=NdaNc1gHhj4U3MlbwKULizOfm1cKf0SF7++FJqjEHJk=;
	b=KN7FjHfbdqTqBE5qeJxL/UXsclQnweUhHSk5bAAIleSdFhoWGShrM3Z93R+5+QZ0wV
	mO9WwHjBq/k5uPO7LFH3EuzjfX4/UndAEvTovhWKwrom9urvQ7wNGRHubCkJ+8RC78Eb
	qrgEc466FyLEMkAgtnn76z0+/oyMtixRpB+KT8h06Vw22JY3sE42DLCOBaEokppgH/sg
	r+r0hZzSJQKWTIS7I6SC29BtRn/qKBGeQzR7uP/XST2sBcciS+fobQAxlsFpUVQqjSvx
	FDkfnCKR9ZQLfFYf7CtzIWhFMfGEl/edQJmmBj4p+kTQsQTS9BvIGnlozWBUwp3DZhMT
	1hUg==
X-Gm-Message-State: APf1xPBHVLIfAImor3so9hDR7omtyb/JnRouHx6ma2/EOPQ+p1YhbH/o
	HLQbh+sPyBVcT1zStoWUR4gGzA==
X-Google-Smtp-Source: AG47ELsOibYOUGIt1zOT6i6cL/NTpGeY3rOqAHnwOqMOBKYDbvgLWpzYH3n87nzNzPS44mmtorsrKA==
X-Received: by 10.167.128.143 with SMTP id v15mr390504pff.36.1519685602460;
	Mon, 26 Feb 2018 14:53:22 -0800 (PST)
Received: from e6520.guest-wifi.scl.liberty.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	k3sm16737886pff.41.2018.02.26.14.53.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 26 Feb 2018 14:53:21 -0800 (PST)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Feb 2018 14:53:12 -0800
Message-Id: <1519685592-5623-1-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] gnutls: update 3.3.28 -> 3.3.29
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
X-List-Received-Date: Mon, 26 Feb 2018 22:53:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* Version 3.3.29 (released 2018-02-16)

** libgnutls: Fixed issue which caused 1-byte handshake fragments to be refused.
   Reported by Balázs Kéri.

** libgnutls: Fixed interoperability issue with openssl when safe renegotiation was
   used. Resolves gitlab issue #259.

** libgnutls: Use readdir() instead of readdir_r internally. The latter
   is deprecated and on our use we don't need readdir() to be thread safe
   (which it is in most common platforms).

** libgnutls: require strict DER encoding for certificates, OCSP requests, private
   keys, CRLs and certificate requests.  This backports the already default behavior
   from the 3.5.x branch, in order to reduce issues due to the complexity of BER rules.

** libgnutls: Addressed issue in the AES-CBC acceleration under ssse3 (patch by
   Vitezslav Cizek).

** libgnutls: Addressed issue in the accelerated code which may affect interoperability
   with versions of nettle > 3.4.

** p11tool: Fixed issue preventing the deletion of objects in batch mode.

** p11tool: Mark all generated objects as sensitive by default.

** API and ABI modifications:
No changes since last version.

Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
---
 recipes-support/gnutls/gnutls_3.3.28.bb | 8 --------
 recipes-support/gnutls/gnutls_3.3.29.bb | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-support/gnutls/gnutls_3.3.28.bb
 create mode 100644 recipes-support/gnutls/gnutls_3.3.29.bb

diff --git a/recipes-support/gnutls/gnutls_3.3.28.bb b/recipes-support/gnutls/gnutls_3.3.28.bb
deleted file mode 100644
index 1b23369..0000000
--- a/recipes-support/gnutls/gnutls_3.3.28.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require gnutls.inc
-
-SRC_URI += " \
-    file://configure.ac-fix-sed-command.patch \
-    file://use-pkg-config-to-locate-zlib.patch \
-"
-SRC_URI[md5sum] = "e19718d97cee5279edf3f3b9318f926c"
-SRC_URI[sha256sum] = "608f63441abc209c5bd5f61e35f2b6128c22e06fa2ad6248a08d8a643feeb807"
diff --git a/recipes-support/gnutls/gnutls_3.3.29.bb b/recipes-support/gnutls/gnutls_3.3.29.bb
new file mode 100644
index 0000000..21099eb
--- /dev/null
+++ b/recipes-support/gnutls/gnutls_3.3.29.bb
@@ -0,0 +1,8 @@
+require gnutls.inc
+
+SRC_URI += " \
+    file://configure.ac-fix-sed-command.patch \
+    file://use-pkg-config-to-locate-zlib.patch \
+"
+SRC_URI[md5sum] = "de7a58232d42b1d71baf38a06dc34412"
+SRC_URI[sha256sum] = "fa9d13f1bc35b81fac85152906b8d4950f4f5a90d76d5b406c1167728770c94a"
-- 
1.9.1


