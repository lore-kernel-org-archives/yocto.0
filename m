Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9512E00D2F; Fri, 29 Mar 2019 20:14:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.177 listed in list.dnswl.org]
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15C14E00D24
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 20:14:01 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id c207so1909649pfc.7
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 20:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=uOySSBbmIv2JsWd/UeQ7mrjCGTIkkHpM7wb+icaDXr0=;
	b=SZtvDXvAO3DfRW0NLPNOqZzW/LxZfQqQx6BCO9DrsmKKW1dQWKLpMe+q24i5269E9x
	zMSRP6yU1QNYKyBq/rI8D05mjpGnpbMeM8JD/VPICI6amyWpIVbDHoaw3YfIafETQPmf
	nljJT3OQYFmrdSnBEIKnZjwPXoPoHdufBycUcuQrvp/m5mXqLTBaFhGMXC6d/BkESia0
	YUkcK749+PPeVhhSEvrbi8lM1STYNliLdxmIZFZCSt0851DhsWBJrP0yeib3LJ9lVF2h
	0C2SNwTzsApRZYCdD+hG7l0pKl+2ny5noqpGww0mdrOdM5Jf46OWfqN8Nrtef2/Swdoj
	nXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=uOySSBbmIv2JsWd/UeQ7mrjCGTIkkHpM7wb+icaDXr0=;
	b=eZNomojP/t/Z5ASlKrrPF0aXpjGCcZCYFU1BTKLyHNeNEJQvITOK85brRm/aI+R1LG
	CdeWTaEbEYLCVAYTWKYjebo2lreZVkrNBiQLu6Elcnw9GlrEFj9fqI9KH3Eo41Szgorg
	MOla8UfqCYazQp8XxE5MzIyaXXzt9fzj2h08kwSQea9wXRvHf8NVnYjiawCC1DFyDugh
	i8gezVHQ2GdF0V9pLbq/nR3WbJs7z3btv7ga3pCL23AVwxUWL6GEdx7L5XamRe77SXuZ
	BW+psR75c7JxvjLIOgpi9EabCS58qbvdGd/BxVfqx1uZnkTSJlATLsF6OzJev4dwxm9R
	QZ8A==
X-Gm-Message-State: APjAAAWLxMikGV14hGh0F0W4TXBr/E8P8dUjuiMMS+1onxvR14k8hjc5
	JMQVlGCPt1N8M+iXEouSqIu3Q2V/
X-Google-Smtp-Source: APXvYqx1w9f58BXo3RqvrWyIv1L+v34SvexBJqvTI1l1COfqAX8ZP7fdDQx1IA4qOxuApvzufmpnyQ==
X-Received: by 2002:a63:e050:: with SMTP id n16mr48715293pgj.210.1553915640461;
	Fri, 29 Mar 2019 20:14:00 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	r10sm5580610pfn.188.2019.03.29.20.13.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 20:13:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 20:13:57 -0700
Message-Id: <20190330031358.10018-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH 1/2] samhain: fix runtime error
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
X-List-Received-Date: Sat, 30 Mar 2019 03:14:02 -0000

fix:
samhain[1652]: FATAL: x_dnmalloc.c: 2790: hashval < AMOUNTHASH
Killed

disable dnmalloc

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index dcd72b9..1b9af39 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -117,6 +117,7 @@ do_configure () {
 	--enable-network=${SAMHAIN_MODE} \
 	--with-pid-file=${localstatedir}/run/samhain.pid \
 	--with-data-file=${localstatedir}/lib/samhain/samhain_file \
+	--disable-dnmalloc \
 	${EXTRA_OECONF}
 }
 
-- 
2.17.1


