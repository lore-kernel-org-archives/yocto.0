Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC261E00D2E; Thu, 17 Aug 2017 03:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A9AFE00C45
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 03:00:26 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 03:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,387,1498546800"; d="scan'208";a="890986945"
Received: from qnguye5-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.6])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2017 03:00:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Dr=2E_Matthias_Sch=F6pfer?= <Matthias.Schoepfer@ithinx.io>
Date: Thu, 17 Aug 2017 22:00:21 +1200
Message-ID: <1625068.JgHssZnP7U@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <63EFF8D6B0566D4E82DEBC3D979C491383D8DA81@SW-VM-02.kelle.grp>
References: <63EFF8D6B0566D4E82DEBC3D979C491383D8D9F3@SW-VM-02.kelle.grp>
	<2194654.OpPfn0j9vU@peggleto-mobl.ger.corp.intel.com>
	<63EFF8D6B0566D4E82DEBC3D979C491383D8DA81@SW-VM-02.kelle.grp>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS on package does not include package in rootfs
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
X-List-Received-Date: Thu, 17 Aug 2017 10:00:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday, 17 August 2017 9:55:09 PM NZST Dr. Matthias Sch=F6pfer wrote:
 On 08/17/2017 11:27 AM, Paul Eggleton wrote:
> > On Thursday, 17 August 2017 8:43:41 PM NZST Dr. Matthias Sch=F6pfer wro=
te:
> >> Here is my problem, maybe I misunderstood something. I have a library
> >> recipe, lets name it foo, that DEPENDS on mosquitto from
> >> meta-intel-iot-middleware. I added a RDEPENDS_${PN} +=3D " libmosquitt=
o1
> >> ", as the mosquitto package adds this extra package for the mosquitto
> >> library, that library foo depends on. Then I have my app "bar", that
> >> depends on "foo". "bar" is added to the image recipe. The rootfs is
> >> missing out the package libmosquitto1, and therefore missing the
> >> mosquitto library. Workaround is to add libmosquitto explicitly to the
> >> Image recipe, but as I understand, this should not me necessary.
> >
> > Something is odd here because if your foo library links to libmosquitto=
1.so.1
> > then it should already get a runtime dependency on the libmosquitto1 pa=
ckage
> > without you needing to add it. I would perhaps suggest looking at pkgda=
ta -=20
> > bitbake -e foo | grep PKGDATA_DIR  and then look in runtime/foo under t=
hat=20
> > and see what RDEPENDS is indicated in there.
> >
> Thanks for the hint. All I can say is that it looks good:
>=20
> RDEPENDS_foo: libstdc++ (>=3D 6.3.0) glibc (>=3D 2.25) libcrypto (>=3D 1.=
0.2k)
> jsoncpp (>=3D 1.8.0) libmosquitto1 (>=3D 1.4.10) libcurl (>=3D 7.53.1) li=
bgcc
> (>=3D 6.3.0) libssl (>=3D 1.0.2k)
>=20
> Then, in bar
>=20
> RDEPENDS_bar: foo (>=3D 1.4.0-git0e371231) glibc (>=3D 2.25) jsoncpp (>=3D
> 1.8.0) libstdc++ (>=3D 6.3.0) libgcc (>=3D 6.3.0)
>=20
> (foo and bar of course replacements to protect the innocent)
>=20
> Again, libmosquitto1 is missing in rootfs except if I add the package to
> the image recipe.

That's very strange. I can only think that the package manager is ignoring =
that directive, or it's somehow being satisfied by some other package, or i=
t's otherwise being instructed to exclude it.
=20
> I am using pyro, if that is of any help.

Which package backend (rpm / ipk / deb) ?

Cheers,|
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

