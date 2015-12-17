Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFBE9E00B85; Thu, 17 Dec 2015 08:32:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45259E00321
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 08:32:16 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2015 08:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,441,1444719600"; 
	d="asc'?scan'208";a="709762242"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.31])
	([10.219.5.31])
	by orsmga003.jf.intel.com with ESMTP; 17 Dec 2015 08:32:04 -0800
To: yocto@yoctoproject.org
References: <1448920469-15479-1-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <5672E383.6060200@linux.intel.com>
Date: Thu, 17 Dec 2015 10:32:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <1448920469-15479-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: Re: [eclipse-poky][PATCH] OptionsPage.java: Allow BC Project name to be other than poky folder
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
X-List-Received-Date: Thu, 17 Dec 2015 16:32:21 -0000
X-Groupsio-MsgNum: 27736
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="WfxpkQ5qRJlGDSE1wpMTJd7DfPLsmkhUT"

--WfxpkQ5qRJlGDSE1wpMTJd7DfPLsmkhUT
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ping


On 11/30/2015 03:54 PM, Jose Lamego wrote:
> Fixes [Yocto 8407]
>=20
> This change allows a new Yocto Project Bitbake Commander project
> to be named as desired, not as the poky folder.
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  .../src/org/yocto/bc/ui/wizards/install/OptionsPage.java     | 12 ++++=
--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>=20
> diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/instal=
l/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/=
install/OptionsPage.java
> index bd91ef9..582d301 100644
> --- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Optio=
nsPage.java
> +++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Optio=
nsPage.java
> @@ -130,7 +130,7 @@ public class OptionsPage extends FiniteStateWizardP=
age {
>  	@Override
>  =09
>  	protected void updateModel() {
> -		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getTex=
t()+File.separator+txtProjectName.getText());
> +		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getTex=
t());
>  		model.put(InstallWizard.PROJECT_NAME, txtProjectName.getText());
>  	}
> =20
> @@ -166,13 +166,9 @@ public class OptionsPage extends FiniteStateWizard=
Page {
>  			return false;
>  		}
> =20
> -		String projectPath =3D projectLoc + txtProjectName.getText();
> -		File prj_dir=3Dnew File(projectPath);
> -		if(!prj_dir.isDirectory() || !prj_dir.exists()) {
> -			if(!new File(projectPath + File.separator + InstallWizard.VALIDATIO=
N_FILE).exists()) {
> -				setErrorMessage("Directory " + txtProjectLocation.getText() + txtP=
rojectName.getText() + " is an invalid poky directory.");
> -				return false;
> -			}
> +		if(!new File(projectLoc + File.separator + InstallWizard.VALIDATION_=
FILE).exists()) {
> +			setErrorMessage("Directory " + txtProjectLocation.getText() + " is =
an invalid poky directory.");
> +			return false;
>  		}
> =20
>  		try {
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--WfxpkQ5qRJlGDSE1wpMTJd7DfPLsmkhUT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWcuODAAoJEFJAtowlSEbnC9UH/icrlAM+lNIaHnj7vNPdZoJk
ym3pqrLUJMERpC+wxHOGaIf2d2BpeDdM7Xh7mA4Ivqbss1l35JyIxCXSaPnDHMVA
yAWAp0+YcyPH1ezr2cc1WIzFv+Vo65YhwApfNTjD6B5zpGnt77s5pcD1D3dI08Bw
v8LuL4Xds1S24y0A8tHSVym59N4vFJnD/QM8KYPAxim95nBFdWMSBi17nXB85kel
Fc28xaOncyq7XrS53itYF9JVpiIdEonbF3XYVpN5fNhUV+qe/FwcC90OqM+4zqzs
LrXwHdIZIUP+rBabORsjDqCt9Wsacw/ocYajYCtONWXTiF1kJerA+ARjIi9HqpI=
=77dj
-----END PGP SIGNATURE-----

--WfxpkQ5qRJlGDSE1wpMTJd7DfPLsmkhUT--
