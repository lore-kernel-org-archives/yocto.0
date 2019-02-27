Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC546E00D17; Wed, 27 Feb 2019 09:26:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9763E0097C
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:26:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1RHPDud027241
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Feb 2019 09:25:48 -0800
Received: from soho-mhatle-m.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Wed, 27 Feb 2019 09:25:22 -0800
To: Tom Rini <trini@konsulko.com>, Jean-Christian de Rivaz
	<jean-christian.derivaz@innodelec.ch>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
Date: Wed, 27 Feb 2019 11:25:21 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190227170614.GV12046@bill-the-cat>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 17:26:42 -0000
X-Groupsio-MsgNum: 44243
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="WDuzMtrQ7KSqXC1K7bYHzCKcFWwyKekYJ"

--WDuzMtrQ7KSqXC1K7bYHzCKcFWwyKekYJ
Content-Type: multipart/mixed; boundary="ewNn2tdDOIy894whuXJTEKBuwL7H9dwWM";
 protected-headers="v1"
From: Mark Hatle <mark.hatle@windriver.com>
To: Tom Rini <trini@konsulko.com>,
 Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
Subject: Re: [yocto] Removing busybox
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
 <20190227170614.GV12046@bill-the-cat>
In-Reply-To: <20190227170614.GV12046@bill-the-cat>

--ewNn2tdDOIy894whuXJTEKBuwL7H9dwWM
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 2/27/19 11:06 AM, Tom Rini wrote:
> On Wed, Feb 27, 2019 at 01:16:56PM +0100, Jean-Christian de Rivaz wrote=
:
>=20
>> Hi all,
>>
>> After reading the thread "Removing busybox completely from the generat=
ed
>> image" I tested to reproduce the method but this doesn't work as expec=
ted.
>>
>> git clone git://git.yoctoproject.org/poky -b thud
>> cd poky
>> echo 'require conf/distro/poky.conf' > meta-poky/conf/distro/poky-ng.c=
onf
>> echo 'DISTRO =3D "poky-ng"' >> meta-poky/conf/distro/poky-ng.conf
>> echo 'VIRTUAL-RUNTIME_base-utils =3D ""' >> meta-poky/conf/distro/poky=
-ng.conf
>> sed -i 's/^DISTRO.*/DISTRO =3D "poky-ng"/' conf/local.conf
>> bitbake core-image-minimal
>> runqemu core-image-minimal kvm
>>
>> After login as root there still a lot of links to busybox inside /sbin=
/
>> /bin/ /usr/sbin/ and /usr/bin/ .
>>
>> Can someone provides a working method ?
>=20
> You're missing a few more things, yes.  What I have is:
> # Switch to systemd
> DISTRO_FEATURES +=3D "systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D ""
> VIRTUAL-RUNTIME_syslog =3D ""
> VIRTUAL-RUNTIME_login_manager =3D "shadow-base"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>=20
> # Replace busybox
> PREFERRED_PROVIDER_virtual/base-utils =3D "coreutils"
> VIRTUAL-RUNTIME_base-utils =3D "coreutils"
> VIRTUAL-RUNTIME_base-utils-hwclock =3D "util-linux-hwclock"
> VIRTUAL-RUNTIME_base-utils-syslog =3D ""
>=20
> If you aren't using systemd you'll need to move the login_manager
> example over as well, otherwise busybox gets pulled for that.
>=20
> I'm using the above on thud, today.  And that's not a 1:1 replacement a=
s
> my image pulls in a number of other packages for various things I
> want/need.
>=20
>=20

You can also blacklist busybox to ensure that it never builds, and thus c=
an't
show up in your target image.

PNBLACKLIST[busybox] =3D "Don't build this"



--ewNn2tdDOIy894whuXJTEKBuwL7H9dwWM--

--WDuzMtrQ7KSqXC1K7bYHzCKcFWwyKekYJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEzBAEBCgAdFiEEgAwdHgEr3cvOW/v9fv796/r0vvkFAlx2yAEACgkQfv796/r0
vvnCDwf/TnMt+2tbQD/y1aIOmW0y0erCxrSs2b7TdUZYkTL0fvj7TysEPdymPJR6
5cA2QT6yJh6Ag/W9hxXQVTRw7fQK5HvCUf6s2Cy3q3LAy8+j9dNkAIAUMSZBRn6v
XJC2p4M/jlflNEl2PpAdP9wQ8zA/Lx2uVBAE2Ccidc7gOLhhwo63giEBEjL4gK31
KDuz1oPVzeCahfKlRrvM+Xj4oBYf1Q3TJyh2HqVeE8Q9kSfpO8QS1rsIRjNB0HrC
j+mWmaDp0sn4/h66r2xdmSUNqWugD7/+txF9uEeIytco3UkfujZiRH5p6HnMnr2b
fEFltlWIjspUp2hWdn6htUHdNHbkXg==
=BiC/
-----END PGP SIGNATURE-----

--WDuzMtrQ7KSqXC1K7bYHzCKcFWwyKekYJ--
