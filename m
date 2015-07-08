Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF3FE00978; Wed,  8 Jul 2015 10:52:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [208.65.144.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from p01c11o147.mxlogic.net (p01c11o147.mxlogic.net [208.65.144.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB81E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 10:52:34 -0700 (PDT)
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p01c11o147.mxlogic.net(mxl_mta-8.4.0-1) with ESMTP id
	6636d955.2b20baa10940.4527178.00-585.12029372.p01c11o147.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 08 Jul 2015 11:52:38 -0600 (MDT)
X-MXL-Hash: 559d636639c2aad5-91df98502bb491012e2d8e34c3f44a9b1683660c
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p01c11o147.mxlogic.net(mxl_mta-8.4.0-1)
	with ESMTP id 1636d955.0.4527164.00-338.12029193.p01c11o147.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 08 Jul 2015 11:52:34 -0600 (MDT)
X-MXL-Hash: 559d63621c9c147b-afd09f5a4286b3c57b521cc265f055ddaa0d1c74
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX02.meteorcomm.lan (10.20.0.35) with Microsoft SMTP Server (TLS)
	id 15.0.1076.9; Wed, 8 Jul 2015 10:52:32 -0700
Received: from MCCRENEX01.MeteorComm.lan ([fe80::752d:6914:6d6:db29]) by
	MCCRENEX01.meteorcomm.lan ([fe80::752d:6914:6d6:db29%14]) with mapi id
	15.00.1076.000; Wed, 8 Jul 2015 10:52:32 -0700
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Andre McCurdy
	<armccurdy@gmail.com>
Thread-Topic: [yocto] populate_sdk and kernel headers
Thread-Index: AdC5BnS9N7dIQ8PTStSMJIydFi1wEQATMN2AAA6dJyAAE9HHgAAOpDow
Date: Wed, 8 Jul 2015 17:52:32 +0000
Message-ID: <83d804f563874121923a903d13d3d0cf@MCCRENEX01.meteorcomm.lan>
References: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>
	<CAJ86T=UQ1wmWiSJmhSzS97Z5y5bDFqhX0Bv5e38Q2jRf2bLSww@mail.gmail.com>
	<12506c4bd3d74f129ccf68753b0b280c@MCCRENEX01.meteorcomm.lan>
	<559D5BAF.4020008@windriver.com>
In-Reply-To: <559D5BAF.4020008@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=TJZRSjVa c=1 sm=1 tr=0 a=TjRZ7Zekk1wF9OVcTBmBEQ==]
X-AnalysisOut: [:117 a=TjRZ7Zekk1wF9OVcTBmBEQ==:17 a=oLoTwKZ2AAAA:8 a=YlVT]
X-AnalysisOut: [AMxIAAAA:8 a=QP8GsjE2h34A:10 a=kj9zAlcOel0A:10 a=xqWC_Br6k]
X-AnalysisOut: [Y4A:10 a=zOBTXjUuO1YA:10 a=t7CeM3EgAAAA:8 a=iGHA9ds3AAAA:8]
X-AnalysisOut: [ a=pGLkceISAAAA:8 a=NEAV23lmAAAA:8 a=twlKoDnDYdFlU-9aePwA:]
X-AnalysisOut: [9 a=CjuIK1q_8ugA:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015070809); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.138]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk and kernel headers
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
X-List-Received-Date: Wed, 08 Jul 2015 17:52:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok,
Well I can live with the complete source being in the SDK.=20

Thank you for the help
-Ben

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, July 08, 2015 10:20 AM
> To: Benjamin Fleming; Andre McCurdy
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] populate_sdk and kernel headers
>=20
> On 2015-07-08 1:05 PM, Benjamin Fleming wrote:
> > Ok,
> > adding kernel-devsrc to my IMAGE_INSTALL caused the kernel source to
> be included in the SDK. Unfortunately, it is now also included in the tar=
get
> image.
> > I found adding kernel-devsrc instead to TOOLCHAIN_TARGET_TASK gave
> me
> > what I wanted (/usr/src/kernel in the SDK but NOT in the target image)
> >
> > Also, I really only need the kernel headers (similar to the linux-heade=
rs
> packages in Ubuntu) for developing out-of-source kernel modules. Is there=
 is
> a different package I should be using?
> >
>=20
> The linux-libc-headers are the uapi exported headers, but as for the sour=
ce
> for module builds, it is currently unified in the kernel-devsrc package.
>=20
> We have a long history with the packaging of the sources, and what to exp=
ort
> where .. and even the ordering of that packaging. So while splitting out =
the
> headers may seem simple, it requires a bit more finesse of getting the
> headers, the right amount of script and Kbuild support to get it exactly =
right.
>=20
> By keeping the two together, we ensure that we have enough to meet all
> development tasks.
>=20
> There are some enhancements for this in flight for the 1.9 release, so it=
 is
> something that we are considering .. just keeping those existing use case=
s
> and workflows from breaking is the sticky part.
>=20
> Cheers,
>=20
> Bruce
>=20
> > Thanks,
> > Ben
> >
> >> -----Original Message-----
> >> From: Andre McCurdy [mailto:armccurdy@gmail.com]
> >> Sent: Tuesday, July 07, 2015 5:54 PM
> >> To: Benjamin Fleming
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] populate_sdk and kernel headers
> >>
> >> On Tue, Jul 7, 2015 at 4:16 PM, Benjamin Fleming
> >> <bfleming@meteorcomm.com> wrote:
> >>> Hello,
> >>> I want my kernel headers to be included in the SDK output when I run
> >> bitbake myimage -c populate_sdk. I expect to see the headers in my
> >> installed SDK folder such as
> >> <sdk>/sysroot/<target_mach>/usr/src/kernel; however, I don't see
> >> anything there. Also, I don't want the headers appearing on the target=
.
> >>>
> >>> In my recipe I have added IMAGE_INSTALL +=3D kernel-modules, and
> >>> SDKIMAGE_FEATURES +=3D kernel-devsrc.  The kernel I'm using is
> >>> linux-altera-ltsi-rt from
> >>> https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux
> >>> /l
> >>> inux-altera-ltsi-rt_3.10.bb
> >>> What am I missing?
> >>
> >> Try adding kernel-devsrc to IMAGE_INSTALL rather than
> >> SDKIMAGE_FEATURES.
> >>
> >>> Thanks,
> >>>
> >>> Ben
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto


