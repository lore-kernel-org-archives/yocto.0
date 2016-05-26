Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CEFAE00DDA; Thu, 26 May 2016 14:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81424E0093E
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 14:41:07 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 15:41:06 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 15:41:05 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000; Thu, 26 May 2016 15:41:05
	-0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] DEPENDS problem with core-image-full-cmdline
Thread-Index: AQHRt2fjPGIqNwxbtk+i7DSj2Ouu6w==
Date: Thu, 26 May 2016 21:41:05 +0000
Message-ID: <ca3c7769bd86475eb2a571a7d9f5eae4@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
	<2580036.Ct9Nm9nA8M@peggleto-mobl.ger.corp.intel.com>
	<1896354.Q2XAFcVMkI@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 21:41:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

=0A=
>> I guess we don't cover that explicitly, other than in the reference manu=
al=0A=
>> entries for each variable. We probably need a small section on dependenc=
ies=0A=
>> in the "Writing a new Recipe" section:=0A=
>>=0A=
>>=0A=
>> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-=
rec=0A=
>> ipe-writing-a-new-recipe=0A=
>>=0A=
>> That can cover the difference between build-time and runtime dependencie=
s=0A=
>> and the usage of DEPENDS and RDEPENDS respectively.=0A=
>=0A=
> FYI at Scott's suggestion I've filed a bug to cover updating the docs:=0A=
>=0A=
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9679=0A=
=0A=
This will be very helpful. Thanks all!=0A=
=0A=

