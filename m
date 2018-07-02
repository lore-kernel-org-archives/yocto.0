Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47B4AE00CEA; Mon,  2 Jul 2018 03:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C521AE00CA4
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 03:34:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 03:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,298,1526367600"; d="scan'208";a="63401710"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2018 03:34:25 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.131]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.93]) with mapi id
	14.03.0319.002; Mon, 2 Jul 2018 18:34:23 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/2] [yocto-ab-helper] Add qemux86, qemux86-64 WIC
	testimage buildset-config
Thread-Index: AQHUEe+8JyXrTJr1pkqH2hetZ78j7aR7vBeu
Date: Mon, 2 Jul 2018 10:34:23 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068DDCD0@PGSMSX103.gar.corp.intel.com>
References: <1530527406-24675-1-git-send-email-aaron.chun.yew.chan@intel.com>
In-Reply-To: <1530527406-24675-1-git-send-email-aaron.chun.yew.chan@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] [yocto-ab-helper] Add qemux86, qemux86-64 WIC testimage buildset-config
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
X-List-Received-Date: Mon, 02 Jul 2018 10:34:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Kindly ignore this patch as it contains the old description. I'll send a ne=
w patch indicating the reason behind this buildset-config is needed.

Cheers,
Aaron
________________________________________
From: Chan, Aaron Chun Yew
Sent: Monday, July 02, 2018 6:30 PM
To: richard.purdie@linuxfoundation.org; yocto@yoctoproject.org
Cc: Chan, Aaron Chun Yew
Subject: [PATCH 1/2] [yocto-ab-helper] Add qemux86, qemux86-64 WIC testimag=
e buildset-config

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.json | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index c9dc21e..3c1f989 100644
--- a/config.json
+++ b/config.json
@@ -383,6 +383,36 @@
             ],
             "step1" : {
                 "MACHINE" : "qemux86",
+                "SDKMACHINE" : "x86_64",
+                "DISTRO" : "poky-lsb",
+                "BBTARGETS" : "wic-tools core-image-lsb-sdk",
+                "EXTRACMDS" : [
+                    "wic create directdisk -e core-image-lsb-sdk -o ${BUIL=
DDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/",
+                    "wic create directdisk-gpt -e core-image-lsb-sdk -o ${=
BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/",
+                    "wic create mkefidisk -e core-image-lsb-sdk -o ${BUILD=
DIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/"
+                ],
+                "extravars" : [
+                    "IMAGES_FSTYPES +=3D ' wic'"
+                ],
+                "SANITYTARGETS" : "core-image-lsb-sdk:do_testimage"
+            },
+            "step2" : {
+                "MACHINE" : "qemux86-64",
+                "SDKMACHINE" : "x86_64",
+                "DISTRO" : "poky-lsb",
+                "BBTARGETS" : "wic-tools core-image-lsb-sdk",
+                "EXTRACMDS" : [
+                    "wic create directdisk -e core-image-lsb-sdk -o ${BUIL=
DDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/",
+                    "wic create directdisk-gpt -e core-image-lsb-sdk -o ${=
BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/",
+                    "wic create mkefdisk -e core-image-lsb-sdk -o ${BUILDD=
IR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/"
+                ],
+                "extravars" : [
+                    "IMAGES_FSTYPES +=3D ' wic'"
+                ],
+                "SANITYTARGETS" : "core-image-lsb-sdk:do_testimage"
+            },
+            "step3" : {
+                "MACHINE" : "qemux86",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDI=
R}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/",
@@ -390,7 +420,7 @@
                     "wic create mkefidisk -e core-image-sato -o ${BUILDDIR=
}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/"
                 ]
             },
-            "step2" : {
+            "step4" : {
                 "MACHINE" : "genericx86",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
--
2.7.4


