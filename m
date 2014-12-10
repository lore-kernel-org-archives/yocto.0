Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C82E0080C; Wed, 10 Dec 2014 08:03:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.128.53 listed in list.dnswl.org]
X-Greylist: delayed 4139 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Dec 2014 08:03:01 PST
Received: from g2t2354.austin.hp.com (g2t2354.austin.hp.com [15.217.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37CAEE00461
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 08:03:01 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2354.austin.hp.com (Postfix) with ESMTPS id 6FC4D115
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 16:03:00 +0000 (UTC)
Received: from G2W4312.americas.hpqcorp.net (16.197.24.214) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 10 Dec 2014 16:02:25 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.187]) by
	G2W4312.americas.hpqcorp.net ([16.197.24.214]) with mapi id
	14.03.0169.001; Wed, 10 Dec 2014 16:02:25 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Poky-tiny core-image-minimal issue
Thread-Index: AdAUiEahhb4zA9MFSyascyZHYYTzEwACjQPw
Date: Wed, 10 Dec 2014 16:02:24 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A805485911@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Subject: Re: Poky-tiny core-image-minimal issue
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
X-List-Received-Date: Wed, 10 Dec 2014 16:03:09 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Did a little more digging and found that adding ext2 to poky-tiny.cfg and i=
t worked, maybe this should be push to repository:

# Functionality flags
KERNEL_FEATURES =3D "ext2"

--
Yannick Koehler

-----Message d'origine-----
De=A0: Koehler, Yannick (HP Networking)=20
Envoy=E9=A0: December-10-14 9:53 AM
=C0=A0: 'yocto@yoctoproject.org'
Objet=A0: Poky-tiny core-image-minimal issue

Hi,

  I am new to Yocto, poky and anything in here.  I am having difficulty jus=
t running example I see in the documentation and would like to get pass tha=
t.  My goal, run poky-tiny/core-image-mimimal image inside qemux86 (should =
be basic from what I understand).

  I changed my local.conf to be using DISTRO =3D "poky-tiny" and did "bitba=
ke -k core-image-minimal"  (didn't touch anything else).  I am using dizzy =
branch I believe of poky.  When I run the "runqemu qemux86 core-image-minim=
al ext2 nographic serial", I get unable to mount root fs.  If I use the "ra=
mfs" option, then I get no /init as error.  Is ext2 kernel option part of t=
he linux-yocto-tiny kernel? And if not, what is for me the simplest way to =
add it (without at this time creating my own layer)?

  What is the correct command set to build a poky-tiny/core-image-minimal s=
ystem and run it with qemux86 (ramfs or not? Or both?)?

  Thanks for any help here.

--
Yannick Koehler

