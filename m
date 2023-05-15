Return-Path: <schitrod@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00173C7EE22
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 10:55:51 +0000 (UTC)
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
 by mx.groups.io with SMTP id smtpd.web11.85260.1684148145304037322
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 03:55:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=PhvufhcK;
 spf=pass (domain: cisco.com, ip: 173.37.86.77, mailfrom: schitrod@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=987; q=dns/txt; s=iport;
  t=1684148145; x=1685357745;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=R00AbQOvpLZBAa/kzvjgyiGb2bMYLPGp5uuSxZW8tg8=;
  b=PhvufhcK8HoDjmx1fuQHN2IAH1IRJ+FGiFaqOziMx8ZOQFngaxuvRjwU
   7NUqd+10FIYTxC4nrTTwBQRsj34TYIdxKI2VI5lrdRZFsM7SX2ekMzU4Y
   qXq8ZNg9YeVoGyrWo3aNdc24HlOIJKvXP/baIehYy/I8F0TwVVr5EaP92
   c=;
X-IronPort-AV: E=Sophos;i="5.99,276,1677542400"; 
   d="scan'208";a="58248923"
Received: from rcdn-core-7.cisco.com ([173.37.93.143])
  by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 15 May 2023 10:55:44 +0000
Received: from sjc-ads-7441.cisco.com (sjc-ads-7441.cisco.com [10.30.220.226])
	by rcdn-core-7.cisco.com (8.15.2/8.15.2) with ESMTPS id 34FAti1i030368
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 15 May 2023 10:55:44 GMT
Received: by sjc-ads-7441.cisco.com (Postfix, from userid 1812315)
	id B5DD7CC1293; Mon, 15 May 2023 03:55:43 -0700 (PDT)
From: Sanjay Chitroda <schitrod@cisco.com>
To: openembedded-core@lists.openembedded.org, yocto@lists.yoctoproject.org
Cc: Alex Kiernan <alex.kiernan@gmail.com>, Alex Kiernan <alexk@zuma.ai>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Sanjay Chitroda <schitrod@cisco.com>
Subject: [dunfell][PATCH] pypi.bbclass: Set CVE_PRODUCT to PYPI_PACKAGE
Date: Mon, 15 May 2023 03:55:16 -0700
Message-Id: <20230515105516.484857-1-schitrod@cisco.com>
X-Mailer: git-send-email 2.35.6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.30.220.226, sjc-ads-7441.cisco.com
X-Outbound-Node: rcdn-core-7.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 10:55:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60025

From: Alex Kiernan <alex.kiernan@gmail.com>

The CVE product name for PyPI packages is (usually) the same as the PyPI
package name (and not our recipe name), so use that as the default.

Signed-off-by: Alex Kiernan <alexk@zuma.ai>
Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 61f6b0ad09bf87cdc2d3f08770b7c44cad1d0e58)
Signed-off-by: Sanjay Chitroda <schitrod@cisco.com>
---
 meta/classes/pypi.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/classes/pypi.bbclass b/meta/classes/pypi.bbclass
index 87b4c85fc0..c68367449a 100644
--- a/meta/classes/pypi.bbclass
+++ b/meta/classes/pypi.bbclass
@@ -24,3 +24,5 @@ S = "${WORKDIR}/${PYPI_PACKAGE}-${PV}"
 
 UPSTREAM_CHECK_URI ?= "https://pypi.org/project/${PYPI_PACKAGE}/"
 UPSTREAM_CHECK_REGEX ?= "/${PYPI_PACKAGE}/(?P<pver>(\d+[\.\-_]*)+)/"
+
+CVE_PRODUCT ?= "python:${PYPI_PACKAGE}"
-- 
2.35.6


