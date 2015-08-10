Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C6D8E00A84; Mon, 10 Aug 2015 10:56:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A59E00A7B
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 10:56:54 -0700 (PDT)
Received: by pawu10 with SMTP id u10so145101503paw.1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 10:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kZrR4VvXoHsBN3EWumdRJpw+SnMGWGKcSwu5jpWU4jg=;
	b=in2Bo8WC+WU+vNTZMnJiLaXXNwZSJiErlrbTnw6T/IspO0w3O89eZ3pF8aMI1ZED0b
	VHT4iCCkX6w46Ep/QiIDg6SXWwK+8+OPmMykzWvmQ9LnWVVPOGC/4KMdg6L3ycm/ZqO5
	eKtpvcnuvVOFaJScmyrA1YwnPpwNbJHyd8J6v7DSUm9E9s06xN7czBZymuq+xkRfXpGu
	0UnXKVjTY88NBm1sC/bHuEL9ZKLwsaJd8APPv2oRblHQfRzhEe7N8oJzSCKfQYn8ynmy
	TWrHUW8yK6R03Dpao2qM2QT6baYcmT5rUTxiAyZyv7XUEjAVKHob066tVVNZyrEAQdLg
	vpeQ==
X-Received: by 10.66.139.193 with SMTP id ra1mr46228843pab.131.1439229413749; 
	Mon, 10 Aug 2015 10:56:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4c02:370d:a5ef:b853:ba79:d0ee?
	([2601:647:4c02:370d:a5ef:b853:ba79:d0ee])
	by smtp.gmail.com with ESMTPSA id is3sm119886pbc.53.2015.08.10.10.56.52
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 10 Aug 2015 10:56:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
Date: Mon, 10 Aug 2015 10:56:48 -0700
Message-Id: <F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
	<CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
To: yocto yocto <yoctomailinglist@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 17:56:57 -0000
X-Groupsio-MsgNum: 25986
Content-Type: multipart/signed;
	boundary="Apple-Mail=_47455A36-7BDF-4BDD-9AFC-3FB9D0390288";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_47455A36-7BDF-4BDD-9AFC-3FB9D0390288
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_09FBADE8-DFD0-4F87-AFDB-29BD3C4CE6AF"

--Apple-Mail=_09FBADE8-DFD0-4F87-AFDB-29BD3C4CE6AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 10, 2015, at 4:50 AM, yocto yocto <yoctomailinglist@gmail.com> =
wrote:
>=20
> Please see the attachment for a simplified example. A library =
(consisting of 1 cpp and 1 header) is being built using soci. Compiling =
fails since soci.h is not found.
>=20
> 2015-08-10 13:16 GMT+02:00 Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>>:
>=20
> On 10 August 2015 at 12:13, yocto yocto <yoctomailinglist@gmail.com =
<mailto:yoctomailinglist@gmail.com>> wrote:
> However, when compiling my own recipe I get compiling errors ("soci.h =
not found"). I am 100% sure that I specified the correct paths.
>=20
> The headers are likely installed in the sysroot, but your script can't =
find them.  The first step would be to verify that the sysroot does in =
fact have the headers installed in, and then you'll have to debug your =
configure scripts to find out why they don't find the headers.  Sharing =
your recipe and sources will help here.

yeah the CMakeLists.txt seems to not include search paths for =
<sysroot>/usr/include/soci one way you could do it is refer to soci =
files with namespace when using them in source code like #include =
<soci/soci.h> then it will automatically apply the default sysroot =
search paths to includedir and reach it. Alternative is that you can =
defile a .cmake file for soci
and include that in soci recipe and then just find the module in your =
package=E2=80=99s CMakeLists.txt

>=20
> Ross
>=20
> <soci-example.tar.bz2>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_09FBADE8-DFD0-4F87-AFDB-29BD3C4CE6AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 10, 2015, at 4:50 AM, yocto yocto &lt;<a =
href=3D"mailto:yoctomailinglist@gmail.com" =
class=3D"">yoctomailinglist@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Please see the attachment for a simplified example. A library =
(consisting of 1 cpp and 1 header) is being built using soci. Compiling =
fails since soci.h is not found.</div><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">2015-08-10 13:16 GMT+02:00 Burton, =
Ross <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
class=3D"">ross.burton@intel.com</a>&gt;</span>:<br class=3D""><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr" class=3D""><div =
class=3D"gmail_extra"><span class=3D""><br class=3D""><div =
class=3D"gmail_quote">On 10 August 2015 at 12:13, yocto yocto <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:yoctomailinglist@gmail.com" =
target=3D"_blank" class=3D"">yoctomailinglist@gmail.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
class=3D"">However, when compiling my own recipe I get compiling errors =
("soci.h not found"). I am 100% sure that I specified the correct =
paths.</div><div class=3D""></div></blockquote></div><br =
class=3D""></span>The headers are likely installed in the sysroot, but =
your script can't find them.&nbsp; The first step would be to verify =
that the sysroot does in fact have the headers installed in, and then =
you'll have to debug your configure scripts to find out why they don't =
find the headers.&nbsp; Sharing your recipe and sources will help =
here.</div></div></blockquote></div></div></div></blockquote><div><br =
class=3D""></div><div>yeah the CMakeLists.txt seems to not include =
search paths for &lt;sysroot&gt;/usr/include/soci one way you could do =
it is refer to soci files with namespace when using them in source code =
like #include &lt;soci/soci.h&gt; then it will automatically apply the =
default sysroot search paths to includedir and reach it. Alternative is =
that you can defile a .cmake file for soci</div><div>and include that in =
soci recipe and then just find the module in your package=E2=80=99s =
CMakeLists.txt</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><span class=3D"HOEnZb"><font color=3D"#888888" class=3D""><div =
class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br class=3D""></div>
<span =
id=3D"cid:BFAC790E-21B1-4BAD-B2A1-B9310A42F436@hsd1.ca.comcast.net">&lt;so=
ci-example.tar.bz2&gt;</span>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_09FBADE8-DFD0-4F87-AFDB-29BD3C4CE6AF--

--Apple-Mail=_47455A36-7BDF-4BDD-9AFC-3FB9D0390288
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXI5eQACgkQuwUzVZGdMxTGsgCeNljQDCJk4NEJjFTmW/Bu+QCz
knkAoJJ2roNFZWlcFWl9W15SRmgUyOkt
=9MlF
-----END PGP SIGNATURE-----

--Apple-Mail=_47455A36-7BDF-4BDD-9AFC-3FB9D0390288--
