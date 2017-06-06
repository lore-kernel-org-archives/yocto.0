Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D968E00BCC; Tue,  6 Jun 2017 08:48:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A9C4E00BEC
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 08:48:14 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2017 08:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,306,1493708400"; 
	d="asc'?scan'208";a="111058049"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.117])
	([10.219.128.117])
	by fmsmga005.fm.intel.com with ESMTP; 06 Jun 2017 08:48:12 -0700
To: yocto@yoctoproject.org
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
	<1496764011-3595-4-git-send-email-anibal.limon@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5936CEBD.2060500@linux.intel.com>
Date: Tue, 6 Jun 2017 10:48:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1496764011-3595-4-git-send-email-anibal.limon@linux.intel.com>
Cc: monserratx.sedeno.bustos@intel.com
Subject: Re: [yocto-autobuilder][PATCHv2 4/5] autobuilder/buildsteps: Add DAFTFlash buildstep
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
X-List-Received-Date: Tue, 06 Jun 2017 15:48:30 -0000
X-Groupsio-MsgNum: 36399
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="4AIlHrmIddSS7vBADthcgmPDE5QaVjlK9"

--4AIlHrmIddSS7vBADthcgmPDE5QaVjlK9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

This v2 fixes an small issue on variable name, DAFT_WORKER_WORKSPACE_DIR
-> DAFT_WORKER_WORKSPACE.

Cheers,
Anibal

On 06/06/2017 10:46 AM, An=C3=ADbal Lim=C3=B3n wrote:
> This will execute daft flash cycle without reboot and prepare the dut
> for sanity tests.
>=20
> [YOCTO #10604]
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>
> Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
> ---
>  config/autobuilder.conf.example                    |  1 +
>  .../autobuilder/buildsteps/DaftFlash.py            | 42 ++++++++++++++=
++++++++
>  lib/python2.7/site-packages/autobuilder/config.py  |  1 +
>  3 files changed, 44 insertions(+)
>  create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/=
DaftFlash.py
>=20
> diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.=
example
> index e5ec16b..2e992cf 100644
> --- a/config/autobuilder.conf.example
> +++ b/config/autobuilder.conf.example
> @@ -98,3 +98,4 @@ PERFORMANCE_MAIL_SIG =3D "Multiline\nSig\nLine"
> =20
>  [Daft]
>  DAFT_WORKER_DEVICES_CFG =3D "/etc/daft/devices.cfg"
> +DAFT_WORKER_WORKSPACE =3D "/home/ab/workspace"
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/DaftFla=
sh.py b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftFlash.py
> new file mode 100644
> index 0000000..d5f6de8
> --- /dev/null
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftFlash.py
> @@ -0,0 +1,42 @@
> +import os
> +
> +from autobuilder.config import DAFT_WORKER_WORKSPACE
> +from buildbot.steps.shell import ShellCommand
> +
> +class DaftFlash(ShellCommand):
> +    haltOnFailure =3D True
> +
> +    name =3D "DaftFlash"
> +
> +    def __init__(self, factory, argdict=3DNone, **kwargs):
> +        self.tests =3D None
> +        self.factory =3D factory
> +        for k, v in argdict.iteritems():
> +            setattr(self, k, v)
> +        self.description =3D "DUT Flashing"
> +        self.timeout =3D 100000
> +        kwargs['timeout']=3Dself.timeout
> +        ShellCommand.__init__(self, **kwargs)
> +
> +    def start(self):
> +        workspace_dir =3D DAFT_WORKER_WORKSPACE
> +
> +        dut_name =3D self.getProperty('dut_name')
> +        workdir =3D self.getProperty('workdir')
> +        image =3D self.getProperty('BUILDIMAGES')
> +        machine =3D self.getProperty('MACHINE')
> +
> +        image_path =3D os.path.join(workdir, 'build', 'build', 'tmp', =
'deploy',
> +                'images', machine, '%s-%s.hddimg' % (image, machine))
> +        image_name =3D os.path.basename(image_path)
> +
> +        # XXX: DAFT needs to have the image in a shared workspace=20
> +        self.command =3D "cp %s %s; " % (image_path, workspace_dir)
> +
> +        self.command +=3D "cd %s; " % (workspace_dir)
> +
> +        # XXX: DAFT needs to be executed by root user
> +        daft_cmd =3D "daft --setout %s %s" % (dut_name, image_name)
> +        self.command +=3D "sudo su -l -c 'cd {} && {}'; ".format(works=
pace_dir, daft_cmd)
> +
> +        ShellCommand.start(self)
> diff --git a/lib/python2.7/site-packages/autobuilder/config.py b/lib/py=
thon2.7/site-packages/autobuilder/config.py
> index 5bcf6c6..fcc08f0 100644
> --- a/lib/python2.7/site-packages/autobuilder/config.py
> +++ b/lib/python2.7/site-packages/autobuilder/config.py
> @@ -24,3 +24,4 @@ IPK_PUBLISH_DIR =3D os.environ.get("IPK_PUBLISH_DIR")=

>  DEB_PUBLISH_DIR =3D os.environ.get("DEB_PUBLISH_DIR")
>  PERFORMANCE_PUBLISH_DIR =3D os.environ.get("PERFORMANCE_PUBLISH_DIR")
>  DAFT_WORKER_DEVICES_CFG =3D os.environ.get("DAFT_WORKER_DEVICES_CFG")
> +DAFT_WORKER_WORKSPACE =3D os.environ.get("DAFT_WORKER_WORKSPACE")
>=20


--4AIlHrmIddSS7vBADthcgmPDE5QaVjlK9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZNs7BAAoJEGJqcE9h3glgtawP/3CY4GJ322OavxMIS22FwTjy
7k29FlZmLHxyNyit5CilIiO+VIa/DdZbyDkqMXXt7lfRmuK9TpkxgJGihnB4ersL
kbr8lFjito+75Wk8I2DPCMqMiVKkQK7eGKXjRNAeID9meiDrS+Nqp4QnyzUCrSjh
LegN6nV7d8CpYzbjTSzrUBuqgyjwFLOV4DRCwBbTHpQyAhoEUlYbNbKuE7Ii6bGp
ZWMqMhTyosgv56+6d71wCvhe2TbVjAfGgNM62a/ZN5/kQcqxXZ5q19GlJxbILyK7
/Jt5VShAPBB+ZFCbiHLLS6YtoLCMyV10lj0ZYz+GkUKv/INoeDAxdYI0HUwEGpSV
vnWjq7BMIOhy7M07NbiRJkDt9DvWJqMs6AncXz33hFKKD5PjVy+gkruuqutbDHar
KfePXyJmmqK+ST3vyZezP7eEB4gO+JJKBuTmUUnQehuFTO7PFDWyJvonnI6CB5/q
fw1wdZynppZ4/yULNZJNl3vAZFEcUl4YEeH6DFQMp1ei229OMKq8/7AqW8SYgAz5
JxjkDDxH6c6dlfceDivpnIvkmcg1mefmJZr5Dow/9fmc9p6BDS4spKPjMLkih2aG
WRwOpWIcRilUCoUhcPUE9qpJKrfR5lKwwkL1HYlOrI+sgQ4wx/Bg71dI03SqLDU3
QfB8tSAeVsTr25yqnBsa
=ZmWr
-----END PGP SIGNATURE-----

--4AIlHrmIddSS7vBADthcgmPDE5QaVjlK9--
