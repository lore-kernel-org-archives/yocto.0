Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96A3E010EC; Mon, 14 May 2018 09:10:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDFD2E010EC
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 09:10:01 -0700 (PDT)
Received: from svr-orw-mbx-07.mgc.mentorg.com ([147.34.90.207])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1fIG2y-0000Rl-4V from Joe_MacDonald@mentor.com ;
	Mon, 14 May 2018 09:10:00 -0700
Received: from SVR-ORW-MBX-05.mgc.mentorg.com (147.34.90.205) by
	SVR-ORW-MBX-07.mgc.mentorg.com (147.34.90.207) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Mon, 14 May 2018 09:09:57 -0700
Received: from burninator.cal.mentorg.com (147.34.91.1) by
	SVR-ORW-MBX-05.mgc.mentorg.com (147.34.90.205) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Mon, 14 May 2018 09:09:57 -0700
Received: by burninator.cal.mentorg.com (Postfix, from userid 1000)
	id 6986A58396B; Mon, 14 May 2018 12:09:56 -0400 (EDT)
Date: Mon, 14 May 2018 12:09:56 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20180514160956.njdfc4pycyd3snvl@mentor.com>
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
	<9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
	<d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
	<fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
	<8fe4ffc7-4300-46c1-ae31-aee3861a66d6@windriver.com>
MIME-Version: 1.0
In-Reply-To: <8fe4ffc7-4300-46c1-ae31-aee3861a66d6@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: Rudolf J Streif <rudolf.streif@gmail.com>, yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Mon, 14 May 2018 16:10:03 -0000
X-Groupsio-MsgNum: 41139
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="drnlx7c5vc26usfh"
Content-Disposition: inline

--drnlx7c5vc26usfh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now part=
 of python*-core] On 18.05.14 (Mon 10:05) Mark Hatle wrote:

> On 5/11/18 1:19 PM, Rudolf J Streif wrote:
> > Thank you, Mark. Much appreciated and understood.
> >=20
> > Would you be open to tagging the layer for rocko to the right commit and
> > applying the patches sent to the mailing list by Armin and Kai to master
> > so that we have known points to move forward?
>=20
> I'm going to try to sync with Joe later today.  I'll make sure that we
> branch rocko..  If Joe can't get to the sumo work this week, I'll do
> my best to get it done.

Yeah, just keep everyone in the loop on this, Mark and I will
coordinate, I anticipate having the current meta-selinux queue cleaned
up this week.  I followed up last week to Armin indicating that I was
working on this, but as I'm sure anyone building meta-selinux right now
already knows, things are not happy there and corrective measures are
kind of involved.

As for longer-term maintenance, meta-selinux and SELinux in general is
of particular interest to me personally, but much like Mark, I haven't
has as much time for the layer as it deserves lately, so if anyone wants
to volunteer to help out with it, by all means, let us know.


Thanks,
-J.

>=20
> --Mark
>=20
> > Thank you,
> > Rudi
> >=20
> >=20
> > On 05/11/2018 10:45 AM, Mark Hatle wrote:
> >> On 5/11/18 12:28 PM, Rudolf J Streif wrote:
> >>> Echoing this: may I ask what the current maintenance status of
> >>> meta-selinux is. It appears that no updates have been made for more t=
han
> >>> 9 months. This is of course not to blame anybody but out of concern t=
hat
> >>> the layer is falling behind even more and to find a solution.
> >> The answer is the current set of people are horribly overworked and bu=
sy, so
> >> day-to-day updates have been 'sparse'.
> >>
> >> Usually we update meta-selinux about the time of a release, and thus a=
re due.
> >>
> >> The last update of meta-selinux was about the time of the Rocko releas=
e, so what
> >> is in master is definitely current as of Rocko.  (I did the last set o=
f updates
> >> -- so I know it did work as of Rocko release.)  The master needs to be=
 branched
> >> as Rocko... master needs to be updated to be Sumo compatible.
> >>
> >> My assumption is that once Sumo is formally released (any minute now),=
 we'll
