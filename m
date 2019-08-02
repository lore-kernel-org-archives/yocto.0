Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6402E00DA9; Thu,  1 Aug 2019 18:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794BCE00BD5
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 18:47:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Aug 2019 18:47:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="324428361"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 18:47:34 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.91]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.2]) with mapi id
	14.03.0439.000; Fri, 2 Aug 2019 09:47:31 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: Pokybuild User <pokybuild@debian10-ty-3.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
Thread-Index: AQHVSHpxZH06QfVMLkWrptAVtpU0habnFxoQ
Date: Fri, 2 Aug 2019 01:47:30 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04348211190@PGSMSX109.gar.corp.intel.com>
References: <20190801150425.40A8420251@debian10-ty-3.yocto.io>
In-Reply-To: <20190801150425.40A8420251@debian10-ty-3.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzI2ZmJiZjgtY2QwNC00NDE1LWEwOWYtOGExZTEwZDU5ZWM5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUEhvZDlEdWl3R0l3Y0k2ampPeHBWZk9aZ0x5OGJrU2czWGtKeTh5ZWNUa2I4MUQ2SXlMcCtTODduOE14bHFFSSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
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
X-List-Received-Date: Fri, 02 Aug 2019 01:47:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.6.3.rc=
1.
We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw
3. BSP-Qemu

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. NUC 7
3. NUC 6
4. Edgerouter
5. MPC8315e-rdb
6. Beaglebone

ETA for completion is next Wednesday, August 07.

-----Original Message-----
From: Pokybuild User [mailto:pokybuild@debian10-ty-3.yocto.io]=20
Sent: Thursday, August 1, 2019 11:04 PM
To: yocto@yoctoproject.org
Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv <apoorv.=
sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan, Aaron Chun=
 Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat <chin.huat.ang@intel.c=
om>; richard.purdie@linuxfoundation.org; akuster808@gmail.com; sjolley.yp.p=
m@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
Subject: QA notification for completed autobuilder build (yocto-2.6.3.rc1)


A build flagged for QA (yocto-2.6.3.rc1) was completed on the autobuilder a=
nd is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.6.3.rc1


Build hash information:=20

bitbake: 4ce92f43eeac6a4bfd06e8567fa6891614b5b3b0
meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
meta-intel: 278f0b5fa2f1836635178bdc770e035d77ae03c7
meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
oecore: d3d3f443039b03f1200a14bfe99f985592632018
poky: cb26830f765f03309c0663352cc5849491271be8



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


=20

