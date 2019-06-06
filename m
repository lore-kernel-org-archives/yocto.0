Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 940A7E00D61; Thu,  6 Jun 2019 07:18:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [91.223.79.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Jun 2019 07:18:04 PDT
Received: from mx1.kistler.com (mx1.kistler.com [91.223.79.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F8BE00D11
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 07:18:04 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,559,1557180000"; d="scan'208";a="17971349"
Received: from kihagsepp01.int.kistler.com ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	06 Jun 2019 16:17:00 +0200
Received: from mx1.kistler.com (kihagciip01.int.kistler.com [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 16:17:00 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.63,559,1557180000"; d="scan'208";a="17971348"
Received: from sw-win-exch-2.int.kistler.com ([192.168.100.96])
	by mx1.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	06 Jun 2019 16:16:59 +0200
Received: from SW-WIN-EXCH-2.int.kistler.com (192.168.100.96) by
	SW-WIN-EXCH-2.int.kistler.com (192.168.100.96) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1466.3; Thu, 6 Jun 2019 16:16:59 +0200
Received: from SW-WIN-EXCH-2.int.kistler.com ([fe80::ccdb:f438:cac9:d73f]) by
	SW-WIN-EXCH-2.int.kistler.com ([fe80::ccdb:f438:cac9:d73f%9]) with
	mapi id 15.01.1466.012; Thu, 6 Jun 2019 16:16:59 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Necessary changes between SDK and eSDK builds
Thread-Index: AdUccnkZY9iQ97uNSYCP8LwCxYUjCw==
Date: Thu, 6 Jun 2019 14:16:59 +0000
Message-ID: <cffd0aba14964a308553d1eaca51fde5@kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.89]
x-c2processedorg: 78a97207-3cfa-406d-a777-069c09c1300a
MIME-Version: 1.0
Subject: Necessary changes between SDK and eSDK builds
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
X-List-Received-Date: Thu, 06 Jun 2019 14:18:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I'm using yocto thud 2.6.1 always build & provide sdk's to our customers wi=
thout problem.
Now a customer requested an eSDK instead.

According to the manual (https://www.yoctoproject.org/docs/2.1/sdk-manual/s=
dk-manual.html#sdk-building-an-sdk-installer), this should work identically=
 by simply using "-c populate_sdk_ext".

Unfortunately the tasks do_populate_sdk_ext fails with the following error =
message:

....
Exception: FileNotFoundError: [Errno 2] No such file or directory: '/home/r=
oot/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboard/1.0-r0=
/sdk-ext/image//opt/myboard/2.6.1/conf/local.conf.bak' -> '/home/root/build=
/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboard/1.0-r0/sdk-ext/=
image//opt/myboard/2.6.1/conf/local.conf'

ERROR: core-image-myboard-1.0-r0 do_populate_sdk_ext: Function failed: copy=
_buildsystem
ERROR: Logfile of failure stored in: /home/root/build/dev/tmp/work/myboard-=
poky-linux-gnueabi/core-image-myboard/1.0-r0/temp/log.do_populate_sdk_ext.1=
7712
ERROR: Task (/home/root/yocto/meta-evalboard/recipes-core/images/core-image=
-myboard.bb:do_populate_sdk_ext) failed with exit code '1'

What do I need to change in order to build the extensible SDK?

Best regards
Isak