> >> collection all of the patches and get them into place and spend some t=
ime
> >> cleaning them up...
> >>
> >> It looks like Joe is already working through this effort.
> >>
> >> (Only speaking for myself,) I don't have time to do day-to-day mainten=
ance of
> >> meta-selinux any longer -- nor do I have the indepth knowledge to unde=
rstand
> >> when not to do something.  I filled this role purely out of necessity =
since
> >> nobody else was doing it.
> >>
> >> So with that said, if anyone wants to help, we're all open for help he=
re...  I
> >> doubt there would be any objection to adding or replacing existing mai=
ntainers
> >> and/or giving more people push access.
> >>
> >>> In addition to Armin's patches there are two patches submitted by Kai
> >>> Kang at Windriver:
> >>>
> >>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917=
=2Ehtml
> >>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918=
=2Ehtml
> >>>
> >>> Curiously enough, the second patch has been applied to master but not
> >>> the first one.
> >>>
> >>>
> >>> There is also an issue with building SELinux with systemd. The layer
> >>> enables auditing:
> >>>
> >>> meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =3D
> >>> "--enable-audit,--disable-audit,audit,"
> >>> meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
> >>> ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', ''=
, d)}
> >>>
> >>> Apparently the --enable-audit switch is passed to meson when running =
the
> >>> configure task, which meson does not appreciate. I am not that famili=
ar
> >>> with the audit feature nor with meson, so I currently have no idea on
> >>> how to fix this the right way.
> >> audit feature is useful outside of selinux, so my understand was that =
audit
> >> itself was moving into core during the sumo time frame (if it hadn't a=
lready
> >> been oved.)
> >>
> >> I don't know anything about meson, so I can't speak to that...
> >>
> >>> Further, refpolicy_git does not build anymore as the YP specific patc=
hes
> >>> do not apply anymore since upstream changed.
> >> The refpolicy is and has always been crap.  I've been talking to a few=
 people on
> >> IRC about working to replace the refpolicy with a policy that can be g=
enerated
> >> dynamically based on the contents of the recipes.  I don't know if tha=
t is
> >> really going to happen, but I hate the way it's currently implemented.
> >>
> >> One of the key issues about the refpolicy is that you need to be an ex=
pert at
> >> this (which I never claimed to be) in order to make any reasonable dec=
ision --
> >> add to that any specific policy needs to userstand overall system desi=
gn, and I
> >> wouldn't trust any of the refpolicy items as they stand in meta-selinu=
x.
> >>
> >> --Mark
> >>
> >>> Thanks,
> >>> Rudi
> >>>
> >>>
> >>>
> >>> On 05/07/2018 10:20 AM, akuster808 wrote:
> >>>> On 04/14/2018 07:08 PM, Armin Kuster wrote:
> >>>>> Missing or unbuildable dependency chain was: ['meta-world-pkgdata',=
 'restorecond', 'libselinux', 'python-importlib']
> >>>>>
> >>>>> Signed-off-by: Armin Kuster <akuster@mvista.com>
> >>>> ping
> >>>>> ---
> >>>>>  recipes-security/selinux/libselinux.inc | 2 +-
> >>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-secu=
rity/selinux/libselinux.inc
> >>>>> index bd5ce8d..51d0875 100644
> >>>>> --- a/recipes-security/selinux/libselinux.inc
> >>>>> +++ b/recipes-security/selinux/libselinux.inc
> >>>>> @@ -8,7 +8,7 @@ LICENSE =3D "PD"
> >>>>>  inherit lib_package pythonnative
> >>>>> =20
> >>>>>  DEPENDS +=3D "libsepol python libpcre swig-native"
> >>>>> -RDEPENDS_${PN}-python +=3D "python-importlib"
> >>>>> +RDEPENDS_${PN}-python +=3D "python-core"
> >>>>> =20
> >>>>>  PACKAGES +=3D "${PN}-python"
> >>>>>  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site=
-packages/*"
> >>>
> >>>
> >=20
>=20
>=20




--=20
-Joe MacDonald.
:wq

--drnlx7c5vc26usfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlr5tNMACgkQSfx99yw5
9pZ8XQgAt6VodsDwJgT2HR3IRhCh55b/6sPX7+VGfdBj45LmU5f1dwpGo32D1ZZo
m2P8fSietmp4zkxMUZvVL2+nOoK+wHfmSmWcDWDj23Bp/l7G1mIl6leEjY0MwtVT
J9BWUfPgFG1egS6y4KoJFa0fr0bSqhmMkGL2IwskWotDif5jssAiyZY7zkYOKtFn
7HjcxqwivFmJT6X49aRBJHxQsYZd1O0nwKCpivyDcsOe0Y9BSQ9rcf63slwPCJ4G
Sw94TChTj0ov1+lsK8JI35CInBpXWJ7fvdR/kV6LOz8o3x9Ig7ruDs9xesmuPSiP
BjfggU4aDxuEk2q5QNeEl79YzXB0Cw==
=+fZg
-----END PGP SIGNATURE-----

--drnlx7c5vc26usfh--
