Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8998BE00CE6; Tue,  5 Mar 2019 08:46:12 -0800 (PST)
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
	*      [209.85.210.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27324E007B3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:12 -0800 (PST)
Received: by mail-pf1-f178.google.com with SMTP id a3so6114120pff.11
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=M6dAa72pyS8iCITzgnAXYGrGfvvC0KTCr9rBZRJM8FI=;
	b=Lc+Tj3Xv3mxGB6xCP/wje3VHxbWxQ+W7dxE9S1e2OZToMjXClAU23r/4JZmLlvOQqT
	M9IgM/X1vrHtOetywXE7PjqvuRyXF7pa8pJnzNDF1KT2kONdB1HZASAs86xpMwNicNAq
	RXc62BpAUUoIGn/cszqxHazHSm8d3vtshJCZ+9/2piyPp6HgCoOCk5PxBYo69yrbq9Md
	8bnkkaZAncV3C0d3v9j+Ef4IwzMrD48LDLP+U5VoC1NbswSFFm40G2yH8jw8Ptaik+pO
	N/SuNB5iJNKGvkA2cRlyyY3mcPrFXNwvq39S8/TraWBiuh3dcKeDPWhMedfOS/8fWjdm
	WgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=M6dAa72pyS8iCITzgnAXYGrGfvvC0KTCr9rBZRJM8FI=;
	b=SkO/qI6k6smKrwpr4swaIKlig1/SHXc/S1vXP9b646LSjYOdWEQMDgr9+mLL2oHU8S
	ckeCW/JhniwGybF9iCdpyvUsIwxFbWJfHpgdArBgMtM6qPMMsnOZBDBvPOB4SOYWRWf2
	mOLz4HdwhNNIAl7J5FmnSVvtz1ctIg4ldx0LC2F0bk8OjPmbVTTogiYrXt57M82b/193
	mJdwznQDWdHNCf6TK5I3S8n9vs7LPh/Lhcb/TFJZSgjyZtvGzrDZaFEz1RMaRUCfgEEV
	shEOob66Q+pLFgYIaugofpB86DQK9cpUwlZDZqsHxSf6keLAlXsdL+F2zlHgiOqovn4Z
	EtqQ==
X-Gm-Message-State: APjAAAXGlrysdcP2LcffnLkVfiGVkCSJG4ve6yZcszTI8lI0kSYKBKTS
	W3eKIRwcIViolV/7BpRDF/a7pgu6
X-Google-Smtp-Source: APXvYqyAlpYKtUU3aaLBsXDkFpGhyeYvNRjU8BLLGzuFbSbVv5icdoYWOlPCxy/tTT6BIhvaOI6RUg==
X-Received: by 2002:a62:4299:: with SMTP id h25mr2684015pfd.165.1551804371479; 
	Tue, 05 Mar 2019 08:46:11 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.10 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:10 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:04 -0800
Message-Id: <20190305164608.12211-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/7] tpm2.0-tools: update 3.1.3
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:12 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2.0-tools_3.1.2.bb => tpm2.0-tools_3.1.3.bb}            | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/tpm2.0-tools/{tpm2.0-tools_3.1.2.bb => tpm2.0-tools_3.1.3.bb} (88%)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
similarity index 88%
rename from meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
index 3f40eb7..22fae0b 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
@@ -6,7 +6,7 @@ SECTION = "tpm"
 
 DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
 
-SRCREV = "5e2f1aafc58e60c5050f85147a14914561f28ad9"
+SRCREV = "74ba065e5914bc5d713ca3709d62a5751b097369"
 
 SRC_URI = "git://github.com/01org/tpm2.0-tools.git;name=tpm2.0-tools;destsuffix=tpm2.0-tools;branch=3.X"
 
-- 
2.17.1


