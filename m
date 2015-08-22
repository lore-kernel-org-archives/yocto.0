Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAD4BE00B57; Sat, 22 Aug 2015 01:43:33 -0700 (PDT)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1224E00A99
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:43:29 -0700 (PDT)
Received: by pdbfa8 with SMTP id fa8so34739721pdb.1
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 01:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=QfIoF5+gQqUN11jYUGFSNnCMfqEKfSMJXZM0Z1oYz/M=;
	b=hVNIX+6u6mQFIVWWx4NMqIKA/ACBs8id1qg+pBgc3kwqQbkUKJO1q8IAmU4+q8anGn
	TWNzeVVQoTFIlmeNNQa1yBI5SEjzIAvzhcPDvA6V6i6U2pB0/qD1Z6OFmf21lMMoHTxy
	IHsQgpZKK9RbSGRtAvBoSHV0NgtJ1iG53KFzGhr9FsVsLzW8vjygTUkE5Id/nnZcSOaY
	rzEm5YSAo9aWctlzhg0k9HRRMrQRH3Z1kCrlDvEfntukLPtpPgpUTF5Pcn1VYkesVHGK
	fWopwRaz6XiF5xYERPZL2WLtD3HZlpXA9nUAXgxOtPRSs0HT1g404JkLc1DogH0kUTie
	DWiQ==
X-Received: by 10.70.140.238 with SMTP id rj14mr26385407pdb.38.1440233009218; 
	Sat, 22 Aug 2015 01:43:29 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id n9sm7713310pdi.88.2015.08.22.01.43.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Aug 2015 01:43:28 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Aug 2015 18:43:32 +1000
Message-Id: <1440233012-18802-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-omx: enable Raspberry Pi support
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
X-List-Received-Date: Sat, 22 Aug 2015 08:43:34 -0000

[Support #25]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
new file mode 100644
index 0000000..c242aa2
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
@@ -0,0 +1,6 @@
+CPPFLAGS_append_rpi = " -I${STAGING_INCDIR}/IL \
+                        -I${STAGING_INCDIR}/interface/vcos/pthreads \
+                        -I${STAGING_INCDIR}/interface/vmcs_host/linux"
+LDFLAGS_append_rpi = " -lEGL -lbcm_host"
+GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
+GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
-- 
2.5.0


