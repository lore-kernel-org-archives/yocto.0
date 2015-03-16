Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8EF8E008D4; Mon, 16 Mar 2015 04:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15FD7E00712
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 04:15:18 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ArIFAE+6BlWHCzIm/2dsb2JhbABbgmQiUloEwhmCOYV0AoEqTAEBAQEBAX2EDwEBAQEDEig0CwwEAgEIDQQEAQEBChQJBzIUCQgBAQQOBQgaiA0BDJ56pU4BAQEBAQEBAQEBAQEBAQEBAQEBAQETBIsXhEAxBwaDEYEWBZA6g2uCJAWEbYMrgkmJPoNHI4IygTxvAYFDfwEBAQ
X-IronPort-AV: E=Sophos;i="5.11,409,1422939600"; d="scan'208";a="107878473"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	16 Mar 2015 07:15:17 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	16 Mar 2015 07:15:17 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Mon, 16 Mar 2015 07:15:13 -0400
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Bitbake recipe Post install script not executed once
	the package is installed
Thread-Index: AdBfqD6VZ8gWmxP3T5SUXgmnBI6bnwAHK8cAAAVdbqA=
Date: Mon, 16 Mar 2015 11:15:12 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A36DFE4@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A36DDB7@AZ-FFEXMB01.global.avaya.com>
	<43230590.PZOAnLt31C@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <43230590.PZOAnLt31C@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Mon, 16 Mar 2015 11:15:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, After making the change we have full capability of the RPM's.


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, March 16, 2015 15:11
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Bitbake recipe Post install script not executed once t=
he package is installed

On Monday 16 March 2015 05:15:45 Bipnesh, Abhinav wrote:
> Paul Eggleton wrote:
> > Bipnesh, Abhinav wrote:
> > > One thing to add here is we are running Busybox on which I am=20
> > > trying to perform the installation.
> >=20
> > That shouldn't matter.
>
> The reason for asking this is due to this answer on stackoverflow=20
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__stackoverflow.com
> _a_11316251_570200&d=3DAwICAg&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DgeJ1wB7xRIMm=
teYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3D3v6rslo9h7RdN7fAdn8K7aQYKRYZdvG8YgVmT3a=
rGY0&s=3D2ESTlCCwEHbdcR5fQqv27_TGvdTyzrfg94BThGnW7ys&e=3D ) and also the ma=
iling list of busybox says this "The busybox rpm command is more "rpm2cpio =
--install"
> than anything else.  It doesn't support pre or post scripts, doesn't=20
> maintain a repository...
>=20
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.busybox.net_=
pipermail_busybox_2006-2DNovember_059507.html&d=3DAwICAg&c=3DBFpWQw8bsuKpl1=
SgiZH64Q&r=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3D3v6rslo9h7RdN7=
fAdn8K7aQYKRYZdvG8YgVmT3arGY0&s=3DrpVq1l6w6gj_m3trsHWQXRF4kpaBtiK48jGytQkjv=
yI&e=3D )"
>=20
> Also the rpm command didn't list -e or other such option which I can=20
> see on other distribution. Below is sample output # rpm BusyBox=20
> v1.22.1 (2015-03-03 14:40:56 IST) multi-call binary.
>=20
> Usage: rpm -i PACKAGE.rpm; rpm -qp[ildc] PACKAGE.rpm
>=20
> Please note that simple echo command is also not working for which I=20
> expect to echo the output on the console during the installation process.

Oh, well, there's your problem then - I wasn't aware busybox even had an rp=
m command; clearly that will not work if you expect postinstall scripts to =
be executed because as you say it does not support them. We don't enable bu=
sybox's rpm command out of the box, so I can only assume you have enabled i=
t
- if you do want full RPM I suggest you disable it (CONFIG_RPM should not b=
e set in busybox's config) and ensure IMAGE_FEATURES contains "package- man=
agement" so that the proper rpm utility gets installed.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

