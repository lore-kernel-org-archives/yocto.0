Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3860AE0084D; Wed,  5 Nov 2014 04:18:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE3FDE0082F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 04:18:36 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ag0FAKoUWlSHCzIm/2dsb2JhbABcgmsjgTHWEwKBGBYBAQEBAQF8hAIBAQEBAxIoPwwEAgEIDQgBDBQFBAcyFBEBAQQOBQgaiB8BqFOfegEBAQEBAQEDAQEBAQEBAQEBAQEXkF8xB4MtgR4FkiGHGAWMbYRciVmCNIFEbAGBR4EDAQEB
X-IronPort-AV: E=Sophos;i="5.07,319,1413259200"; d="scan'208";a="93262623"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	05 Nov 2014 07:18:35 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	05 Nov 2014 07:18:36 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Wed, 5 Nov 2014 07:18:35 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: Ac/4eMhanGlrvFCTRpOmuNhgElcUwwAbUznQAAq4WoAAB6/pMA==
Date: Wed, 5 Nov 2014 12:18:33 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115AEEC@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115AEB2@AZ-US1EXMB03.global.avaya.com>
	<2114805.U50kVqpKQr@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2114805.U50kVqpKQr@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Wed, 05 Nov 2014 12:18:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: November 05, 2014 5:56 AM
> >
> > I deliberately introduced syntax errors into the packagegroup .bb file
>=20
> What kind of syntax error? Inside a function or outside?
>=20

This is my packagegroup .bb file as it stands...

DESCRIPTION =3D "Whatever"

inherit packagegroup

LICENSE =3D "CLOSED"
PACKAGE_ARCH =3D "${MACHINE_ARCH}"
ALLOW_EMPTY_${PN} =3D "1"
PR =3D "r1"

frozzle the flab_flab

# Additional third-party packages
RDEPENDS_${PN} +=3D "\
    ethtool \
    gdbserver \
    lsof \
    openssl-utils \
    page-types \
    strace \
    vim \
    vim-common \
    daemonize \
"

