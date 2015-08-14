Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E893DE00A75; Fri, 14 Aug 2015 16:33:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.32.228.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4200 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Aug 2015 16:33:42 PDT
Received: from mo69.mail-out.ovh.net (mo69.mail-out.ovh.net [178.32.228.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F8FFE00A70
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 16:33:42 -0700 (PDT)
Received: from mail182.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo69.mail-out.ovh.net (Postfix) with SMTP id B38CDFFCFD1
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 20:46:18 +0200 (CEST)
Received: from localhost (HELO queueout) (127.0.0.1)
	by localhost with SMTP; 14 Aug 2015 20:46:17 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with AES256-GCM-SHA384 encrypted SMTP;
	14 Aug 2015 20:46:16 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id EF2A440A50; Fri, 14 Aug 2015 19:46:49 +0100 (BST)
Date: Fri, 14 Aug 2015 19:46:49 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20150814184649.GA32572@bang.betafive.co.uk>
References: <55C4B071.30709@gmail.com>
	<20150809100724.GA24792@bang.betafive.co.uk>
	<55C8ABFB.3050802@gmail.com>
MIME-Version: 1.0
In-Reply-To: <55C8ABFB.3050802@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 3996944669473881039
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekfedrfeekucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekfedrfeekucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: ipk zImage in master-next
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
X-List-Received-Date: Fri, 14 Aug 2015 23:33:45 -0000
X-Groupsio-MsgNum: 26128
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 10, 2015 at 09:49:47AM -0400, Trevor Woerner wrote:
> On 08/09/15 06:07, Paul Barker wrote:
> > On Fri, Aug 07, 2015 at 09:19:45AM -0400, Trevor Woerner wrote:
> >> When packaging a zImage kernel for IPK in master-next the following
> >> error shows up:
> >>
> >> | kernel-image-zImage-4.1.2-fslc+g95d9e15
> >> | *** Error: Package name  contains illegal characters, (other than
> >> [a-z0-9.+-])
> >>
> >> It looks like the newer kernel.bbclass is much more sophisticated about
> >> generating package names than before.
> >>
> >> Has anyone else seen this? Is there a simple way of saying "the type is
> >> zimage where packaging for ipk is concerned but zImage otherwise"?
> >>
> >> Best regards,
> >> 	Trevor
> >=20
> > I believe this check is present in opkg-build just to ensure compatibil=
ity with
> > the Debian Policy Manual. I don't remember this being an actual restric=
tion of
> > opkg.
> >=20
> > You could try patching the opkg-build script (in opkg-utils) to remove =
this
> > check and see if opkg is happy to install the resulting package.
>=20
> Yes, this works. Removing the check from opkg-build causes my build to
> succeed, and the resulting image boots with this kernel (meaning opkg is
> happy to install the package into the image).
>=20
> Normally this is the part where I'd ask if you want me to send a patch,
> but if that check is there for a reason, simply removing it isn't a
> proper solution.
>=20
> Thoughts?
>=20

I'd suggest removing it if the latest version of opkg can install the resul=
ting
package. It's either an old limitation or there purely to comply with the D=
ebian
Policy Manual (which we don't need to comply with).

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVzjeZAAoJEBwoJlo7UPQD+uUH/0RY7p84Y7flcLOTL+vAN/WR
DEqPlnNfleWC93jfh6+532AoToX5aPjqbTs4Va6fpRvcr+8oVJIIFyFTK7CcCRlw
uYOmAewC2isu6ji74kLZ7UZcEzj2jiddJTfCyigxPYpIJw/Ph+OUfi+TBXDDc0jd
XlmbVPKuP6UdyGSdetrPN37m3aGzmhCDceexUPVkvqYUm1eLOuwv/+ywLQ4KB7HL
REv/Hh73Y+3r2F1eGNcZ3bZQ4ihEOvxYmG3h2vT28kAWq2uUbRhx8fNN65af2jSA
H4Eg2sXyUrmWapZN+zexPK++SjT57QnHyqeyt5dJoSSkJhtP5G2qX8DTA8Kaoqk=
=jios
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--
