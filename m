Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA251E00DE4; Wed, 11 Sep 2019 07:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.141.98 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Sep 2019 07:47:12 PDT
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF6BE00DE4
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 07:47:12 -0700 (PDT)
IronPort-SDR: lNOoBngqABORKOc+f2wiXNtlrAdXdFDlQ22AQXsRi6g45vbKpbpwUWU1x2JLgNgAd30G9WKJ3o
	6uHUCW6CvKA45u/p55NbvWcQ0Ws2vM8YWLfc2IDoTjyiT4IZ9PMmXCzleFHHI91XPRNG82bF19
	o6d/NA/n+xOlhQ3t3AafuVhu2hni244DSXDs1eHBcCflLOq1RSeGSc/Qqr3nBdX4/fvXKuV+0O
	wfpdCKlmZ4OtDAibZRh2armKa7NEt5dZ6HtmHa79JH0kydYdUjYLk91rKkDo195vHFL70s3UW1
	wnM=
X-IronPort-AV: E=Sophos;i="5.64,493,1559548800"; 
	d="asc'?scan'208";a="41215552"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
	by esa2.mentor.iphmx.com with ESMTP; 11 Sep 2019 06:46:09 -0800
IronPort-SDR: mbFsQHQDOY0E5F458FNDVb0uzyCSqiVOexLZpPqai89VoGkElCBTJilCHiaM8mfL2EV0nHVZdo
	B29Ddg/aAP5l6EKZ1wAZvXPehoSqpnIhW6ZfOD6mjms6c2wN4XONhLfiVmJB9JJynVdsEreHcq
	mWNdUfb1IlZTP7fDas8SSOerUioOpKZmamossWMgdgkJiMT3XtIjiXe//y06QvaK1lBnlitxCI
	ZrQBHvv0Ix9km3Dyx0w4/WSmF3Xc4H19yYJEAODfOTViH9lruoRhLWbGGDwCudOarlBt+e214k
	kC0=
Date: Wed, 11 Sep 2019 10:46:06 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190911144604.GA13077@deserted.net>
References: <1568008890-8700-1-git-send-email-yi.zhao@windriver.com>
	<20190909171150.GD37987@deserted.net>
	<f42b6eae-46b5-0d8f-5efa-63007b1bfa0b@windriver.com>
MIME-Version: 1.0
In-Reply-To: <f42b6eae-46b5-0d8f-5efa-63007b1bfa0b@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic layers
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
X-List-Received-Date: Wed, 11 Sep 2019 14:47:14 -0000
X-Groupsio-MsgNum: 46569
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic=
 layers] On 19.09.11 (Wed 09:22) Yi Zhao wrote:

