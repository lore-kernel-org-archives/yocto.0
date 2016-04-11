Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 528B5E00D51; Mon, 11 Apr 2016 07:31:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E44E00522
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 07:31:06 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id td3so122606064pab.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 07:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=yc3wXqhQgtPCRDpOlfKyud3guFqTrqkbmUQPJMp0B28=;
	b=wxlj2bU1rkVwzh9uLR6e/iSTfWlsZ9QT1QmEHzSP0YmkNY15KmjJ7NlcP9HbuMnSuP
	0SZMd8irQTajC6F0dEKg6UJiC1DwOcvuCvZm3R9hjFWrk+VZ9sQk3t7M8wU8JDzyGLnu
	E5h5y09Evdc0Out4d5nwNBf6PsKbYtywIK9dRQaUeJv+s/BgvBvRV1mw2rShOgfvKIHl
	l1k1/lV4oZpg9aCPs3nchZnIG2D3QPt6ywolZzlBrZ9//bhfZAfdX2TuAmt9bI8bSclq
	aWrCpxJGF3FD8dUQmRDZW18TCSQRu36hyOBTRU84vdK2OG6hPhXK6sRa5VXBRX/PBlYI
	sOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=yc3wXqhQgtPCRDpOlfKyud3guFqTrqkbmUQPJMp0B28=;
	b=BJpQ26PI6SemLWRj2gziMEvSmjkH7Ul/376LnXSL/VuZaXvv/s2Fd56gs3kMNK1ui4
	iTNmg9VjX2T5nviBCLCbPxgFmBAMeH/gT1uGju566n+MUGNob83bFfxwNpLyK1PqLXaB
	Lv3SZZfLJv2vMpm6q94SNrEHNXcB+ZqiGIUoho6mNpOCsDvCe7v1c7hwHYwP2AIO5qFr
	hHt+QPcSdPJSa6U/JIzSgdbi5NRWsnhq+1tA2zS1U1dy2MPAM3SbW9RAZIxEmhlYOSRk
	g3NVRz9s6cKDwWDQcFdqZ1E8d3XZsZltW79yZUKZ/muRJgEE8CWWW0GHvpCR9XIBETXw
	ur8g==
X-Gm-Message-State: AD7BkJJ8d9iCmYjb5hLq2pYRnzCX2yqKge8BHOfRjE78FbZAT0TLA77ZcAcQ+D5FAOYFYw==
X-Received: by 10.66.249.166 with SMTP id yv6mr32860022pac.91.1460385065771;
	Mon, 11 Apr 2016 07:31:05 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	a22sm36800469pfj.2.2016.04.11.07.31.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Apr 2016 07:31:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 07:31:02 -0700
Message-Id: <1460385062-2687-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] suricata: update package to 3.0.1
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
X-List-Received-Date: Mon, 11 Apr 2016 14:31:09 -0000

- fixes for multiple stability issues
- many memory leak fixes
- Hyperscan MPM support (experimental)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{libhtp_0.5.18.bb => libhtp_0.5.19.bb} | 0
 recipes-security/suricata/suricata.inc                           | 7 +++----
 recipes-security/suricata/{suricata_3.0.bb => suricata_3.0.1.bb} | 0
 3 files changed, 3 insertions(+), 4 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.18.bb => libhtp_0.5.19.bb} (100%)
 rename recipes-security/suricata/{suricata_3.0.bb => suricata_3.0.1.bb} (100%)

diff --git a/recipes-security/suricata/libhtp_0.5.18.bb b/recipes-security/suricata/libhtp_0.5.19.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.18.bb
rename to recipes-security/suricata/libhtp_0.5.19.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 38b9572..b46ad3d 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,9 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.0"
+VER = "3.0.1"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "a964af69263592c625b56f72d49e8d24"
-SRC_URI[sha256sum] = "4b8feb398a0800c955fe24aa31ca446c539e79492155717e826473f902c8e65a"
-
+SRC_URI[md5sum] = "c5c8e5846b54546257954f3c759d9675"
+SRC_URI[sha256sum] = "74c685f8da51b3f038a7b8185bdbed274aca25daf64ac7ea01eea60636727f26"
diff --git a/recipes-security/suricata/suricata_3.0.bb b/recipes-security/suricata/suricata_3.0.1.bb
similarity index 100%
rename from recipes-security/suricata/suricata_3.0.bb
rename to recipes-security/suricata/suricata_3.0.1.bb
-- 
2.3.5


