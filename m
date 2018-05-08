Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C358E00C88; Tue,  8 May 2018 02:33:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A2BE00CE7
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 02:33:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id BE3C51806E;
	Tue,  8 May 2018 11:33:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id LspkZvLxkCeg; Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 329A3183AD;
	Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1E9521E097;
	Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 11E291E095;
	Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by thoth.se.axis.com (Postfix) with ESMTP id 04DFF30D3;
	Tue,  8 May 2018 11:33:06 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 8 May 2018 11:33:05 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Tue, 8 May 2018 11:33:05 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, Mirza Krak
	<mirza.krak@gmail.com>
Thread-Topic: [yocto] ROOTFS_RPM_DEBUG undocumented
Thread-Index: AQHT4suRPUTZD1SdN0uKkn1NbA0AWKQd1zEAgAGMfAD///+ZAIAEeiqAgAATOwCAAahKgA==
Date: Tue, 8 May 2018 09:33:05 +0000
Message-ID: <166e9515231b4c9da6395957d58a75bb@XBOX02.axis.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
	<ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
	<CALw8SCW8hYUE4pz2CfHprZT-9+4c8wYP2rudWwj9rJC71E58ug@mail.gmail.com>
	<d21584ce-ab80-ee64-16bc-81fa1a07d978@linux.intel.com>
In-Reply-To: <d21584ce-ab80-ee64-16bc-81fa1a07d978@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Tue, 08 May 2018 09:33:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Alexander Kanavin
> Sent: den 7 maj 2018 12:12
> To: Mirza Krak <mirza.krak@gmail.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] ROOTFS_RPM_DEBUG undocumented
>=20
> On 05/07/2018 12:03 PM, Mirza Krak wrote:
> > I have also been bitten by rpm performance issues in docker and glad
> > that I found this. I am in the process of verifying above (on pyro
> > branch).
> >
> > Is this patch on its way to pyro and rocko branches?
>=20
> As far as I know, no. You are welcome to backport and submit.
>=20
> Alex

FYI, the already applied patch only solves half the problem. I have an=20
updated version that solves all of it that I am preparing for publication.=
=20
I only need to make some verifications first...

//Peter


