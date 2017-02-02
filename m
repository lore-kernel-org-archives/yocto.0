Return-Path: <cardoe@cardoe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7135FE009A5; Thu,  2 Feb 2017 07:47:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.196 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD07EE008D3
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 07:47:50 -0800 (PST)
Received: by mail-yw0-f196.google.com with SMTP id u68so2019251ywg.0
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 07:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cardoe.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=r2PGpdtONOFdb+ISttB4DKKKWZpfj2euvyCuWk6RA3A=;
	b=ApSE4la7CBPdqp+faBteJNj5JM/usYJA28cHINok65WW+gt3pNfKcVxh4ejdsoqrYB
	AfhxpoDTOOVLb0G3a1D7mBe1Vo8tLbWSMLGbQPkkaDK8lnIQhtsSQ7YkeSJtaGQGQ+TW
	uUhui9ASQ7P9DU+WjPuMczqdCVMJsQXDn9B7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=r2PGpdtONOFdb+ISttB4DKKKWZpfj2euvyCuWk6RA3A=;
	b=mtaN2rG74VWDO41wmrV6qUwZk7hvQKUo8+OA5r9QpiawnliKL4tthl0SSyW8GOzrkh
	RZBa9ae/uj1mJt9kMF9bsx7sNDU9Qv7Rg/2Z45tgcCKDsefUzZBqOWmvqVs13Frtrqz6
	4w/uysp5od6L/2Bs4vnuG9pM/Bjq0nHLKlCd7KGAgY7sIoemzz15f3xqh+8jiBIRy4/p
	7zNYF2EYticxHjBQDvoX4zYGG+H4maKv5R25lMjaS6sfiwUkNzSVIOAFg5f4crtbrraF
	pX7v5OMTy+x+H2u/wQ5+TdaqWYesDS63HpIIvD+sCK/bsaHUeqfvQiY69LVnzmRoWRnP
	5qWA==
X-Gm-Message-State: AIkVDXJOyahjFSK7Y5tOYinnBB6bQPakln922t8C/7r9NIVzujwxbFFP8nKsw8Z7AP3Lcg==
X-Received: by 10.129.98.194 with SMTP id w185mr7189995ywb.339.1486050469854; 
	Thu, 02 Feb 2017 07:47:49 -0800 (PST)
Received: from swanson.attlocal.net
	(104-179-196-18.lightspeed.brhmal.sbcglobal.net. [104.179.196.18])
	by smtp.gmail.com with ESMTPSA id
	d5sm12995376ywe.48.2017.02.02.07.47.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 07:47:49 -0800 (PST)
From: Doug Goldstein <cardoe@cardoe.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 09:47:36 -0600
Message-Id: <20170202154737.4461-2-cardoe@cardoe.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20170202154737.4461-1-cardoe@cardoe.com>
References: <20170202154737.4461-1-cardoe@cardoe.com>
X-Mailman-Approved-At: Fri, 03 Feb 2017 06:58:08 -0800
Cc: Doug Goldstein <cardoe@cardoe.com>
Subject: [meta-selinux][PATCH 2/3] removed ustr as a required RDEPEND
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
X-List-Received-Date: Thu, 02 Feb 2017 15:47:53 -0000

Signed-off-by: Doug Goldstein <cardoe@cardoe.com>
---
 recipes-security/packagegroups/packagegroup-core-selinux.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 9c74458..128dfba 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -11,7 +11,6 @@ PACKAGES = "\
 ALLOW_EMPTY_${PN} = "1"
 
 RDEPENDS_${PN} = " \
-	ustr \
 	libsepol \
 	libsepol-bin \
 	libselinux \
-- 
2.10.2


