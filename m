Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E99E4E003D2; Tue, 24 Jun 2014 01:28:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from STOEXHUB02.domain01.net (STOEXHUB02.domain01.net
	[83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F330E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 01:28:12 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.64.43) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 24 Jun 2014 10:28:09 +0200
Date: Tue, 24 Jun 2014 10:27:56 +0200
From: Anders Darander <anders@chargestorm.se>
To: Pourya Shirazian <pourya.shirazian@gmail.com>
Message-ID: <20140624082756.GD22071@ad.chargestorm.se>
Mail-Followup-To: Pourya Shirazian <pourya.shirazian@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFjJ7KbgxzjNu4ScnDHhHTYv8rft_AKrp72nj-+zT6JOdKE-mA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFjJ7KbgxzjNu4ScnDHhHTYv8rft_AKrp72nj-+zT6JOdKE-mA@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRC_URI issue in recipe writing
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
X-List-Received-Date: Tue, 24 Jun 2014 08:28:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Pourya Shirazian <pourya.shirazian@gmail.com> [140624 00:58]:

> Hi,

> When writing a recipe the SRC_URI is supposed to accept git repository
> addresses but the following fails to build for me:

> 1. With http URL: It also does not allow my credentials to be embedded in=
 the
> URI

> SRC_URI =3D "http://mygitserver.net/myproject.git;protocol=3Dhttp;branch=
=3Dmaster"

You should use git:// here. This is to inform bitbake that this is a git
URL. You should keep protocol=3Dhttp, as this will tell bitbake that git
should use the http protocol.

Do you need to supply credentials together with your http-URL?

> Exception: ExpansionError: Failure expanding variable SRCPV, expression w=
as $
> {@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher
> failure: SRCREV was used yet no valid SCM was found in SRC_URI

Well, as you used http://... in SRC_URI, bitbake think's it has to
download a file from the webserver.


> 2. With ssh URL

> SRC_URI =3D "git@mygitserver.net:me/myproject.git;protocol=3Dssh;branch=
=3Dmaster"

> Exception: ExpansionError: Failure expanding variable SRCPV, expression w=
as $
> {@bb.fetch2.get_srcrev(d)} which triggered exception MalformedUrl: The UR=
L:=C2=A0"
> git@mygitserver.net:me/myproject.git;protocol=3Dssh;branch=3Dmaster"=C2=
=A0is invalid and
> cannot be interpreted

You still need to start the URI with git://...

> After checking the documentation it seems it only expects the git protoco=
l only
> and it worked in this example, however, our internal enterprise github on=
ly
> supports http and ssh URIs.

No, the protocol is specified by adding protocol=3Dxxx.=20

> SRC_URI =3D "git://github.com/GraphicsEmpire/gridvisualization.git;branch=
=3Dmaster=E2=80=9D

Cheers,
Anders

--=20
Anders Darander
ChargeStorm AB / eStorm AB

