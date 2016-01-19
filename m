Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A583BE00B36; Tue, 19 Jan 2016 10:58:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F9CE00A92
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 10:57:58 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id yy13so363093265pab.3
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 10:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=6meSbVPMORtP1VtPpUEQkGTVNoracCEhoIT5ZA46npk=;
	b=DIWP6oMfSviTozz4ljzWFKIXlG7a1UL9/wZDobeU0Y+kgS3oE6vam46OQCJFvY+wpa
	mheAP5jSTrz9fIAyOBNlWYw65NisIDKg4JH/f/wF6HEHVSIOvhobJsJWLFnLKTWsiypi
	F0gRr4gsIJq7qOCcYGvKPapZJLHLbsUpus//rC3xtObxqUQKXTMpUQ6OkY8r56mnI7te
	09198MrTBqoDBBvdM2HQGuizezGtyLgm/rlyDFQiT5/Z/B9Zm5rYh/g1disIhadojJK8
	uRq+FvdCaQUEpLr8q69jddFARXwheqWQuZN9ROGn930RLA7IAr81hXxsOQjQRb0cR5WS
	9/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=6meSbVPMORtP1VtPpUEQkGTVNoracCEhoIT5ZA46npk=;
	b=J9QRQqnvMX12UCtWWi+X5R48KnmVZCBWs5RcZK6VnJw3vXk1v1L2+USMKzyRNigztn
	mcQy+Eek3M4yDN30Zi6KgzVP+FlkzienpK6azcUjR9OwlepMbE93MOR+SsJf3yOCLTnb
	kr58ZwKk/Ap0nMOKfmQtWOKro4Gm6AVdxZZ6/tnIdAIBfyFLZ+tt84HKrPrFT+vgltBs
	i5dJ2GWBFgIZ/q0a6fI4RvPUj93qL98gETJ7rdlUy1YYMdiukK3gkRhZoGn0sq+zwCL7
	w9Zf0I0ao6czqxiHuSfBx4J1ZrUobTXRXchbfrWAbiRuo0mgrUKbBj1Uurh/6ibLlB0C
	YMaA==
X-Gm-Message-State: ALoCoQnaZvaiCE2aUH3SUSuvPgrghXVVzLUmBYf/of05yCAxMH9bGNhadmkPiFzknBqUyrDjlEpVH+8/zgwDBopK0k1idy24wQ==
X-Received: by 10.66.219.38 with SMTP id pl6mr46579168pac.147.1453229878487;
	Tue, 19 Jan 2016 10:57:58 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:2cdb:35b7:1df4:399a?
	([2601:646:8802:5d5c:2cdb:35b7:1df4:399a])
	by smtp.gmail.com with ESMTPSA id
	sy5sm43579205pac.5.2016.01.19.10.57.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Jan 2016 10:57:57 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853AC84D6@AZ-US1EXMB03.global.avaya.com>
Date: Tue, 19 Jan 2016 10:57:52 -0800
Message-Id: <3F03BD7D-5DD6-413D-A8F7-7ED84E7A491A@gmail.com>
References: <30C2D590D16A5C46ADFE65219103779853AC8364@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE65219103779853AC84D6@AZ-US1EXMB03.global.avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PREFERRED_VERSION for native package
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
X-List-Received-Date: Tue, 19 Jan 2016 18:58:02 -0000
X-Groupsio-MsgNum: 28049
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6F5CC605-FD17-4A7A-867C-9C31A0D185A1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6F5CC605-FD17-4A7A-867C-9C31A0D185A1
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_26CA3A73-73D4-4D8A-B267-B44B9D04728A"

--Apple-Mail=_26CA3A73-73D4-4D8A-B267-B44B9D04728A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 19, 2016, at 8:13 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
>=20
> OK, found the problem.
>=20
> To achieve my objective, the right approach is to add =E2=80=9CAGPL-3.0=E2=
=80=9D to INCOMPATIBLE_LICENSE.
> This causes the build to fall back to the older version of db.
>=20
> However, I figured this out after finding the following line in =
poky/meta/conf/distro/include/default-versions.inc:
>=20
>                 PREFERRED_VERSION_db-native =3D =
${@incompatible_license_contains('AGPL-3.0', '5.%', '6.%', d)}
>=20
> Is it correct that this is an absolute assignment rather than a =
conditional one? I think my
> PREFERRED_VERSION_db-native assignment would=E2=80=99ve worked if it =
hadn=E2=80=99t been overridden
> by this one.

