Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C44E009AA; Mon, 30 Jan 2017 23:48:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E62CE009CF
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:32 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id c7so119626448itd.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version:in-reply-to
	:references:content-transfer-encoding;
	bh=E5rEsfwxaAT2EPdesdK+F8Jfja4Fakc1p8br0VrfV60=;
	b=qGLmTeumzC/AL9Y6eFLpIKjzcgQlLr8iP/EaGRZcRjb/mqVyNRXMsO8ssD+pf/lUvF
	rmEiB6siaCUq8WQD1y/iTdYUUFaGNzpyXQgUEfx/PFrZxRCozTg5uwIhQHDIfU+eckNT
	Yva8dFVYTC97AvwA/qxJZVG1g9eSic4RuzzBmMIn3zrVV+RRG10tgOd2KRGlZppiJ89c
	hEYC/lEhmiwkCmueMqJS4+xCAItw10pUrNpZYKAdP1mgM87RkOsj2D6Shy0tfP/iJdIE
	HdzqwgqiZA1zNW2lOqAq98vR5Leik9PJCYSLilt8XPKU2PqicBwIt32FjxSmYAr7A73x
	bIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:in-reply-to:references:content-transfer-encoding;
	bh=E5rEsfwxaAT2EPdesdK+F8Jfja4Fakc1p8br0VrfV60=;
	b=MfUgr1Uw/1lq1M4QnakzO4CK8VLyGVnIYRFbdtSD2ek/1RZasEvmn1slLqcMjfOAD0
	rMzyv5QFZ0JBXsaa6/XDnXPipqDWv4VIMf8TGgi29XCyt/dbSmOMX8os6SY9jjff/slH
	yfXcF63xvpNkmbkFhCe35yEqXCzWX4HYmD48ASPsimE22bUQ4b11A32CfWdVySDcV/l6
	+FWeGkW7OwQb8vsXNfnMEfgOBM4J4xJclH5AlDmqutPXwXTQaQ/USZ3JoKsfPB4lDiId
	o/1i157mWe89C5aRkua6qFLMSGhEfVUA4SnieF/Pmb1xu6LOzW0kzI9Jx6g0RjdqQa2l
	oOPw==
X-Gm-Message-State: AIkVDXLMPmfPU1wUnr/lyHK1fewG2E+AWgGGARSjPC2HWja+LUgrf3slRSbS+SeKL6LbK2TU
X-Received: by 10.36.175.23 with SMTP id t23mr18218378ite.18.1485848912130;
	Mon, 30 Jan 2017 23:48:32 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:31 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:05 +0100
Message-Id: <6b733369fdd7b40dc0cf96f9a2e8395aa366eb1c.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 6/8] swtpm: fix compiler format warning
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:36 -0000
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

