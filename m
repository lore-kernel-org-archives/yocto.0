Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64CADE00821; Mon,  1 Sep 2014 19:51:11 -0700 (PDT)
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
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D78E0074B
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 19:51:08 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id fa1so13239763pad.26
	for <yocto@yoctoproject.org>; Mon, 01 Sep 2014 19:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Ogn3SgnjJzuMEMN2b8mFxtNPDobcsz8Ilgqeo3fCOdM=;
	b=HfZOLWBGN1asvwt2c78KE0uTxwQkQR83tLsfDnxedvDoVP8i7oyA4naTZcgPkE+Kba
	FQIAY6E01JVoVMyIE49VCO24P+EdNU1OcXnK32uKAGHllCZSS7hVGEUsAca6JPB4DeED
	SuiFHQHUyAv3lPg50vttF5OtWSdUluGl/7Yv++ldx0S0hbnZw8XsgAi+CqdYnpg1t5l9
	O3IFqRSiRu1hA/qXXQGjvD4dPS3+UPIUECRqnI0MHRJDL2Iw4NkSDoaaB9BpNNT0N3/2
	EidRbooeATvb0KBlcMVMT9qwJ7pGezuekEn38KCFY7crNoWYjemxPFQKlLwgLD8kJn4s
	BDvQ==
X-Received: by 10.68.68.131 with SMTP id w3mr41186439pbt.90.1409626268275;
	Mon, 01 Sep 2014 19:51:08 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id ah2sm7334695pad.10.2014.09.01.19.51.06
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 01 Sep 2014 19:51:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Sep 2014 19:51:00 -0700
Message-Id: <1409626263-14379-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 0/3] cleanup and update
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
X-List-Received-Date: Tue, 02 Sep 2014 02:51:11 -0000


Armin Kuster (3):
  libnet-ssleay-perl: remove from layer
  layer.conf: add layer depends.
  nmap: update to version 6.47

 conf/layer.conf                                  |  2 ++
 recipes-security/nmap/{nmap_6.46.bb => nmap.inc} |  8 +-------
 recipes-security/nmap/nmap_6.47.bb               | 10 ++++++++++
 recipes-security/perl/libnet-ssleay-perl_1.55.bb | 24 ------------------------
 4 files changed, 13 insertions(+), 31 deletions(-)
 rename recipes-security/nmap/{nmap_6.46.bb => nmap.inc} (88%)
 create mode 100644 recipes-security/nmap/nmap_6.47.bb
 delete mode 100644 recipes-security/perl/libnet-ssleay-perl_1.55.bb

-- 
1.9.1


