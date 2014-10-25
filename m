Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02AD0E0082F; Sat, 25 Oct 2014 09:34:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB653E00706
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 09:34:23 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AloFAE7QS1SHCzIm/2dsb2JhbABcgmsjVFgEzTqHVQKBBRYBAXELhAMBAQECARIoRAsCAQgNFRQQMiUBAQQbGogWCQGpM58rAQEIAgEfkFc4gy2BHgWSB4RIiEM8hiiGeocfg3hsgUiBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.04,787,1406606400"; d="scan'208";a="91723246"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	25 Oct 2014 12:34:23 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	25 Oct 2014 12:34:23 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Sat, 25 Oct 2014 12:34:23 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Packaging change in daisy vs. denzil
Thread-Index: Ac/wav57jH/c4DK1TGG6VcIobzNU2wABbHSQ
Date: Sat, 25 Oct 2014 16:34:21 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841147B7F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841147B51@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841147B51@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: Packaging change in daisy vs. denzil
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
X-List-Received-Date: Sat, 25 Oct 2014 16:34:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Trying to make the transition from denzil (1.2) to daisy (1.6.1) and have
> run into a problem that's got me stumped.
>
> There seems to have been a change in the way things are packaged that
> is breaking a number of my custom recipes.
>
> Let's say I have a package X that consists of source for an .so and some =
headers.
>
> In denzil, building this would result in three RPMs, X, X-dev, and X-dbg.=
 The .so
> would be in X, the headers in X-dev, and the debug info in X-dbg.
>
> In daisy, there are only two RPMs, X-dev and X-dbg. Is that expected
> behavior, or is there something I need to change in my recipes because
> of the update to daisy?
>
> What RPM do I install in my image, X-dev? I don't want the headers
> in the image/rootfs.
>
> Can someone point me to a description/explanation of the changes?

Additional relevant info:

- The problem files are .so files.
- SOLIBS and SOLIBSDEV have their default values (".so.*" and ".so", respec=
tively).
- In my recipes, I have=20

	FILES_${PN} =3D "${libdir}/libname.so"

MV