its a distro policy based upon licensing if weak assignment is used then =
the licensing  won=E2=80=99t be able to enforce the decision
if someone overrides it.

>=20
> MV
>=20
> From: yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>] On Behalf Of Vuille, Martin =
(Martin)
> Sent: January 19, 2016 8:16 AM
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: [yocto] PREFERRED_VERSION for native package
>=20
> Yocto Fido
>=20
> I am trying to use PREFERRED_VERSION to select an earlier version
> of the =E2=80=9Cdb=E2=80=9D package. The build includes both db and =
db-native variants
> of the package.
>=20
> I set PREFERRED_VERSION_db variable and this successfully changes
> the version of the db package but not the db-native package.
>=20
> I tried also setting PREFERRED_VERSION_db-native but this doesn=E2=80=99=
t
> seem to have any effect.
>=20
> What am I missing? How can I override version for a native package?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_26CA3A73-73D4-4D8A-B267-B44B9D04728A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 19, 2016, at 8:13 AM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D"">OK, found the problem.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">To =
achieve my objective, the right approach is to add =E2=80=9CAGPL-3.0=E2=80=
=9D to INCOMPATIBLE_LICENSE.<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D"">This causes the build to fall back to the older =
version of db.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">However, =
I figured this out after finding the following line in =
poky/meta/conf/distro/include/default-versions.inc:<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; PREFERRED_VERSION_db-native =3D =
${@incompatible_license_contains('AGPL-3.0', '5.%', '6.%', d)}<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">Is it =
correct that this is an absolute assignment rather than a conditional =
one? I think my<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">PREFERRED_VERSION_db-native assignment would=E2=80=99ve =
worked if it hadn=E2=80=99t been overridden<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">by this =
one.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>its a distro policy based upon licensing if weak =
assignment is used then the licensing &nbsp;won=E2=80=99t be able to =
enforce the decision</div><div>if someone overrides it.&nbsp;</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D""><o:p class=3D""></o:p></span></div><div style=3D"margin:=
 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">MV<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"border-style: none =
none none solid; border-left-color: blue; border-left-width: 1.5pt; =
padding: 0in 0in 0in 4pt;" class=3D""><div class=3D""><div =
style=3D"border-style: solid none none; border-top-color: rgb(181, 196, =
223); border-top-width: 1pt; padding: 3pt 0in 0in;" class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><b class=3D""><span lang=3D"EN-US" =
style=3D"font-size: 10pt; font-family: Tahoma, sans-serif;" =
class=3D"">From:</span></b><span lang=3D"EN-US" style=3D"font-size: =
10pt; font-family: Tahoma, sans-serif;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto-bounces@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">yocto-bounces@yoctoproject.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>[<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">mailto:yocto-bounces@yoctoproject.org</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><b class=3D"">On Behalf =
Of<span class=3D"Apple-converted-space">&nbsp;</span></b>Vuille, Martin =
(Martin)<br class=3D""><b class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>January 19, 2016 8:16 AM<br =
class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" class=3D"">yocto@yoctoproject.org</a><br =
class=3D""><b class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>[yocto] PREFERRED_VERSION =
for native package<o:p class=3D""></o:p></span></div></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Yocto Fido<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I am =
trying to use PREFERRED_VERSION to select an earlier version<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">of the =
=E2=80=9Cdb=E2=80=9D package. The build includes both db and db-native =
variants<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">of the package.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">I set PREFERRED_VERSION_db variable and =
this successfully changes<o:p class=3D""></o:p></div><div style=3D"margin:=
 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">the version of the db package but not the db-native =
package.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">I tried also setting PREFERRED_VERSION_db-native but this =
doesn=E2=80=99t<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">seem to have any effect.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">What am I missing? How can I override =
version for a native package?<o:p class=3D""></o:p></div></div></div><span=
 style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: Ubuntu; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_26CA3A73-73D4-4D8A-B267-B44B9D04728A--

--Apple-Mail=_6F5CC605-FD17-4A7A-867C-9C31A0D185A1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaehzQACgkQuwUzVZGdMxT13wCeM1jidbNZN46ExYpFT4bUNwcy
RpYAn38MohNnxptnLti1dK43fnq75WCz
=U2RP
-----END PGP SIGNATURE-----

--Apple-Mail=_6F5CC605-FD17-4A7A-867C-9C31A0D185A1--
