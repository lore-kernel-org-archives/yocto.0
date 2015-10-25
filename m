Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B032E00B99; Sun, 25 Oct 2015 15:45:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE565E00BBD
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 15:45:09 -0700 (PDT)
Received: by pabuq3 with SMTP id uq3so3022067pab.0
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 15:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=QHTDR4X1aJfSx7YXw9Dv0MUpXH3N3N0WidhxLPg53Oc=;
	b=l0Vs7XuhUyX8f/wm0Nio7TOaFrwiNl8iNdl2u2qrjuAqTD2yOdmN030XeRLynts/e2
	rYzhxuEl55onAGiMLPsM3PXOxCRnjYqyskalmyyz72dap2dDVc2RyyKLAn/p6jFfky7s
	a7r7Jv+5SIIVYtQTlL4HEuNVNPDEnFmr/2XmK11yvnC+akJ3HIaAVa2npSyXsn1Yo7Ae
	CX6mPskHCbhdZkyOa5a3Swe9suA7drUmAbILTunEZxkfdafJ9OFHSUUA08wfmre7AgcA
	lRV2KiUyHjyzvtVE6H0LF5EFE8JoVLtzyF7VYcElcKzmSG2IheDncsC1MjO8kfWbdc+i
	+ALQ==
X-Received: by 10.68.57.176 with SMTP id j16mr19241497pbq.166.1445813109230;
	Sun, 25 Oct 2015 15:45:09 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	ij3sm14849877pbb.62.2015.10.25.15.45.08
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 15:45:08 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 09:45:15 +1100
Message-Id: <1445813115-14149-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH v2] gstreamer1.0-omx: enable Raspberry Pi support
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
X-List-Received-Date: Sun, 25 Oct 2015 22:45:11 -0000

[Support #25]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
new file mode 100644
index 0000000..f44dd36
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
@@ -0,0 +1,5 @@
+CPPFLAGS_append_rpi = " -I${STAGING_INCDIR}/IL \
+                        -I${STAGING_INCDIR}/interface/vmcs_host/linux"
+LDFLAGS_append_rpi = " -lEGL -lbcm_host"
+GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
+GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
-- 
2.6.1


