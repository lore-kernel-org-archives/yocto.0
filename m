Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C5AE014C1
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 01:48:01 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.255.124) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Wed, 18 Sep 2013 10:47:57 +0200
Date: Wed, 18 Sep 2013 10:47:56 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130918084756.GA12397@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <E51394554A503C4E852F9BEE46B03E8DEFE76C@TI-ODIN.tasernet.com>
MIME-Version: 1.0
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFE76C@TI-ODIN.tasernet.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: QMake & externalsrc incompatible?
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
X-List-Received-Date: Wed, 18 Sep 2013 08:48:02 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Brad Litterell <brad@evidence.com> [130917 21:20]:
> I have a number of QT components that have qmake style .pro files.

> In my recipe I inherit both externalsrc & qmake2.  I'm using qmake2 based on
> the quicky sample recipe since I don't need X11 or the other GUI libraries.

I've got a similar recipe setup for some of my coworkers. The main
difference being that we're inheriting qt4e instead of qmake2.

> In the bitbake work folder, the generated run.do_configure script resembles
> this:

> cd /home/brad/ecom/build/toolchain/work/.../ecomapi-2.0-r0/ecomapi-2.0/
> ...
> PROFILES="`ls *.pro`"

> This is the location where a tarball would normally be unpacked, but in this
> case I'm using externalsrc and the source files are not here.  Therefore the ls
> *.pro doesn't return anything for the automatic profile detection and the build
> fails.

> My recipe is very simple (removing the description & licensing):

> PV = "2.0"
> inherit externalsrc qmake2
> S = "${OEBASE}/ecomapi"

To make it work correctly, I used:

S := "${THISDIR}/chargemanager"
B := "${S}"

You shouldn't need to use :=, I was required to do that as I needed to
use THISDIR (and thus I need the expansion to occur immediately).

Just setting S wasn't enough for me, I needed to also define B. Note,
though, that this means that you can't build your recipe for multiple
arch's etc.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

