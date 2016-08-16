Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C73E0073D; Tue, 16 Aug 2016 13:33:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 549 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Aug 2016 13:33:19 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B0AE0043F
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 13:33:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id D4D5718200;
	Tue, 16 Aug 2016 22:24:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id 6Ybo43gRFEAI; Tue, 16 Aug 2016 22:24:06 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bastet.se.axis.com (Postfix) with ESMTP id 52646181FF;
	Tue, 16 Aug 2016 22:24:06 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 338D61946;
	Tue, 16 Aug 2016 22:24:06 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 28C1A1702;
	Tue, 16 Aug 2016 22:24:06 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by seth.se.axis.com (Postfix) with ESMTP id 2714E4AE;
	Tue, 16 Aug 2016 22:24:06 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Tue, 16 Aug 2016 22:24:05 +0200
Received: from XBOX02.axis.com ([fe80::d00f:cb52:1b56:20d]) by XBOX02.axis.com
	([fe80::d00f:cb52:1b56:20d%21]) with mapi id 15.00.1156.000;
	Tue, 16 Aug 2016 22:24:06 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Patrick Doyle <wpdster@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to maintain a global DL_DIR?
Thread-Index: AQHR98zLYvOMZOiZ+kCs7NAeV+igq6BLkDOAgABwKrA=
Date: Tue, 16 Aug 2016 20:24:06 +0000
Message-ID: <d92af01d6a634d8d969be96a43808106@XBOX02.axis.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<CAF_dkJBvmdC-QXVUf6TU5xC_nVPWa1YeZYnGFbudshtNLWnLig@mail.gmail.com>
In-Reply-To: <CAF_dkJBvmdC-QXVUf6TU5xC_nVPWa1YeZYnGFbudshtNLWnLig@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 20:33:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Patrick Doyle
> Sent: den 16 augusti 2016 17:13
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] How to maintain a global DL_DIR?
>=20
> Oh this is ugly...
> I tried setting BB_ENV_EXTRAWHITE to DL_DIR in my .bashrc, but found
> that BB_ENV_EXTRAWHITE gets overwritten by oe-buildenv-internal as I
> mentioned previously.

You seem to be using an old version of Poky. The code in=20
oe-buildenv-internal was changed in Krogoth to add the variables=20
that OE requires to BB_ENV_EXTRAWHITE. So if you are using Krogoth=20
or later it should be possible to do=20
export BB_ENV_EXTRAWHITE=3D"DL_DIR"
in your .bashrc and get it to work as expected...

If you do not have the option of using Krogoth or newer, you could=20
use this trick in your .bashrc:

alias bitbake=3D"BB_ENV_EXTRAWHITE=3D\"$BB_ENV_EXTRAWHITE DL_DIR\" bitbake"

It may not be kosher, but it works. ;)

> I tried setting BB_ENV_WHITELIST to DL_DIR in my .bashrc and found
> that bitbake just stopped working.
>=20
> After rereading the manual
> (https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-
> user-manual.html#var-BB_ENV_WHITELIST)
> I tried setting BB_ENV_WHITELIST to "BBPATH BB_RESERVE_ENV
> BB_ENV_WHITELIST BB_ENV_EXTRAWHITE DL_DIR", and bitbake still didn't
> work.
>=20
> So I looked in poky/bitbake/lib/bb/utils.py and found the following:
>=20
> def preserved_envvars_exported():
>     """Variables which are taken from the environment and placed in and
> exported
>     from the metadata"""
>     return [
>         'BB_TASKHASH',
>         'HOME',
>         'LOGNAME',
>         'PATH',
>         'PWD',
>         'SHELL',
>         'TERM',
>         'USER',
>     ]
>=20
> def preserved_envvars():
>     """Variables which are taken from the environment and placed in
> the metadata"""
>     v =3D [
>         'BBPATH',
>         'BB_PRESERVE_ENV',
>         'BB_ENV_WHITELIST',
>         'BB_ENV_EXTRAWHITE',
>     ]
>     return v + preserved_envvars_exported()
>=20
> ...
>     if 'BB_ENV_WHITELIST' in os.environ:
>         approved =3D os.environ['BB_ENV_WHITELIST'].split()
>         approved.extend(['BB_ENV_WHITELIST'])
>     else:
>         approved =3D preserved_envvars()
>=20
> This looks like, if BB_ENV_WHITELIST is defined in the environment,
> bitbake will use it (arbitrarily appending BB_ENV_WHITELIST to the end
> of whatever was defined in the environment variable).  If it is not
> defined, then BB_ENV_WHITELIST is initialized to be:
>=20
> ['BBPATH', 'BB_PRESERVE_ENV', 'BB_ENV_WHITELIST', 'BB_ENV_EXTRAWHITE',
> 'BB_TASKHASH', 'HOME', ...]
>=20
> So I finally tried setting BB_ENV_WHITELIST in .bashrc to be "BBPATH
> BB_PRESERVE_ENV BB_ENV_EXTRAWHITE BB_TASKHASH HOME LOGNAME PATH PWD
> SHELL TERM USER DL_DIR"
>=20
> But it is very sadly ugly... not terribly maintainable... and makes me
> think I'm missing something important.
>=20
> Please tell me I'm missing something important.
>=20
> --wpd

//Peter


