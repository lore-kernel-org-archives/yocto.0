Received: from wnew4-smtp.messagingengine.com (wnew4-smtp.messagingengine.com [64.147.123.18])
 by mx.groups.io with SMTP id smtpd.web10.6846.1578980360096303735
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2020 21:39:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=cGhd0G95;
 spf=neutral (domain: iki.fi, ip: 64.147.123.18, mailfrom: tanuk@iki.fi)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 1DE39491
	for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 00:39:19 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 14 Jan 2020 00:39:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=CvmhQGLUUT+DtFYpF
	6ByRVzLk1s8f3dIqklqSL1isG8=; b=cGhd0G95gRuN40S7ohXxV5s+dlZr0H5yE
	3Mzlb2Ivd9mTlblMzh5gNrQOuKkSp3ZORaPmo/k3neXuchQgxfb6wPCpCDPGAfMu
	8OxZtIroPxCTzBh74bMF5yPxQ812k7Nqr7wRWuKH90WoeuclTmnqiv2uOXR3GDDc
	prf+9Pakkmzq4UepdGzPujhysNXvErSHiMeAg8KPHNef/ZHwGu50gX9JYnUXYNMo
	xUJfNUNALDnEmYPz7B6LlzSkMODLByQIxGeydZO7CZmHNSW+INkIpOlhd4zMnzeO
	kJhWTVmoOAogOwlRGnpghET+KQWHVynrz1nmpBXy9OMAJzgr2m9FQ==
X-ME-Sender: <xms:BlQdXjo_51E6oIx5wU7N9-6jZ2XAmZ_AmunqGml1dv-wcI0B2Cssvw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdejuddgkeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgorfhhihhshhhinhhgqdfkphfpvghtfihorhhkuc
    dlfedttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefv
    rghnuhcumfgrshhkihhnvghnuceothgrnhhukhesihhkihdrfhhiqeenucffohhmrghinh
    eprghlshgrqdhprhhojhgvtghtrdhorhhgnecukfhppeduleeirddvgeegrdduledurdej
    geenucfrrghrrghmpehmrghilhhfrhhomhepthgrnhhukhesihhkihdrfhhinecuvehluh
    hsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:BlQdXg1lj1QjOwPiBbuBpQNm-BhLmqNEsM8vPZj1F1hSboMlzib94g>
    <xmx:BlQdXnDKAL2Mpjmz4awwn6lyS2dhT3_sfcIFUvhd3cW3Qp1Z4vkBgQ>
    <xmx:BlQdXr_uB4zLVV-NosG6Y50aHqNOnp38zau3yqE9BJgAOYdXDMMAMw>
    <xmx:BlQdXksYbXZpu0j2yPmsLSel6010MDEYXklCXMxaynRdtzGbSfogs4J-fE4>
Received: from localhost.localdomain (unknown [196.244.191.74])
	by mail.messagingengine.com (Postfix) with ESMTPA id DAE3E8005C
	for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 00:39:17 -0500 (EST)
From: "Tanu Kaskinen" <tanuk@iki.fi>
To: yocto@lists.yoctoproject.org
Subject: [yocto-docs][PATCH] dev-manual: Explain unpacking archives without a top-level directory
Date: Tue, 14 Jan 2020 07:38:39 +0200
Message-Id: <20200114053839.38245-1-tanuk@iki.fi>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Tanu Kaskinen <tanuk@iki.fi>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 1e6addde4..525ec1830 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -2085,7 +2085,15 @@
                 However, if <filename>SRC_URI</filename> specifies to fetch
                 source from an archive that does not use this convention,
                 or from an SCM like Git or Subversion, your recipe needs to
-                define <filename>S</filename>.
+                define <filename>S</filename>, except if the archive doesn't
+                use any top-level subdirectory. In that case you need to tell
+                Bitbake to do the unpacking in a subdirectory, this example is
+                from the
+                <filename>meta/recipes-multimedia/alsa/alsa-ucm-conf_1.2.1.2.bb</filename>
+                recipe:
+                <literallayout class='monospaced'>
+     SRC_URI = "https://www.alsa-project.org/files/pub/lib/${BP}.tar.bz2;subdir=${BP}"
+                </literallayout>
             </para>
 
             <para>
-- 
2.20.1

