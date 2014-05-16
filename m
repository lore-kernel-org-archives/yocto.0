Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB5FE00B1E; Thu, 15 May 2014 18:31:37 -0700 (PDT)
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
	*      [209.85.160.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f45.google.com (unknown [209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA143E00975
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:31:35 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id um1so1850177pbc.18
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=LNuivc3Tf/gDWqkMpSMR+X03p2hx1OnaeLH9PlaPzRI=;
	b=HPPvS5v1MGdSD8xnkW2OsluYxAGwZb4OwoMWx1oiaTBCTssBjhFiY7Ty4ycLnK7FCM
	udXsRCaVDzXuSJKHE0nVcoR4QJa177FKSgrgezX+j5iGjqQCUQrss9ukKBZzEk/q9N0/
	1M9eVw8ECFbgHzSIRhCyne0m6qhHz0jFhr3tBq4Rqy0WmVlnNIWzP67nstY1Ate6KV1a
	oepvzw4vgruzkReMTBZ/deHMZkcGPxrBNWnOlCW4GSlPqpf4Lfzos0nYWjtZuQQ4tZnE
	yNgqHn5Yo5uBqvYFHQ8mCS8pt+p9gh6RnWw0qfpFVd8HWxGqbNDaXXRg5nSY9uZEf9da
	7EjA==
X-Received: by 10.66.254.3 with SMTP id ae3mr16781926pad.49.1400203894836;
	Thu, 15 May 2014 18:31:34 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.31.32 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:31:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:22 -0700
Message-Id: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: yocto@yoctoproject.org
Subject: [PATCH V2 0/9] meta-selinux on master branch
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
X-List-Received-Date: Fri, 16 May 2014 01:31:37 -0000

These patches fix build messages 'ERROR: No recipes available for:'
by syncing the with versions in Poky master.  In most cases, 
the bbappends included only configuration parameters and using 
a wildcard in the version works for now. I removed patches 
if the changes are the newer versions.

Changes from previous version.
Remove 'PR.'
Excluding mesa changes since an update is pending.
Excluding setools for further investigation
Added glib-2.0

Still working on a build failure in refpolicy-* 

Armin Kuster (9):
  Use wildcard for augeas and  fix build issue
  Use wildcard in bind bbappend name
  Use wildcard in bind bbappend name
  Use wildcard in kernel bbappend name
  Use wildcard in openssh name
  update util-linux package version and remove patch
  Update to latest swig from meta-openembedded
  update psmics 22.21 and remove unneeded patch
  Use wildcard in glib-2.0 bbappend name

 recipes-connectivity/bind/bind_9.%.bbappend        |  11 +
 recipes-connectivity/bind/bind_9.8.1.bbappend      |  13 -
 recipes-connectivity/openssh/openssh_6.%.bbappend  |  11 +
 .../openssh/openssh_6.4p1.bbappend                 |  13 -
 recipes-core/glib-2.0/glib-2.0_2.%.bbappend        |   1 +
 recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend     |   1 -
 recipes-core/util-linux/util-linux_2.23.2.bbappend |   8 -
 recipes-core/util-linux/util-linux_2.24.2.bbappend |   3 +
 recipes-devtools/swig/swig.inc                     |   8 +-
 recipes-devtools/swig/swig_2.0.10.bb               |   9 -
 recipes-devtools/swig/swig_2.0.12.bb               |   7 +
 recipes-extended/augeas/augeas_1.%.bbappend        |   1 +
 recipes-extended/augeas/augeas_1.1.0.bbappend      |   1 -
 .../psmisc/pstree-compiles-with-SE-Linux.patch     | 265 ---------------------
 recipes-extended/psmisc/psmisc_22.20.bbappend      |   7 -
 recipes-extended/psmisc/psmisc_22.21.bbappend      |   3 +
 recipes-kernel/linux/linux-yocto_3.%.bbappend      |   7 +
 recipes-kernel/linux/linux-yocto_3.8.bbappend      |   7 -
 18 files changed, 50 insertions(+), 326 deletions(-)
 create mode 100644 recipes-connectivity/bind/bind_9.%.bbappend
 delete mode 100644 recipes-connectivity/bind/bind_9.8.1.bbappend
 create mode 100644 recipes-connectivity/openssh/openssh_6.%.bbappend
 delete mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.%.bbappend
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend
 delete mode 100644 recipes-core/util-linux/util-linux_2.23.2.bbappend
 create mode 100644 recipes-core/util-linux/util-linux_2.24.2.bbappend
 delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
 create mode 100644 recipes-devtools/swig/swig_2.0.12.bb
 create mode 100644 recipes-extended/augeas/augeas_1.%.bbappend
 delete mode 100644 recipes-extended/augeas/augeas_1.1.0.bbappend
 delete mode 100644 recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
 delete mode 100644 recipes-extended/psmisc/psmisc_22.20.bbappend
 create mode 100644 recipes-extended/psmisc/psmisc_22.21.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto_3.%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.9.1


