Return-Path: <zhenhua.luo@freescale.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0249.outbound.messaging.microsoft.com [213.199.154.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A8FE004DD
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 01:28:28 -0800 (PST)
Received: from mail85-db9-R.bigfish.com (10.174.16.235) by
	DB9EHSOBE003.bigfish.com (10.174.14.66) with Microsoft SMTP Server id
	14.1.225.22; Tue, 19 Nov 2013 09:28:27 +0000
Received: from mail85-db9 (localhost [127.0.0.1])	by mail85-db9-R.bigfish.com
	(Postfix) with ESMTP id EF9A220793;
	Tue, 19 Nov 2013 09:28:26 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275bh1de097hz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h1354h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh2222h224fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h2218h2216h1155h)
Received: from mail85-db9 (localhost.localdomain [127.0.0.1]) by mail85-db9
	(MessageSwitch) id 1384853305271641_21282;
	Tue, 19 Nov 2013 09:28:25 +0000 (UTC)
Received: from DB9EHSMHS025.bigfish.com (unknown [10.174.16.231])	by
	mail85-db9.bigfish.com (Postfix) with ESMTP id 3DC812404E3;
	Tue, 19 Nov 2013 09:28:25 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB9EHSMHS025.bigfish.com
	(10.174.14.35) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Tue, 19 Nov 2013 09:28:25 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Tue, 19 Nov 2013 09:28:23 +0000
Received: from localhost.localdomain (B19537-03.ap.freescale.net
	[10.192.208.102])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id rAJ9SKK2013352;	Tue, 19 Nov 2013 02:28:21 -0700
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 19 Nov 2013 17:28:11 +0800
Message-ID: <1384853291-10215-1-git-send-email-zhenhua.luo@freescale.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
X-Mailman-Approved-At: Tue, 19 Nov 2013 08:43:11 -0800
Cc: b40290@freescale.com, b40527@freescale.com
Subject: [meta-cloud-services][PATCH] python-horizon: remove nodejs from RDEPENDS of powerpc arch
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
X-List-Received-Date: Tue, 19 Nov 2013 09:28:29 -0000
Content-Type: text/plain

Nodejs only supports arm, x86 and ia32 archs, it doesn't support powerpc.

Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
---
 meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb b/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
index fdd0bd0..edd8dae 100644
--- a/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
+++ b/meta-openstack/recipes-devtools/python/python-horizon_2013.1.3.bb
@@ -63,8 +63,7 @@ FILES_${SRCNAME} = "${bindir}/* \
     ${datadir}/* \
     "
 
-RDEPENDS_${PN} += "nodejs \
-    python-django \
+RDEPENDS_${PN} += " python-django \
     python-django-appconf \
     python-django-compressor \
     python-django-openstack-auth \
@@ -80,6 +79,11 @@ RDEPENDS_${PN} += "nodejs \
     python-lockfile \
     "
 
+RDEPENDS_${PN}_arm += " nodejs"
+RDEPENDS_${PN}_i686 += " nodejs"
+RDEPENDS_${PN}_x86-64 += " nodejs"
+RDEPENDS_${PN}_ia32 += " nodejs"
+
 RDEPENDS_${SRCNAME} = "${PN}"
 
 INITSCRIPT_PACKAGES = "${SRCNAME}"
-- 
1.8.3.1



