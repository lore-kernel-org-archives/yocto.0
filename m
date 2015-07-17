Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 085D6E009E5; Fri, 17 Jul 2015 09:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 221F2E009C6
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 09:57:25 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6HGvNrG016130; Fri, 17 Jul 2015 11:57:23 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071711572317-1390114 ;
	Fri, 17 Jul 2015 11:57:23 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Fri, 17 Jul 2015 11:57:22 -0500
Message-Id: <c353fd351f054c93fe3fd2143e865376c6c350f9.1437151912.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437151912.git.rich.tollerton@ni.com>
References: <cover.1437151912.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/17/2015 11:57:23 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/17/2015 11:57:23 AM,
	Serialize complete at 07/17/2015 11:57:23 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-17_09:, , signatures=0
Subject: [meta-mono] [RFC] [PATCH 1/1] mono.bbclass: set MONO_CFG_DIR
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
X-List-Received-Date: Fri, 17 Jul 2015 16:57:28 -0000

Several mono package builds were observed to fail while cross-compiling
to arm in ways that, upon stracing, boiled down to not being able to
load the mono config file because mono was looking for it in
${STAGING_DIR_NATIVE}/usr/etc instead of
${STAGING_DIR_NATIVE}/etc (which is where it was being installed).

mono/mono/metadata/assembly.c:set_dirs() appears to be responsible for
guessing /usr/etc, by essentially computing $(dirname $0)/../etc.
There's a separate codepath that instead chooses $sysconfdir (cf
assembly.c:fallback(), mono-config-dirs.c:mono_config_get_cfg_dir(), and
the Makefile). Presumably that's what's usually used for native mono
builds, but for presently unknown reasons, it's not getting used here.

The workaround implemented here is to force setting MONO_CFG_DIR for all
builds to the correct location of /etc in the native sysroot.
(I had earlier worked around this by changing the mono-native build to
install to /usr/etc instead of /etc, but that's more complicated to
manage in the recipes, and violates the configuration symmetry between
architectures.)

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 classes/mono.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/classes/mono.bbclass b/classes/mono.bbclass
index 315ee82..1cb4b17 100644
--- a/classes/mono.bbclass
+++ b/classes/mono.bbclass
@@ -30,3 +30,5 @@ FILES_${PN}-dev += "\
 FILES_${PN}-doc += "\
   ${libdir}/monodoc/* \
 "
+
+export MONO_CFG_DIR="${STAGING_ETCDIR_NATIVE}"
-- 
2.4.4


