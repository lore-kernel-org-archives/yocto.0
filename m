Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C07AAE00873; Tue, 20 Jan 2015 11:45:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [208.65.144.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 192 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jan 2015 11:45:32 PST
Received: from p01c11o141.mxlogic.net (p01c11o141.mxlogic.net [208.65.144.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9A8E00860
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 11:45:32 -0800 (PST)
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p01c11o141.mxlogic.net(mxl_mta-8.2.0-3) with ESMTP id
	c50beb45.2b550b411940.86247.00-534.239388.p01c11o141.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Tue, 20 Jan 2015 12:45:32 -0700 (MST)
X-MXL-Hash: 54beb05c1085825e-093eb247971046941491e342bba54c49bc6ae1c8
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p01c11o141.mxlogic.net(mxl_mta-8.2.0-3)
	with ESMTP id b9faeb45.0.83626.00-332.231946.p01c11o141.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Tue, 20 Jan 2015 12:42:28 -0700 (MST)
X-MXL-Hash: 54beafa460d3440b-032edc7d7c7668f4828fd694443099f59f99f5ad
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX02.meteorcomm.lan (10.20.0.35) with Microsoft SMTP Server (TLS)
	id 15.0.847.32; Tue, 20 Jan 2015 11:42:13 -0800
Received: from MCCRENEX01.MeteorComm.lan ([fe80::90f9:6cac:2852:46c3]) by
	MCCRENEX01.meteorcomm.lan ([fe80::90f9:6cac:2852:46c3%14]) with mapi id
	15.00.0847.030; Tue, 20 Jan 2015 11:42:02 -0800
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: CMake in populate_sdk
Thread-Index: AdA04zmjnTWEVsgVRSumFgOR490DBw==
Date: Tue, 20 Jan 2015 19:42:01 +0000
Message-ID: <206093a14a0a41e78260f711393dfd79@MCCRENEX01.meteorcomm.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=PpaHbm83 c=1 sm=1 tr=0 a=TjRZ7Zekk1wF9OVcTBmBEQ==]
X-AnalysisOut: [:117 a=TjRZ7Zekk1wF9OVcTBmBEQ==:17 a=QP8GsjE2h34A:10 a=BLc]
X-AnalysisOut: [eEmwcHowA:10 a=kj9zAlcOel0A:10 a=xqWC_Br6kY4A:10 a=oLoTwKZ]
X-AnalysisOut: [2AAAA:8 a=YlVTAMxIAAAA:8 a=YNv0rlydsVwA:10 a=iGZbquD54bb4V]
X-AnalysisOut: [OjQM7QA:9 a=CjuIK1q_8ugA:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015012014); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.138]
Subject: CMake in populate_sdk
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
X-List-Received-Date: Tue, 20 Jan 2015 19:45:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

How do I add packages to the populate_sdk option?=20
I have an image (myimage) that depends on some custom packages which inheri=
t the cmake bbclass. My expectation is that the populate_sdk task would not=
ice that cmake is required for building and, as a result add cmake to the S=
DK. That is not the case. Also, for some reason, make is not included, eith=
er:

$ source /opt/poky/1.6.2/environment-setup-cortexa9hf-vfp-neon-poky-linux-g=
nueabi
$ which automake
/opt/poky/1.6.2/sysroots/x86_64-pokysdk-linux/usr/bin/automake
$ which make
usr/bin/make

What should I be adding to cause the inclusion of CMake in the SDK output?=
=20

-Ben Fleming

