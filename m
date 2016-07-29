Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98DA7E00CB0; Fri, 29 Jul 2016 08:18:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E297FE00C56
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 08:18:28 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 29 Jul 2016 08:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,440,1464678000"; 
	d="asc'?scan'208";a="741529394"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.54]) ([10.219.5.54])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2016 08:18:27 -0700
To: yocto@yoctoproject.org
References: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <579B73EC.1010400@linux.intel.com>
Date: Fri, 29 Jul 2016 10:19:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [PATCH][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Fri, 29 Jul 2016 15:18:29 -0000
X-Groupsio-MsgNum: 31302
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="VIqfVwAfX8xhH31bXU5NKrQqfeFtKSD78"

--VIqfVwAfX8xhH31bXU5NKrQqfeFtKSD78
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

+ beth

On 07/29/2016 10:10 AM, An=C3=ADbal Lim=C3=B3n wrote:
> nightly-oecore buildset doesn't prove got_revision property
> so when got_revision is None use got_revision_oecore instead.
>=20
> [YOCTO #10051]
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/lib/buildsteps.py | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py =
b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> index eee0c1b..37ac8b0 100644
> --- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> +++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> @@ -118,8 +118,11 @@ class BitbakeShellCommand(ShellCommand):
>          report['target_sys'] =3D vrs['TARGET_SYS']
> =20
>          report['component'] =3D 'bitbake'
> -        report['branch_commit'] =3D self.getProperty('branch') + ': ' =
+ \
> -                self.getProperty('got_revision')
> +        branch =3D self.getProperty('branch')
> +        revision =3D self.getProperty('got_revision')
> +        if not revision:
> +            revision =3D self.getProperty('got_revision_oecore')
> +        report['branch_commit'] =3D branch + ': ' + revision
> =20
>          failure =3D {}
>          failure['package'] =3D "bitbake-%s" % vrs['BB_VERSION']
>=20


--VIqfVwAfX8xhH31bXU5NKrQqfeFtKSD78
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXm3PvAAoJEGJqcE9h3glglYoP/i3oZc6tZ9IYoVdoEaznqU6W
F9k9jmQDzJB3c9Mknlj9TbSFV4hPpQiZlRKSQwhrSiDPP60s3f3dc2qYyZaLSFv8
WAkQWDxFQkmnJ5NTwmbnLw/kqaH0btQNSd/yKCbVbj6zFBgrUMHR6VyJSOQpXSoS
g28O8sNAGxt7Ykq5Licj6XXDbX6lkgDjqOk2fdCTt/xTt5baNZKOo2sk0iZR5P7z
gq3MBASY53XfeTvSo4XgcxRl8kSXpaNQrjIAB+p1BZGj+3kiXZwHDzNs4ljNuYIc
J7GQidM+QtTlUfajsBJXJT+2VTHyfa7zlMfKDjIR0tL+VzFzeiKfTEFen88kb+Fl
sj8U4CLQIJr4vMAqGTLw+X0zRNylh476MvO00Q/EUdytPXtvOB6zj+EUQfcgBJLU
dc++1TN175XbR1O/OReggpzlsqxxgrUm/tTO6uvTPx0NCE4S3uFNfi9g9/gsvOCR
Arh5gJhalmYM/tbtbKZBOEly6SKp/Zhety+8Q7LbWIj3DOG5TcrURcbfnXr0Yp7p
knAEdCyPJfTGuiQm5ZLsIMrm/HbyFCno3PptEpWIprrxXBtbyKBub5QqH2S18CUx
m21VzhgVnsmUaK6lKHmfk6qTMoy8N5YNPTK4JwdrK93AMXguQ9B19Vk0Q2IhiyBi
lInS91scHZW6no2PgZyZ
=7Wdk
-----END PGP SIGNATURE-----

--VIqfVwAfX8xhH31bXU5NKrQqfeFtKSD78--
