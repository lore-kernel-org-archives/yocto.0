Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2614E00799; Mon, 11 Aug 2014 20:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485B4E0078E
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:44 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fa1so12299722pad.27
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ChNK/02pCXRiZ1nVGDbRbaED0S0HNhhw8CDh5uYXdvM=;
	b=bqXie5dgNauIw6RbpQNnea4g5+vp/zoAjAP7zl9HmBuz/VMqEW5O4ZoTzJk5NBfQdk
	j1JU3Zl2T8BILacB9oFsF9eNPqOZyN23ciTGdHtr3V0qRPkXo1sL2jZlGWI0KvXk4/ya
	Sn6GBm1CUIzaaoqaRbSxId2xrs88Oh8xGMBiH40nT3T7YNWiCX3qvjhqPqdUwpfKGcNH
	cFaBUX/OBJFV4gxgHSWNhvcorMOhEk+jU/7fw5cGXiYHCrWEDL90PbIx7/krsE9FjEwH
	jPqhesTO9sqhwVVredeDXchusSQHl8fwS72VLYHj481EToIinc+vbW/Y6XQMU/JT7IJU
	zy9A==
X-Gm-Message-State: ALoCoQmsMXrnDyObqshWEZGhgWFDIxzP83gJkbRbv/We+bbzHSxE2FPXDcP4HH8rv3mOOYk3zUPO
X-Received: by 10.70.61.67 with SMTP id n3mr1769037pdr.90.1407813403979;
	Mon, 11 Aug 2014 20:16:43 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	cm7sm19863403pdb.74.2014.08.11.20.16.42 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Aug 2014 20:16:43 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Aug 2014 20:16:37 -0700
Message-Id: <1407813399-31942-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 0/2] Adding Tripwire
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
X-List-Received-Date: Tue, 12 Aug 2014 03:16:49 -0000

Add new recipe for tripwire 

Armin Kuster (2):
  tripwire: Add new package to layer
  tripwire: Add files for package support

 recipes-security/tripwire/files/tripwire.cron   |    8 +
 recipes-security/tripwire/files/tripwire.sh     |    9 +
 recipes-security/tripwire/files/tripwire.txt    |   69 ++
 recipes-security/tripwire/files/twcfg.txt       |   15 +
 recipes-security/tripwire/files/twinstall.sh    |  320 +++++++
 recipes-security/tripwire/files/twpol-yocto.txt | 1107 +++++++++++++++++++++++
 recipes-security/tripwire/tripwire_2.4.2.2.bb   |   78 ++
 7 files changed, 1606 insertions(+)
 create mode 100644 recipes-security/tripwire/files/tripwire.cron
 create mode 100644 recipes-security/tripwire/files/tripwire.sh
 create mode 100644 recipes-security/tripwire/files/tripwire.txt
 create mode 100644 recipes-security/tripwire/files/twcfg.txt
 create mode 100644 recipes-security/tripwire/files/twinstall.sh
 create mode 100644 recipes-security/tripwire/files/twpol-yocto.txt
 create mode 100644 recipes-security/tripwire/tripwire_2.4.2.2.bb

-- 
1.9.1


