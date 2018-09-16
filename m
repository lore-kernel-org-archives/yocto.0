Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D01F8E00ABE; Sun, 16 Sep 2018 08:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4791EE00AAA
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:26 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id 38-v6so560044plc.10
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=y7KJPzZ2p37V9BmsdQSk1cRfkTqAlF2G5mvd9t74u3g=;
	b=bATlaMMOApCTBWj4wjBuAMiC4ykKz3D1EL4jd5CA5vLcG6sFruLuVVGX47JWsbCK6e
	4dJJMY4K1CfzTacZWmOvjuIBc4yyeIGy0x5hDPNXXonsE3mDHn0WX1pRNyrurFGfafFb
	Tk7iTyiTmJHHU1q3A8q5jE+Gnoy4Ak7KEDb5WcdjgAeQtqowWQYqaXL6wlSb8qsfngyG
	BsKEhOdcsZSQPjWebusRN+spfd8azc5andMPcNLX5rkBPLMJjfCxXW011G7pSBPHM8zb
	BaWhIAOg4XWbAVc4wJgWzKnDOdu/FQ0OhzUYcx1SLsO5mObuB15tgHppnlAMC00J6fOi
	BHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=y7KJPzZ2p37V9BmsdQSk1cRfkTqAlF2G5mvd9t74u3g=;
	b=k29FwJbLtkySuPhCnztldoPIHRThixCURTPpklBsvEcjh3LN/4Gnnq+blf77jdy09i
	Ae1Mce3mpB1RuUbnfR/+uw80Tp3Qhy98hHBlDqrOH8en9NMwXkHmNObNqbAZaNLnwUnv
	8lH6dQGSaXpHsrdUj9ufg/WVgl7Q6SA+G0SYE1chBorv5bhY9KgIzfdUxsNAT7iQ8e/x
	piun50/nbUsNxiThl0RvmS4V52k2vfRavkagt2DdbYjkASKCaUzb6EGVIHkjQc87x4he
	a3EFoafyrEadfCh8DDl367b9VPNHspV5qLz9bpAqZHpMO2G0BmhRv8/EdTZu0H8BpPPA
	5UGQ==
X-Gm-Message-State: APzg51C1LgRlq0OKaOzLIDVSgo0aXpABfnD0ZZ1qPS7hGyd29c4S1AES
	4A8dFB5JGOXtOHvhSBv179hErES5
X-Google-Smtp-Source: ANB0VdYqVZvXHeRfoQSnzN67Ems7ZYoYXPtQoFN6yTx8H1xVbJkt3/u+8auomXXUzlljXYUKEbJ8qg==
X-Received: by 2002:a17:902:d808:: with SMTP id
	a8-v6mr21363869plz.68.1537113445534; 
	Sun, 16 Sep 2018 08:57:25 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.24
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:56:59 -0700
Message-Id: <20180916155719.9911-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/25] apparmor: update to 2.12
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:26 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../AppArmor/{apparmor_2.11.0.bb => apparmor_2.12.bb}         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/AppArmor/{apparmor_2.11.0.bb => apparmor_2.12.bb} (97%)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.12.bb
similarity index 97%
rename from recipes-security/AppArmor/apparmor_2.11.0.bb
rename to recipes-security/AppArmor/apparmor_2.12.bb
index fc9b614..de7f4ef 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -24,8 +24,8 @@ SRC_URI = " \
         file://run-ptest \
 	"
 
-SRC_URI[md5sum] = "899fd834dc5c8ebf2d52b97e4a174af7"
-SRC_URI[sha256sum] = "b1c489ea11e7771b8e6b181532cafbf9ebe6603e3cb00e2558f21b7a5bdd739a"
+SRC_URI[md5sum] = "49054f58042f8e51ea92cc866575a833"
+SRC_URI[sha256sum] = "8a2b0cd083faa4d0640f579024be3a629faa7db3b99540798a1a050e2eaba056"
 
 PARALLEL_MAKE = ""
 
-- 
2.17.1


