Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 840BBE00831; Fri, 27 Apr 2018 05:26:40 -0700 (PDT)
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
	*      [209.85.128.193 listed in list.dnswl.org]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C16EE00831
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:26:38 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id v15-v6so1595439wrm.10
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Mli0kHW77wG2LSKh39Pp7Wx9PpHulcderCakU9msMr4=;
	b=IZON6DXpwOV0GPSerCde7AwXqp3noKl1VqBn1tkRI8Tb88mGXfMKrUkXd10zoXEchS
	fsF9G+6StRavpGFVJWzXWI2s4hfAaIQhCF+4TehzyoMEH/I1x3UXtgwIXGoDCES57XTI
	Af4o/2wfyBpUCop5THCzmGRfMjVNiFBbzLMQXNJ4NRG1A99MPzm+6FupF13qjpPPeQ8I
	gj+KY1CHcOwQfTMacuciaw8FUlfpS3M0aKoWQ3A9k/CdatiIE+Srpj3mdGM03on8/H6I
	IAPIt6NpR3jpwN9ZYwxdo/PIrm79vzvxA2wohnIerbReNbGYMuKb3pWUUQaM3iLlW6lj
	9vtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Mli0kHW77wG2LSKh39Pp7Wx9PpHulcderCakU9msMr4=;
	b=IZ3kKgDja7ymiZP0sEFNc+baWb1m09kGlQ6Zpgjz05EXMWd13W9FswOtwRBB3qErYf
	0Xkq2QQYNvifTsPPNCMS/6ZKUU2+qpLvkXLk1uSKU08U+Js1t6wUy5vjT6zb3YBMG5zz
	+DdQPftN13C1SDWzcXIzkoM9Kmd0fT8P0aGgV5lUNvtaInKbXUh/StOAYTHCN3JHPJkh
	pIpI2MMUxgZwlGcaNzlPFQLp/Wg+FtX0RjFbrNCGKT3sr4Fi8oF+qvw2dTCt5G+Cbm3l
	erhm+BN2uVbevm79UXpq/IGmG3qEntwxjguNh51NYyCXMx7ULoYOTkALDrLDOZYPhOTm
	NvoQ==
X-Gm-Message-State: ALQs6tBE+VNtNUzPfS72tS/H+YHA1r2fQTcY6Mltsdah2wVn5d90+F6a
	D4qiOO6SPwWvU/XtZbOW7WHfk+7V
X-Google-Smtp-Source: AB8JxZo1YhNEfsDM9qKrFD/wssVzmaQhfc1kXK0hHWjCCq5SVVmKWee9UMqT1NA47RY+3Nv65lQCoQ==
X-Received: by 2002:adf:8e82:: with SMTP id q2-v6mr1759424wrb.53.1524831997149;
	Fri, 27 Apr 2018 05:26:37 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id l2sm1552950wmi.16.2018.04.27.05.26.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Apr 2018 05:26:36 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Apr 2018 13:26:28 +0100
Message-Id: <20180427122628.30277-2-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180427122628.30277-1-ross.burton@intel.com>
References: <20180427122628.30277-1-ross.burton@intel.com>
Subject: [PATCH][meta-mingw 2/2] machine-sdk: set the nativesdk libc to libc-mingw
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
X-List-Received-Date: Fri, 27 Apr 2018 12:26:40 -0000

We need to set this so that the override for nativesdk builds using MinGW don't
think they're using glibc.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 53bac4c..07b103a 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -1,4 +1,5 @@
 SDK_OS = "mingw32"
+NATIVESDKLIBC = "libc-mingw"
 
 GCCTHREADS_mingw32 = "win32"
 
-- 
2.11.0


