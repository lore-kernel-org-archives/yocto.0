Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E36E00C34; Thu, 10 Sep 2015 12:12:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.65.145.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 212 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Sep 2015 12:12:11 PDT
Received: from s12p02o142.mxlogic.net (s12p02o142.mxlogic.net [208.65.145.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09EC2E00B5D
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 12:12:10 -0700 (PDT)
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by s12p02o142.mxlogic.net(mxl_mta-8.4.0-3) with ESMTP id
	b06d1f55.7f4ffb5fe700.79351.00-561.237763.s12p02o142.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Thu, 10 Sep 2015 13:12:11 -0600 (MDT)
X-MXL-Hash: 55f1d60b469e90f3-3e6f121c136fbad880ea51a5d7985bcf8b82f8ed
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by s12p02o142.mxlogic.net(mxl_mta-8.4.0-3)
	with ESMTP id 635d1f55.0.75337.00-091.225647.s12p02o142.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Thu, 10 Sep 2015 13:08:40 -0600 (MDT)
X-MXL-Hash: 55f1d538650f4e91-cde1cfeb7669da0e1b55796cf5c359f8ffb4c46f
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX02.meteorcomm.lan (10.20.0.35) with Microsoft SMTP Server (TLS)
	id 15.0.1076.9; Thu, 10 Sep 2015 12:08:37 -0700
Received: from MCCRENEX01.MeteorComm.lan ([fe80::752d:6914:6d6:db29]) by
	MCCRENEX01.meteorcomm.lan ([fe80::752d:6914:6d6:db29%14]) with mapi id
	15.00.1076.000; Thu, 10 Sep 2015 12:08:37 -0700
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: kernel change detection for packages that depend on kernel
	version?
Thread-Index: AdDr94B1s/mNl8bYTDSvuT5U1aYNLA==
Date: Thu, 10 Sep 2015 19:08:36 +0000
Message-ID: <b8928a04ba194c4a90d890c8610b3202@MCCRENEX01.meteorcomm.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=Uul3NoAB c=1 sm=1 tr=0 a=TjRZ7Zekk1wF9OVcTBmBEQ==]
X-AnalysisOut: [:117 a=TjRZ7Zekk1wF9OVcTBmBEQ==:17 a=oLoTwKZ2AAAA:8 a=YlVT]
X-AnalysisOut: [AMxIAAAA:8 a=QP8GsjE2h34A:10 a=kj9zAlcOel0A:10 a=xqWC_Br6k]
X-AnalysisOut: [Y4A:10 a=ff-B7xzCdYMA:10 a=NEAV23lmAAAA:8 a=90h5VryXmAj5Wn]
X-AnalysisOut: [KuhfcA:9 a=CjuIK1q_8ugA:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015091023); S=0.200(2015072901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.138]
Subject: kernel change detection for packages that depend on kernel version?
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
X-List-Received-Date: Thu, 10 Sep 2015 19:12:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm running into an issue where the branch for my kernel received some new =
commits, changing what the kernel version string looks like. When I rebuilt=
 my system (bitbake my-image) the kernel was rebuilt (I believe at some poi=
nt I probably also ran bitbake virtual/kernel -c clean), however several OO=
T kernel module packages were not rebuilt (one of our modules, as well as l=
ttng-modules). In addition, I have the kernel-devsrc package included in my=
 TOOLCHAIN_TARGET_TASK, and running "... -c populate_sdk" seems to have bui=
lt an SDK containing the old kernel source. Cleaning those recipes allowed =
them to rebuild properly, but it seems like rebuilding should have happened=
 automatically...
My image recipe looks like this (very abbreviated):
inherit core-image
IMAGE_INSTALL_append =3D " packagegroup-core-boot kernel-modules my-oot-mod=
ule"
IMAGE_FEATURES +=3D "package-management"
TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"

This brings me to my questions:

1. How do recipes that depend on the kernel headers tell when they need to =
rebuild? Is there something wrong with my kernel recipe? (for reference, I'=
m using this one: https://github.com/kraj/meta-altera/blob/master/recipes-k=
ernel/linux/linux-altera-ltsi-rt_3.10.bb)

2. Why didn't kernel-devsrc rebuild after the kernel changed?

3. How do I clean the populate_sdk output? Will do_clean clean the populate=
_sdk output as well? I know I can force it to rerun with "... -f -c populat=
e_sdk"

Thanks for your help,
Ben

