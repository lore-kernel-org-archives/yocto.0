Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39EDDE00D20; Thu,  4 Apr 2019 20:36:53 -0700 (PDT)
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
	*      [209.85.215.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27EE3E00D07
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 20:36:51 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id v12so2311015pgq.1
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 20:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=U0sLkidYGBIg3vK5tUlzOyMBBWt4OMleM76YPHFDm2I=;
	b=vIr7GD9o6e7Rd4XfvX4Sxj+3RJsT6tJ8YTyN7cLc1uT2k0bMPgGGc9sn/IXsdTORvA
	7DQgRIPmVi4xnplKEHdHdAho0T0HxswiY4SSqZfM8FLeIAIUG/TAfvkscQJaXOaYQZuU
	yUpL3nigui4wzScxViBeK+7NR46EIiSzlNIRYrqxOs91zdlyI6nCxNtKQe0+fREqvvP0
	6XGZOWSe4nLNFVBO4RrHL+MBqQ7BKJpZyGw07KMuk6jLLs+gloQc2MnoDjE2XvmjoTio
	h9axN1fKrQ68jGgKA3S11D9SA8RuJjkqk4ZUS3egC+Xt7h2dLfwEJlX3ob63z6MAokkf
	/JlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=U0sLkidYGBIg3vK5tUlzOyMBBWt4OMleM76YPHFDm2I=;
	b=iFcjDi+4gN8ubrmxPxYZHnWEOZag0rbTmfU8Lsdu8HtIXR84SZsnOWWZm1q5UgGMnz
	3lSkhVAra5ZX/FumTjjrWwlenRRT9BpvV5BsbuAcGmx9ZHy69ANwX5AA568ILCZ8Mzsa
	obv3AuA0vPq0McsAZSr0hbzEiOQEjceJ6y2FBG0HXv/QGC18/mHB7me81AttZUn7zMV5
	BLfczCD39SiuN9AP4XuxkMYOrneyvVnYWGzVXvBaEpo+/AiEpcglIhwqfz/AS3Emo/1c
	b4168IwBuY/PCzj9AqRTQibJtCITxtkf2aloYbHLOA1N65tA3GCqz13ZJYPweMGhPhvt
	/piw==
X-Gm-Message-State: APjAAAUQnwIoJG50Uw0ECYkAZzhdGEhUeBnb1+RbT6qaFf5+LD07GvZ7
	Gd5uEQyjs2FY70zD/XvKOInEtDOHZsQ=
X-Google-Smtp-Source: APXvYqy2yqgPKfDCxvSUqzbMhxMfYfD+xf/0/483L8RtGHbCAdKnZHzp8Z8q1XQBh7prPZ9I6gfOng==
X-Received: by 2002:a62:448d:: with SMTP id m13mr10028657pfi.182.1554435411299;
	Thu, 04 Apr 2019 20:36:51 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	c22sm17647898pfn.136.2019.04.04.20.36.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Apr 2019 20:36:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2019 09:06:37 +0530
Message-Id: <1554435397-21590-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1554435397-21590-1-git-send-email-akuster808@gmail.com>
References: <1554435397-21590-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] libmspack: update to 0.10.1
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
X-List-Received-Date: Fri, 05 Apr 2019 03:36:53 -0000

For details see: https://github.com/kyz/libmspack/blob/master/libmspack/ChangeLog

change compression to match that now being used from source

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libmspack/{libmspack_0.9.1.bb => libmspack_0.10.1.bb}           | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/libmspack/{libmspack_0.9.1.bb => libmspack_0.10.1.bb} (71%)

diff --git a/recipes-security/libmspack/libmspack_0.9.1.bb b/recipes-security/libmspack/libmspack_0.10.1.bb
similarity index 71%
rename from recipes-security/libmspack/libmspack_0.9.1.bb
rename to recipes-security/libmspack/libmspack_0.10.1.bb
index 56a8a07..b46159f 100644
--- a/recipes-security/libmspack/libmspack_0.9.1.bb
+++ b/recipes-security/libmspack/libmspack_0.10.1.bb
@@ -6,10 +6,10 @@ DEPENDS = ""
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b3c8a5bb00a72a28dd"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz"
+SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.xz"
 
-SRC_URI[md5sum] = "9602ae4a6b0468d9aaef6359c1e90657"
-SRC_URI[sha256sum] = "62a336d9c798638aaf3dceb43843320061544bbf35547c316b075b99112f2e40"
+SRC_URI[md5sum] = "d894d91eba4d2c6f76695fc9566d5387"
+SRC_URI[sha256sum] = "850c57442b850bf1bc0fc4ea8880903ebf2bed063c3c80782ee4626fbcb0e67d"
 
 inherit autotools
 
-- 
2.7.4


