Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06657E00869; Mon, 29 Sep 2014 00:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BDEE00861
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 00:19:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Sep 2014 00:19:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,618,1406617200"; d="scan'208";a="606848683"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2014 00:19:36 -0700
Received: from irsmsx154.ger.corp.intel.com (163.33.192.96) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 29 Sep 2014 08:19:35 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.124]) with mapi id
	14.03.0195.001; Mon, 29 Sep 2014 08:19:35 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: atulkumar singh <atul.singh008@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  Release Candidate Build for yocto-1.7.rc1 now available.
Thread-Index: AQHP27W4avOXRHXjE069qiddWqlsCw==
Date: Mon, 29 Sep 2014 07:19:34 +0000
Message-ID: <D04EE22F.B56F%alexandru.c.georgescu@intel.com>
References: <9da1f854e6334a388820b4c09a6071ce@HKNPR03MB354.apcprd03.prod.outlook.com>
	<CAH21_vGJ0EMGhvdbNXGNULSUkPwhzYyQXagBHKyGpsU6hoLF9Q@mail.gmail.com>
In-Reply-To: <CAH21_vGJ0EMGhvdbNXGNULSUkPwhzYyQXagBHKyGpsU6hoLF9Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.4.140807
x-originating-ip: [10.237.108.66]
MIME-Version: 1.0
Subject: Re: Release Candidate Build for yocto-1.7.rc1 now available.
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
X-List-Received-Date: Mon, 29 Sep 2014 07:19:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <16FFD641EDF99547A1EB443AC759C218@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Atul,
M3 was released so yes, the build below is a weekly build for M4. This week=
 is starting the 1.7_M4.rc1 build according to the Yocto calendar: https://=
wiki.yoctoproject.org/wiki/YoctoCalendar

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

From: atulkumar singh <atul.singh008@gmail.com<mailto:atul.singh008@gmail.c=
om>>
Date: Wednesday 24 September 2014 16:50
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Release Candidate Build for yocto-1.7.rc1 now available.


Hi All,



Please let me know whether the release candidate mentioned below with commi=
t is for 1.7M4?



Regards,

Atul



************************************************************************

A release candidate build for yocto-1.7.rc1 is now available at:



http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc1





Please begin QA on this build as soon as possible.





Build hash information:

meta-intel : a369fa8f2d76528cb296ef9314e613e26585d54d

meta-fsl-arm : 2680f54d02fa6efe4cd2aaef7bda9e46cf3e9672

meta-minnow : 238a45e9da8bbfff7a6af220b48c11cabd31e01c

meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45

meta-fsl-ppc : 478f29c3e97760f2ff443227950ce21d9510a280

poky : 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3





This is an automated message from

The Yocto Project Autobuilder

Git: git://git.yoctoproject.org/yocto-autobuilder<http://git.yoctoproject.o=
rg/yocto-autobuilder>

Email: elizabeth.flanagan at intel.com<http://intel.com>

