Return-Path: <tom.gibson@csoftware.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DDDCE008BF; Tue,  3 Apr 2018 06:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from APOLLO-EX16.csoftware.local (176-35-35-244.xdsl.murphx.net
	[176.35.35.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A695E00851
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 06:22:08 -0700 (PDT)
Received: from APOLLO-EX16.csoftware.local (10.1.1.6) by
	APOLLO-EX16.csoftware.local (10.1.1.6) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.1415.2; Tue, 3 Apr 2018 14:22:15 +0100
Received: from APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0]) by
	APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0%13]) with mapi
	id 15.01.1415.004; Tue, 3 Apr 2018 14:22:15 +0100
From: Tom Gibson <tom.gibson@csoftware.co.uk>
To: Anuj Mittal <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ClamAV PCRE support
Thread-Index: AdPF1+hZQZMIgHvxQGSK/H0SJtQy6///+S0A///p8GD//LZtcIAHxjeA//l5wXA=
Date: Tue, 3 Apr 2018 13:22:15 +0000
Message-ID: <29ee9a010abe4c0d9352685ecfa13968@csoftware.co.uk>
References: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
	<0f0fef5c-f115-9e05-dfe3-64e636e7d786@intel.com>
In-Reply-To: <0f0fef5c-f115-9e05-dfe3-64e636e7d786@intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.70]
x-esetresult: clean, is OK
x-esetid: 37303A29CD5E6C6C6C7763
MIME-Version: 1.0
Subject: Re: ClamAV PCRE support
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
X-List-Received-Date: Tue, 03 Apr 2018 13:22:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Anuj

Thanks for your e-mail.

> -----Original Message-----
> From: Anuj Mittal <anuj.mittal@intel.com>
> Sent: 30 March 2018 11:16
> To: Tom Gibson <tom.gibson@csoftware.co.uk>; yocto@yoctoproject.org
> Subject: Re: [yocto] ClamAV PCRE support
>=20
> >     When I run clamscan on our board I get a number of errors of the
> >     form "logical signature for ... uses PCREs but support is disabled,
> >     skipping" so the solution would appear to be to add PCRE support. I=
n
> >     the ClamAV bitbake recipe I see there is a PACKAGECONFIG variable
> >     for PCRE, so to test if this is the solution I have added the
> >     following to my local.conf:
> >
> >
> >
> >     PACKAGECONFIG_append_pn-clamav =3D " pcre"
> >
> >
> >
> >     and have also added " libpcre2" before "clamav" in the IMAGE_INSTAL=
L
> >     as above.
>=20
> This shouldn't be necessary, PACKAGECONFIG adds DEPENDS on libpcre
> when pcre is enabled and only of two should be required.
>=20

I have removed the reference to "libpcre2" in the IMAGE_INSTALL variable, I=
 assume I should still include the reference to "pcre" in packageconfig as =
above.

> >
> >
> >
> >     Unfortunately when I run bitbake I now get a configure error simila=
r
> >     to the following:
> >
> >
> >
> >     configure: error: cannot locate libpcre2 or libpcre at
> >
> > <builddir>/tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-
> r0/re
> > cipe-sysroot/usr/lib
> >
>=20
> This is happening because clamav is looking for pcre-config (uses it to f=
ind
> pcre paths) and it's not able to locate it ...
>=20
> Even if you do get around this error by passing the path to configure, us=
ing
> binconfig files to evaluate paths has been disabled in OE-core layer.
>=20
> So, you will have to fix the configure/pcre.m4 file in clamav to do this =
using
> .pc file from libpcre instead.
>=20

Sorry, I'm not clear on which file needs fixing? I can only find pcre.m4 at

	<builddir>tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.2-r0/git/m4/=
reorganization/libs/pcre.m4

Isn't this generated during build? I'm sorry I'm also not clear on what nee=
ds changing, where can I find the correct .pc file for libpcre?

Thanks for your help.

Regards,

Tom

