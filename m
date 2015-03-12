Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 643E1E0086D; Thu, 12 Mar 2015 12:06:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.240.0.71 listed in list.dnswl.org]
Received: from g9t1613g.houston.hp.com (g9t1613g.houston.hp.com [15.240.0.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96C9E00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 12:06:24 -0700 (PDT)
Received: from g1t5425.austin.hp.com (g1t5425.austin.hp.com [15.216.225.55])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hp.com (Postfix) with ESMTPS id 1A0F260467
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 19:06:24 +0000 (UTC)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g1t5425.austin.hp.com (Postfix) with ESMTPS id 532101B3
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 19:06:22 +0000 (UTC)
Received: from G1W5784.americas.hpqcorp.net (16.193.26.2) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Thu, 12 Mar 2015 19:05:13 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G1W5784.americas.hpqcorp.net ([16.193.26.2]) with mapi id
	14.03.0169.001; Thu, 12 Mar 2015 19:05:13 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: running task only for native but not target?
Thread-Index: AdBc9ySwdizmWq8XQymsFYNF8R8rRg==
Date: Thu, 12 Mar 2015 19:05:13 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Subject: running task only for native but not target?
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
X-List-Received-Date: Thu, 12 Mar 2015 19:06:28 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a package that produce a binary that I need for native, and an C hea=
der file that I need for target.

I put the following do_install function to install appropriately the bin or=
 header according to the class:

	do_install_append_class-target () {
	        install -d ${D}${includedir}
	        install -m 0755 ${S}/ifrpc.h ${D}${includedir}
	}

	do_install_append_class-native() {
	        install -d ${D}${bindir}
	        install -m 0755 ${S}/ifrpcgen ${D}${bindir}
	}

but is there a way for me to disable do_patch/do_configure/do_compile only =
when building for the target?  I have tried the following without success:

	do_configure_class-target[noexec] =3D "1"
	do_patch_class-target[noexec] =3D "1"
	do_compile_class-target[noexec] =3D "1"

It appears the OVERRIDES do not apply here, any hint on how I can achieve t=
his?

--
Yannick Koehler



