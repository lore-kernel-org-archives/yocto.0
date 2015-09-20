Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB0C6E00E63; Sun, 20 Sep 2015 16:05:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F415E00B77
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 16:05:29 -0700 (PDT)
Received: by padhk3 with SMTP id hk3so98693182pad.3
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 16:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=aodzcLumDU/zp3Qn5nD17ojzMRZ5ejb/52+5V8LOUqg=;
	b=imyjG+9snHXHltJmXyt8SUEeA6vDbANjxONtQaV2gnb9UJx4WP7txBds7SpVAoeywY
	sWMvH8J/r8yaHfAVw06DuKMX9NBBDcjurJrsw//wyf6Qo7BlSXD3VMwpYFtHadBSCQKL
	8MxG5QusJwH1J7cnvlr1uF575ZDezKcx/GpdsRnNiEjFeyo12BpY4urZx/YyDhbf0hQp
	ZfDpkPnQUfjcROGmRM7aBiw2Gj6eHB5Gzf4Of40R7LaRtbvPNAO7pL0rc4XKRaZ8r9cl
	d3gzV+DaFXW6EeJzs91WLzCfb5g2IPfPIdhf3AwnYYwcPy0uFTks2cq1PV6fv0yWw0Tm
	kw3g==
X-Received: by 10.66.102.74 with SMTP id fm10mr20950045pab.137.1442790329295; 
	Sun, 20 Sep 2015 16:05:29 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	qg2sm18242663pbb.80.2015.09.20.16.05.28 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 20 Sep 2015 16:05:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 20 Sep 2015 16:05:12 -0700
Message-Id: <1442790312-6273-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1442790312-6273-1-git-send-email-akuster808@gmail.com>
References: <1442790312-6273-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] nmap: fix build issue.
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
X-List-Received-Date: Sun, 20 Sep 2015 23:05:32 -0000

ncat/ncat_lua.c:174: undefined reference to `lua_remove'

ncat/ncat_lua.c:167: undefined reference to `lua_insert'

use internal lua support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_6.47.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/nmap/nmap_6.47.bb b/recipes-security/nmap/nmap_6.47.bb
index c0b0650..e9ce1c9 100644
--- a/recipes-security/nmap/nmap_6.47.bb
+++ b/recipes-security/nmap/nmap_6.47.bb
@@ -13,7 +13,7 @@ SRC_URI[sha256sum] = "8fa11e9e203ce2d81a207db5ca4f110a525f6c01c1dd0018325a7112a5
 
 inherit autotools-brokensep pkgconfig distro_features_check
 
-PACKAGECONFIG = "ncat nping ndiff pcap lua"
+PACKAGECONFIG = "ncat nping ndiff pcap"
 PACKAGECONFIG += " ${@bb.utils.contains("IMAGE_FEATURES", "x11-base", "zenmap", "", d)}"
 
 PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
@@ -24,14 +24,12 @@ PACKAGECONFIG[nping] = ",--without-nping,"
 PACKAGECONFIG[ncat] = ",--without-ncat,"
 PACKAGECONFIG[ndiff] = ",--without-ndiff,"
 
-#use nmap's Included or system's libs
-PACKAGECONFIG[lua] = "--with-liblua=${STAGING_LIBDIR}/.., --without-liblua, lua"
 PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
 
 #Add gui
 PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
 
-EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion"
+EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
 
 do_configure() {
     autoconf
-- 
2.3.5


