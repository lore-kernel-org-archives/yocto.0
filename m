Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCB0E00C28; Tue, 25 Aug 2015 09:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 545 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Aug 2015 09:36:15 PDT
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399BCE00BEB
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 09:36:15 -0700 (PDT)
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
	by m0046037.ppops.net (8.14.5/8.14.5) with SMTP id t7PGN8gJ006943
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 18:27:09 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by m0046037.ppops.net with ESMTP id 1wgq0xsp6a-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 18:27:09 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 63F4D34
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 16:27:00 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas6.st.com [10.75.90.73])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 872E6ABE2
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 16:27:07 +0000 (GMT)
Received: from Safex1mail5.st.com ([fe80::e860:6123:e5ab:d646]) by
	safex1hubcas6.st.com ([::1]) with mapi; Tue, 25 Aug 2015 18:27:06 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 25 Aug 2015 18:27:06 +0200
Thread-Topic: building external modules 
Thread-Index: AdDfUJe7rpK55shUTZ6yHhjxiUKnYg==
Message-ID: <BFFC96E2B4AD594695C8501F384CF8EF1073FBE1@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-08-25_07:2015-08-24, 2015-08-25,
	1970-01-01 signatures=0
Subject: building external modules
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
X-List-Received-Date: Tue, 25 Aug 2015 16:36:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a sporadic compilation issue for a while and I never found out so fa=
r where it came from until now (perhaps).=20
I mean by sporadic that it happens "sometimes" (2% of a time)=20
I'm using daisy branch and the build failure happens in a Kernel External. =
It ends up like this:

DEBUG: Executing shell function do_compile
NOTE: make -j 24 -e ...  -C <sysroot>/usr/src/kernel O=3D<sysroot>/usr/src/=
kernel KBUILD_VERBOSE=3D1 M=3D<external_mod_path> ... modules
   [...]
   arm-rdk-linux-gnueabi-ld -EL    -r -o <object>.o [...] ; scripts/mod/mod=
post <object>.o
  /bin/sh: scripts/mod/modpost: Permission denied

Looking at logs and bbclass, I've seen a "make scripts"(module.bbclass/do_m=
ake_scripts) is issued anytime we build a Kernel External module.
Even if there is a "lock" mechanism to prevent race condition during this "=
do_make_scripts", nothing prevent to call "do_make_scripts" from a Ext Mod =
1 during a "do_compile" from a Ext Mod 2.

I think (but not sure) this is another race condition here.
Do I miss something ?

Thanks in advance

