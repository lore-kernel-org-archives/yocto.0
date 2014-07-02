Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56DCFE0043F; Wed,  2 Jul 2014 16:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F05A9E00342
	for <yocto@yoctoproject.org>; Wed,  2 Jul 2014 16:14:20 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id hz1so13378470pad.10
	for <yocto@yoctoproject.org>; Wed, 02 Jul 2014 16:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=HgG//2j8ZtJ072z340dpvPCSupU/1XM3wxf752Z74Tg=;
	b=kiJ68QMubrPE+hm1IgBjRDKLbDlsgLKuou/kVXpYejxi5NdsgvpNdyV7mcIV/3la++
	QQrLassmGjRPApsCN+QCuWFyFspF8Wvv8eWvcYssBT3pGy0uBzNZInnnKVEtgd7LPNXA
	Tf2ELYb2jMV6Bs7YmSzy6H//jZJXDkTJBy3ram6TfnKnCkV1hokgWvxJXkviAwpBDUKh
	DhiQWNm6IsuCU9T3IJn1PhtwmjU0D/kkPY4o/O2xky4pdox2BJnYeLlACgWWtINB+XN9
	3WCc551jgknQudAv2lt3Os3Pi4nHwdfDYGOO2FnYLPWIhIT9JQ8i1hs4GuxTSA2VhuDJ
	IGYg==
X-Gm-Message-State: ALoCoQkIqzJF67i2c3HkivNJFs8g0i7zaTkQV+7FC87FgpBYlWfyhUtw/aJ4MJeFzkIXPku9ZGKV
X-Received: by 10.70.64.201 with SMTP id q9mr2092863pds.130.1404342859972;
	Wed, 02 Jul 2014 16:14:19 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	z3sm135192991pas.15.2014.07.02.16.14.18 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Jul 2014 16:14:19 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Jul 2014 16:14:16 -0700
Message-Id: <1404342856-14889-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] meta-security: Add Maintainers
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
X-List-Received-Date: Wed, 02 Jul 2014 23:14:22 -0000

Add Maintainers statement to README and add self to list.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 README | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/README b/README
index 1df88b5..2c5a0cd 100644
--- a/README
+++ b/README
@@ -233,6 +233,18 @@ help for each package.
 
         More detailed usage can be found in the man pages and README file of the package.
 
+Maintenance
+-----------
+
+Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+
+When sending single patches, please using something like:
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+
+Maintainers:    Saul Wold <sgw@linux.intel.com>
+                Armin Kuster <akuster@mvista.com>
+
+
 License
 =======
 
-- 
1.9.1


