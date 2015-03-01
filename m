Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9177E00867; Sun,  1 Mar 2015 07:53:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [188.165.43.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1196 seconds by postgrey-1.32 at yocto-www;
	Sun, 01 Mar 2015 07:53:03 PST
Received: from 14.mo3.mail-out.ovh.net (14.mo3.mail-out.ovh.net
	[188.165.43.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91703E00746
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 07:53:03 -0800 (PST)
Received: from mail622.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id A9EE8FF939D
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 16:14:10 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 1 Mar 2015 17:14:10 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with SMTP; 1 Mar 2015 17:14:08 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id 255DC412AA; Sun,  1 Mar 2015 15:14:54 +0000 (GMT)
Date: Sun, 1 Mar 2015 15:14:54 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: opkg-devel <opkg-devel@googlegroups.com>
Message-ID: <20150301151454.GA11398@bang.betafive.co.uk>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 3224577334390012793
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeejledrfeehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeejledrfeehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Core <openembedded-core@lists.openembedded.org>
Subject: Stepping back from opkg maintenance
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
X-List-Received-Date: Sun, 01 Mar 2015 15:53:08 -0000
X-Groupsio-MsgNum: 23785
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

I had a change of circumstances at the beginning of January. Previously I w=
as a
full-time PhD student and maintaining opkg was my side project. Now I'm a
full-time software engineer and finishing up my PhD thesis is my side proje=
ct.
I've been trying to find time to fit opkg in there as well but it's just not
happening. I had at least hoped that I could get opkg to a v0.3.0 release b=
efore
I had to step back from opkg development but as I haven't really made any
commits to opkg in 2 months now I don't think it's reasonable to expect that
I'll get this done any time soon.

I'll try to keep an eye on the opkg mailing list and contribute with answer=
s and
suggestions when I can but I think someone else will have to take over as t=
he
maintainer of opkg. I'll do whatever I can to ensure as smooth transition if
someone else wants to take up the job of moving opkg forward.

I'd like to thank everyone that's contributed to opkg, whether by sending
patches or just by reporting bugs or making suggestions. I've only been
maintainer for around 18 months but I'd like to think we've made some good
progress in that time and I hope that that can continue forwards under some=
one
else's leadership.

Once I've submitted my PhD thesis I'll hopefully find some time to get back
involved with open source projects, whether that's further work on opkg or
getting involved in a different project.

Many thanks again,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU8yzuAAoJEBwoJlo7UPQDJPMH/0aQfcz9xu3Bc7DFui7h0C+c
lU6btTHFqn/nAr9Ro2tgxebfykdHJG5nzzdLn3BH8GdXCJapUIf3OOcriVKbzpOF
pBt9oZ5v8A6FQkfcrHOqVaR6CWx18yk4zUnvN/icEC5crbLKgISmedoaSMR/kxeK
x6mXfQp/uyWh/M7PPg4bLsqIwgXsEFfXthH7Afw3zN0RmQ9AUqxttu5Nb6WCdUs0
EPmKGBQW3gUhK6vDtM84SHzR0ZoR5rap+WxSfiAAhwzSPyMFdoRa9aLq49qs5GY7
YlLvGKml3bl5KWzH3NK+SRHeQ8TILTpj6tsOi6NZYlIecucokkGDrIcfOEjFJ2c=
=botw
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
