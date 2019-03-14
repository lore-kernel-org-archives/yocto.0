Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7B9E00D08; Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A424EE00B5C
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:31 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id i7so893759pgq.0
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=G5CFT8IZHm53dlcLaEdd49tzzKIfkh7PN0pTkmo0DyI=;
	b=DtScV11/v3kw0KI1vfE3odjhiVQqN2imwnJAxsFwhITtIi4uluGiByet5jWska3K+Z
	zsNRh9Cllq/8QX/Z15d7uVGRSgA+Ok7apss61AgiWEH5bw/AtZ/glco24ZOOsBi6kAxm
	uExbtsKyolLD/Y9ZTTTPbTecnbKZCNhKYn51d+fXy4QzZE2N8UKQbqMIfYaXiyZab9zj
	84WQ4i/UANJWZ/ncVJSxaxpNyP/8uYaW+R110QHdLiHFdenzZlCM1B8avQNPquG6mVRn
	0ECCeLcsHYooAvgYHIHPmuhaUaASkWNlDFxWCMqqTgzwjr4v1i+Ph1SgOopwpnCk5J5s
	NlPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=G5CFT8IZHm53dlcLaEdd49tzzKIfkh7PN0pTkmo0DyI=;
	b=Cb+L+JPXc20x12LLqL8/pmT/8T5RuNYSgWk1gTw4lpQX4wKY4RLn+vuH5YFuVARB6Q
	tRdYFWn80ESGPYi5b8VDP3QwWB277aIB0f3kCDKnpnrsnCyciUpd8krFhrxOM2Pglzw1
	GZkwTFkMnkLrHDyM0lvZsfTv+kUU1vrgfp6pHxnxyuqiM0KJVqKHWgTxSibuQJMXSINw
	DagYqWXSXeZX8rSSdXG9PGZhMFlJLhlcwN8Uzh0j3p6czDmmqITZD5tMlM4U6FJX167u
	7wWvUwQZNLIKi9kva3BzCVCd2ebC8UzvJeY76IwXzPmuBocpf+NYXnOhDxsSL2zDgvNc
	H0Gg==
X-Gm-Message-State: APjAAAWixoYjZfc5zumcRLPM9lxKIF71YX9K6O5RjYqhQFySMBozboPs
	vLsnZbzRea8x+L7YeUoUoF9cLA8o
X-Google-Smtp-Source: APXvYqzSAfrD4rRCztrUagLc4ewrQLi0zMn3BGpjiF9sCLgh+mtWaFLPlE3p78L9045jy8PKo6/S7w==
X-Received: by 2002:a17:902:ba92:: with SMTP id
	k18mr27076020pls.112.1552573771002; 
	Thu, 14 Mar 2019 07:29:31 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:24 -0700
Message-Id: <20190314142928.1458-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314142928.1458-1-akuster808@gmail.com>
References: <20190314142928.1458-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/6] tpm2.0-tools: update SRC_URI
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:32 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
index 22fae0b..6cceba6 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
@@ -8,8 +8,8 @@ DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
 
 SRCREV = "74ba065e5914bc5d713ca3709d62a5751b097369"
 
-SRC_URI = "git://github.com/01org/tpm2.0-tools.git;name=tpm2.0-tools;destsuffix=tpm2.0-tools;branch=3.X"
+SRC_URI = "https://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
 
-S = "${WORKDIR}/tpm2.0-tools"
+S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
-- 
2.17.1


