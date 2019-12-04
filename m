Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1055.1575447394945834889
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 00:16:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC89DE00ED3; Wed,  4 Dec 2019 00:16:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10AD5E00942
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2019 00:16:33 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47SWsD26KMz5tlH;
	Wed,  4 Dec 2019 09:16:32 +0100 (CET)
Date: Wed, 4 Dec 2019 09:16:31 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] raspberry pi Rpi3 does not boot to login prompt.
Message-ID: <20191204081631.xpgggwsnmsmo7qo5@qschulz>
References: <477398133.5584303.1575419071624.ref@mail.yahoo.com>
 <477398133.5584303.1575419071624@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <477398133.5584303.1575419071624@mail.yahoo.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ed,

On Wed, Dec 04, 2019 at 12:24:31AM +0000, Ed Vidal wrote:
> Hello all,I am testing a zeus rpi3.=A0 Any and all help is appreciated.
> I created a rpi2 core-image-minimal and built a micro sd card.which boo=
ted okay.I then modified the build/conf/local.conf file for a raspberrypi=
3.
> The rpi3 core-image-minimal does not boot to login prompt.This is the o=
utput as it is booting[=A0 =A0 =A03.27169] lan78xx 1-1.1.1:-mdiobus: prob=
ed[=A0 =A020.921838] raddom: crng init done[=A0 =A020.926490] radom: 3 ur=
andom warning(s) missed due to ratelimiting
> see the jpeg file doc/rpi3fails.jpeg in repo=A0https://github.com/devel=
one/raspberrypi2_yocto-zeus
> devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/local=
.conf raspberrypi3/conf/local.conf=A039c39< MACHINE ??=3D "raspberrypi2"-=
--> MACHINE ??=3D "raspberrypi3"
> devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/bblay=
ers.conf raspberrypi3/conf/bblayers.conf
> Let me know if I can provide any additional information.

I think you might be missing `ENABLE_UART =3D "1"`. We have it in
local.conf but I think you should be able to put it in your machine conf
file or in your distro conf file if you can't modify local.conf
persistently.

C.f.: http://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/tree/docs/ext=
ra-build-config.md?h=3Dzeus#n228

BR
Quentin
