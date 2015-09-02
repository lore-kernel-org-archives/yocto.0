Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B836E00B31; Wed,  2 Sep 2015 00:29:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Sep 2015 00:29:21 PDT
Received: from mx2.kistler.com (mx2.kistler.com [91.223.79.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68CE9E007C9
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 00:29:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.17,451,1437429600"; 
   d="scan'208";a="2962972"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	02 Sep 2015 09:28:15 +0200
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 09:28:15 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.17,451,1437429600"; 
   d="scan'208";a="2962971"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES128-SHA; 02 Sep 2015 09:28:15 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%14]) with mapi
	id 14.03.0248.002; Wed, 2 Sep 2015 09:28:15 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Changing default SDK path
Thread-Index: AdDlSrMfq1dXNNljR/O0+BOHxIeAdA==
Date: Wed, 2 Sep 2015 07:28:13 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E668012B3B7C12@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Changing default SDK path
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
X-List-Received-Date: Wed, 02 Sep 2015 07:29:24 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I'm building an SDK and decided to adapt the default SDK path for each rele=
ase to allow users to have the SDK of multiple releases installed in parall=
el without them changing the path during installation.

According to the Yocto Reference Manual, this can be achieved via the SDKPA=
TH variable. Unfortunately changing this variable breaks the generated SDK =
installer.

I'm using Yocto 1.7.1 and generate the SDK with the following command:
	MACHINE=3Dmy-machine bitbake core-image-myimage  -c populate_sdk=20

First of all, when building the SDK from scratch (fresh build directory), t=
he generated installer looks complete, but when trying to run it, I get the=
 following error:
       	Enter target directory for SDK (default: /opt/mysdk-v2/):=20
	You are about to install the SDK to "/ opt/mysdk-v2". Proceed[Y/n]?
	Extracting SDK...done
	Setting it up...ls: cannot access / opt/mysdk-v2/environment-setup-*: No s=
uch file or directory

Additionally, if I then decide to change the SDK path and generate it NOT f=
rom scratch, the SDK installer is much smaller, meaning some packages where=
 build for the original SDK path only and therefore not installed, if the p=
ath changed.

Finally if I revert to use the default SDK path, but don't build it from sc=
ratch, the installer works, but the generated file is slightly smaller (~10=
0K) than the SDK build from scratch.

Is this a bug or maybe SDKPATH isn't meant to be changed?

Best regards

Isak




