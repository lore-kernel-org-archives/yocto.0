Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1714AE00748; Wed,  9 Dec 2015 10:34:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E1DBE002F9
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 10:33:58 -0800 (PST)
Received: by pfdd184 with SMTP id d184so33907307pfd.3
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 10:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=S9GZFj5Pp3ZyhO5Pj55LxjRANKtpyEX+qv51/kKlSa0=;
	b=B6AmUMYd+UY7Mg3jGTiNnvSt1pyHAgwgpyTPkK4O0096DzV+UZLE4zphoTkE/vwJ4a
	BSE7lkE1MWvJeFRURQVZkqoGMFw7QeRykwuTiAovxZh2D+MgmTCsKsEHi4X3xQal96xG
	BJ9XAEiFQKe1J2DhMAJXF43snm02zyRZlOkgTRc4hSuyXtiajDcNN2brR2AQGEvuiPyz
	oSnswTYV0+rQQFxZzv7GcrNcBhlvDaLTf938K5BRcC7F94Zm7evfVJky86tiGuNptl9H
	zgKl1QvOJdUl26E3o7b4P3B+vOHqXafkhbeqGtTA3KnjkgBcPmdtEr0mkWQX3t/t3JW3
	w+XQ==
X-Received: by 10.98.13.156 with SMTP id 28mr344092pfn.106.1449686037037;
	Wed, 09 Dec 2015 10:33:57 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:392e:3d55:4224:9715?
	([2601:646:8802:5d5c:392e:3d55:4224:9715])
	by smtp.gmail.com with ESMTPSA id 2sm13200602pfh.22.2015.12.09.10.33.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 09 Dec 2015 10:33:56 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1E2754CBC7626848AAA0C716210D11490A5FCB02@BGSMSX101.gar.corp.intel.com>
Date: Wed, 9 Dec 2015 10:33:51 -0800
Message-Id: <493612B6-0351-4B03-B00A-15A4F792BB6D@gmail.com>
References: <1E2754CBC7626848AAA0C716210D11490A5FCB02@BGSMSX101.gar.corp.intel.com>
To: "V, Nishanth" <nishanth.v@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetching source from multiple git repositories
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
X-List-Received-Date: Wed, 09 Dec 2015 18:34:02 -0000
X-Groupsio-MsgNum: 27655
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FF403233-7BFB-4647-9C27-FBF01C8814F1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_FF403233-7BFB-4647-9C27-FBF01C8814F1
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1F687B3E-143D-4808-B474-A2B79779E4D1"

--Apple-Mail=_1F687B3E-143D-4808-B474-A2B79779E4D1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 8, 2015, at 1:28 AM, V, Nishanth <nishanth.v@intel.com> wrote:
>=20
> Hi,
>=20
> I am trying to write a recipe which has to fetch source from 2 =
different git URI. Basically, I have to place code from 2 different git =
projects in folders side by side and apply patch to add a makefile which =
will build both of them together. Can I have multiple git:// SRC_URI in =
a single recipe?

yes, you use destsuffix for a sample see

meta/recipes-core/glibc/cross-localedef-native_2.22.bb



>=20
> Thanks,
> Nishanth
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_1F687B3E-143D-4808-B474-A2B79779E4D1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 8, 2015, at 1:28 AM, V, Nishanth &lt;<a =
href=3D"mailto:nishanth.v@intel.com" =
class=3D"">nishanth.v@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Hi,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">I am trying to write a recipe which has =
to fetch source from 2 different git URI. Basically, I have to place =
code from 2 different git projects in folders side by side and apply =
patch to add a makefile which will build both of them together. Can I =
have multiple git:// SRC_URI in a single =
recipe?</div></div></div></blockquote><div><br class=3D""></div><div>yes, =
you use destsuffix for a sample see</div><div><br =
class=3D""></div><div>meta/recipes-core/glibc/cross-localedef-native_2.22.=
bb</div><div><br class=3D""></div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Thanks,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Nishanth<o:p =
class=3D""></o:p></div></div><span style=3D"font-family: ArialMT; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: ArialMT; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
rgb(149, 79, 114); text-decoration: underline; font-family: ArialMT; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_1F687B3E-143D-4808-B474-A2B79779E4D1--

--Apple-Mail=_FF403233-7BFB-4647-9C27-FBF01C8814F1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZodBMACgkQuwUzVZGdMxRnEQCfRs7Eu9RaNQu5+Rwf/H9ER09J
YAAAoIca9rlxvUBIodABMzsqJ4I3kEls
=0GJu
-----END PGP SIGNATURE-----

--Apple-Mail=_FF403233-7BFB-4647-9C27-FBF01C8814F1--
