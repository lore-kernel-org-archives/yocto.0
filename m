Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89ABBE00971; Sat,  5 Nov 2016 21:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45853E00953
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:08 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 144so3980856pfv.0
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=rVctkj4F4dfPRgg6oBBeZ3PRJMQYeV8S1I2E71AdJC4=;
	b=Lfi9r2smq7yH9UzBMn2jApqhB2W9zXygGYGmyPAqCWh7xPQw27WWsVQdCV8PONh77V
	NTjGTRjW7XB0PyGgIJ6zQS9TwiEcdVGVqN4G3FC9PjjT05945Zx79uh+hS0VNyS6AVpL
	1p0aToQeVgoCvf25fCH52e0S55zSQ1Smo49FFhNslDn6IZtiItZpFcgExtr6Bm+EHRRs
	+CsnClOJ/dGX8fAaKl8NZBqW92pdEoJgYNYF2z997VF8wAZJUt8e1nGSzSqOMlfKOg0/
	dP0N6FH4MMxE+47bVdXN0yuBoxqdESlrrqSJDWN/C/wtv8EVcKQTnDh0fi0ZBmNbDGBy
	tIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rVctkj4F4dfPRgg6oBBeZ3PRJMQYeV8S1I2E71AdJC4=;
	b=iU7iDJGikMtATzgfgjWf9F8VszH28rvcgtNbOuBrUhe0u/YXQyywfUE5gi0vHRZW1y
	AA+X/ZGOf332l62ztVPoRDYvTgvioSkfT/WA870pWiac1bc/z+b8KxuqxZsY6ybg2OLx
	/BJh2dIPMzccnhIdIzSIFdh5eV6ui9X7MF26/79f/Ve51Re9H48T41MmYzxn6z4wObic
	w5YgUrhnst9r1ajHuuIPi4ue0dXYcVltYy5XItttOqLEo23Cbb4vSe0Vq/WgAQQ9YjWQ
	iXmn7UnyYKucyHlUMqUbnXWPS5a4iQXAXoLnCdQAOV15P5Qj1uQY/IBxWZCXGfPHR9CB
	4ZGA==
X-Gm-Message-State: ABUngvdHecLoi4iHH+WAXMua+9U1LAfnhOLeKHBTPrfg/JvJYp6tKGBAgjD4IOPaYmg2wg==
X-Received: by 10.99.113.90 with SMTP id b26mr1225600pgn.33.1478406188760;
	Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:23:01 -0700
Message-Id: <20161106042304.3357-5-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 4/7] Add the MIT license inc
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:10 -0000

With the change to MIT license in Mono, the license information
is tracked in the LICENSE file.

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 recipes-mono/mono/mono-mit.inc | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-mono/mono/mono-mit.inc

diff --git a/recipes-mono/mono/mono-mit.inc b/recipes-mono/mono/mono-mit.inc
new file mode 100644
index 0000000..dcadae7
--- /dev/null
+++ b/recipes-mono/mono/mono-mit.inc
@@ -0,0 +1,3 @@
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0499d923dcb460addd12ee9b32ef4f5e"
+
-- 
2.10.2


