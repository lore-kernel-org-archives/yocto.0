Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F55CE00ACC; Sun, 18 Oct 2015 08:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.32.108.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8405 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Oct 2015 08:52:06 PDT
Received: from 9.mo1.mail-out.ovh.net (9.mo1.mail-out.ovh.net [178.32.108.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FDA8E0079D
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2015 08:52:06 -0700 (PDT)
Received: from mail644.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 863FDFFA6F2
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2015 11:56:31 +0200 (CEST)
Received: from localhost (HELO queueout) (127.0.0.1)
	by localhost with SMTP; 18 Oct 2015 11:56:29 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with AES256-GCM-SHA384 encrypted SMTP;
	18 Oct 2015 11:56:28 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id C1FEB40A4F; Sun, 18 Oct 2015 10:57:59 +0100 (BST)
Date: Sun, 18 Oct 2015 10:57:59 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
Message-ID: <20151018095759.GA12999@bang.betafive.co.uk>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
MIME-Version: 1.0
In-Reply-To: <365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 7839641052578233321
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekgedrleegucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekgedrleegucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
X-List-Received-Date: Sun, 18 Oct 2015 15:52:10 -0000
X-Groupsio-MsgNum: 26893
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 16, 2015 at 07:38:19PM +0000, Ahsan, Noor wrote:
> On Oct 16, 2015, at 5:47 AM, Ahsan, Noor <Noor_Ahsan@mentor.com<mailto:No=
or_Ahsan@mentor.com>> wrote:
>=20
> Hello,
>=20
> I noticed that at the time of rootfs creation symbolic links of the ipk f=
iles present in deploy/ipk. The problem what have it while creation of symb=
olic link it take the full path till that ipk and remove slashes and conver=
t them into underscores. Use that as the name of the symbolic link. This ma=
ke a very long file names. If we have very long path then name of the symli=
nk exceed from max filename limits. And we get following error
>=20
> Collected errors:
> * file_link: unable to stat `/var/jenkins/workspace/mel_cedar-main/buildh=
ost/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-=
evm/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-image/1.0-r0/rootfs//=
var/cache/opkg/volatile/file:_var_jenkins_workspace_mel_cedar-main_buildhos=
t_amd-ubuntu14-32b_buildtype_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-ev=
m_tmp_deploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ring-buffer-client-mmap=
-overwrite_2.6.2+git0+7a88f8b506-r0.0_mel_dra7xx_evm.ipk': File name too lo=
ng.
>=20
> Can anyone tell me why the addition of full path was added to the symlink=
 name and can we remove it cause it is cause issues?
>=20
> what does
>=20
> getconf PATH_MAX /
>=20
> show ?
>=20
> jenkins@amd-ubu14-32-3:~$ getconf -a | grep  PATH_MAX
> PATH_MAX                           4096
> _POSIX_PATH_MAX                    4096
>=20
>=20
> I think the issue is with file name not the path.
>=20
> Secondly the googling which I did reveals that symlink creation can't be =
stopped. I just wanna confirm that is my findings correct?
>=20

This looks like something we overlooked in opkg. When we added the caching =
code
we didn't think about how long the paths and filenames might get during the
rootfs step. It's not currently possible to reduce the length of the symlink
filenames, but it is possible to change the directory in which the symlinks=
 are
created.

Currently the opkg cache dir can only be set in the opkg.conf file. I think=
 we
should add a '--cache-dir' argument to opkg. If this is added you'll be abl=
e to
set the following in your local.conf file to change the cache location. Eg.=
 to
use '/tmp/opkg' on the host during rootfs creation.

    OPKG_ARGS =3D "--cache-dir=3D/tmp/opkg"

I'll submit a patch to opkg to add this option.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--OgqxwSJOaUobr8KG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWI20nAAoJEBwoJlo7UPQDL6EH/10vZq6VfRQSL8E3a+xb845L
Zeowah1z9IheKpA4DBLiRb28siyXR8yL23e5kclz8o8VRvfstKa0qVWi6m3BUpSl
y/QbfpX5k4JDsxW+/3Abxav0+hL5jRs1vI0HXQgk+wi4h/+zneOO+I+oa5JRmsbx
yjftP6HlAixYfSOMNuN5roxG5+ByZLC406t30HZhtwnHMSl6UpPR52Gwi5sqm4gj
l6kc1ePZ42aVZNLWNOgEsA+ZQHWYAw3E0sfgV1/ymhcUheOCtJxH4i6sQKr/+13I
KLe4VgTDBvG3i1tU0bp+xtz89TNCPhgX7luEmOAoex65mn+kAKQCc7aiZMs8XbE=
=ryjO
-----END PGP SIGNATURE-----

--OgqxwSJOaUobr8KG--
