Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FBD2E00B31; Sun, 30 Jun 2019 12:11:54 -0700 (PDT)
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
	*      [209.85.210.171 listed in list.dnswl.org]
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BBFE00A49
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 12:11:52 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id t16so5415125pfe.11
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 12:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=2+ceKiN/3m1tuJh32GGCRjGmLzDZIpgEIwvkGHzHOMo=;
	b=WUEn+I8ZDHD3NHVPaArM/LxY7e1TuWx2YznVhKLat9Vu279S/uLzY9MwPjETSLE55E
	8CB05gm/JaChl6XKyDPuobcAPtnh1LjeIQMtzrNcc+Tgaut1o4qUYZHscZaFYf3MOkrq
	vLuyJolL5m82wejD7+eTy2eXRhdmPw8/xzQpHBp5FmnQ8IjVNueMkImPTPuQFdRO2/yW
	ZtpPcVUtm1zUJocQg6DMzl+mOAJTYoXDMJYnZ+Gy5/7IPq/jbONjfbdIIJMGio/GJ9Q0
	B74syGBRKIK7PIcGkHadCOazpv0pQHld4TG/+YcwlEMIIZkmnlUOux4KmoenqCo3BigK
	8DiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2+ceKiN/3m1tuJh32GGCRjGmLzDZIpgEIwvkGHzHOMo=;
	b=m1J9uOjmpFVgf1tOiXES49WtwZBNh0Hhs+1TS5ih/snIEtDsdncpwzI0L4HRrMV79f
	D31zeZQrEEABiJ9I3ptIm1VyU7ijlOS5EI42DtkgXRjhXWMUd2cbMpOh6nFaP0Wk154U
	WTilSK1X0G5I57hJnmrqUNbgfjq/AU+nnpUG0+qqg3ocZeGjsMSQO3vMBtvabEQkTvIH
	LJN1uPLv6d+mUNv2tVIPguA5VNYkam2cpINtywzxGM3MH9o1vAuLmmGZq/ujg49WEHWv
	+sH3cSPgF4gV3QXfqKPNHXrttb0X3ecsI6TOi9wgcbzjdEMA+JHDAcbdeCIaCb2N8oFy
	PrpA==
X-Gm-Message-State: APjAAAW2LURn7uSHzWLKk8nVihQ24duogfOEo91t3iNM60DddEmHUfGF
	GZvGb/52Mv1xoqgyc35wGJl8f6Mujs8=
X-Google-Smtp-Source: APXvYqxWX2osczSa5YCDTPGxHl3dImQZ8CsJvnHjb2ZN7w3HtnxCk/MtN8Fm/s8FGXLqNYsUqSUVhA==
X-Received: by 2002:a17:90a:ac0e:: with SMTP id
	o14mr26701802pjq.142.1561921912406; 
	Sun, 30 Jun 2019 12:11:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y16sm8304698pjj.25.2019.06.30.12.11.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 30 Jun 2019 12:11:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 30 Jun 2019 12:11:48 -0700
Message-Id: <20190630191148.30104-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190630191148.30104-1-akuster808@gmail.com>
References: <20190630191148.30104-1-akuster808@gmail.com>
Subject: [meta-security-compliance][PATCH 2/2] meta-security-compliance: update README
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
X-List-Received-Date: Sun, 30 Jun 2019 19:11:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/README | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-security-compliance/README b/meta-security-compliance/README
index b29c143..320f856 100644
--- a/meta-security-compliance/README
+++ b/meta-security-compliance/README
@@ -28,9 +28,9 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security-compliance][PATCH'
 
-Layer Maintainer: Armin Kuster <akuster@mvista.com>
+Layer Maintainer: Armin Kuster <akuster808@gmail.com>
 
 
 License
-- 
2.17.1


