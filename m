Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3977.1584582816619724277
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FHFfmNVZ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A38CE01886; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2565E01845
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id i13so508896pfe.3
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Wm3JAizaEm1cPTJ8/YHK2S9mxkMBcX0degqQ5FQLLU4=;
        b=FHFfmNVZA4Ml+pdMlK4HYg6wYXgP/PHgpsldIdcYZKtbJ5j319/Uuj/UiXOUwNOn0+
         3cLJgCGYu8qfnZAH9oeeF9a90a/9gIbuTV0bJb/demIV/lbGJseyjL8TNZjVo4q92/Pj
         jeMDxYHxAGcUqP5HrSxWY8kTi2zF966//GUqh6UYk+N58qTeqyyb7w+6qj4bT5BrSCku
         qvVxwIvYvWSOlfAlItOLpMWKu7/K67cErH8wjFFu9MFLv+p6NoMMcWnmZd46sasCBog5
         jxtEZnru1MuvqkFZRR+HsABxhi+azXB2eRI5IPUv5HsVIPgm8Fk8r/NBfYhHtefmWqwB
         lFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=Wm3JAizaEm1cPTJ8/YHK2S9mxkMBcX0degqQ5FQLLU4=;
        b=qtswIrtukDAni5ImeT7gL8PXC8i9vObj7rTE3PhFb3rRMTZfxWsdTHKwe1qXUIOUh+
         Ds/rAvqE8GLG2YFcNutOU/tysrSUsCTtHnjMxuwV2/hLps2G7guh2OBQH9+GNl9o5dvj
         813emgjHWbczjKlTm4FAdjvkx+0wQYfjkMvN1lSFWF4tsjNn8ha8KSLYPE8N3nSbpNS5
         bap/5boJy6kwHJz70YVnhNknexGT+xKpOBNzx2NFRCCqJzPPIl05yTOxy6hFAJuOco07
         FG6uyCtXVdk9msm9/AKR2dMQ5e8a7VzPmcPkoirvEKwQV59dB8aiQkUCiAml8QiAXiEM
         7s/w==
X-Gm-Message-State: ANhLgQ2n1UQu7O9UO5xgcLFx0IFWAHu97A/o9BEkmPQ6NECJ4xh31pb0
	qC2+/GzMozIdO2fxH59I13mQZgxsQ/k=
X-Google-Smtp-Source: ADFU+vsLms/PXhAEPCb3m+gBqWLGnKmAWz6C7BAy09z4w3EIQ7VM+4i9ZReJzLB4RvaM/orLw7fv0Q==
X-Received: by 2002:a65:6244:: with SMTP id q4mr741446pgv.84.1584582814516;
        Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id k3sm298568pgh.34.2020.03.18.18.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 170452A0404; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 14/20] libmailtools-perl: update 2.21
Date: Wed, 18 Mar 2020 18:53:15 -0700
Message-Id: <20200319015321.15525-14-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../perl/{libmailtools-perl_2.20.bb => libmailtools-perl_2.21.bb}    | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libmailtools-perl_2.20.bb => libmailtools-perl_2.21.bb} (74%)

diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
similarity index 74%
rename from meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb
rename to meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
index dec7979..8bbbde5 100644
--- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb
+++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "MailTools is a set of Perl modules related to mail applications"
 HOMEPAGE = "http://search.cpan.org/dist/MailTools/"
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-LIC_FILES_CHKSUM = "file://lib/Mail/Mailer.pod;beginline=144;md5=641bd171b1aaabba1fc83ac0a98a2d30"
+LIC_FILES_CHKSUM = "file://lib/Mail/Mailer.pod;beginline=150;md5=641bd171b1aaabba1fc83ac0a98a2d30"
 DEPENDS = " \
 	libtest-pod-perl-native \
 	libtimedate-perl-native \
@@ -18,8 +18,7 @@ BBCLASSEXTEND = "native"
 PR = "r2"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MA/MARKOV/MailTools-${PV}.tar.gz"
-SRC_URI[md5sum] = "53e9d35256c3fd7cef0e4a24b15e9512"
-SRC_URI[sha256sum] = "f55606f7a9cc342ee9d5f996e2b6a4c0047e2ee47cd88c3250ecf0d0c5fb3196"
+SRC_URI[sha256sum] = "4ad9bd6826b6f03a2727332466b1b7d29890c8d99a32b4b3b0a8d926ee1a44cb"
 
 S = "${WORKDIR}/MailTools-${PV}"
 
-- 
2.13.3

