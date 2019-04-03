Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2092E00C49; Wed,  3 Apr 2019 01:06:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038D6E00C1E
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 01:06:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2019 01:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,304,1549958400"; d="scan'208";a="131041763"
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
	by orsmga008.jf.intel.com with ESMTP; 03 Apr 2019 01:06:22 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.245]) by
	pgsmsx114.gar.corp.intel.com ([169.254.4.157]) with mapi id
	14.03.0415.000; Wed, 3 Apr 2019 16:06:21 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>, Yi Zhao
	<yi.zhao@windriver.com>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.6.2.rc3)
Thread-Index: AQHU5RakVKZLTlfkuUCaKkcNefZ6EqYqG+Bg
Date: Wed, 3 Apr 2019 08:06:20 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
In-Reply-To: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjAxZDdmODMtZTU1NC00MjY3LWJhYWQtYTM3YmEzNzg3ODA0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidmVobUpMeVU5bGZxT0h3Sm1sZGlLWXg3T1NYbWhWOUdsSzFpZHZzeDFhaWN6QmM4SDFwOTExdHFXOXh4K0pSViJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build	(yocto-2.6.2.rc3)
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
X-List-Received-Date: Wed, 03 Apr 2019 08:06:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Intel and WR YP QA is now working on QA execution for YP build 2.6.2 RC3. W=
e are planning to execute following tests for this cycle:

OEQA-Manual tests for following modules:
1.	SDK
2.	Eclipse-plugin
3.	Kernel
4.	Toaster
5.	Bitbake (oe-core)
6.	Build-appliance
7.	Crops
8.	Compliance-test
9.	Bsp-hw
10.	Bsp-qemu

Runtime auto test for following platforms:

1.	MinnowTurbo 32bit
2.	MinnowTurbot 64 bit
3.	NUC 7
4.	NUC 6
5.	Edgerouter
6.	MPC8315e-rdb
7.	Beaglebone
8.	Qemuarm
9.	Qemuarm-64
10.	Qemuppc
11.	Qemumips
12.	Qemumips64

Other auto tests:=20

1.	Qemu-selftest
2.	Qemu-meta-ide

ETA for completion is Wednesday, 10 April.

Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>Behalf Of Poky Build User
>Sent: Thursday, 28 March, 2019 11:30 AM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; Chan, Aaron Chun Yew
><aaron.chun.yew.chan@intel.com>; akuster808@gmail.com
>Subject: [yocto] QA notification for completed autobuilder build (yocto-2.=
6.2.rc3)
>
>
>A build flagged for QA (yocto-2.6.2.rc3) was completed on the autobuilder =
and is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-2.6.2.rc3
>
>
>Build hash information:
>
>bitbake: 7c1eb51d1e8a4c5f39bf9dddf05fb0b3598da72b
>eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
>eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
>meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>meta-intel: 27dadcfc7bc0de70328b02fecb841608389d22fc
>meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
>meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517
>oecore: 45032e30be70503faeee468159b216031b729309
>poky: faeb366bc3eb322f5f203cfe08dc4cf529a822e9
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

