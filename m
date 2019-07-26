Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6683E00D30; Thu, 25 Jul 2019 18:25:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30795E003E1
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 18:25:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jul 2019 18:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="254168869"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga001.jf.intel.com with ESMTP; 25 Jul 2019 18:25:22 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.91]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.31]) with mapi id
	14.03.0439.000; Fri, 26 Jul 2019 09:25:22 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "pokybuild@centos7-ty-3.localdomain" <pokybuild@centos7-ty-3.localdomain>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M2.rc1)
Thread-Index: AQHVQty01KjSJgbWpk6qori024yh8abcG3vw
Date: Fri, 26 Jul 2019 01:25:21 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D0434820E69B@PGSMSX109.gar.corp.intel.com>
References: <20190724032103.1375D48154@centos7-ty-3.localdomain>
In-Reply-To: <20190724032103.1375D48154@centos7-ty-3.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzI2NTJjYjAtYTE2YS00ODY2LThlNzUtZWVlOTg4YjAxMzFjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRmorNnhuYmw1SU1XbTRqMjU2VnBFY1JQcUFxSXZGUTlWUmFBR3dxUzlKNjJxT0xIMTJNaHJxaGMrRkFCSjIxTCJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M2.rc1)
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
X-List-Received-Date: Fri, 26 Jul 2019 01:25:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.8_M2.r=
c1.
We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw
3. BSP-Qemu

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone

ETA for completion is next Wednesday, July 31.

-----Original Message-----
From: pokybuild@centos7-ty-3.localdomain [mailto:pokybuild@centos7-ty-3.loc=
aldomain]=20
Sent: Wednesday, July 24, 2019 11:21 AM
To: yocto@yoctoproject.org
Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv <apoorv.=
sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan, Aaron Chun=
 Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat <chin.huat.ang@intel.c=
om>; richard.purdie@linuxfoundation.org; akuster808@gmail.com; sjolley.yp.p=
m@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
Subject: QA notification for completed autobuilder build (yocto-2.8_M2.rc1)


A build flagged for QA (yocto-2.8_M2.rc1) was completed on the autobuilder =
and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.8_M2.rc1


Build hash information:=20

bitbake: f5ea06fc2b6713c9f8e85ecf7cb981ae9a84d896
meta-gplv2: 1e2480e50f34e55bdfd5e06f98441e03a3752d5a
meta-intel: 3227874941bb8f9b706d6057b1de3997881bdffd
meta-mingw: 3fa43aa92f1a1c90304f6f4f49270915d1392cce
oecore: e0c3436241afca93f107e325d1b9ffcdebf706cd
poky: 835f7eac0610325e906591cd81890bebe8627580



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


=20


