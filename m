Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E99CEE00C8D; Fri,  1 Apr 2016 02:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.223.79.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0030]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Apr 2016 02:35:59 PDT
Received: from mx2.kistler.com (mx2.kistler.com [91.223.79.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DDF8E00C31
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 02:35:59 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.24,427,1454972400"; 
   d="scan'208";a="3690694"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	01 Apr 2016 11:34:53 +0200
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 11:34:53 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.24,426,1454972400"; d="scan'208";a="21723487"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/AES256-SHA; 01 Apr 2016 11:34:53 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::6c9f:20c0:64d9:3031%11]) with mapi
	id 14.03.0266.001; Fri, 1 Apr 2016 11:34:53 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to enforce installation of image specific config file/package
Thread-Index: AdGL+a2OwlJWzhvETr2eLF8MlZ782A==
Date: Fri, 1 Apr 2016 09:34:52 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: How to enforce installation of image specific config file/package
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
X-List-Received-Date: Fri, 01 Apr 2016 09:36:02 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I've got a package "A" that has a runtime dependency to a configuration fil=
e. This configuration file is image specific. For each image I've got a spe=
cific configuration package "config-image-X" that installs this needed conf=
iguration file and I build multiple image in the same build directory.
How can I enforce that each image containing package "A" also installs an i=
mage specific configuration package?=20
I've tried with virtual providers, but then at the second image it always t=
ried to install the virtual provider from the first image as well, which le=
ads to the following failure during the rootfs task:

check_data_file_clashes: Package config-image-1 wants to install file /home=
/root/build/build_dev/tmp/work/poky-linux-gnueabi/core-image-test/1.0-r0/ro=
otfs/usr/bin/config
	But that file is already provided by package  * config-image-2


I'm using yocto jethro.

Best regards

Isak

