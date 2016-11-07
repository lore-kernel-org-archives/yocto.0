Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2656CE00828; Mon,  7 Nov 2016 03:02:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE1CEE00563
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 03:02:47 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id u144so15804128wmu.0
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 03:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=vemwV2TEtwYkwzylRoDhBH0I5StkZyKWeWA5Ro7buuU=;
	b=KrONjUf6ROyIdTRfw6y/Qz3FM2q877Vs7zr3EqBGEjRP0Rz1Ek7y/Ryj+SsUjQsP6M
	WVyHTCmN/zBtc8132zcw4PwNyKTVF49I+7gJ7xOdDfWP7wMofirlAjwjvVW4+AGXgNcc
	e8GRXMIBlJ6qwiVI1zoFOkn6ezGLZ6+qHwxlnyy5afcXGW/HAEYdZfIEx2J2OSaTQ9O6
	cmIIzG5H+P8ofdqxCvfWZTdZJYHCBq5qbZh248x3191ZDEbL0RaeHhJ3eWdNq9/ltmF1
	WC2p2uzCaFqBxH47yimSsYQvf2Rr0c4K5+NAe0JrT1xes7Vfh7+ivxc1Sp9RdTHJem9r
	vgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=vemwV2TEtwYkwzylRoDhBH0I5StkZyKWeWA5Ro7buuU=;
	b=Rb86q7DwraXpFLROX/UuWPL39W/xnUCoMCvi2z1zNfbEfXoZMm0vBmUx5vA8Pb7Weo
	kID+xhQN2aOoC0ju41ghelITqjRaJK+yxEcWP9rku7A9YgTRsnHmXLFitCpbnW/Y7os4
	FJ8jXn+FL5Nj7zkmUYyR5ieadZ1gvaezxo/MdATziJ3D8LQm8yi0po4J0LscGn+tpVR9
	gOHz1mcvHzCgLa+L7Or/Um7pHMvY8I20cS3n2J8dhY+9rbOb70SgSnvVdXJ6nl0YLgX5
	PITJRCyEORBymVtFR53sRO1aMOGtmNcjW42n/GkMknGnKbm8FHhFu4SPe50A8iQCh5XR
	ZRiA==
X-Gm-Message-State: ABUngvdBHMTnxe1cIC+vZiy7nwZEUSuujovoKfSanuHSShnTZV9IXEia1ajypdfwXzOcNA==
X-Received: by 10.194.24.34 with SMTP id r2mr4784798wjf.111.1478516566311;
	Mon, 07 Nov 2016 03:02:46 -0800 (PST)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id
	g10sm30318272wjw.18.2016.11.07.03.02.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 07 Nov 2016 03:02:45 -0800 (PST)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Nov 2016 12:02:36 +0100
Message-Id: <1478516556-2159-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] ref-manual: fix typo
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
X-List-Received-Date: Mon, 07 Nov 2016 11:02:52 -0000

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 documentation/kernel-dev/kernel-dev-advanced.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml b/documentation/kernel-dev/kernel-dev-advanced.xml
index 9e15f17..ed982fb 100644
--- a/documentation/kernel-dev/kernel-dev-advanced.xml
+++ b/documentation/kernel-dev/kernel-dev-advanced.xml
@@ -256,7 +256,7 @@
             When stored outside of the recipe-space, the kernel Metadata
             files reside in a separate repository.
             The OpenEmbedded build system adds the Metadata to the build as
-            a "ktype=meta" repository through the
+            a "type=kmeta" repository through the
             <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>
             variable.
             As an example, consider the following <filename>SRC_URI</filename>
-- 
1.9.1


