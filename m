Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71C5E00BF7; Thu,  7 Nov 2019 07:46:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.33.251.53 listed in list.dnswl.org]
Received: from 1.mo178.mail-out.ovh.net (1.mo178.mail-out.ovh.net
	[178.33.251.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71204E0084E
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 07:46:54 -0800 (PST)
Received: from player773.ha.ovh.net (unknown [10.108.35.110])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id E0F9A80FC3
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 16:41:07 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id 30626BDF6EE8;
	Thu,  7 Nov 2019 15:41:05 +0000 (UTC)
To: Norbert Kaminski <norbert.kaminski@3mdeb.com>, yocto@yoctoproject.org
References: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <fd7d311d-b202-e93e-9bc5-07dfbb47ea95@3mdeb.com>
Date: Thu, 7 Nov 2019 16:41:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>
X-Ovh-Tracer-Id: 4256746072954056396
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudduledgjeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtsehgtderofdtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpeefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Cc: piotr.krol@3mdeb.com
Subject: Re: [meta-security][PATCH] meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb: add new udev dir to FILES and append EXTRA_OECONF
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
X-List-Received-Date: Thu, 07 Nov 2019 15:46:55 -0000
X-Groupsio-MsgNum: 47171
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="LwUtLI6LNdcjRjgGWvKGsL3PCb8EaDsqA"

--LwUtLI6LNdcjRjgGWvKGsL3PCb8EaDsqA
Content-Type: multipart/mixed; boundary="ZwuHEAvyc7gXowzNN6FLnOkzeLBQMWTvO";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Norbert Kaminski <norbert.kaminski@3mdeb.com>, yocto@yoctoproject.org
Cc: piotr.krol@3mdeb.com
Message-ID: <fd7d311d-b202-e93e-9bc5-07dfbb47ea95@3mdeb.com>
Subject: Re: [yocto] [meta-security][PATCH]
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb: add new udev dir to FILES
 and append EXTRA_OECONF
References: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>
In-Reply-To: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>

--ZwuHEAvyc7gXowzNN6FLnOkzeLBQMWTvO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 07.11.2019 16:14, Norbert Kaminski wrote:
> The tpm2 tool freezes in a XEN distro. It stores the udev rules in
> /lib/udev directory,
> thus these changes append the FILES and EXTRA_OECONF to make tpm2 work
> properly.
>
> Signed-off-by: Norbert Kaminski <norbert.kaminski@3mdeb.com>
> ---
> =C2=A0meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb | 4 +++-
> =C2=A01 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
> b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
> index 3e77f71..10450e3 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
> @@ -74,6 +74,8 @@ FILES_libtss2-dev =3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0 ${libdir}/libtss2*so"
> =C2=A0FILES_libtss2-staticdev =3D "${libdir}/libtss*a"
>
> -FILES_${PN} =3D "${libdir}/udev"
> +FILES_${PN} =3D "${libdir}/udev ${base_prefix}/lib/udev"
> +
> +EXTRA_OECONF +=3D "--with-udevrulesdir=3D${base_prefix}/lib/udev/rules=
=2Ed/"
I suspect the problem appears when building for machine where libdir is
/usr/lib64, not /usr/lib?
It is likely not related to Xen in any way.
>
> =C2=A0RDEPENDS_libtss2 =3D "libgcrypt"

--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com



--ZwuHEAvyc7gXowzNN6FLnOkzeLBQMWTvO--

--LwUtLI6LNdcjRjgGWvKGsL3PCb8EaDsqA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdxDsPAAoJEPFAHS4cyxnvphIP/3A50q2bKv0LZrNNOuuphlEq
Df653PaqvMkrsVZMb2Hw6iE/m6JEtrgG/40JmSM+ZNhn4s4dnV3X2GwIF8HUvz9M
tW0uRnyXLOj+QwJEx7e4fLfCn6jR+cD7kAmHQE8Cfk7S5+Yet688pAnt4QZmcbT0
Rq2YNKHCs6gbbYgJ5TVA5RNWIUMHjXFhY4W0bdcbOrMQfB/vaCC4wH+K2USnkmo7
AG+frE+p9mG7Q7p3CEhyGtxDQau2O3jKpWLn46ay5tZN+iboH6FWy/9HwndAzX0B
bprwE764/yhxPB9Gcm0WY9OnCB4y/4ehAdQ8XZ5dZn7IXfePyZHMiHS4xSeyvP3x
48SFsPsfuoaQ7e82TPel/b1CLuMso23F7Huh+TR6asjnXUJWmqnr6GNbTzReKO0J
mWyuqPOQur5/lBitm5ycqZ+RyNJD8cFz7zXGSrxaWQKlM0UUhc+sf35H2X5H0Qik
WripfZwyZMXeXbs5Tt3QAD9WXgz9jNBdlItTJ4F+ed5VQJ+YJB1efo0koDOywkNu
mcl6fQJrOXB4A4aARED/ibvaMihkgSaicgYFJQi9uN+cR1pKqwGgJpGvkzzXQUzW
2f4Wf9IX1LrPfm2uSOxaSDJPXY1X3K1ks2S4InK+F3hyGzpffxznhwj3XITofbQp
LTJcAowXlVO5tDOlVYQ/
=UdJC
-----END PGP SIGNATURE-----

--LwUtLI6LNdcjRjgGWvKGsL3PCb8EaDsqA--
