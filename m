Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C4DEE00A1F; Thu, 16 Jul 2015 10:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EECE00A16
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:23 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMKfK027464; Thu, 16 Jul 2015 12:22:21 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612222088-1321622 ;
	Thu, 16 Jul 2015 12:22:20 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:20 -0500
Message-Id: <21d68aa45a210d7ada5c87793ae90edb099e2f04.1437067107.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437067107.git.rich.tollerton@ni.com>
References: <cover.1437067107.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:22:20 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:22:21 PM,
	Serialize complete at 07/16/2015 12:22:21 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 4/4] mono-xsp-3.x.inc: use autogen.sh
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:25 -0000

The following build failure was observed:

| Makefile.am:7: error: BUILD_DOCS does not appear in AM_CONDITIONAL

This occurs because aclocal must be called with "-I build/m4/shamrock -I
build/m4/shave", as is done in autogen.sh.

I tried adding those includes to EXTRA_AUTORECONF or acpaths. That seems
to only partially solve the problem, as MONO_MODULE remains undefined
and unsubstituted in configure, leading to:

| xsp-3.0.11/configure: line 2651: syntax error near unexpected token `MONO_MODULE,'

This might have something to do with the `automake --gnu` option in
autogen.sh. I don't know for certain

In any case, merely calling autogen.sh does work. This patch implements
that, using autotools.bbclass:oe_runconf() as a template.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono-xsp/mono-xsp-3.x.inc | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/recipes-mono/mono-xsp/mono-xsp-3.x.inc b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
index ffe0a28..77af516 100644
--- a/recipes-mono/mono-xsp/mono-xsp-3.x.inc
+++ b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
@@ -9,6 +9,17 @@ inherit autotools-brokensep
 
 SRC_URI = "https://github.com/mono/xsp/archive/${PV}.tar.gz"
 
+do_configure () {
+    set +e
+    ${CACHED_CONFIGUREVARS} ${S}/autogen.sh --verbose ${CONFIGUREOPTS} ${EXTRA_OECONF}
+    if [ "$?" != "0" ]; then
+	echo "Configure failed. The contents of all config.log files follows to aid debugging"
+	find ${S} -name config.log -print -exec cat {} \;
+	bbfatal "oe_runconf failed"
+    fi
+    set -e
+}
+
 S = "${WORKDIR}/xsp-${PV}"
 
 PACKAGES += "${PN}-test \
-- 
2.4.4


