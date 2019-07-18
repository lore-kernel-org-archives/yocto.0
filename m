Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B244CE00D90; Thu, 18 Jul 2019 03:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.33.251.19 listed in list.dnswl.org]
X-Greylist: delayed 12362 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Jul 2019 03:19:17 PDT
Received: from 14.mo7.mail-out.ovh.net (14.mo7.mail-out.ovh.net
	[178.33.251.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C971E00B8F
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 03:19:17 -0700 (PDT)
Received: from player791.ha.ovh.net (unknown [10.108.57.16])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id 2B972129EFA
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 12:19:15 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player791.ha.ovh.net (Postfix) with ESMTPSA id 87C837F42935
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 10:19:15 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <894b59cc-bd91-6178-de1b-f0d190655307@3mdeb.com>
Date: Thu, 18 Jul 2019 12:19:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>
X-Ovh-Tracer-Id: 5161969598734347945
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrieehgddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: Missing service file
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
X-List-Received-Date: Thu, 18 Jul 2019 10:19:19 -0000
X-Groupsio-MsgNum: 45994
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="9x4BeWBZriqOKr856KL4sEmdeonX9bRvz"

--9x4BeWBZriqOKr856KL4sEmdeonX9bRvz
Content-Type: multipart/mixed; boundary="H7VonZZFNWGkL1JgwKQuuPTewnoID9zDs";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <894b59cc-bd91-6178-de1b-f0d190655307@3mdeb.com>
Subject: Re: [yocto] Missing service file
References: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>
In-Reply-To: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>

--H7VonZZFNWGkL1JgwKQuuPTewnoID9zDs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 18.07.2019 12:01, JH wrote:
> Hi,
>
> I set up a service file at following myapp.bb file, but that service
> file was not installed to /lib/systemd/system. What could I be wrong
> here?
Not installed means it's not in the final image on the target? Which
package gets installed into the
image? I guess the ${PN} package.

Have you inspected the recipe
work/YOUR_TARGET/RECIPE_NAME/RECIPE_VERSION/image dir?
Maybe it is present there, but not in the package you are installing
(check the content of the pacakges-split dir as well).

You may use the:

FILES_${PN} +=3D "/lib/systemd/system/${PN}.service

to force packaging the file into the ${PN} package.
>
>
> SYSTEMD_SERVICE_${PN} =3D "${PN}.service"
> SYSTEMD_AUTO_ENABLE_${PN} =3D "enable"
>
> do_install() {
> ......
> install -m 0644 ${S}/lib/systemd/system/${PN}.service
> ${D}/${systemd_system_unitdir}
> }
>
> Thank you.
>
> Kind regards,
>
> - jh

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--H7VonZZFNWGkL1JgwKQuuPTewnoID9zDs--

--9x4BeWBZriqOKr856KL4sEmdeonX9bRvz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdMEehAAoJEPFAHS4cyxnvOhgQAJ5AkEbIw6cMNChTw2MLEwOK
+eSjta9+iUXXxd/zTmbxO8vYjcGG9uSNqC2Ta38npyqAIIsY5J1b4Y64aZ+vgGsN
y1vXyIJcDbclwqXjHSGe0sBezMuZSJ3eJ4EDJCH4+rPshOPHRq6YON+QAfEktnkA
TMWVcwx3rdu3nh+NC14+4zIJ+b/i1nwpTpPJQcjoIn/79GRODY5mH0wF2D/e+ajw
GFZKHdZnCAAhQGgb9Pt9iwnBH5oxwpQER3IlEC6i/CXavtraI3NZ2lz3ojPQJg63
MLkZS+/ZvyZoNCRTtp2GJ0+HxtAIOpB32okDP0jrl51TT/fTqAoG2ntamprfh1fw
+cZSxg/dpD2xDhAi+UEsxr2qJjTONoZy1YIQe3XNoSwwEy6JoWaBH7K/NIx0Bu00
9MsdmBjyo7751nsO1R7tjMdm9BGuxdU/wl+bt2LhnnokR5PGc/66UNzJLJrg7aKJ
V5w394XERNHfaL9Tj5C26eeZ5hJ3ReVqEjYLHd+h6K8BzJEa+9loUKTMMb9jmU1T
lgnF95ieirasZShuKDvg0WL6MFa5NbdF640pNEP/jGkA9KOrFg6lboN5oqd7rZhu
z6biJHWKhDnU6MIYT32XGdTqtTH7xM8cQAETGdKkBZm1qi1OQlvoMR/FatFbjY6i
FDRzAM0JF12IWrYGWceL
=f8w/
-----END PGP SIGNATURE-----

--9x4BeWBZriqOKr856KL4sEmdeonX9bRvz--
