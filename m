Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC891E00BFF; Sat,  2 Jan 2016 10:38:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A21AE00956
	for <yocto@yoctoproject.org>; Sat,  2 Jan 2016 10:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Content-Type;
	bh=JmBna7XNsd9OAEiTPhLDvWxr/OJ4lE/OeE0e90BnPRo=;
	b=oZNskhdRmpSor+Mn+oQQcrZNVf
	l6L85pKIhnhbNjPlXDSnTFhnhEtw5VQQM74gmnGr0BEt6OtEHoFL+MpWb4zx/93TOTliwJYrah9PM
	gX+oXpp1xr6f3ehKLoq2rX415hX8IUkLrgAAt4XOjnQ0JJIiTWZn8VYtgkJBbbOC6VHo=; 
Received: from durham.keylevel.com ([88.97.63.243]:37500
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.86) (envelope-from <opensource@keylevel.com>)
	id 1aFR49-002nYG-Le
	for yocto@yoctoproject.org; Sat, 02 Jan 2016 18:38:13 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <C68BAE9A-0899-4588-844C-4FC9AF68F0D4@keylevel.com>
Date: Sat, 2 Jan 2016 18:38:07 +0000
Message-Id: <22C09440-73C7-4F7B-88D4-FDC0BF68E57F@keylevel.com>
References: <C68BAE9A-0899-4588-844C-4FC9AF68F0D4@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: GCC segmentation error when compiling boost under Jethro
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
X-List-Received-Date: Sat, 02 Jan 2016 18:38:21 -0000
X-Groupsio-MsgNum: 27841
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4C16639E-AC25-42B8-8C21-F135D4056E12";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_4C16639E-AC25-42B8-8C21-F135D4056E12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 1 Jan 2016, at 17:58, Chris Tapp <opensource@keylevel.com> wrote:
>=20
> I=E2=80=99m getting the following when I try to =E2=80=9Cbitbake =
boost" under Jethro:
>=20
> gcc.compile.c++ =
bin.v2/libs/log/build/bad679ea642ec2fca3b5d11f9f0014c5/formatter_parser.o
> In file included from libs/log/src/spirit_encoding.hpp:23:0,
>                 from libs/log/src/formatter_parser.cpp:42:
> ./boost/spirit/home/support/common_terminals.hpp:200:65: internal =
compiler error: Segmentation fault
>     inline void silence_unused_warnings_##name() { (void) name; }      =
         \
>                                                                 ^
> ./boost/spirit/home/support/common_terminals.hpp:229:9: note: in =
expansion of macro 'BOOST_SPIRIT_CHAR_CODE'
>         BOOST_SPIRIT_CHAR_CODE(lowernum, =
spirit::char_encoding::charset)        \
>         ^
> ./boost/spirit/home/support/common_terminals.hpp:235:1: note: in =
expansion of macro 'BOOST_SPIRIT_DEFINE_CHAR_CODES'
> BOOST_SPIRIT_DEFINE_CHAR_CODES(iso8859_1)
> ^
>=20
> However, it compiles if I then immediately run =E2=80=9Cbitbake =
boost=E2=80=9D again (change nothing, do nothing).
>=20
> The do_compile log shows that other parts of boost are built before =
the first (failed) compilation task terminates reporting the error. Does =
this sound like a parallel compilation race?

Tried this again today and it builds without any problem...

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_4C16639E-AC25-42B8-8C21-F135D4056E12
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWiBkXAAoJEAM2GeiJDBSGrCMQAI+8NFenjq6tSsuSpnCZ1Ef4
Lgm0W02881beFvMuD2OaEsJjwndTVUtqLs5GsxvHUehuGWa45LEalTI9zrPR/0mT
6D/8x7UWPUe5N92T8v/I/inBQT5PkV7+RYeCtaqX02ZpWbqminf3HAmSeKbar8hi
equGkkLITBWcLkl0Sy5RdNLuc2GirIMCdaApFSMMQyEPsPB/BkjOimSMb6s+RyT5
k/7WE9UjVkNjKJuo1+Y5w7IUxfIm8uYSPNQovzqr8pHlchUSw3thSOp5ARNaIVSl
oJg90EXgjwo7e360k64lLeJTXHxVjZEZCbuQ4rA5Z+VoRrvvGs1Gd7Ibsw8Huvan
HjUPFyAySdGPyXsLdwtHDVMzHGKhJSuUnl4wPMKG7nR0EstOo0UjN6lkAPwsV8xd
E5L5y9ROIcGu7Z/r+cU8+QJ3HUzTkOgXLWKYg8WgLE8u2c99N9fdozssvfCmWK/C
XBt/K8r/G6h1USNB53hSZgWIRbJn10zfeUlW5ajJjMo8ajY/j844tUW4y1QFcblZ
iq7upogZ/Q5qvHzBrGAfMluyw4GUVcvnffmHLxeOUK1R94nPBQpQH4o8863cXMqG
U7wMZWGFwihNBUPEy4Lb8O74WE2C6VqwTZWAUFFfSLQUd4hWhGezRVkxSVRepmEY
+/42wkYKhbRY8RvDZgjC
=/qLU
-----END PGP SIGNATURE-----

--Apple-Mail=_4C16639E-AC25-42B8-8C21-F135D4056E12--
