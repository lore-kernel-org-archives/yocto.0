Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A6C6E009D6; Tue,  5 May 2015 19:03:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3866BE009AA
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 19:02:51 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so211671801pac.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 19:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=qn2H0HwgcsbzEzFU4JwIqlh6Ab5wPVpq+UZO8s4aFys=;
	b=uVijED4vWqMkkqsBm9dGduCPriQvUI03/qvYMHDkaAQylgaULjZebxvQwJIelvaBDx
	T2yruH0IGbyCM7l86k1Z2Q1rvA2haRpmrERUAk9462zzOSNwQ3dA/epImxqtZaZ4zlRj
	DD2pGQ62jdOq54a+glLIyvTrYE225T7gThWTsVB4RyL8TQEnVpnl2DUKKPawA8/qa/FF
	lS9+L/gBfc9fWQgFwoackng9o3+4QEm0k/nD/hzA8xmNi4M77FDcv+s/rvFBNSJoB/o8
	E9G+Dfhz/FnBZGRfkFTKWM2vnkzEpwNBWsWynkPHmVSVO5TuSfjRSVv/5fk+WH92ndHF
	fHlg==
X-Received: by 10.70.36.139 with SMTP id q11mr57624555pdj.38.1430877771439;
	Tue, 05 May 2015 19:02:51 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:9d81:c5d:4a73:6eaf?
	([2601:9:3580:84c:9d81:c5d:4a73:6eaf])
	by mx.google.com with ESMTPSA id wh6sm147191pbc.96.2015.05.05.19.02.50
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 May 2015 19:02:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DB6E482E89290547898851B8CC9D81100167EFD6CA@AUSX7MCPS302.AMER.DELL.COM>
Date: Tue, 5 May 2015 19:02:43 -0700
Message-Id: <FAD560B1-AB88-4F6E-8FE6-CB6795788892@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
	<5543E142.2020707@gmail.com>
	<7454550.JYGnhI8WWn@peggleto-mobl.ger.corp.intel.com>
	<DB6E482E89290547898851B8CC9D81100167EFD6CA@AUSX7MCPS302.AMER.DELL.COM>
To: michael_e_brown@dell.com
X-Mailer: Apple Mail (2.2098)
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Wed, 06 May 2015 02:03:00 -0000
X-Groupsio-MsgNum: 24713
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4E95D298-2D7C-41B2-80AC-7B0124F33A37";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4E95D298-2D7C-41B2-80AC-7B0124F33A37
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_266E48F3-BE44-4627-B3F3-45F99726AB19"

--Apple-Mail=_266E48F3-BE44-4627-B3F3-45F99726AB19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 5, 2015, at 6:35 PM, michael_e_brown@dell.com wrote:
>=20
> Dell - Internal Use - Confidential
>=20
> We use the google android =E2=80=9Crepo=E2=80=9D tool plus =
=E2=80=98externalsrc=E2=80=99 to great effect. 3 generations now, across =
now 6-ish different products and dozens of releases at this point. It =
checks out poky, our layer, our source mirror, and our internal sources =
all at once.

well, I have similar setup with repo hooks to generate an auto.conf with =
needed info about externalsrc components from repo groups and it works =
well however it really depends upon how much software you build on top =
if its a thick middleware + apps then
we loose the sstate reuse and if you have components which are needing =
to be dependency for something like qtwebkit then
its going to be even further degraded build performance for developers. =
Most of the times the dependencies are not changing APIs and interfaces =
but rebuild still happens since the component has changed we have no way =
to determine if the components APIs changed or not. It would be nice if =
build system could have such a tool to register certain APIs which could =
be added to rebuild decision checksum to make it more fine grained.

