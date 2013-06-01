Return-Path: <twoerner@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5BAE014EC
	for <yocto@yoctoproject.org>; Fri, 31 May 2013 21:29:38 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id x14so6006089ief.12
	for <yocto@yoctoproject.org>; Fri, 31 May 2013 21:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=DOgpsDK3bHVZ6EG3gJAu5VrMXYHrwOwQc2RIgteLvL4=;
	b=nFn8CzKmT9UOh3sZtpgAtW0DC8x6bD5Fj9trQB5ZNK/uc56YsnXf5Wo/6xkJXuHr29
	e0GVdej/6xiuqX2PkTtnDyHpoWoX5wjNNGsHKGBwZ0Zd03laM2ke/Yu3xNII/0UmgNIh
	FHjsf8OjVeedgLNWa5XVFBsxtqLtwtyiAXuO0OwUSQNs8zJzMEoOo4OG7bL6zQxjpEMI
	PZdF7qDgmGF1p0b5dyLyr9Pw30bVhftpqv30L2NrxXufIzEkLmzXLENVaivraB0/5J0f
	VxVcpcbjheM4YPJyp2m4IrSELVKZHmm/egU5TeJjO9uNckoFXWyS2GmxjpoqJjJTpWAu
	wz7w==
X-Received: by 10.50.82.102 with SMTP id h6mr3029258igy.23.1370060978239;
	Fri, 31 May 2013 21:29:38 -0700 (PDT)
Received: from suse64-i7.site (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPSA id d9sm6569711igr.4.2013.05.31.21.29.36
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 May 2013 21:29:37 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  1 Jun 2013 00:30:10 -0400
Message-Id: <1370061010-22690-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.8.3.rc1.44.gb387c77
Subject: [yocto-docs][PATCH] dev-manual: correct location of license data
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
X-List-Received-Date: Sat, 01 Jun 2013 04:29:39 -0000

After a build, the license data is found in ${TMPDIR}/deploy/licenses not
${TMPDIR}/deploy/images/licenses.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 documentation/dev-manual/dev-manual-newbie.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 779d06d..e5d6f32 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -782,7 +782,7 @@
         Once the build completes, the list of all licenses found and used during that build are
         kept in the
         <link linkend='build-directory'>Build Directory</link> at
-        <filename>tmp/deploy/images/licenses</filename>.
+        <filename>tmp/deploy/licenses</filename>.
     </para>
 
     <para>
-- 
1.8.3.rc1.44.gb387c77


