Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60411E00CE5; Thu, 17 Jan 2019 08:42:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 348 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jan 2019 08:42:32 PST
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551D6E00CDE
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 08:42:32 -0800 (PST)
Received: from trochilidae.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 504275C1ECD;
	Thu, 17 Jan 2019 17:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1547743003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:
	content-transfer-encoding:content-transfer-encoding:in-reply-to:
	references; bh=LV879Tihb9uQPmK8EckMrIP/NyD0/gs6FRYRlNpH2m8=;
	b=Nyx/OK9Udq2Fc2E6i9wMs81mUQiUmYMcOH+BLM0WXYOXqKxjRRn4ihumorYQ8EDXrGu/zM
	brVGQXeq7CqOwZdtPv3c8l0DPtPZeVdYDEsmxGbkiRG6K9xOVxbwbvH6uyQuIzDPMdnK3w
	IIyX3enEuci3EIVYc7fxX7I4MyoOf4Q=
From: Stefan Agner <stefan@agner.ch>
To: srifenbark@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 17 Jan 2019 17:36:40 +0100
Message-Id: <20190117163640.26600-1-stefan@agner.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Stefan Agner <stefan.agner@toradex.com>, stefan@agner.ch
Subject: [PATCH] polkit: add polkit distro feature
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
X-List-Received-Date: Thu, 17 Jan 2019 16:42:33 -0000
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan.agner@toradex.com>

Several recipe now use polkit distro feature to descide whether to
build with polkit support. Document this new distro feature.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 documentation/ref-manual/ref-features.xml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index cb74df6da..41371499e 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -211,6 +211,8 @@
                     support.</para></listitem>
                 <listitem><para><emphasis>pcmcia:</emphasis> Include
                     PCMCIA/CompactFlash support.</para></listitem>
+                <listitem><para><emphasis>polkit:</emphasis> Include Polkit
+                    support.</para></listitem>
                 <listitem><para><emphasis>ppp:</emphasis> Include PPP dialup
                     support.</para></listitem>
                 <listitem><para><emphasis>ptest:</emphasis> Enables building
-- 
2.20.1


