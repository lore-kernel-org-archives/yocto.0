Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD231E0094C; Mon,  9 Feb 2015 17:00:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 094FEE00945
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 17:00:48 -0800 (PST)
Received: by pdjy10 with SMTP id y10so4523692pdj.13
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 17:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=t4e27Vj2ctxIIg+4k7eyo2V3lDkRYwJKPlxxdQKIvrE=;
	b=W2aqf0spLHPjBPG/bErnIUdj7feK55H2s+zSKcHlwSpys5Q510TntZcEUE5mg81ztp
	xE1a3Rn4OLxnUnyb8VW4zBIornTmkGUS7uqFimeRiTS30pjErPk2m+3bgvtglc8UMqgR
	xRnxkS7hDonfN+yx7oQ/7z6XOJpQKM7g1k0OU4ZVzj34yRzdROoX0WhR4yt7WjG6h+OO
	4X7hxPJ+K4YImHr12sj7WVy9nCNeiVdmVfnZsV7b4I2Tjh5v0q5W9Mr8YbA8laTeEHVy
	aC/RxLzR4hnSoMP0zt8XdmxrFNwz2dbSbX6/GULckFd1iutmkYmtNutaZhbnXqicxuOq
	u87Q==
X-Received: by 10.70.15.196 with SMTP id z4mr33079095pdc.20.1423530047736;
	Mon, 09 Feb 2015 17:00:47 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id df7sm7231473pdb.14.2015.02.09.17.00.45
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 09 Feb 2015 17:00:46 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Feb 2015 17:00:37 -0800
Message-Id: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 0/3] initial Forensic packages
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
X-List-Received-Date: Tue, 10 Feb 2015 01:00:56 -0000

Add three forensic applications to layer under there own recipe catagory.

Armin Kuster (3):
  afflib: new package
  libewf: add package
  sleuth: add sleuthkit

 recipes-forensic/afflib/afflib_3.6.6.bb            | 30 ++++++++++++++++++++++
 .../afflib/files/configure_rm_ms_flags.patch       | 18 +++++++++++++
 recipes-forensic/libewf/libewf_20130416.bb         | 26 +++++++++++++++++++
 .../sleuth/files/fix_host_poison.patch             | 23 +++++++++++++++++
 recipes-forensic/sleuth/sleuthkit_4.1.3.bb         | 28 ++++++++++++++++++++
 5 files changed, 125 insertions(+)
 create mode 100644 recipes-forensic/afflib/afflib_3.6.6.bb
 create mode 100644 recipes-forensic/afflib/files/configure_rm_ms_flags.patch
 create mode 100644 recipes-forensic/libewf/libewf_20130416.bb
 create mode 100644 recipes-forensic/sleuth/files/fix_host_poison.patch
 create mode 100644 recipes-forensic/sleuth/sleuthkit_4.1.3.bb

-- 
1.9.1


