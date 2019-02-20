Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F22CE00BB7; Wed, 20 Feb 2019 10:48:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.229 listed in list.dnswl.org]
X-Greylist: delayed 906 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Feb 2019 10:48:57 PST
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.150.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4450DE00B81
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:48:57 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx27.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Wed, 20 Feb 2019 18:48:56 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 20 Feb 2019 10:33:40 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 20 Feb 2019 10:33:40 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: local.conf confusion
Thread-Index: AQHUyUY2soUM1eCuOEGPCGliY1tCoaXpAn6w
Date: Wed, 20 Feb 2019 18:33:40 +0000
Message-ID: <c915b6cb78954865928f3c6bb5f00456@sakuraus.com>
References: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
In-Reply-To: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1550688527-637137-17257-46817-2
X-BESS-VER: 2019.1-r1902200019
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.209654 [from 
	cloudscan16.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: local.conf confusion
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
X-List-Received-Date: Wed, 20 Feb 2019 18:48:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well, I'm feeling bad, the Yocto system that I'm using is from Qt for their=
 Boot2Qt builds. It seems that the include is pointing their private dir tr=
ee.

Sorry for bothering the list with this noise.

Regards,

Greg Wilson-Lindberg=A0=20
=20
> -----Original Message-----
> From: Greg Wilson-Lindberg
> Sent: Wednesday, February 20, 2019 10:16 AM
> To: yocto@yoctoproject.org
> Subject: local.conf confusion
>=20
> Hello list,
>=20
> I've run into a confusion that should be simple. I've got a build based o=
n sumo, at the
> bottom of my local.conf file is the line:
>=20
> include conf/distro/include/${MACHINE}.pre.inc
>=20
> This should be straight forward, just find the conf/distro/include direct=
ory and all of
> the *.pre.inc files should be there. I just searched all of the sources d=
irectory
> for=A0=A0'*.pre.inc' and I get nothing. I'm building for a raspberry pi3,=
 so I would expect at
> least 'raspberry*.inc', still nothing. I'm not getting an error for bitba=
ke not being able
> to find the file.
>=20
> So where do I find the machine include files?
>=20
> Regards,
> Greg Wilson-Lindberg
>=20