> --
> Michael
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: Tuesday, May 05, 2015 3:32 AM
> To: Trevor Woerner
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] creating images which include actively developed =
applications
>=20
> On Friday 01 May 2015 16:25:38 Trevor Woerner wrote:
> > On 04/22/15 13:58, Paul Eggleton wrote:
> > > On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
> > >> Is there a way to create a recipe to build actively developed =
code
> > >> located in an external source directory? Basically skip the fetch
> > >> and unpack steps and always execute the compile and populate =
steps
> > >> each time and image is built?
> > >
> > > Indeed there is:
> > >
> > > =
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#
> > > buildi
> > > ng-software-from-an-external-source
> >
> > Paul, I'm surprised you suggested externalsrc instead of just
> > mentioning devtool right from the start (doubly-surprised since =
you're
> > the person who wrote devtool!). Using devtool the "administration" =
(of
> > creating a recipe, etc) is done for you, no?
> >
> > =
http://twoerner.blogspot.ca/2015/01/the-yocto-project-introducing-devt
> > ool.ht
> > ml
>=20
> Well, I would have, except this doesn't quite seem like the same case =
as devtool is designed for (which is "temporary" switching of the source =
for development - AIUI Brian was looking for something more permanent.)
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_266E48F3-BE44-4627-B3F3-45F99726AB19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 5, 2015, at 6:35 PM, <a =
href=3D"mailto:michael_e_brown@dell.com" =
class=3D"">michael_e_brown@dell.com</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><p style=3D"margin-right: 0in; =
margin-left: 0in; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><b class=3D""><span style=3D"font-size: 9pt; =
font-family: 'Trebuchet MS', sans-serif; color: rgb(170, 170, 170);" =
class=3D"">Dell - Internal Use - Confidential<span =
class=3D"Apple-converted-space">&nbsp;</span></span></b><o:p =
class=3D""></o:p></p><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif;" class=3D"">We use the google =
android =E2=80=9Crepo=E2=80=9D tool plus =E2=80=98externalsrc=E2=80=99 =
to great effect. 3 generations now, across now 6-ish different products =
and dozens of releases at this point. It checks out poky, our layer, our =
source mirror, and our internal sources all at =
once.</div></div></div></blockquote><div><br class=3D""></div><div>well, =
I have similar setup with repo hooks to generate an auto.conf with =
needed info about externalsrc components from repo groups and it works =
well however it really depends upon how much software you build on top =
if its a thick middleware + apps then</div><div>we loose the sstate =
reuse and if you have components which are needing to be dependency for =
something like qtwebkit then</div><div>its going to be even further =
degraded build performance for developers. Most of the times the =
dependencies are not changing APIs and interfaces but rebuild still =
happens since the component has changed we have no way to determine if =
the components APIs changed or not. It would be nice if build system =
could have such a tool to register certain APIs which could be added to =
rebuild decision checksum to make it more fine grained.&nbsp;</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">--<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Michael<o:p=
 class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">-----Original Message-----<br class=3D"">From: <a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of Paul =
Eggleton<br class=3D"">Sent: Tuesday, May 05, 2015 3:32 AM<br =
class=3D"">To: Trevor Woerner<br class=3D"">Cc: <a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">Subject: Re: [yocto] =
creating images which include actively developed applications<br =
class=3D""><br class=3D"">On Friday 01 May 2015 16:25:38 Trevor Woerner =
wrote:<br class=3D"">&gt; On 04/22/15 13:58, Paul Eggleton wrote:<br =
class=3D"">&gt; &gt; On Wednesday 22 April 2015 15:32:06 Brian Karcz =
wrote:<br class=3D"">&gt; &gt;&gt; Is there a way to create a recipe to =
build actively developed code<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&gt; =
&gt;&gt; located in an external source directory? Basically skip the =
fetch<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">&gt; &gt;&gt; and unpack steps and always execute the compile =
and populate steps<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">&gt; &gt;&gt; each time and image is built?<br class=3D"">&gt; =
&gt;<span class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&gt;=
 &gt; Indeed there is:<br class=3D"">&gt; &gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&gt; &gt; <a =
href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.htm=
l#" =
class=3D"">http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#</a><br class=3D"">&gt; &gt; buildi<br class=3D"">&gt; &gt; =
ng-software-from-an-external-source<br class=3D"">&gt;<br class=3D"">&gt; =
Paul, I'm surprised you suggested externalsrc instead of just<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&gt; =
mentioning devtool right from the start (doubly-surprised since =
you're<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">&gt; the person who wrote devtool!). Using devtool the =
"administration" (of<span class=3D"Apple-converted-space">&nbsp;</span><br=
 class=3D"">&gt; creating a recipe, etc) is done for you, no?<br =
class=3D"">&gt;<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">&gt; <a =
href=3D"http://twoerner.blogspot.ca/2015/01/the-yocto-project-introducing-=
devt" =
class=3D"">http://twoerner.blogspot.ca/2015/01/the-yocto-project-introduci=
ng-devt</a><br class=3D"">&gt; ool.ht<br class=3D"">&gt; ml<br =
class=3D""><br class=3D"">Well, I would have, except this doesn't quite =
seem like the same case as devtool is designed for (which is "temporary" =
switching of the source for development - AIUI Brian was looking for =
something more permanent.)<br class=3D""><br class=3D"">Cheers,<br =
class=3D"">Paul<br class=3D""><br class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><br =
class=3D"">Paul Eggleton<br class=3D"">Intel Open Source Technology =
Centre<br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<o:p =
class=3D""></o:p></div></div><span style=3D"font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Helvetica; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_266E48F3-BE44-4627-B3F3-45F99726AB19--

--Apple-Mail=_4E95D298-2D7C-41B2-80AC-7B0124F33A37
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVJdkkACgkQuwUzVZGdMxQ3eACfX44WF1aMyqzzQMkbEz59YejN
VIMAn3cIWSg/Hf8RBymkd9gjMa9kygA5
=kFOW
-----END PGP SIGNATURE-----

--Apple-Mail=_4E95D298-2D7C-41B2-80AC-7B0124F33A37--