>=20
> On 9/10/19 1:11 AM, Joe MacDonald wrote:
> > Hi Yi,
> >=20
> > [[meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic=
 layers] On 19.09.09 (Mon 14:01) Yi Zhao wrote:
> >=20
> > > From: Robert Yang <liezhi.yang@windriver.com>
> > >=20
> > > The previous code add all BBFILE_COLLECTIONS/recipes*/*/*.bbappend to=
 BBFILES,
> > > which causes the parsing very slow when there are many layers, e.g., =
I have 87
> > > layers:
> > >=20
> > > * Before:
> > > $ rm -fr tmp-glibc/ cache; time bitbake -p
> > > real    0m45.173s
> > > user    0m0.560s
> > > sys     0m0.060s
> > >=20
> > > * After:
> > > $ rm -fr tmp-glibc/ cache; time bitbake -p
> > > real    0m25.542s
> > > user    0m0.572s
> > > sys     0m0.040s
> > >=20
> > > It wasted 20s which wasn't worth (The host has 128 threads, it should=
 cost more
> > > time on less power host), use BBFILES_DYNAMIC can fix the problem.
> >=20
> > This seems like a big claim, I certainly haven't seen that on my setup:
> >=20
> > * Before:
> > $ rm -fr tmp cache
> > real    0m14.751s
> > user    0m0.323s
> > sys     0m0.048s
> >=20
> > * After:
> > $ rm -fr tmp cache ; time bitbake -p
> > real    0m14.725s
> > user    0m0.326s
> > sys     0m0.046s
> >=20
> > but it's still a sensible change.  When I ran a test before/after
> > configuration for augeas the configuration seemed off, though.  Can you
> > confirm that with this change as is you're getting the correct
> > --with/--without and --enable/--disable and patches applied for your
> > layers?  I just want to confirm since the ~20s difference in parsing
> > seems kind of out of scale for moving essentially three bbappends around
> > and I'm wondering if there's something else siginficant in your tree we
> > want to consider.
>=20
>=20
> This patch is from Robert Yang. CC to him. Maybe he can give us more
> explanation.
>=20
> For the augeas, the current augeas_%.bbapend doesn't work because the aug=
eas
> recipe is in meta-oe layer but not meta-python layer. This patch moves the
> bbappend to the correct layer to fix this issue.
>=20
> It works on my local:
>=20
> $ cat log.do_configure
>=20
> [snip]
> checking for library containing setfilecon... -lselinux
> [snip]
> checking for selinux/selinux.h... (cached) yes
> checking selinux/context.h usability... yes
> checking selinux/context.h presence... yes
> checking for selinux/context.h... yes
> [snip]

Okay, thanks.  Funny that I randomly picked the package that was broken
in multiple ways, but this looks like an improvement overall.

-J.

>=20
>=20
> //Yi
>=20
>=20
> >=20
> > -J.
> >=20
> > > Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> > > Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> > > ---
> > >   conf/layer.conf                                               | 11 =
+++++++----
> > >   .../recipes-daemons/iscsi-initiator-utils/files/initd.debian  |  0
> > >   .../iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend    |  0
> > >   .../iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc   |  0
> > >   .../recipes-support}/augeas/augeas_%.bbappend                 |  0
> > >   .../recipes-containers/lxc/lxc_%.bbappend                     |  0
> > >   6 files changed, 7 insertions(+), 4 deletions(-)
> > >   rename {networking-layer =3D> dynamic-layers/networking-layer}/reci=
pes-daemons/iscsi-initiator-utils/files/initd.debian (100%)
> > >   rename {networking-layer =3D> dynamic-layers/networking-layer}/reci=
pes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend (100%)
> > >   rename {networking-layer =3D> dynamic-layers/networking-layer}/reci=
pes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc (100%)
> > >   rename {meta-python/recipes-extended/augeas =3D> dynamic-layers/ope=
nembedded-layer/recipes-support}/augeas/augeas_%.bbappend (100%)
> > >   rename {virtualization-layer =3D> dynamic-layers/virtualization-lay=
er}/recipes-containers/lxc/lxc_%.bbappend (100%)
> > >=20
> > > diff --git a/conf/layer.conf b/conf/layer.conf
> > > index 9dd34b1..89b9468 100644
> > > --- a/conf/layer.conf
> > > +++ b/conf/layer.conf
> > > @@ -5,10 +5,13 @@ BBPATH .=3D ":${LAYERDIR}"
> > >   BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
> > >               ${LAYERDIR}/recipes-*/*/*.bbappend"
> > > -# Let us add layer-specific bbappends which are only applied when th=
at
> > > -# layer is included in our configuration
> > > -BBFILES +=3D "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % l=
ayer \
> > > -               for layer in BBFILE_COLLECTIONS.split())}"
> > > +BBFILES_DYNAMIC +=3D "openembedded-layer:${LAYERDIR}/dynamic-layers/=
openembedded-layer/*/*/*.bb \
> > > +                    openembedded-layer:${LAYERDIR}/dynamic-layers/op=
enembedded-layer/*/*/*.bbappend \
> > > +                    networking-layer:${LAYERDIR}/dynamic-layers/netw=
orking-layer/*/*/*.bb \
> > > +                    networking-layer:${LAYERDIR}/dynamic-layers/netw=
orking-layer/*/*/*.bbappend \
> > > +                    virtualization-layer:${LAYERDIR}/dynamic-layers/=
virtualization-layer/recipes*/*/*.bb \
> > > +                    virtualization-layer:${LAYERDIR}/dynamic-layers/=
virtualization-layer/recipes*/*/*.bbappend \
> > > +                   "
> > >   BBFILE_COLLECTIONS +=3D "selinux"
> > >   BBFILE_PATTERN_selinux =3D "^${LAYERDIR}/"
> > > diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/f=
iles/initd.debian b/dynamic-layers/networking-layer/recipes-daemons/iscsi-i=
nitiator-utils/files/initd.debian
> > > similarity index 100%
> > > rename from networking-layer/recipes-daemons/iscsi-initiator-utils/fi=
les/initd.debian
> > > rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initi=
ator-utils/files/initd.debian
> > > diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/i=
scsi-initiator-utils_%.bbappend b/dynamic-layers/networking-layer/recipes-d=
aemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
> > > similarity index 100%
> > > rename from networking-layer/recipes-daemons/iscsi-initiator-utils/is=
csi-initiator-utils_%.bbappend
> > > rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initi=
ator-utils/iscsi-initiator-utils_%.bbappend
> > > diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/i=
scsi-initiator-utils_selinux.inc b/dynamic-layers/networking-layer/recipes-=
daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
> > > similarity index 100%
> > > rename from networking-layer/recipes-daemons/iscsi-initiator-utils/is=
csi-initiator-utils_selinux.inc
> > > rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initi=
ator-utils/iscsi-initiator-utils_selinux.inc
> > > diff --git a/meta-python/recipes-extended/augeas/augeas/augeas_%.bbap=
pend b/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bb=
append
> > > similarity index 100%
> > > rename from meta-python/recipes-extended/augeas/augeas/augeas_%.bbapp=
end
> > > rename to dynamic-layers/openembedded-layer/recipes-support/augeas/au=
geas_%.bbappend
> > > diff --git a/virtualization-layer/recipes-containers/lxc/lxc_%.bbappe=
nd b/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbapp=
end
> > > similarity index 100%
> > > rename from virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
> > > rename to dynamic-layers/virtualization-layer/recipes-containers/lxc/=
lxc_%.bbappend
> > > --=20
> > > 2.7.4
> > >=20

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXXkInQAKCRDAW9yWWiDR
fPgGAJ9RsjGEUj+8f8PnBLNdHbtwg4hIhwCeIpKWrW1I5vPv7lljcw0iplpx+uU=
=nA8c
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--
