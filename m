Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C810CE008A7; Wed, 21 Jan 2015 11:31:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [208.65.145.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 264 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Jan 2015 11:31:24 PST
Received: from p02c12o145.mxlogic.net (p02c12o145.mxlogic.net [208.65.145.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A05E0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 11:31:24 -0800 (PST)
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p02c12o145.mxlogic.net(mxl_mta-8.2.0-3) with ESMTP id
	09effb45.2ae667dd4940.126784.00-562.364965.p02c12o145.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 21 Jan 2015 12:31:28 -0700 (MST)
X-MXL-Hash: 54bffe90161cafb3-7da738c8eb01007b6f710d669613e57724197e52
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p02c12o145.mxlogic.net(mxl_mta-8.2.0-3)
	with ESMTP id e7dffb45.0.123926.00-375.356307.p02c12o145.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 21 Jan 2015 12:26:55 -0700 (MST)
X-MXL-Hash: 54bffd7f5518218d-351b071310d5e5671fcc242b27afd112f89ff1fd
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX02.meteorcomm.lan (10.20.0.35) with Microsoft SMTP Server (TLS)
	id 15.0.847.32; Wed, 21 Jan 2015 11:26:41 -0800
Received: from MCCRENEX01.MeteorComm.lan ([fe80::90f9:6cac:2852:46c3]) by
	MCCRENEX01.meteorcomm.lan ([fe80::90f9:6cac:2852:46c3%14]) with mapi id
	15.00.0847.030; Wed, 21 Jan 2015 11:26:41 -0800
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: Philip Balister <philip@balister.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] CMake in populate_sdk
Thread-Index: AdA04zmjnTWEVsgVRSumFgOR490DBwAeXIyAABS4aGA=
Date: Wed, 21 Jan 2015 19:26:41 +0000
Message-ID: <9e7eb6c8cd2346bc96c44d70b390f8c1@MCCRENEX01.meteorcomm.lan>
References: <206093a14a0a41e78260f711393dfd79@MCCRENEX01.meteorcomm.lan>
	<54BF00D5.3000104@balister.org>
In-Reply-To: <54BF00D5.3000104@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=CdMc5dbl c=1 sm=1 tr=0 a=TjRZ7Zekk1wF9OVcTBmBEQ==]
X-AnalysisOut: [:117 a=TjRZ7Zekk1wF9OVcTBmBEQ==:17 a=QP8GsjE2h34A:10 a=BLc]
X-AnalysisOut: [eEmwcHowA:10 a=kj9zAlcOel0A:10 a=xqWC_Br6kY4A:10 a=oLoTwKZ]
X-AnalysisOut: [2AAAA:8 a=YlVTAMxIAAAA:8 a=YNv0rlydsVwA:10 a=nJxTiJNnAAAA:]
X-AnalysisOut: [8 a=iGHA9ds3AAAA:8 a=NEAV23lmAAAA:8 a=wkuj6DNFlZ4p3AnsCgkA]
X-AnalysisOut: [:9 a=CjuIK1q_8ugA:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015012115); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.138]
Subject: Re: CMake in populate_sdk
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
X-List-Received-Date: Wed, 21 Jan 2015 19:31:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Philip Balister [mailto:philip@balister.org]
> Sent: Tuesday, January 20, 2015 5:29 PM
> To: Benjamin Fleming; yocto@yoctoproject.org
> Subject: Re: [yocto] CMake in populate_sdk
>=20
> On 01/20/2015 02:42 PM, Benjamin Fleming wrote:
> > How do I add packages to the populate_sdk option?
> Something like this:
>=20
> https://github.com/balister/meta-sdr/blob/master/recipes-
> images/images/native-sdk.inc
>=20
Ok, adding TOOLCHAIN_HOST_TASK_append =3D " nativesdk-cmake" seems to work;=
 it adds cmake to the SDK.
One more question; when building using the SDK, my cmake-based project fail=
s to find required libraries; presumably it needs a toolchain.cmake file. I=
s there some way for the populate_sdk task to generate the toolchain.cmake =
files also? (I see that it generates something for autotools)

Thanks, Ben=20

> Philip
>=20
> >
> > -Ben Fleming
> >

