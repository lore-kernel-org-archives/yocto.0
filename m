Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2111E0084E; Fri, 12 Dec 2014 15:45:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB683E002A6
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 15:45:29 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id hy4so4119897vcb.15
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 15:45:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=2NWBE2kRXXDTf1G8oRnl77TqYUaWb42tdV2Q6x7j0eE=;
	b=D1KgBw53UnNzIF9nJ9MtP1rmZ7xzYK1C/fQef8cChECNNAYdnJFuwNOZktLR0sIc0q
	rIcpsO0ZuJgXcdbKY1UDwNUuMBgakYhLH8DeA7jXOb3PcpsHpkRpbDL8R2HhDkV6s3KL
	cN5azeMTFjGbXaAFK1JdeOtpLu6DfD6rdztrdXmaxNcE5ZW2aP2KmI7W8uicyozCSawi
	Jl/GlReyF2JdhLx6D/23MAsAr6brGu02TAowmwIDf/MCRm3M5voShlk8ow/cSgaMwIzX
	yerQOrC9uXgNB8Ca+eDploYb7Amckw20wgIltrvnxB000d9RcAH0lF9luw1jrQ6wlY91
	z9Gw==
X-Gm-Message-State: ALoCoQnMMmmWfbG/nPMq3aIkglnvefuNVqsYm6193NiCwVvB3D9UxE+GTmSn5sJNK/Rc5yysQLq5
MIME-Version: 1.0
X-Received: by 10.221.3.195 with SMTP id nz3mr11787676vcb.43.1418427928629;
	Fri, 12 Dec 2014 15:45:28 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Fri, 12 Dec 2014 15:45:28 -0800 (PST)
Date: Fri, 12 Dec 2014 23:45:28 +0000
Message-ID: <CAPhnLPDcQs8HOeC+9nF627AzQKnGnjiJ19Ubh+Kv=RHCUnwt6g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.5.4 (dora 10.0.4) now available.
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
X-List-Received-Date: Fri, 12 Dec 2014 23:45:32 -0000
Content-Type: text/plain; charset=UTF-8

All,

I am pleased to announce the next point release for the dora branch,
Yocto Project 1.5.4 (dora 10.0.4). A full pass test report is
available at:

https://wiki.yoctoproject.org/wiki/WW48_-_2014-11-25_
_Full_Pass_Release_Dora_1.5.4

Several fixes for CVE-2014-3566 (the SSL Poodle vulnerability) have
been applied to OpenSSL in this release; however, due to the nature of
the vulnerability you will need to ensure that SSL 3.0 support is
either disabled, or alternatively that TLS_FALLBACK_SCSV is
implemented in both clients and servers that use TLS/SSL.

For more information, check with the upstream provider of TLS/SSL
client / server software that you are using.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-3566
https://www.us-cert.gov/ncas/alerts/TA14-290A

Downloads are available at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/poky-dora-10.0.4.tar.bz2

--------

Release Name: poky-dora-10.0.4
Branch: dora
Tag: dora-10.0.4
Hash: e035c59d7d331ddaeff19b069169567af5e6f8ac
md5sum: e3d2250514c68b038640c65c19d9038c
Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/poky-dora-10.0.4.tar.bz2

Release Name: eclipse-poky-juno-dora-10.0.4
Branch: dora
Tag: dora-10.0.4
Hash: 79cd3c6ff119526f3f85567253450d2e857afed0
md5sum: 01c3e68daa8e337d3aa70b0512cff79d
Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/eclipse-poky-juno-dora-10.0.4.tar.bz2

Release Name: eclipse-poky-kepler-dora-10.0.4
Branch: dora
Tag: dora-10.0.4
Hash: e2cc15b1549d197ab15073f52274401d0fd86686
md5sum: 99f144fbee42289c7cfd7283d8be3a9e
Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/eclipse-poky-kepler-dora-10.0.4.tar.bz2

Release Name: meta-qt3-dora-10.0.4
Branch: dora
Tag: dora-10.0.4
Hash: 4772424ab69908d4e3b9d6d4717ca889468e6acd
md5sum: 7843a578d15202d6e4603d3cea09392d
Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/meta-qt3-dora-10.0.4.tar.bz2

Security Fixes
---------
openssl: Fix for CVE-2014-3568
openssl: Fix for CVE-2014-3567
openssl: Fix for CVE-2014-3513
openssl: Fix for CVE-2014-3566
bash: Fix-for-CVE-2014-6278
bash: Fix for CVE-2014-6277
bash: Fix for CVE-2014-7186 and CVE-2014-7187
bash: add missing patch for CVE-2014-7169 to 4.2 recipe
bash: add missing patch for CVE-2014-6271 to 4.2 recipe
bash: Fix CVE-2014-7169
bash: fix CVE-2014-6271

Bug Fixes
---------
documentation: Updated the date in Manual Revision History table
yocto-bsp: Update qemu inclusion lists
build-appliance-image: Update to dora head revision
poky: Update version to 1.5.4
build-appliance-image: Update to dora head revision
systemtap: fix do_compile failed on fedora21
ltp: Added zip-native as a DEPENDS
package.bbclass: Add CONFFILES to list of package specific variables
profile-manual: Updates to the LTTng Documentation section.
build-appliance-image: Update to dora head revision
build-appliance-image: Update to daisy head revision
poky.ent: Updated the YOCTO_RELEASE_NOTES variable.
bash: Fix for exported function namespace change
apmd.service: Fix typo (not mandatory EnvironmentFile prefix)
documentation: Steps to prepare for 1.5.4 YP doc set.
qt4: Fix Qt 4.8.5 source to new location
gcc-4.8: backport fix for ICE when building opus
cairo: explicitly disable LTO support by backporting patch which removes it
binutils: Fix building nativesdk binutils with gcc 4.9
ref-manual: Updated note in the "CentOS Packages" section.
dev-manual: Fixed broken link to MACHINE variable.
dev-manual: Updates to the "Creating Partitioned Images" section.

Notes
---------
- The source archiver code is not functional.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

