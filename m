Return-Path: <eren@hambedded.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B13DE0073D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:38:03 -0800 (PST)
Received: by mail-ea0-f176.google.com with SMTP id d13so2490003eaa.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:38:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent
	:x-gm-message-state;
	bh=7Hn8ac3byhqfOhw+LMv2GG2xzz7jL78HV5k30YgiXzk=;
	b=YCNog84EV1jK+7LpsYZWXMHs12Fmh7UXEHzhIYwhvc8Re50Hvt6XVW/l+u4SF2LJ15
	ZbZP1xFCXOxj0YPrLejgdk+C01BNd9dhcbzXCuYs1VvHGrsEbIw3MP+x0bgk32+K/eyv
	A2nz/fY+lR+LV9orNdgA9GHGdzU/hJ1YBLTQLqW6K2StfnhWYs29tzkmjKatZtVnDqby
	z4IhEzHRXeuWlTNaayEAmh3RPgJfV86ehQoHgsljS5W8syuZ8bdfNHcZmOWK7kmXuJ6h
	lT91cBBGZ1d8CwYFtakz6VcBnQeK19ocl+5E3AmkfB5QC6W8xIpxyX/lPRpar1NBuA/x
	ddRA==
Received: by 10.14.175.133 with SMTP id z5mr42163173eel.15.1355758682081;
	Mon, 17 Dec 2012 07:38:02 -0800 (PST)
Received: from gmail.com ([78.180.150.201])
	by mx.google.com with ESMTPS id 44sm29552592eek.0.2012.12.17.07.37.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Dec 2012 07:38:00 -0800 (PST)
Date: Mon, 17 Dec 2012 17:37:52 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Biao <huanmateme@163.com>
Message-ID: <20121217153752.GA5124@gmail.com>
References: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
MIME-Version: 1.0
In-Reply-To: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQlZGNrQOLMkPwhVfEucC8vdqe/a+SyJ9DrWPHZX3CEL704UMpfE3XQOa0BQ/GGRRRIO69c+
Cc: yocto@yoctoproject.org
Subject: Re: Where does the bitbake get the variable "TOPDIR"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 15:38:03 -0000
X-Groupsio-MsgNum: 11141
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 17, 2012 at 05:06:26PM +0800, Biao wrote:
> Greetings,=20
>=20
> I am a newbie tying to understand how bitbake works.
> There is one line as BBPATH =3D "${TOPDIR}" in the mybuild/conf/bblayers.=
conf, i would like to know where the TOPDIR is defined?=20

It's defind in "lib/bb/parse/parse_py/ConfHandler.py:36". When TOPDIR is
not defined in any of the bitbake configuration files, it's set to
current working directory automatically.

(...)

def init(data):
    topdir =3D data.getVar('TOPDIR')
    if not topdir:
        data.setVar('TOPDIR', os.getcwd())

(...)

You may want to read the newly-written documentation about bitbake and
open embedded. I tried to explain how things fit together. I would like
to have your feedback.

http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-image/

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQzzxQAAoJEOM7bMm6HhcT0KcP/1Q/d+UMd7yR0LZyY8I+0/hC
nRo+UiWXQY3EFCM4kWJI4YNbFh8buOrstkhn9rrTepAL7jOGR5aZGPkRFp8Nushj
i1ZTgz61nP13btTZfXra67jOANqOsSJrYZwpXEpx3hkE9lOHSVMoqhMdZFzVGYL0
dmIjx2V20Psx253uEcbnPJwELsQN2zoZAn7lk3ZQfRlkEi9Ey3lcNXgmzrIAMpKD
ag6gWKHximpSTHl7yuylL0lIEXmUlmEXktMN1fnufRUOhiO76hLDl9O/IHYUbv5p
RfAx3hx6AFghFBU2WBLnwhItK+PhmoO/ZObd0vT0XiXA7jpReGcaS9mHJlLesk4m
7OYScwnltqKo8ydPCg/80zVI2kNMO3SzVyAJ3r1Mpds8Dy3ROtyROzjNM2zHXhxv
uaSfDGgVoKv44D5FhuU42bBlNQdRKgOyQAGa3PGCSEfmV2241idpPiWpXM2BSt9M
D+hQXbX7plQlUCjVgmI2FOISjMBubo8IJpj4bbiDuZev1ojbWlKLJ94CeHw8EH01
3f1xlYoNNv2QMz324tQYONx7x4GxKjkDTz4h3il06KDGKV6rbagZwEau7hPv1vSD
EyyEbeFpyS5wYCZrWaKlAxZlrw20GvSSA+ahy8zGVpki6B4hhepIgu5RSarD62Qy
mqIqR/yMd+bzj50sNMcB
=8DUa
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--
