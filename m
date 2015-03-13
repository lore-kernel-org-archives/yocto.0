Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68C8EE00854; Fri, 13 Mar 2015 08:37:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E5ACE003A8
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:37:33 -0700 (PDT)
Received: by padet14 with SMTP id et14so30437812pad.0
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=dKjfDCT2ga5PZE96rjiVmXx2MBuaKXUGBJyuvlrXit0=;
	b=eiXWdIX2j4s22t/uaUifGd4RpXZU2xkHdUDPPPl6LKo0vd33xM7VZTET7QWJn9HbL6
	8/PISuBOPnKCfVq5iH4nn4xllQ9H1dphS8kgWfAEoc0L4RK2W7h7oJ9Udrw4Hm+y9B2e
	quiwdNF32WZ1W190D3myYPGouKFnmzZqZzRTPaOvViY56nd0AcBt32wHB+ljPa9FvP35
	yF5Phtsf2ICCPeZK8/t4hIozmgk4gjoCpY2whyq6j9E7RMr+f44bX7hmUdcs5vnlhGMx
	O08+2Yomd/iR+8BERU5kqvQJFDHuDYoCsnnx9JgI4w2u8OFfLDM7t00WvFPEVgvjNuWj
	UDhA==
X-Received: by 10.70.38.136 with SMTP id g8mr103627811pdk.80.1426261053370;
	Fri, 13 Mar 2015 08:37:33 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id qp3sm4126151pdb.11.2015.03.13.08.37.31
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Mar 2015 08:37:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Mar 2015 08:37:20 -0700
Message-Id: <1426261041-9954-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libseccomp update
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
X-List-Received-Date: Fri, 13 Mar 2015 15:37:38 -0000

PPC support is not yet in master. I will backport patches shortly.
Ptest/tests for this package require busybox config changes to get the 
scripts to work, so they are exclude with this update.

For more information on this release, please see:
https://github.com/seccomp/libseccomp/blob/master/CHANGELOG


Armin Kuster (1):
  libseccomp: update to version 2.2.0

 recipes-security/libseccomp/libseccomp_2.1.1.bb | 37 -------------------------
 recipes-security/libseccomp/libseccomp_2.2.0.bb | 23 +++++++++++++++
 2 files changed, 23 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-security/libseccomp/libseccomp_2.1.1.bb
 create mode 100644 recipes-security/libseccomp/libseccomp_2.2.0.bb

-- 
1.9.1


