Return-Path: <joshua.lock@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D61E01444
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 17:46:34 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 05 Jun 2012 17:46:33 -0700
Received: by mail-pb0-f52.google.com with SMTP id ro8so7859412pbb.25
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 17:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references:x-gm-message-state;
	bh=+cJVytpcszCXvLJB/G2q6P4xiqxlO5AiqP8WQfK3EHo=;
	b=YP4u7uBLyOsIGahbUzOYzZWVdhcMAvTPihXWnxpXRE6/HerRtcuhOSedsqsVvanIi5
	6+6TUFLYwtMbxh6NO1EKIZpjiGrOrSo9jTLO+SBFUB/FXyggbdKxVsmuAGTlW31YQbyV
	yIoje9g8y3VwPE0HLBu/dwS28yxu6jyF/SwAlMQyb1Phh8nO090W7UaaXb16oiazObsg
	UTwpIiyjd5HNzbQ9RVDJPPfSGz4GAOnm5kLQ/5EqtS4zer9YAT280kNeN/654VYmMktq
	yTPG26IgTH7mA3H2AgGLqPpsL3aeR3utjhp1QQBjnzdY3O4jzme6IU4sYywnEfnHRnwm
	gCqg==
Received: by 10.68.201.195 with SMTP id kc3mr2999913pbc.33.1338943593905;
	Tue, 05 Jun 2012 17:46:33 -0700 (PDT)
Received: from shamshir.amr.corp.intel.com ([192.55.55.41])
	by mx.google.com with ESMTPS id pg3sm531536pbc.2.2012.06.05.17.46.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Jun 2012 17:46:33 -0700 (PDT)
From: Joshua Lock <joshua.lock@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jun 2012 17:45:37 -0700
Message-Id: <50de32829b5b517f1048b5277ac0cf78ab23eec6.1338942853.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1338942853.git.josh@linux.intel.com>
References: <cover.1338942853.git.josh@linux.intel.com>
In-Reply-To: <cover.1338942853.git.josh@linux.intel.com>
References: <cover.1338942853.git.josh@linux.intel.com>
X-Gm-Message-State: ALoCoQn9dlvha27MoDnnvynRDdQuRgpF8+o5EacunEmY98hfaQGXxhyl80zUy+VgraBkFvp7Wo0q
Cc: Joshua Lock <joshua.lock@intel.com>
Subject: [PATCH x32 Edison 1/2] openssl: update bbappend to match version in poky edison
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
X-List-Received-Date: Wed, 06 Jun 2012 00:46:34 -0000

From: Joshua Lock <joshua.lock@intel.com>

Signed-off-by: Joshua Lock <joshua.lock@intel.com>
---
 ...ssl_0.9.8r.bbappend => openssl_0.9.8s.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename openssl/{openssl_0.9.8r.bbappend => openssl_0.9.8s.bbappend} (100%)

diff --git a/openssl/openssl_0.9.8r.bbappend b/openssl/openssl_0.9.8s.bbappend
similarity index 100%
rename from openssl/openssl_0.9.8r.bbappend
rename to openssl/openssl_0.9.8s.bbappend
-- 
1.7.7.6


