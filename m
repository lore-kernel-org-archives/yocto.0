Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1231E00D79; Thu,  7 Dec 2017 10:53:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 764A3E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 10:53:17 -0800 (PST)
Received: by mail-ot0-f193.google.com with SMTP id h9so7233087oti.0
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 10:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=KhFBV3YuCZ5hHPwbo6/Go95SGi4xYlw7vpdoeApG4YnmaAam7uhd595LGc7b9A5MoH
	XulK5t5ZLciIalxgvte8XTfDNkSHS8YVVqTp45IsE5UM5vQDH2zW6HU4UbRUqTfbaJLl
	keGjSgIaJgxHg8I5tChA5W5kCXNFZcleLinHuC4voMInPURVk0T7NRIRjDpKi3PkSXEU
	8sl5IDTP5wfB4Re5l6q91VwnAoRxx1xfydVub+d5Ianmikk0cgJOpeH7VnilU69o9Eno
	x+9A7iA3pZXbeYb7zclFm+YdrASaRzQz/5EGTGJEWW7DBAQVk5DCUsuZstzrPRytWztO
	rDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=ignaYuRL78kdGbKFadDm3HS7DQpguz7AHyRxZboeytm3qp/ncwUF9MCOKMVAAMUzlQ
	6Y4i+ZV5r+/Uh6OtWNSMMFOpCkG8EtC34Fec5yHlm2xkAqLtoHrRAvCn0dLAxTK0p33Q
	ibc1dAr2ioS40/nOtffzTi5jm6QKvOwJA0n7OvVvp01hT1JTBPCSEyqn5SvJxrUrGndn
	p99GCnQs7eOnlRi079QP+ajNDb/a/ROuSvnOHD5eK94zQio/7LJWF44cF2zbEdrBtHGC
	3dkMOOx8ge1+C3zHa3Tr0PjOCyL3C/SMtZnGfEyGWX9M8cUd8yIK4g5eUvUXOs4tFNC1
	9CtA==
X-Gm-Message-State: AJaThX7Yxm6Vp/TH1ffA0FHYBwKGQ830+GkGv6JCzeQCbOT7F3QcvXGs
	3KQyhGVqxf2Kk4nCsShnbeOZtsB7
X-Google-Smtp-Source: AGs4zMYqH2FH0xQ2XSXHS48G8M4uLu0G1KfkDqoVl0C1RNptvsO5BpqBWxWs7TNtwYCnjfZnEyfzxA==
X-Received: by 10.157.82.98 with SMTP id q34mr25959408otg.385.1512672796347;
	Thu, 07 Dec 2017 10:53:16 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	u20sm2373982oie.10.2017.12.07.10.53.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 10:53:15 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 12:53:07 -0600
Message-Id: <20171207185307.14609-3-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171207185307.14609-1-limon.anibal@gmail.com>
References: <20171207185307.14609-1-limon.anibal@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner 3/3] README.md: Update to my current email
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
X-List-Received-Date: Thu, 07 Dec 2017 18:53:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.md b/README.md
index fedab04..22b36a4 100644
--- a/README.md
+++ b/README.md
@@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)
 
 For contribute please send a patch with subject prefix "[ptest-runner]" to 
 yocto@yoctoproject.org and cc the current maintainer that is Aníbal Limón 
-<anibal.limon@linux.intel.com>.
+<anibal.limon@linaro.org>.
 
 ## Links
 
-- 
2.11.0


