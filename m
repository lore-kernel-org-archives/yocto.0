Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33EF4E00B68; Thu,  8 May 2014 10:01:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f43.google.com (unknown [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B23CAE00B3D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:01:12 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id d17so1927423eek.30
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=3oqNQ87EbeZEmm4oLwaVbMQlBzGbypixmFXIlnG0hLw=;
	b=RYRSdLBRyXjcd7HQnqbDIvXbR7mLqrbYFaQbYQvs1O2Wk/Mb6xByKBxDfuZF4RY4in
	qbUvQILADUNv1sBTweB+eNYg6UHT5RIdcBgExFUeHYvLsjozzHBvAeCMWKhoo6l1eCys
	6wkvm9yzKcFx7FvcKj1K3LJcHjOX0Q7bwVw1WI/IUPVNimY2B3hdT2ihjCHf9oixVwKE
	TV2RXdDXbryKllCeNEVg8BGh5Mqw8/yi96h8orsDw76ccGlDKaYmT9Djn+tH7e5YT0s2
	K+qaKBrUqukX6SEm67PtA0IbHrpMfLHpfdixmnpXpGClST/BLevmvnGWjp3MKr0n/CCo
	CEEg==
X-Received: by 10.14.184.66 with SMTP id r42mr7135455eem.84.1399568093549;
	Thu, 08 May 2014 09:54:53 -0700 (PDT)
Received: from localhost.localdomain (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id x42sm5390510eel.41.2014.05.08.09.54.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 May 2014 09:54:52 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 16:54:42 +0000
Message-Id: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.9.2
Subject: [opkg-utils][PATCH 0/3] Patches to support hierarchical package feeds
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
X-List-Received-Date: Thu, 08 May 2014 17:01:28 -0000

I'm posting these patches in the hope that someone other than me has some memory
of how the internals of opkg-utils work and can give me a quick review. I can
merge these myself but as they will affect all ipk feeds created by OpenEmbedded
I think it's worth at least trying to get a review on the changes first.

These changes are needed to support alternative feed layouts where package files
may not reside in the same directory as the 'Packages' index file. A patch to
add the option of creating such an alternative layout will also be posted to the
openembedded-core mailing list for comment.

These patches have been tested on qemuarm with opkg pointed at feeds created
with these patches applied. It has been confirmed that 'opkg update && opkg
install ncurses' works correctly where ncurses was not previously installed.

Paul Barker (3):
  opkg.py: Allow filename to be a relative path
  opkg-make-index: Recursively scan for packages
  opkg-update-index: Emit relative path to package file

 opkg-make-index   | 29 ++++++++++++++++++-----------
 opkg-update-index |  2 +-
 opkg.py           | 12 ++++++++++--
 3 files changed, 29 insertions(+), 14 deletions(-)

-- 
1.9.2


