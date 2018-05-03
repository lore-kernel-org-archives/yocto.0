Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79AC7E009DF; Thu,  3 May 2018 06:37:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AED5E008D2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 06:37:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 3302A18530;
	Thu,  3 May 2018 15:37:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id K2EyY2Kvqmup; Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id A5A5918532;
	Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 94AAC1E07E;
	Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 88FEE1E079;
	Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id 7CE94259E;
	Thu,  3 May 2018 15:37:03 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Thu, 3 May 2018 15:37:03 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Thu, 3 May 2018 15:37:03 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, Paulo Neves
	<ptsneves@gmail.com>, Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [yocto] ROOTFS_RPM_DEBUG undocumented
Thread-Index: AQHT4suRPUTZD1SdN0uKkn1NbA0AWKQd1zEAgAAphHA=
Date: Thu, 3 May 2018 13:37:03 +0000
Message-ID: <50b98492ad0d40a0b8f32933c371125f@XBOX02.axis.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
In-Reply-To: <70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
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
X-List-Received-Date: Thu, 03 May 2018 13:37:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Alexander Kanavin
> Sent: den 3 maj 2018 15:04
> To: Paulo Neves <ptsneves@gmail.com>; Yocto list discussion
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] ROOTFS_RPM_DEBUG undocumented
>=20
> On 05/03/2018 01:42 PM, Paulo Neves wrote:
> > # Add ROOTFS_RPM_DEBUG to the documentation;
>=20
> I'd rather get rid of it, the less variables the better :)
>=20
> > # Detect if we are running with debug output and enable the debugging
> > output. This is the most elegant solution but I do not know how to
> > detect if debug log level is turned on;
>=20
> I don't think you are meant to detect that; bitbake's debug level is
> not
> meant to affect what is being printed, but merely whether it's printed
> or discarded.
>=20
> > # Have dnf always print in verbose mode and print the output to
> > bb.debug instead of bb.note.
>=20
> I think this is the best solution actually.

I disagree with changing bb.note to bb.debug for this. It is very good=20
to be able to look in log.do_rootfs to see what dnf has done (we have=20
ROOTFS_RPM_DEBUG set by default). Changing the output to debug level=20
would mean having to run bitbake with -D, which is anything but=20
desirable.

> > I am happy to provide a patch upon decision or suggestions.
>=20
> Thank you :) Do measure the performance before and after as we don't
> want to introduce a significant slowdown here.
>=20
> Alex

//Peter


