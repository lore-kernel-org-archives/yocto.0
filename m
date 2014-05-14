Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9614E006EF; Wed, 14 May 2014 15:29:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 311 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 15:29:39 PDT
Received: from mail-pa0-f53.google.com (unknown [209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4AEDE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:29:39 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id kp14so181705pab.12
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=KQYal0YkWyLDaLXCqhkbSB7qgem9uvcgjdc/D0tfESw=;
	b=zLwduOxssITiv/Mb5TG0n/XOZdiX61yNb9S7u1cPnTitm5i4KVzBTICVudHYHfgnUT
	MdrzgfIngih36ou4xE1vuQG85VJce35Ga4QcjwQSFLAuuonJ0s4PVpsGNh1uxmSehKnr
	GD3POsZmX/Yxa6Tz5jJph0u4bjDO8KD9e+jquxXFZcMMR3+uatxNG/DxqjB4JS7TmOcq
	ywHeIEjElUGRGxRWLj0fCFZ4WUkKRqFMltrLMottzFfhY/4d+2hb8MGRmMl05u+9pCrM
	XPrbMltxB/+a1AlRxtQvMG4NA1d9D8nu5h3JHsLpLtumKgINeEgB5KRuPlkcOmelEyP2
	b0IQ==
X-Received: by 10.68.254.103 with SMTP id ah7mr7443855pbd.159.1400106266377;
	Wed, 14 May 2014 15:24:26 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.24
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:14 -0700
Message-Id: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/9] meta-selinux on master branch
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
X-List-Received-Date: Wed, 14 May 2014 22:29:42 -0000

  These patches fix 'ERROR: No recipes available for:'
  build issues by syncing the with version in Poky master.
  In most cases, the bbappends include coniguration
  parameters and using a wildcard in the version works for now. 
  I removed patches if the changes are the newer versions.

  I am working on a build failure in refpolicy-* and manybe more 
  but wanted to get these changes out for review and feedback.


Armin Kuster (9):
  Use wildcard for augeas and  fix build issue
  Use wildcard in mesa bbappend name
  Use wildcard in bind bbappend name
  Use wildcard in kernel bbappend name
  Use wildcard in openssh bbappedn name
  update util-linux package version and remove patch
  Update to latest swig from meta-openembedded
  update psmics 22.21 and remove un needed patch
  setools fix do_configure

 recipes-connectivity/bind/bind_9.%.bbappend        |  13 +
 recipes-connectivity/bind/bind_9.8.1.bbappend      |  13 -
 recipes-connectivity/openssh/openssh_6.%.bbappend  |  13 +
 .../openssh/openssh_6.4p1.bbappend                 |  13 -
 recipes-core/util-linux/util-linux_2.23.2.bbappend |   8 -
 recipes-core/util-linux/util-linux_2.24.2.bbappend |   5 +
 recipes-devtools/swig/swig.inc                     |   8 +-
 recipes-devtools/swig/swig_2.0.10.bb               |   9 -
 recipes-devtools/swig/swig_2.0.12.bb               |   7 +
 recipes-extended/augeas/augeas_1.%.bbappend      |   1 +
 recipes-extended/augeas/augeas_1.1.0.bbappend      |   1 -
 .../psmisc/pstree-compiles-with-SE-Linux.patch     | 265 ---------------------
 recipes-extended/psmisc/psmisc_22.20.bbappend      |   7 -
 recipes-extended/psmisc/psmisc_22.21.bbappend      |   5 +
 recipes-graphics/mesa/mesa_9.2.%.bbappend          |   6 +
 recipes-graphics/mesa/mesa_9.2.2.bbappend          |   6 -
 recipes-kernel/linux/linux-yocto_3.%.bbappend      |   7 +
 recipes-kernel/linux/linux-yocto_3.8.bbappend      |   7 -
 recipes-security/setools/setools_3.3.8.bb          |   4 +-
 19 files changed, 66 insertions(+), 332 deletions(-)
 create mode 100644 recipes-connectivity/bind/bind_9.%.bbappend
 delete mode 100644 recipes-connectivity/bind/bind_9.8.1.bbappend
 create mode 100644 recipes-connectivity/openssh/openssh_6.%.bbappend
 delete mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
 delete mode 100644 recipes-core/util-linux/util-linux_2.23.2.bbappend
 create mode 100644 recipes-core/util-linux/util-linux_2.24.2.bbappend
 delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
 create mode 100644 recipes-devtools/swig/swig_2.0.12.bb
 create mode 100644 recipes-extended/augeas/augeas_1.%.bbappend
 delete mode 100644 recipes-extended/augeas/augeas_1.1.0.bbappend
 delete mode 100644 recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
 delete mode 100644 recipes-extended/psmisc/psmisc_22.20.bbappend
 create mode 100644 recipes-extended/psmisc/psmisc_22.21.bbappend
 create mode 100644 recipes-graphics/mesa/mesa_9.2.%.bbappend
 delete mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto_3.%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.9.1


