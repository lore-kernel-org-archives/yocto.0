Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9DFC624D3
	for <webhook@archiver.kernel.org>; Wed,  2 Sep 2026 14:59:39 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14670.1788361172972106214
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2026 07:59:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=fPVaIuLO;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-92e50a650a0so115656785a.1
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2026 07:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788361172; x=1788965972; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZbXK7x8Xm1ivfebw0gy6KbjRCPzUuZHxi0o9gVYogUI=;
        b=fPVaIuLOVOE6LEk7wxBCNP/sJfZBIbstYYcOM/b4QEY/4zMziXtxgAFYDPn+Fi2z0d
         td/Mk7/whD5tIi2fJpoIh5JpRVagmEBWmwrn5iwtNSKrh56RB4vL9z2TpWtIHNJ6elk4
         l0DKg4cyNBaRUujOweJglZK1nibBDl+/aO++VFsghDLbcQ42fUtlz2SIDA+6VaqqkDol
         zIml5qpRi4in+gLlqJijY5WLzHvX2YIiRAJwIGOC4Xcy6WnNJiS8pwbMX2KIux7c9Hwg
         OBHwKg4qwHuAmBgTvXCdlcgqBAW2YAEQ2YT/CeA1M8jcZRtmWWJnJuH08j0c4W37vLEd
         tgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788361172; x=1788965972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ZbXK7x8Xm1ivfebw0gy6KbjRCPzUuZHxi0o9gVYogUI=;
        b=pJSnP1H7+PN2gs9dggQ10R2SO+rVM2ISv8t6myU2pABLjl2SfqHs9KuD5D9ps6wJsu
         02wX3XChOtTXByUhTFltlLFYe9tsu+3hP1sMndGIGERwQbIG8XSOdye2WxY8rzmzEfoo
         5stfHWarHtkRdNJ7h3XVR3+7PwfDn/sdgSMT/ldKfoVTO4+7gYCadvXbKRJtO63N/tTZ
         Z2EyDGWhVfcCuLyT74D4Ij4fxLHkL9S3xo3LqB6yiPQK6rR2vqvX4rYLPbcgAgxEnG+p
         kwe3mam/OTiZMpVLlVrzv8SZRimZLjt+fAETSf5Gcfmuf/vvnGe6LZXfbJuXKdfJyJzl
         Z5Jw==
X-Gm-Message-State: AFuF++lAena/UiLGforCkdfzr/Xq1H6gjtj1W62d6OlVskeSudrW0bPB
	ZYUj3sOBxNzOffM4T2YT2u5S1cXYek6wNKA9w0p9KFn5hNcnaBpMTr+wufhp3xvS
X-Gm-Gg: AR+sD128OXxT6Mi9Luk5EDC2amV45OT9lghdGhdswahqexCfoWgcHXxqznJ5drGg3lk
	gu4Engf+iEAQ59KBv1o/z4OGDa0t0Rh6CVCsUmjqnLlJPjHvjWkEveKwTRbzCaMSYmCkrNdEVBZ
	MF+Vh86yg0a5vyYju/kCpE/omAWTV9ry34n7d+zwIYX73Lj03YkYVM+9weVl87ftyOShPXQa55L
	l2ogIFycDAwONVtQBEARgtaq9DGDR5JQ2UqayId7VSOciQWe9kiUnDaH0OgZBKYX9F81vIj51X1
	GsSSjpz12J3ZbCoum1b5F+LanvLKOgYSSJCn/qeI6uunbjmkCGOagjT8k4wwAf5bDF/K8UspR3A
	22jYnhJxWUdTLEkQdbbAj+Z0aFw8yFFMzuI6IBelNCUfWkY1M4nhTZJnN9tXbQs1pEf67/rEyyU
	a9V7aoJ2gS12iMY2tkyy95h2B3po9b5mWtfuFlDnRFh5hH/mMWxdLZyBjI8S1q1L69ElFYMW9Gy
	BWLl9F0mTsVtW4DwsGuMFws3SpBU90T9xR8f2ZbD0D63uhMXmLvFz7R9tWMQJrfblejnge7LxgK
	Yn+IaHODdTP+2rche5/sK5e6lH/WgRWPUqAr3I9U1kz456QtFTEfReN/NC4ry75kCVdbkYRQUCe
	l3FDsZHhGHZJddDw=
X-Received: by 2002:a05:620a:25ca:b0:936:e196:894b with SMTP id af79cd13be357-93960f642f7mr616926885a.31.1788361171490;
        Wed, 02 Sep 2026 07:59:31 -0700 (PDT)
Received: from bruce-XPS-8940.localdomain (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9395f1591d3sm221712885a.4.2026.09.02.07.59.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 07:59:31 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsp: introduce 7.2 h/w reference
Date: Wed,  2 Sep 2026 10:59:29 -0400
Message-ID: <20260902145929.3696788-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2026 14:59:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66702

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

Hi all,

This was missed in my original series, sending it individually.

Once linux-yocto 7.2 merges, this can go in as well.

Bruce

 .../recipes-kernel/linux/linux-yocto_7.2.bbappend     | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_7.2.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_7.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_7.2.bbappend
new file mode 100644
index 0000000..c11f724
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_7.2.bbappend
@@ -0,0 +1,11 @@
+COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+
+KBRANCH:genericarm64 ?= "v7.2/standard/genericarm64"
+SRCREV_machine:genericarm64 ?= "c599c3c2210539ed09d42bebadfbbff5b226da10"
-- 
2.43.0


