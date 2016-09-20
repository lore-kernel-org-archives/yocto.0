Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED6CE00BCE; Tue, 20 Sep 2016 07:25:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 261D4E00B74
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:25:02 -0700 (PDT)
Received: from 1bmLxg-00059e-UX by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0005AY-V7
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: by emcmailer; Tue, 20 Sep 2016 07:23:52 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-00059e-UX
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 16:23:52 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 1FE9E441596;
	Tue, 20 Sep 2016 16:23:52 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Sep 2016 16:23:49 +0200
Message-ID: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCHv2 0/3] Added device manager multipath support for root file system
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
X-List-Received-Date: Tue, 20 Sep 2016 14:25:09 -0000
Content-Type: text/plain

This is implemented using an initramfs, built by core-image-cgl-initramfs image
recipe. Multipath device configurations are done using kernel boot parameters.

Original implementation was done by: Mats Liljegren <mats.liljegren@enea.com>

Changes from v1:
Split patch into 3 smaller patches
Dropped core-image inheritance, it's already inherited by core-image-lsb
Dropped the conf_setup script as its not needed anymore - the multipath-tools recipe from
meta-virtualization has been dropped.


Adrian Dudau (3):
  packagegroup-cgl-middleware: Add multipath-tools
  Add an initramfs image
  Add initrdscripts

 meta-cgl-common/conf/distro/poky-cgl.conf          |   1 +
 meta-cgl-common/images/core-image-cgl-initramfs.bb |  20 +++
 meta-cgl-common/images/core-image-cgl.bb           |   2 +
 .../packagegroups/packagegroup-cgl-middleware.bb   |   8 +-
 .../recipes-core/initrdscripts/files/init-boot.sh  | 179 +++++++++++++++++++++
 .../initrdscripts/initramfs-cgl-boot_1.0.bb        |  14 ++
 6 files changed, 217 insertions(+), 7 deletions(-)
 create mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb

-- 
1.9.1


