Return-Path: <petrcvekcz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36B4E00D00; Sun, 19 Nov 2017 11:57:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (petrcvekcz[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1093BE00B48
	for <yocto@yoctoproject.org>; Sun, 19 Nov 2017 11:57:32 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id 9so14989707wme.4
	for <yocto@yoctoproject.org>; Sun, 19 Nov 2017 11:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=2n/c669uo6tcj19AE7yLZIUvXbgpwOmajTLB1VRl/6k=;
	b=t7/88YQ7dF0OjT6ohEZKgV77FOWHcnak3W61/1JOr1odj9cFlxoiRBWtRZCh+FDCgC
	DMBPeWFeONDCF47BQ7wdx04jWhMFXOUqG41cD85TSAVvSCwMTSwvgBS9Y2cavVtRSK63
	iXTMr80WN2At0vNJoZGm/bFSMSqFLcr4IOJj9CMlmJtEO4eaJVHC5/42kvO970Qcwicp
	2zBeVej6kAUH3XCoCnD4R+G4gdQKVXwX/34vYSPuOCf2L87r7IqKzv17wSuX2Uuozw9Z
	nTPsABew9ih1djy/s842otxvDq8KlJEL8zcqB85HX86pTmyqaKnvO2kAUGRytV5ngFpL
	SsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=2n/c669uo6tcj19AE7yLZIUvXbgpwOmajTLB1VRl/6k=;
	b=oSC60CgsQmXjzK+pHQDv9ZGNP9FQwHI+Fw5IFbnbt1jpIJrYYKpsD+rqAtiXB2fOvF
	IyEV9ci0+TVd1GV+rctSGrwyULlzhp69Eq94KxTpsuD61y365cNvOIQKySFG50m5CT1H
	++CsKi+iTLNWK6A7cQUU6YpXP9XDzyf7uitwUxnEKYuLFtzljZRKeOEdMhImzOnn9SGN
	iPtsk6afS850e6qRU7z+jOf6Zj711vTVYh6z5nUo0EF41hwQHyfwRW+6YxMs4vrWN6RW
	IAW4aVjo8VQlYNOqidVKRJJ1NTrKv7ALKPMbDjyITKbf8en2WFrUdGtQ8u9a8eDZXO0g
	JliQ==
X-Gm-Message-State: AJaThX7X26YZB0UL4Pf3aTKdciNeG56Pl0zcKseuexz9AyHse1S3oeQW
	84iqkFarkhdAtFyZ4kPldkOmsXQH
X-Google-Smtp-Source: AGs4zMaOZnqwBlJXIIX6tQ2LJCqH2pAwy33z4qwn0r6pBYh3ZhHqquOoFu9tTPyUiW0xBaYSu7wACg==
X-Received: by 10.28.103.8 with SMTP id b8mr9600084wmc.70.1511121451827;
	Sun, 19 Nov 2017 11:57:31 -0800 (PST)
Received: from ?IPv6:2001:1ae9:ff1:f191:7cf1:2a52:24fe:d1f3?
	([2001:1ae9:ff1:f191:7cf1:2a52:24fe:d1f3])
	by smtp.gmail.com with ESMTPSA id 65sm4009640wrn.27.2017.11.19.11.57.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Nov 2017 11:57:30 -0800 (PST)
From: Petr Cvek <petrcvekcz@gmail.com>
To: ross.burton@intel.com
Message-ID: <504ee8af-2bd5-83e6-39ca-e091c7b21c80@gmail.com>
Date: Sun, 19 Nov 2017 20:58:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Nov 2017 10:30:36 -0800
Cc: yocto@yoctoproject.org
Subject: [PATCH] yocto: matchbox-window-manager-2: Makefile with spaces instead of a tab refuses to compile
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
X-List-Received-Date: Sun, 19 Nov 2017 19:57:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

A wrong spacing in Makefile.am generates a Makefile which will refuse
to compile. This patch fixes it.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
  Makefile.am | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile.am b/Makefile.am
index c95ea0a..7d2f517 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -3,6 +3,6 @@ SUBDIRS = matchbox data doc util
  # Extra clean files so that maintainer-clean removes *everything*
   snapshot:
-        $(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
+	$(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
   MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub 
configure depcomp install-sh ltmain.sh Makefile.in missing
-- 
2.14.2


