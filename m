Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA507E009DB; Fri,  3 Feb 2017 00:46:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 603E2E009F6
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:37 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id v96so12856200ioi.0
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version:in-reply-to
	:references:content-transfer-encoding;
	bh=E5rEsfwxaAT2EPdesdK+F8Jfja4Fakc1p8br0VrfV60=;
	b=o4LyO65xSUNn7LAs/wFFp0qH+EFVEWBkI9+owr4WUEZIOp/yKBVOUKet0q0lgXqR5Y
	6KOUzTjZ5HSh8KOkvEVriWHUbBTq47BVUz29ubUwpNpTGxAU+oCz9RcBTcwEI2hGn3FE
	k5AzJxGuXNVNFX+QuOP/3K2EL9tPDOx/frErrB8NzIc6ITUls+PEbQ4OJombPDk++2NR
	EBfTOINA3IBDJjZX8D/68pvG9/JLd/agIC/c/hAOYYbbeYL2AEH9JVkw/8KKPpNCrNt2
	kYceTR8mr3pRyJW2nGI2jZx/5I900mlbZv0wxMguVLu5YrPFswOR+ONLuB3FCtntqKpH
	bTNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:in-reply-to:references:content-transfer-encoding;
	bh=E5rEsfwxaAT2EPdesdK+F8Jfja4Fakc1p8br0VrfV60=;
	b=LEC7gjBJY0mcrUaPF9PEgM3O/ev59RQp9FOmDk86HZn9rRSB3vdWP1reLbnAp8K+rv
	rTAj8qyI7UGlAIMD11yAY1M4ajKJdt9pcv59QFuQjfZWfn5XCJeFfaHMsQBlEdEz7Cam
	kR+5JUQgd5Xg2PagKy1yL4kSnTZ76PInYzOcyY48auh7Zev0kAb/U8/26czGMIqUdywV
	693AU0ORNBn7ZKLqv0YJ8s6ZhkPKg55od6ooVw8nw8fOywGh4CNJJfqPeNVD6mnQn6xy
	1iolb8PkZryNH/xwdvZVQjk4tDPPUlfRenvn5v79Pf+DKUK4fhj5crEkhT9HVOjwrzgS
	ZEag==
X-Gm-Message-State: AIkVDXJSrBXMYJoKwsY5FUDvRN5CmUgrWDGy9AysRpUEm469RxyFPm+VhhJIFUq0aMrTS+fy
X-Received: by 10.107.47.97 with SMTP id j94mr10786196ioo.8.1486111597212;
	Fri, 03 Feb 2017 00:46:37 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:36 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:11 +0100
Message-Id: <a42ecf4e75d86093fb1c17129457ac837c0492cb.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 6/9] swtpm: fix compiler format warning
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When building for x86-64, gcc complains:

tpm_ioctl.c:866:9: error: format ‘%llx’ expects argument of type ‘long long unsigned int’, but argument 2 has type ‘long unsigned int’ [-Werror=format=]
|          printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));
|          ^
| cc1: all warnings being treated as errors

Casting to "long long unsigned" matches the format specifier in all
cases, including those where "long long" is larger than 64 bits.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/files/fix_signed_issue.patch | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/swtpm/files/fix_signed_issue.patch b/recipes-tpm/swtpm/files/fix_signed_issue.patch
index 427df62..140585b 100644
--- a/recipes-tpm/swtpm/files/fix_signed_issue.patch
+++ b/recipes-tpm/swtpm/files/fix_signed_issue.patch
@@ -42,7 +42,7 @@ Index: git/src/swtpm_ioctl/tpm_ioctl.c
          }
          /* no tpm_result here */
 -        printf("ptm capability is 0x%lx\n", (uint64_t)devtoh64(is_chardev, cap));
-+        printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));
++        printf("ptm capability is 0x%llx\n", (long long unsigned)devtoh64(is_chardev, cap));
  
      } else if (!strcmp(command, "-i")) {
          init.u.req.init_flags = htodev32(is_chardev, PTM_INIT_FLAG_DELETE_VOLATILE);
-- 
git-series 0.9.1

