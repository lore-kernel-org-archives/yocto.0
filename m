Return-Path: <joshua.lock@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9FFE01440
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 17:46:37 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 05 Jun 2012 17:46:36 -0700
Received: by mail-pb0-f52.google.com with SMTP id ro8so7859412pbb.25
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 17:46:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references:x-gm-message-state;
	bh=CsAeUJoR6JKyt60XEmzB8oiyd3IENKI+TjvMvMtZgKU=;
	b=G54IavkYpiipmJKV4gI5ICb4OrsYD2XrPDCihp2p/PJxVVuLawWziaoVRXWQTWwTJ2
	hNGbTZ/ytcJybdvNI605ri4V9+WY1iiEkleGfPYAjBQLeRRuytUPCbaxDg/+4Qsk/T31
	3OzfOL+3aoMyY+BrwQOK/1PJlbJJAKTXh0/sWv0wlYn7LWqmTIZsltnnXCZ3XO0snb0M
	vVyUc7QXZjFOOIaWYoKrOhdYeYVo+q6sdqYvMA0ERR53RBcWzHSOt0F/U/FJSaVLbEAB
	5YbUVWPZ55tvyQVuTa1C1I2ca/MTIt7QFIxW9hWLhwNS37I3uUKuoXa6aMU2bBg9Noo2
	RRpA==
Received: by 10.68.190.97 with SMTP id gp1mr53527423pbc.76.1338943596845;
	Tue, 05 Jun 2012 17:46:36 -0700 (PDT)
Received: from shamshir.amr.corp.intel.com ([192.55.55.41])
	by mx.google.com with ESMTPS id pg3sm531536pbc.2.2012.06.05.17.46.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Jun 2012 17:46:35 -0700 (PDT)
From: Joshua Lock <joshua.lock@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jun 2012 17:45:38 -0700
Message-Id: <e0f327ae46d4688b239b7dc85334e6b6bb7a5c80.1338942853.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1338942853.git.josh@linux.intel.com>
References: <cover.1338942853.git.josh@linux.intel.com>
In-Reply-To: <cover.1338942853.git.josh@linux.intel.com>
References: <cover.1338942853.git.josh@linux.intel.com>
X-Gm-Message-State: ALoCoQk/OB7CMX/HGmUubx/49d7VCwHJE+oWR6m6FzIBAEiv1x/sZr+Ggc5Hs6jaYmHaMPPOMc9G
Cc: Joshua Lock <joshua.lock@intel.com>
Subject: [PATCH x32 Edison 2/2] gmp: Fix EXTRA_OECONF for native target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Jun 2012 00:46:37 -0000

From: Joshua Lock <joshua.lock@intel.com>

Signed-off-by: Joshua Lock <joshua.lock@intel.com>
---
 gmp/gmp_5.0.2.bbappend |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/gmp/gmp_5.0.2.bbappend b/gmp/gmp_5.0.2.bbappend
index 4b33dbb..531bda8 100644
--- a/gmp/gmp_5.0.2.bbappend
+++ b/gmp/gmp_5.0.2.bbappend
@@ -1,3 +1,3 @@
 PR .= ".x32"
  
-EXTRA_OECONF_native += " --enable-cxx=yes"
+EXTRA_OECONF_virtclass-native += " --enable-cxx=yes"
-- 
1.7.7.6


