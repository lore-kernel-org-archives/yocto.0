Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45882E00960; Tue,  7 Jul 2015 16:20:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.65.144.82 listed in list.dnswl.org]
X-Greylist: delayed 278 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jul 2015 16:20:48 PDT
Received: from p02c11o149.mxlogic.net (p02c11o149.mxlogic.net [208.65.144.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0BB7E006EE
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 16:20:48 -0700 (PDT)
Received: from unknown [66.194.68.135] (EHLO mail.meteorcomm.com)
	by p02c11o149.mxlogic.net(mxl_mta-8.4.0-1) with ESMTP id
	3de5c955.2afd38606940.590397.00-526.1653984.p02c11o149.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Tue, 07 Jul 2015 17:20:51 -0600 (MDT)
X-MXL-Hash: 559c5ed37ac61218-7dea8117c39d7244ba6b0094a41dca6a154e8169
Received: from unknown [66.194.68.135] (EHLO mail.meteorcomm.com)
	by p02c11o149.mxlogic.net(mxl_mta-8.4.0-1)
	with ESMTP id 8bd5c955.0.588661.00-308.1649209.p02c11o149.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Tue, 07 Jul 2015 17:16:11 -0600 (MDT)
X-MXL-Hash: 559c5dbb371bcfe0-c88d6caee1734e59e4fea3913b6f11b2d7ced3f0
Received: from MCCRENEX02.MeteorComm.lan (10.20.0.35) by
	MCCRENEX01.meteorcomm.lan (10.20.0.34) with Microsoft SMTP Server (TLS)
	id 15.0.1076.9; Tue, 7 Jul 2015 16:16:07 -0700
Received: from MCCRENEX02.MeteorComm.lan ([fe80::a041:97dc:4159:5f18]) by
	MCCRENEX02.meteorcomm.lan ([fe80::a041:97dc:4159:5f18%14]) with mapi id
	15.00.1076.000; Tue, 7 Jul 2015 16:16:07 -0700
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: populate_sdk and kernel headers
Thread-Index: AdC5BnS9N7dIQ8PTStSMJIydFi1wEQ==
Date: Tue, 7 Jul 2015 23:16:07 +0000
Message-ID: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=NoXFcqtJ c=1 sm=1 tr=0 a=/XjKdzJjB8Y25GP6vDHOEw==]
X-AnalysisOut: [:117 a=/XjKdzJjB8Y25GP6vDHOEw==:17 a=oLoTwKZ2AAAA:8 a=YlVT]
X-AnalysisOut: [AMxIAAAA:8 a=QP8GsjE2h34A:10 a=BLceEmwcHowA:10 a=kj9zAlcOe]
X-AnalysisOut: [l0A:10 a=xqWC_Br6kY4A:10 a=zOBTXjUuO1YA:10 a=NEAV23lmAAAA:]
X-AnalysisOut: [8 a=mSsply_Lju6Lfb7dRtkA:9 a=CjuIK1q_8ugA:10 a=VlZU0XKO32w]
X-AnalysisOut: [A:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015070712); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.135]
Subject: populate_sdk and kernel headers
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
X-List-Received-Date: Tue, 07 Jul 2015 23:20:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I want my kernel headers to be included in the SDK output when I run bitbak=
e myimage -c populate_sdk. I expect to see the headers in my installed SDK =
folder such as <sdk>/sysroot/<target_mach>/usr/src/kernel; however, I don't=
 see anything there. Also, I don't want the headers appearing on the target=
.

In my recipe I have added IMAGE_INSTALL +=3D kernel-modules, and SDKIMAGE_F=
EATURES +=3D kernel-devsrc.  The kernel I'm using is linux-altera-ltsi-rt f=
rom https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux/li=
nux-altera-ltsi-rt_3.10.bb
What am I missing?

Thanks,

Ben

