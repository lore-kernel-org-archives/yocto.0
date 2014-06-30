Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D845E0053A; Mon, 30 Jun 2014 15:36:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A39E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jun 2014 15:35:55 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id lf10so9428507pab.30
	for <yocto@yoctoproject.org>; Mon, 30 Jun 2014 15:35:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JBBAxxrLqStQxUTTl7WWnJs3KHmvVpoyCvTzN+gP24g=;
	b=TcafwqCeyc4SOF2c4CqnGLrmx3tP8q5eWoo//yHBJhR2pmgMMaa7XFIZ07Yvw/veUC
	CEZzGcRYogoLTbCkrFWO4MAdcMoH2aQz+WN7IsD6niwZ9HG8KRceMFaWxIpmvO5ftPHH
	H/WyxPRVdE+u9n273/ya8sJPkwTaxGoRs19WovygDnMbvSYdGWWKtB9p8/Dvbf8PzOIM
	tOxHZYbm0q/8ge47nrYYynUGlauQs9C6W9qaEnQudcKIypTl6OXc5WpWf9lt6vj1yXWt
	p3DB0UQ2G5LG+5wDe3KtUnwkhsASjcNxe7yo+ol7GyTshS1our+MXt8nBzwh8/S/vCpN
	WDcw==
X-Gm-Message-State: ALoCoQnrInCegqY7UbgbY+WjxpQ1XT9gf0aNZkyhVigBZtZAjngVEdt+OHjF8dZickQvvSnS37c0
X-Received: by 10.68.181.67 with SMTP id du3mr55576392pbc.96.1404167755227;
	Mon, 30 Jun 2014 15:35:55 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	fv2sm29453084pbd.11.2014.06.30.15.35.53 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jun 2014 15:35:54 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Jun 2014 15:35:51 -0700
Message-Id: <1404167751-3278-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Tue, 01 Jul 2014 10:48:01 -0700
Subject: [meta-selinux][PATCH] gnupg: use wildcard in name
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
X-List-Received-Date: Mon, 30 Jun 2014 22:36:05 -0000

There are two versions of gnupg so limit the wildcard to the 2.x series

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-support/gnupg/{gnupg_2.0.22.bbappend => gnupg_2.%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-support/gnupg/{gnupg_2.0.22.bbappend => gnupg_2.%.bbappend} (100%)

diff --git a/recipes-support/gnupg/gnupg_2.0.22.bbappend b/recipes-support/gnupg/gnupg_2.%.bbappend
similarity index 100%
rename from recipes-support/gnupg/gnupg_2.0.22.bbappend
rename to recipes-support/gnupg/gnupg_2.%.bbappend
-- 
1.9.1


