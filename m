Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1B6BE00D1C; Mon,  9 Sep 2019 10:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SUBJ_OBFU_PUNCT_FEW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.129.153 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04E0E00C81
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2019 10:11:58 -0700 (PDT)
IronPort-SDR: TCNp9N+SK3vcneoURtn993uhX+jrx1TCmyVD+d9/8knQBF4Y6l5feCnbKInJdPeXP3I84CcJAq
	encWNHB9Pp50a7P0j1HPfDYncVQ3QSqAP3L+6rAs7XrvhrUJgqFc3P7/PZO6RL9SzWGeAyC64O
	2t/0OfxTUs/5Uf39yukH9SFhQxKycJ1KV9AZSPF8DbD5tHNFbf17qSHArlWtO8hg43jdKsZJYn
	wWFfigs8qciV/68Qd4e6tT7rut/Eg9jsYCMppoR7VsFKc9OLj+Auxibm7NtvewxGJ+KsmmZ0UT
	Ctw=
X-IronPort-AV: E=Sophos;i="5.64,486,1559548800"; 
	d="asc'?scan'208";a="42990189"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa1.mentor.iphmx.com with ESMTP; 09 Sep 2019 09:11:56 -0800
IronPort-SDR: QmFnaAnXvho+c7mdiESqv2zLj9nLD9xmasw/aDcPhI2wG1ymJ2eL9kwk5nNMmoE2cfgFnwJ+ZF
	Jsqlns7wHiC3n8YfHVkgKQvxOo00qP72ayyqZSTm8h+mOG2EibaOiHrmaC/r6jP+4dJZIBtphp
	KRMcbc9vqirUjuU6v9lwhs3iww/nYFga73HDo5SQ5EQBOEZJfFc0OF2bhAX5PdfjtS8tHgyTfp
	sh78oAOyH/NXTWUvxXkxNzBn0UXUCGuCLbtmxNoYuwrtMOl3+iFgUFtRqRDcozKbT3krfrNpG3
	Q4s=
Date: Mon, 9 Sep 2019 13:11:52 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190909171150.GD37987@deserted.net>
References: <1568008890-8700-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1568008890-8700-1-git-send-email-yi.zhao@windriver.com>
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
X-List-Received-Date: Mon, 09 Sep 2019 17:11:59 -0000
X-Groupsio-MsgNum: 46555
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4zI0WCX1RcnW9Hbu"
Content-Disposition: inline

--4zI0WCX1RcnW9Hbu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

