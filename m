Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2E53E00C49; Tue,  9 Apr 2019 20:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	https://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08EF2E00C1E
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 20:19:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Apr 2019 20:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,331,1549958400"; d="scan'208";a="222090186"
Received: from kmsmsx157.gar.corp.intel.com ([172.21.138.134])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2019 20:19:29 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	kmsmsx157.gar.corp.intel.com ([169.254.5.17]) with mapi id
	14.03.0415.000; Wed, 10 Apr 2019 11:19:28 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"'richard.purdie@linuxfoundation.org'"
	<richard.purdie@linuxfoundation.org>, 
	"'sjolley.yp.pm@gmail.com'" <sjolley.yp.pm@gmail.com>, 'Yi Zhao'
	<yi.zhao@windriver.com>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.5.3.rc3)
Thread-Index: AQHU5Snl1ZSjeHj0wUOudq38k2h+fKYx/e1A
Date: Wed, 10 Apr 2019 03:19:27 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DD05F7@PGSMSX110.gar.corp.intel.com>
References: <20190328054635.AA2F35AAC3B@debian9-ty-2.yocto.io>
In-Reply-To: <20190328054635.AA2F35AAC3B@debian9-ty-2.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTZlYTU3NDgtNTBjOS00NjAyLWExMjItNjIzNTI5MDZhNDQ5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWm1jbXRiNEUzV0xKNjEzQWxXcTBKUHc5b2g3UXF5Sk5ZSlNPXC95QjRCVTIxQjFmbnZhU3FcL2hmaXBCYStzXC9oNCJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build	(yocto-2.5.3.rc3)
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
X-List-Received-Date: Wed, 10 Apr 2019 03:19:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is now working on QA execution for YP build 2.5.3.RC3. W=
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

Other auto tests:

1.	Qemu-selftest
2.	Qemu-meta-ide

ETA for completion is Thursday, 18 April.

Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>Behalf Of Poky Build User
>Sent: Thursday, 28 March, 2019 1:47 PM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; Chan, Aaron Chun Yew
><aaron.chun.yew.chan@intel.com>; akuster808@gmail.com
>Subject: [yocto] QA notification for completed autobuilder build (yocto-2.=
5.3.rc3)
>
>
>A build flagged for QA (yocto-2.5.3.rc3) was completed on the autobuilder =
and is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-2.5.3.rc3
>
>
>Build hash information:
>
>bitbake: c0af6c81f8d5487ea2cef54a78fd1cb1d0dc6520
>eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
>eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
>meta-gplv2: d7687d404bbc9ba3f44ec43ea8828d9071033513
>meta-intel: ba5f7ecd26630b74b6338c1828847a64ab172453
>meta-mingw: 628dcfed62ce8dcc408e5b4a5e5c0aaa921b20ad
>meta-qt3: 02f273cba6c25f5cf20cb66d8a417a83772c3179
>meta-qt4: 8e791c40140460825956430ba86b6266fdec0a93
>oecore: 0a2db923fd17019d07d88204b355aa46590f0b97
>poky: 84b78df15ff77b2fe2aeb62fcaa265dce7ebfbbb
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

