Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21EDEE00C1B; Sun, 10 Feb 2019 09:07:06 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A576E00BCC
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2019 09:07:05 -0800 (PST)
Received: by mail-pg1-f193.google.com with SMTP id q206so191824pgq.4
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2019 09:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=6htG4v5EbO/UeTsJaLF6gCVZjezVgZVNee+rn4gDpec=;
	b=HmHX8H2WR0YYC23ranzsmCQbRtO4FoabpjKm3rwMbWE+XbvQTHnCJpnbqQx+3V+7Oz
	iJlkx/eNXCNxX3fujVzCsrPZ4FgVTskhQ4EVYR9og9QNdr2wB5au66pbUhTjQcwDC3oR
	FYsj/lZkj8MpNRARRYPDtl0XRs9n8m+jEy1nV5Rw1Y1FiG81YHZ7iM/ToBo/4ipAWnzV
	lo3kAMEi7kt1L9SbdK60v06aH5vDv1ZW1EYYYuPOcyLN6DCd46Yydc+xhaqK8lpzcVXZ
	iQV7BusLASDQUV+weeEojey+pbTrOrfPwogGO2q8IOre+FGHl3wYtyyJjnbNITYw1ADT
	D6Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=6htG4v5EbO/UeTsJaLF6gCVZjezVgZVNee+rn4gDpec=;
	b=BU1NFa7MavpCb6iIzYuIVwEYcjh4veHlo0T0BEnFqktSrH5kERFZFTe04MkjMvuVoQ
	3NW3m00uPTzLxSVGfVh1Ed5XlwQFU6iQIHh3nrz39ww5QRWxOk+PhZTf0bA4rOJr4tFk
	7BnywbVpZLAYv65VIqL7tCdmH+FxqRsQSs5lRyQmpzyeZhkuUnQe4tRk7fkae76F0T4w
	oZvLi/PPUhJfAgQGbWIaP6zu91MpOvZkhPEK89fuk4ZCS6H38VzKroyYfhiGBcHmyOdx
	qjggKyFwDogn/M7PgyUfUNZvi1DC5EUIlDyVnNORtkQ7EaExUcS5YzQFKejP6iBBkkPL
	HD6A==
X-Gm-Message-State: AHQUAuaQa6g1OnR+h5gSfqDQTScVw1hGK0Dlku+A7zl/yemaG7nli/BN
	yI//fSQnVLFo2EpEDvcEbNhcy2PZ/VI=
X-Google-Smtp-Source: AHgI3IbclrPf4QV5HcASidXeQL3JEz4lxuujEFePEWCCV9JGYoS1A+rgGQb2rTJXX6hoOTX9s3FqrA==
X-Received: by 2002:a63:bd51:: with SMTP id d17mr30386853pgp.443.1549818424879;
	Sun, 10 Feb 2019 09:07:04 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	z15sm10144091pgc.77.2019.02.10.09.07.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 10 Feb 2019 09:07:04 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2019 09:07:02 -0800
Message-Id: <20190210170702.24929-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190210170702.24929-1-akuster808@gmail.com>
References: <20190210170702.24929-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] clamav: update llvm to 8.0
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
X-List-Received-Date: Sun, 10 Feb 2019 17:07:06 -0000

ERROR: Nothing PROVIDES 'llvm6.0'

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 8c2c2fa..1d09ba6 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -35,7 +35,7 @@ GID = "clamav"
 # as defined below
 
 CLAMAV_LLVM ?= "oellvm"
-CLAMAV_LLVM_RELEASE ?= "6.0"
+CLAMAV_LLVM_RELEASE ?= "8.0"
 
 PACKAGECONFIG ?= "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-- 
2.17.1


