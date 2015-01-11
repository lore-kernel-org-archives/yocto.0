Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A23FDE008FF; Sun, 11 Jan 2015 09:56:43 -0800 (PST)
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
	*      [209.85.160.169 listed in list.dnswl.org]
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DBD0E005B4
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 09:56:29 -0800 (PST)
Received: by mail-yk0-f169.google.com with SMTP id 79so7697537ykr.0
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 09:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=bnFQ9QDI+o6UxiNscbkBtAi3zhzBD2GugpEPIyODTXE=;
	b=nE5ns5JA57HaK0pv7jHXa1umWDCC8DTkN2+es6QkDOwV36kq63LMafxOQbXbR/7hhM
	+E55mcBwaRkSraFLW8+DUuJRkrb0QNsPtFbFMBTUaP0qN+DfkDnooe3t6qUBzJU45/2E
	SbPML86jZjtangdx9k5sqAl+Mxy32VEu0PJ3ND00qZbbV36EFSlOZR55deG3A28fUpYD
	YmH6sSPGizbU35LLb8RqlGIVIwiVJhBLvcwQM5JApzxdelLOuya8Ibb5n9qLcqOIO/HX
	JRlPB3AY+fTX3W4x9snyCjU9z/HfVXBDn3OwTQ/SBR5nw+PyR8od5b9pFZrxS6XHJCml
	sXlQ==
X-Received: by 10.236.23.228 with SMTP id v64mr19835931yhv.25.1420998988200;
	Sun, 11 Jan 2015 09:56:28 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id k61sm8896712yho.44.2015.01.11.09.56.26
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 11 Jan 2015 09:56:27 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 11 Jan 2015 09:56:22 -0800
Message-Id: <1420998982-3732-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libcap-ng: fix checksums
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
X-List-Received-Date: Sun, 11 Jan 2015 17:56:43 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libcap-ng/libcap-ng_0.7.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
index 3f225ba..8823dad 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
@@ -12,8 +12,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
 
 inherit lib_package autotools pythonnative
 
-SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
-SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
+SRC_URI[md5sum] = "55c57c0673b944ea1a755bcb2636dabd"
+SRC_URI[sha256sum] = "48a2083276f9820cb92dcb05d001b30733bcbf48c14c230303cac3cd08b45b6b"
 
 DEPENDS += "swig-native python"
 
-- 
1.9.1


