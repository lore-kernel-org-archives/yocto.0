Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A7A2E00B58; Sat, 24 Oct 2015 20:34:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [87.98.184.159 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 27603 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Oct 2015 20:34:02 PDT
Received: from 4.mo6.mail-out.ovh.net (4.mo6.mail-out.ovh.net [87.98.184.159])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73401E0053A
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 20:34:02 -0700 (PDT)
Received: from mail172.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo6.mail-out.ovh.net (Postfix) with SMTP id 4C0EEFF98CB
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 21:18:06 +0200 (CEST)
Received: from localhost (HELO queueout) (127.0.0.1)
	by localhost with SMTP; 24 Oct 2015 21:18:05 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with AES256-GCM-SHA384 encrypted SMTP;
	24 Oct 2015 21:18:03 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id B7F0240A4F; Sat, 24 Oct 2015 20:19:40 +0100 (BST)
Date: Sat, 24 Oct 2015 20:19:40 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Christopher Larson <clarson@kergoth.com>
Message-ID: <20151024191940.GB15983@bang.betafive.co.uk>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
	<562BC58D.4090600@ni.com>
	<CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 15666615729120852821
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekhedrtdekucetufdoteggodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekhedrtdekucetufdoteggodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Sun, 25 Oct 2015 03:34:12 -0000
X-Groupsio-MsgNum: 27006
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="b5gNqxB1S1yM7hjW"
Content-Disposition: inline

--b5gNqxB1S1yM7hjW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 24, 2015 at 06:54:16PM +0000, Christopher Larson wrote:
> Not likely to help. The problem is the filename length, which will be the
> same whether it's a file or a symlink.
> On Sat, Oct 24, 2015 at 10:53 AM Alejandro del Castillo <
> alejandro.delcastillo@ni.com> wrote:
>=20
> >
> >
> > On 10/21/2015 02:49 AM, Ahsan, Noor wrote:
> > > We are hitting this issue on another BSP
> > >
> > >
> > file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_industrial=
_machine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_zedboar=
d_zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git=
0+7a88f8b506-r0.0_zedboard_zynq7_mel.ipk
> > >
> > > need its solution quickly
> >
> > If you are in need of a quick workaround, try setting:
> >
> > option cache_local_files 0
> >
> > on opkg.conf. This will make a copy of your ipk's instead of creating
> > symlinks (haven't try it myself, but that's my understanding).
> >
> > Also, please open a bug report for opkg on
> > https://bugzilla.yoctoproject.org to track the issue.
> >

I've just posted patches to the opkg-devel list which should fix this. I had
intended to give them a bit more testing before I sent them but a quick fix=
 is
needed.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--b5gNqxB1S1yM7hjW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWK9nMAAoJEBwoJlo7UPQDA8sH/iriVOVLlt3Gj1MK0mLZ3X9I
mfPjI3xhU6kTCgav+q0cfipIJq3kwPlIIRldhd8jNtDwKad2xlo67jaVHp190Z0S
aBpK7mvs88LTOJx7ZMFT+q6N2iMFXrN83w0kglT52cnRaQHrjmYzHrnW9TM9bA0V
yEeFRCslMAbndxY2gEX7h+WnAYYlziGgOQgoOrT8NozfnQEPOHtyFtp52wcBcw5a
nnmBIYeFp642Sr1MJNksmGoVrW5uAArrfnHMk5VCZNLMdmTdolF8ZrQGpE9BCk7I
NA+PpC77oiqSyb5MHSwfD9HBpTwNkDdj95k3wrFE8D/I4d7YKDnH3ttOd1tHdJI=
=4P2Q
-----END PGP SIGNATURE-----

--b5gNqxB1S1yM7hjW--
