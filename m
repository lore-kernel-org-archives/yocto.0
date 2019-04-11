Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2317CE00D30; Thu, 11 Apr 2019 07:53:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [208.11.40.244 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 07:53:46 PDT
Received: from west-edge.flir.com (west-edge.flir.com [208.11.40.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A127E00BC8
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 07:53:46 -0700 (PDT)
Received: from US-PDX-MAIL1.flir.net (10.192.150.174) by pdx-e1.zone1.flir.net
	(10.192.210.11) with Microsoft SMTP Server (TLS) id 14.3.382.0;
	Thu, 11 Apr 2019 07:59:42 -0700
Received: from us-pdx-mail4.flir.net (10.192.150.252) by US-PDX-MAIL1.flir.net
	(10.192.150.174) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10;
	Thu, 11 Apr 2019 07:52:41 -0700
Received: from us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631]) by
	us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631%21]) with mapi id
	15.01.1591.011; Thu, 11 Apr 2019 07:52:41 -0700
From: "Smith, Virgil (US)" <Virgil.Smith@flir.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, Philip Balister
	<philip@balister.org>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] Re: [yocto] Yocto Project support for
	Numeric/Scientific Python
Thread-Index: AdSzMX9ge/HkOh4/SfWWtJJKUP2YTgAdC1iAAABhTgAAGvQiAAB2YwaADmx8BoAANZK6EA==
Date: Thu, 11 Apr 2019 14:52:41 +0000
Message-ID: <635e27fd7aa6414ba2a4086663b9b4c3@flir.com>
References: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
	<f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
	<80ec3d5f-e34a-4c32-e891-adfe00066844@balister.org>
	<4d15ab20-658b-14af-7cd2-c0a2e7722d01@topic.nl>
	<2bbc32f4-402f-84be-2fea-5abf0993fcb1@balister.org>
	<7274e028-5c61-3372-eca3-89050ee60b34@topic.nl>
In-Reply-To: <7274e028-5c61-3372-eca3-89050ee60b34@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.128.150.201]
MIME-Version: 1.0
Subject: Re: [EXTERNAL] Re: Yocto Project support for Numeric/Scientific Python
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
X-List-Received-Date: Thu, 11 Apr 2019 14:53:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mike Looijmans Wrote:
> Just attempting to revive this dead horse again...
>
> Anyone made any proress here?
>
> Since cross-compiling turned out to be really really painful, I tried if
> compiling on the board would be an option. No such luck, apparently
> the Fortran compiler isn't being crosscompiled either.

I had to do the following in my last attempt (working with the Sumo release=
 branch).

Add the following to IMAGE_INSTALL:
gfortran  gfortran-symlinks  libgfortran-dev

AND add the following to local.conf
FORTRAN_forcevariable =3D ",fortran"

The latter is to adjust the build of gcc to include Fortran support.
In prior Yocto releases I did not have to use the _forcevariable construct,=
 but I don't recall why I used that form for Sumo.

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

