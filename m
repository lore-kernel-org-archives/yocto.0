Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C6EFE00AB0; Wed, 14 Oct 2015 10:24:55 -0700 (PDT)
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
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F606E00A9B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 10:24:50 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so59928578pab.0
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 10:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=qjTo4lq5PcMbuSxbkusuIFlJVOhLIfbZ19JBEqGnA+g=;
	b=pIi7po6Z3RSBAue03uhubxGcPHYKbONcZMsZ9C6NsDC+CF9LfbwIPQHPyPvQWO5HjY
	lFcqoa8bzy235aWFYXkr7TbOSFog8yX9A0guAw9jV60UAchKLvqtD+kAcoDiZLuNRULL
	+jSh+HpI5+rsOyip9FaQ1vCgIT9IkhJRcIyZ47C8UvQda1/tgsCABJJW99O1sWSP4+3j
	ZTes8TdE3jg7j/tc2BAfcnTF22bHxkEKDhnm377jc+I+28FedwP5twAPsyi1iR7f21HH
	xiO3F3YropA0Hqo3/e0rUO8WeCzSDzsL5r/qOp2/QuX5mUyeRk1XDXcGI/vyRwc/L2AZ
	5oog==
X-Received: by 10.66.254.101 with SMTP id ah5mr4845732pad.10.1444843490592;
	Wed, 14 Oct 2015 10:24:50 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:6454:793b:ce8a:7835?
	([2601:646:8601:4580:6454:793b:ce8a:7835])
	by smtp.gmail.com with ESMTPSA id
	xz5sm10755362pbb.12.2015.10.14.10.24.49
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 14 Oct 2015 10:24:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3096.1\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853A592C9@AZ-US1EXMB03.global.avaya.com>
Date: Wed, 14 Oct 2015 10:24:44 -0700
Message-Id: <3688E390-18E9-49C2-A8F7-44FA68D85D3F@gmail.com>
References: <30C2D590D16A5C46ADFE65219103779853A592C9@AZ-US1EXMB03.global.avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
X-Mailer: Apple Mail (2.3096.1)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package with both daemon and shared object
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
X-List-Received-Date: Wed, 14 Oct 2015 17:24:55 -0000
X-Groupsio-MsgNum: 26841
Content-Type: multipart/signed;
	boundary="Apple-Mail=_24ACC2D9-8475-4404-B6AB-9A73840A0289";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_24ACC2D9-8475-4404-B6AB-9A73840A0289
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DDBFD5E6-0EC1-473F-A912-708001BE159F"

--Apple-Mail=_DDBFD5E6-0EC1-473F-A912-708001BE159F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 14, 2015, at 9:25 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
>=20
> Hi,
>=20
> I am having a bit of trouble understanding something about
> packaging.
>=20
> I have a custom recipe to build a package that contains both
> a daemon executable and a shared object interface library
> for the daemon.
>=20
> But the .so is only packaged in ${PN}-dev, not ${PN}, so
> it doesn=E2=80=99t end up on the target.

yes thats default and if the .so was built using proper .so versioning =
scheme.
.so is a symlink to .so.X.Y.Z


>=20
> Is that expected behavior? How do I get my .so onto the target?

You should try to change building your .so to use versioning scheme.
it makes your packaging simple with OE and other places.

FILES_SOLIBSDEV =3D =E2=80=9C${libdir}/*.so=E2=80=9D
but thats not a preferred solution, its a workaround


>=20
> I worked around it by explicitly creating an extra package
> and using FILES_${PN}-whatever to force the .so into it, but
> now the .so doesn=E2=80=99t get included in ${PN}-dev any more.
>=20
> In general, is there a way to have a file included in two RPMs?
> Or am I approaching this from the wrong direction?
>=20
> Regards,
> MV
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_DDBFD5E6-0EC1-473F-A912-708001BE159F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 14, 2015, at 9:25 AM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D"">Hi,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I am =
having a bit of trouble understanding something about<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">packaging.<o:p class=3D""></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">I have a custom recipe to build a package that contains =
both<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">a daemon =
executable and a shared object interface library<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">for the =
daemon.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">But the .so is only packaged in ${PN}-dev, not ${PN}, so<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">it =
doesn=E2=80=99t end up on the =
target.</div></div></div></blockquote><div><br class=3D""></div><div>yes =
thats default and if the .so was built using proper .so versioning =
scheme.</div><div>.so is a symlink to .so.X.Y.Z</div><div><br =
class=3D""></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: HelveticaNeue; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Is that =
expected behavior? How do I get my .so onto the =
target?</div></div></div></blockquote><div><br class=3D""></div><div>You =
should try to change building your .so to use versioning =
scheme.</div><div>it makes your packaging simple with OE and other =
places.</div><div><br class=3D""></div><div>FILES_SOLIBSDEV =3D =
=E2=80=9C${libdir}/*.so=E2=80=9D</div><div>but thats not a preferred =
solution, its a workaround</div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I worked =
around it by explicitly creating an extra package<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">and using =
FILES_${PN}-whatever to force the .so into it, but<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">now the =
.so doesn=E2=80=99t get included in ${PN}-dev any more.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">In =
general, is there a way to have a file included in two RPMs?<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Or am I =
approaching this from the wrong direction?<o:p class=3D""></o:p></div><div=
 style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Regards,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">MV<o:p class=3D""></o:p></div></div><span=
 style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color:=
 purple; text-decoration: underline; font-family: HelveticaNeue; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: purple; text-decoration: underline; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_DDBFD5E6-0EC1-473F-A912-708001BE159F--

--Apple-Mail=_24ACC2D9-8475-4404-B6AB-9A73840A0289
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYej+AACgkQuwUzVZGdMxSDYACfegGS4AOirD48kCXa+p/JIxfe
rLkAmwVDumoQLDStUVczSJrSoQuqctbn
=vQlA
-----END PGP SIGNATURE-----

--Apple-Mail=_24ACC2D9-8475-4404-B6AB-9A73840A0289--