[[meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic lay=
ers] On 19.09.09 (Mon 14:01) Yi Zhao wrote:

> From: Robert Yang <liezhi.yang@windriver.com>
>=20
> The previous code add all BBFILE_COLLECTIONS/recipes*/*/*.bbappend to BBF=
ILES,
> which causes the parsing very slow when there are many layers, e.g., I ha=
ve 87
> layers:
>=20
> * Before:
> $ rm -fr tmp-glibc/ cache; time bitbake -p
> real    0m45.173s
> user    0m0.560s
> sys     0m0.060s
>=20
> * After:
> $ rm -fr tmp-glibc/ cache; time bitbake -p
> real    0m25.542s
> user    0m0.572s
> sys     0m0.040s
>=20
> It wasted 20s which wasn't worth (The host has 128 threads, it should cos=
t more
> time on less power host), use BBFILES_DYNAMIC can fix the problem.


This seems like a big claim, I certainly haven't seen that on my setup:

* Before:
$ rm -fr tmp cache
real    0m14.751s
user    0m0.323s
sys     0m0.048s

* After:=20
$ rm -fr tmp cache ; time bitbake -p
real    0m14.725s
user    0m0.326s
sys     0m0.046s

but it's still a sensible change.  When I ran a test before/after
configuration for augeas the configuration seemed off, though.  Can you
confirm that with this change as is you're getting the correct
--with/--without and --enable/--disable and patches applied for your
layers?  I just want to confirm since the ~20s difference in parsing
seems kind of out of scale for moving essentially three bbappends around
and I'm wondering if there's something else siginficant in your tree we
want to consider.

-J.

>=20
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  conf/layer.conf                                               | 11 +++++=
++----
>  .../recipes-daemons/iscsi-initiator-utils/files/initd.debian  |  0
>  .../iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend    |  0
>  .../iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc   |  0
>  .../recipes-support}/augeas/augeas_%.bbappend                 |  0
>  .../recipes-containers/lxc/lxc_%.bbappend                     |  0
>  6 files changed, 7 insertions(+), 4 deletions(-)
>  rename {networking-layer =3D> dynamic-layers/networking-layer}/recipes-d=
aemons/iscsi-initiator-utils/files/initd.debian (100%)
>  rename {networking-layer =3D> dynamic-layers/networking-layer}/recipes-d=
aemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend (100%)
>  rename {networking-layer =3D> dynamic-layers/networking-layer}/recipes-d=
aemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc (100%)
>  rename {meta-python/recipes-extended/augeas =3D> dynamic-layers/openembe=
dded-layer/recipes-support}/augeas/augeas_%.bbappend (100%)
>  rename {virtualization-layer =3D> dynamic-layers/virtualization-layer}/r=
ecipes-containers/lxc/lxc_%.bbappend (100%)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 9dd34b1..89b9468 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -5,10 +5,13 @@ BBPATH .=3D ":${LAYERDIR}"
>  BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
>              ${LAYERDIR}/recipes-*/*/*.bbappend"
> =20
> -# Let us add layer-specific bbappends which are only applied when that
> -# layer is included in our configuration
> -BBFILES +=3D "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer=
 \
> -               for layer in BBFILE_COLLECTIONS.split())}"
> +BBFILES_DYNAMIC +=3D "openembedded-layer:${LAYERDIR}/dynamic-layers/open=
embedded-layer/*/*/*.bb \
> +                    openembedded-layer:${LAYERDIR}/dynamic-layers/openem=
bedded-layer/*/*/*.bbappend \
> +                    networking-layer:${LAYERDIR}/dynamic-layers/networki=
ng-layer/*/*/*.bb \
> +                    networking-layer:${LAYERDIR}/dynamic-layers/networki=
ng-layer/*/*/*.bbappend \
> +                    virtualization-layer:${LAYERDIR}/dynamic-layers/virt=
ualization-layer/recipes*/*/*.bb \
> +                    virtualization-layer:${LAYERDIR}/dynamic-layers/virt=
ualization-layer/recipes*/*/*.bbappend \
> +                   "
> =20
>  BBFILE_COLLECTIONS +=3D "selinux"
>  BBFILE_PATTERN_selinux =3D "^${LAYERDIR}/"
> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/files=
/initd.debian b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initi=
ator-utils/files/initd.debian
> similarity index 100%
> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/files/=
initd.debian
> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator=
-utils/files/initd.debian
> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi=
-initiator-utils_%.bbappend b/dynamic-layers/networking-layer/recipes-daemo=
ns/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
> similarity index 100%
> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-=
initiator-utils_%.bbappend
> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator=
-utils/iscsi-initiator-utils_%.bbappend
> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi=
-initiator-utils_selinux.inc b/dynamic-layers/networking-layer/recipes-daem=
ons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
> similarity index 100%
> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-=
initiator-utils_selinux.inc
> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator=
-utils/iscsi-initiator-utils_selinux.inc
> diff --git a/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend=
 b/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappe=
nd
> similarity index 100%
> rename from meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
> rename to dynamic-layers/openembedded-layer/recipes-support/augeas/augeas=
_%.bbappend
> diff --git a/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend b=
/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
> similarity index 100%
> rename from virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
> rename to dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_=
%.bbappend
> --=20
> 2.7.4
>=20

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--4zI0WCX1RcnW9Hbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXXaHyAAKCRDAW9yWWiDR
fEQUAJ9IdxRkJMGKb1nQeuf8B47A6r1MLgCdFc5hr9basF84A9FAIQwrX5StOyw=
=zqQ0
-----END PGP SIGNATURE-----

--4zI0WCX1RcnW9Hbu--
