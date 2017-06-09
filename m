Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 222B1E009A0; Fri,  9 Jun 2017 09:21:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68834E0082A
	for <yocto@yoctoproject.org>; Fri,  9 Jun 2017 09:21:06 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id q97so38604616wrb.2
	for <yocto@yoctoproject.org>; Fri, 09 Jun 2017 09:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=i6cas085UIxb7h6tF9VCWHvWzUGtpUT6U5KeYjVtxY0=;
	b=IqRevPOMgpZZLuzgCShv5khsEFgSVa/Z/Y7150eVQPx9/bH2x1PYcSDjkXLb5IEZiP
	zeNv1a0d9R0NTTtTqCYXixsFO9rrsGIhLk+ik4w7hPhbhVgmkR3ixLr8ic1QkCu/Bpj8
	7jbrTlbtCDKDIQfOPdOH52Vh1Atv6GkxjWC0kUf/G+R/razlE1fClP6aU2RkeCYHXo5n
	Ju1plXpnM3wKsd6hAaKkw+jKinLpTxSMQ4VRAYH1EnAWIo9IEQ6Nr9j4DHhxtDMXtmhn
	j9WQjd+avoHXNFJsKMhSzT+S+W2/OKlhBoX+hqWiiKDcq3PcvAtUEUM6V7qE3uFFfUu2
	eCXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=i6cas085UIxb7h6tF9VCWHvWzUGtpUT6U5KeYjVtxY0=;
	b=HD2cIDvKqWz/mUnQPA3JJqHs2UjftAZ7F87SDqJodfEEmKV85r5skw6cn/ujPAsNfM
	4sGITQNSdrqPrR92ye0TehDbtNjQVHEsO5D+aEbRgoscyDfWe6qj3dkeEnMtLinBaVYJ
	jqCewStQtGJ0o/Kn/qB3hg1nC6rG86932qaJmQVSodRNFfVrOc+FDu5AFNMD+SyT6Prn
	ZIybKTOUpzqKfiijaDb3IxBEfXdcO8YRbQ5TC4ywgIGgkw0TXGjmeTbu7v4K+ilh2D5Q
	x57wAbbRdwvd84L4fYrwy649ragDDlMjWcYY1ZXsMsBdSgLUClvSBklss/aMBZeSnlb/
	mLgg==
X-Gm-Message-State: AKS2vOyJoyafZjIw7CLGb4LQ16pG2Wxfy6CW0vvruULLAMIq69ZqHOjd
	Trb4ecQ6zt3jJgrm7i0=
X-Received: by 10.28.173.206 with SMTP id w197mr351174wme.68.1497025265898;
	Fri, 09 Jun 2017 09:21:05 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id p76sm57432wma.15.2017.06.09.09.21.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 09 Jun 2017 09:21:05 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jun 2017 17:21:02 +0100
Message-Id: <1497025262-15679-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [PATCH][meta-mingw] gdb-cross-canadian: generalise wildcard to work for all versions
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
X-List-Received-Date: Fri, 09 Jun 2017 16:21:10 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../{gdb-cross-canadian_7.%.bbappend => gdb-cross-canadian_%.bbappend}    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/gdb/{gdb-cross-canadian_7.%.bbappend => gdb-cross-canadian_%.bbappend} (100%)

diff --git a/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
similarity index 100%
rename from recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
rename to recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
-- 
2.8.1


