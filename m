Return-Path: <prvs=0423146122=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20D31E00CCC; Thu,  7 Sep 2017 06:10:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3034 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Sep 2017 06:10:10 PDT
Received: from mx18-11.smtp.antispamcloud.com (mx18-11.smtp.antispamcloud.com
	[207.244.64.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D2FCE00CB4
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:10:10 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dpvmK-0002k0-Sy
	for yocto@yoctoproject.org; Thu, 07 Sep 2017 14:19:35 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 7 Sep 2017 14:19:27 +0200
To: <yocto@yoctoproject.org>
References: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
	<CAMKF1sqVUnLXf3AWSLjnnZRg0aiP_m08oAWwEeJJGE91RZ+XMQ@mail.gmail.com>
	<CAGAf8LypQHdWKO4ka8xFirYs20iAFHEyXH4K6gZGoTmBKjnvtg@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <2a7b7b06-7160-be27-5bfa-6c0cf423b207@topic.nl>
Date: Thu, 7 Sep 2017 14:19:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8LypQHdWKO4ka8xFirYs20iAFHEyXH4K6gZGoTmBKjnvtg@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: PqwsvolAWURa0gwxuN3S5YEa3T7JuZT23fGO2rGt3ZgWMD8gia7lRmdoHJ3n0cm6Vtfp9X1ZBchZ
	wvx8a7dTUQWF0kx98HH3GX+iQK7NiP6LBDMrD7q/cJogwbqzsuokIXMJ1U4MKKnQ5SAJ1V9dkP9x
	bu57BDazLmklZgT7xzYWL8l7crBncoIuvOM8GMzWxJG7Wj7S0YHKzSR/8vHsffD/EiW0GHcd/fWY
	o1XLxUU8CVsONrMJuGzuoGnKTKcygLJjfy2/hUPxxGqITycuLMdYaphGvYopQ24KJ9kgRDN3pbXn
	aMbbC1QSUBxihEsjBWOBqoptsYkcljagCMIDypReAQCFQo+KUtaSCrVTlxOfVsst/QEVbupaaYfx
	KYRJ8ar4sO9kYmr7/nmchPR9G2DCX9m2p4wUnZpURALMKaPBcC9OMLR/g2nFXNsLRUFie5/p+NPl
	rtNUMvaVdgZ1X1ngTKIo4o/iU2NyhSTkTDrfLM7Ww0jFUCG51FTiiz6cR64dodD7udB+zcx8OjSt
	1b1YgBvhxKfoFZHs3o0j+S0jv2y8/jlUqm+TeNrMp4+E6LTovubp4smUMQs0MtjHa5nckpWaLvah
	yBjmQxBKOztbsILhTbeUyfxVdxn9bXHLesDDSzRoWU0PVbVIfHlEORqZR3KVQgqF/fPYYAfEfshX
	WWeT3cQveONRuwAhy4JMPCW+5qkGu4DVyxr5QJAMwYkgQbZ5vJIdmRfAMyIXTSJ8JmFmLZ6h3eau
	qEcwyeT0VZvJGSxm4bcH1lFUB/zPeGsnJ395jBJAgljEd2a/UHQV6Xe4bIYRHe1fiVaECIfGCs+d
	m3T5GTMS0IoMjuD73MBlNCXldRLkC5TILJuZrGjDpJxxYwML4QEFO4rejcoT5MGdo9sF/Wc/OvxZ
	QWoMhQ==
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: The basehash value changed from...
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
X-List-Received-Date: Thu, 07 Sep 2017 13:10:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 07-09-17 11:06, Zoran Stojsavljevic wrote:
>  > If you keep your sstate-cache directory then delete tmp/ dir is what y=
ou need
>  > to do. Rebuilding from sstate-cache is very quick.
>=20
> It does not help. Since I'll have at the end/I'll end-up with the same=20
> problem. My best guess. :-(
>=20
> Since I am building the whole humongous YOCTO build not in one, rather in=
 two=20
> steps, like this:
>=20
> |bitbake meta-toolchain-qt5 (5 hours build||on my HP EliteBook 840 G1)
> ||bitbake angstrom-lxde-image|  (5 hours build on my HP EliteBook 840 G1)
>=20
> Here, my best guess is that the first build sets its own hash, which the=
=20
> second sets also its own (very
> different), then makes hash checks in deploy/ tree, and fails... !?

You should be able to do "bitbake meta-toolchain-qt5 angstrom-lxde-image" i=
n=20
one go. That should be faster than two separate runs.

If you change the DISTRO, you'll invalidate your "tmp" building dir resulti=
ng=20
in loads of new stuff being built.

If you need two distros, make two build enviroments from them. You should=20
share the sstate-cache directory between them (saves tons on building=20
compilers and such) but not the "tmp" directory.



> On Thu, Sep 7, 2017 at 9:42 AM, Khem Raj <raj.khem@gmail.com=20
> <mailto:raj.khem@gmail.com>> wrote:
>=20
>     On Thu, Sep 7, 2017 at 12:37 AM, Zoran Stojsavljevic
>     <zoran.stojsavljevic@gmail.com <mailto:zoran.stojsavljevic@gmail.com>=
> wrote:
>     > While re-compiling the whole YOCTO load for freescale i.MX6, where =
I have
>     > added Qt5 layers (and it failed many times, so I needed to do some =
tricks
>     > there), I encounter the following warning (in ORANGE) and error (in=
 RED)
>     > while finishing the build:
>     >
>     > WARNING: Duplicate inclusion for
>     > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-torade=
x-bsp-common/conf/tdx_version.conf
>     > in
>     > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-torade=
x-demos/recipes-images/images/tdx-image-fstype.inc
>     > ERROR: When reparsing
>     > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-torade=
x-demos/recipes-images/images/angstrom-lxde-image.bb.do_image_teziimg,
>     > the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
>     > 1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic=
 and this
>     > needs to be fixed.
>     > NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need=
 to be
>     > rerun and all succeeded.
>     > NOTE: Writing buildhistory
>     >
>     > It built (after all) complete deploy with all the images. I kind of=
 get what
>     > is going on here.
>     >
>     > Question: how to rebuild the complete deploy/images NOT deleting tm=
p/? It
>     > compiled overall (in two steps) > 10h. Do I need to touch some file=
?
>     >
>=20
>     if you keep your sstate-cache directory then delete tmp/ dir is what =
you need
>     to do. Rebuilding from sstate-cache is very quick
>=20
>      > Thank you,
>      > Zoran
>      >
>     >
>     > --
>     >=20

Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail



_______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>     >
>=20
>=20
>=20
>=20


