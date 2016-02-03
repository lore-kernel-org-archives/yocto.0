Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445F3E00C2B; Tue,  2 Feb 2016 22:08:52 -0800 (PST)
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
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE106E00C29
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 22:08:50 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id yy13so7756026pab.3
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 22:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=2HNnF6YKAM5H+iELmnDpf1DfJ9+3IV58t+Y8GYHszHY=;
	b=KtriPRMSQxYeBh7/RaX2modpj3EnI+YRN6PGzx/gkEofw51h/5HpIlQJuXGlsxedun
	E8QFr4G/lTF4bK0c4LNYil/5beOkq6HazSARJ9QB/rEFtJQVZmJGeH+kSXALTd+t0Jim
	LtfMDKCaQ4nzttfJVllk2G9o2MaRIJ+FGpKZZkygTa3HaAY6hV2g9ldteO1QUG3yeIXQ
	U5DkRxKAcC0cKWRLjEmx+CbAFF8QFoTd4HWKEAMHSKV8Bs83wkqzl+24HXt2dhFSoMoc
	hXdsz4VLTnLgmFz9kjA3n4G77yp8IuDObbsVb6m2MZjbNp2Jb5fH7rfBXF6Ihy5Ie1GY
	vv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=2HNnF6YKAM5H+iELmnDpf1DfJ9+3IV58t+Y8GYHszHY=;
	b=Vaa3ToEVivwWR2JlBsqyPVdwmxXVaIlbIn8hr/DcfZadoW8b08fKarUy19gyQWwu2k
	MuQgO8jrnDJt4KOizSl6gjBTs/MTuu4GP9Nf4X8j/aBLl1APq5qoLOefnpWrLNoIi3to
	/Fv3lCUAZdZatNlRq/fLBcn6Xg1rj2awZP0Ag+GoAXxzAlMgw5Vk0BnOELWn62Av9xZ8
	QqJnif4leT+yiZj97GZ2ENlb9DcYULumwe+1J1Il8pf+gve0cXAjbb4AwmRVctqX2koE
	bK2brX+G+MXpppnNOWdOVdDKbuJcw+7aAgal1LSERFy6e31c8RO4iJSAbyjG71AIsa3p
	93sw==
X-Gm-Message-State: AG10YOThw7FPOYuVDvjIKuEJeWYg08l/N7M0RVF5EpUD8olIOxmhuqvOR9bScEaO1Eu4kQ==
X-Received: by 10.66.252.42 with SMTP id zp10mr53480380pac.29.1454479729884;
	Tue, 02 Feb 2016 22:08:49 -0800 (PST)
Received: from [192.168.0.4] (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	s90sm1199332pfa.49.2016.02.02.22.08.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Feb 2016 22:08:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
Date: Tue, 2 Feb 2016 22:08:48 -0800
Message-Id: <AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
To: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
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
X-List-Received-Date: Wed, 03 Feb 2016 06:08:52 -0000
X-Groupsio-MsgNum: 28217
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1CC576F4-D86C-455E-BAF7-E436B5B31168";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1CC576F4-D86C-455E-BAF7-E436B5B31168
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_41565DA6-A841-4E4D-9FFC-F28152766A0B"

--Apple-Mail=_41565DA6-A841-4E4D-9FFC-F28152766A0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien =
<j.gueytat@cdssoft.studiel.fr> wrote:
>=20
> Hi,
>=20
> It seems that there are some stiff missing between meta-qt5 or =
meta-raspberrypi.
> When we set the option gles=E2=80=A6 to qtbase we don=E2=80=99t get =
the QMAKE_LIBS_EGL set properly.
> We can compare a working set of variables in the qt mkspecs directory =
of qt.
> There is one dedicated file for the RaspberryPi2. May be one also for =
RaspberryPi.
> Anyway!
> How could we set those *_EGL variables properly? And=E2=80=A6 If they =
are properly set, will qtbase will take them into account?
>=20
> I will be happy to propose a patch but I need to get more precision =
first.

Firstly show the DISTRO_FEATURES may be you are missing some important =
knobs for EGL
like openGL and gles2 etc.

> Thanks in advance,
>=20
>=20
>=20
> Julien GUEYTAT
> Ing=C3=A9nieur Informatique
> <image001.png>
> 1027, avenue du Docteur Julien Lefebre BP27
> 06271 Villeneuve-Loubet Cedex
> Fixe :  +33 (0) 492 024 545
> Mob :  +33(0) 617 980 383
> Fax :    +33(0) 492 024 546
> Email : j.gueytat@cdssoft.studiel.fr =
<mailto:j.gueytat@cdssoft.studiel.fr>
> www : www.studiel.fr <http://www.studiel.fr/>
> P Pensez Environnement, imprimez seulement si n=C3=A9cessaire
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_41565DA6-A841-4E4D-9FFC-F28152766A0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien &lt;<a =
href=3D"mailto:j.gueytat@cdssoft.studiel.fr" =
class=3D"">j.gueytat@cdssoft.studiel.fr</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">Hi,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">It =
seems that there are some stiff missing between meta-qt5 or =
meta-raspberrypi.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span lang=3D"EN-US" class=3D"">When we set the option =
gles=E2=80=A6 to qtbase we don=E2=80=99t get the QMAKE_LIBS_EGL set =
properly.<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span lang=3D"EN-US" class=3D"">We can compare a working set =
of variables in the qt mkspecs directory of qt.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">There is one dedicated file for the =
RaspberryPi2. May be one also for RaspberryPi.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">Anyway!<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">How =
could we set those *_EGL variables properly? And=E2=80=A6 If they are =
properly set, will qtbase will take them into account?<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">I will =
be happy to propose a patch but I need to get more precision =
first.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>Firstly show the DISTRO_FEATURES may be you are =
missing some important knobs for EGL</div><div>like openGL and gles2 =
etc.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Ubuntu; font-size: 14px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" =
class=3D""><o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span lang=3D"EN-US" class=3D"">Thanks in advance,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><b =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">Julien =
GUEYTAT<o:p class=3D""></o:p></span></b></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">Ing=C3=A9nieur Informatique<o:p =
class=3D""></o:p></span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D""><span =
id=3D"cid:image001.png@01D15DE2.555941C0">&lt;image001.png&gt;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; color: rgb(31, 73, 125);" class=3D"">1027, =
avenue du Docteur Julien Lefebre BP27</span><b class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D""></o:p></span></b></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; color: rgb(31, 73, 125);" =
class=3D"">06271 Villeneuve-Loubet Cedex<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><u =
class=3D""><span style=3D"font-size: 10pt; color: rgb(31, 73, 125);" =
class=3D"">Fixe</span></u><span style=3D"font-size: 10pt; color: rgb(31, =
73, 125);" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>:&nbsp; +33 (0) =
492&nbsp;024 545<br class=3D""><u class=3D"">Mob</u><span =
class=3D"Apple-converted-space">&nbsp;</span>:&nbsp; +33(0) 617 980 =
383<br class=3D""><u class=3D"">Fax</u><span =
class=3D"Apple-converted-space">&nbsp;</span>:&nbsp;&nbsp;&nbsp; +33(0) =
492&nbsp;024 546<br class=3D""><u class=3D"">Email</u><span =
class=3D"Apple-converted-space">&nbsp;</span>:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span class=3D""><a =
href=3D"mailto:j.gueytat@cdssoft.studiel.fr" style=3D"color: rgb(149, =
79, 114); text-decoration: underline;" class=3D""><span style=3D"color: =
rgb(5, 99, 193);" class=3D"">j.gueytat@cdssoft.studiel.fr</span></a><span =
style=3D"color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D""></o:p></span></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><u class=3D""><span style=3D"font-size: 10pt; color: rgb(31, =
73, 125);" class=3D"">www</span></u><span style=3D"font-size: 10pt; =
color: rgb(31, 73, 125);" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span class=3D""><a =
href=3D"http://www.studiel.fr/" style=3D"color: rgb(149, 79, 114); =
text-decoration: underline;" class=3D""><span style=3D"color: rgb(5, 99, =
193);" class=3D"">www.studiel.fr</span></a><span style=3D"color: rgb(31, =
73, 125);" class=3D""><o:p class=3D""></o:p></span></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><b class=3D""><span style=3D"font-size: =
24pt; font-family: Webdings; color: green;" class=3D"">P</span></b><b =
class=3D""><span style=3D"font-size: 12pt; font-family: 'Times New =
Roman', serif;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span></span></b><b =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif; color: green;" class=3D"">Pensez Environnement, imprimez =
seulement si n=C3=A9cessaire</span></b><span style=3D"color: rgb(31, 73, =
125);" class=3D""><o:p class=3D""></o:p></span></div><div style=3D"margin:=
 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><span =
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
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Ubuntu; font-size: 14px; =
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
rgb(149, 79, 114); text-decoration: underline; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_41565DA6-A841-4E4D-9FFC-F28152766A0B--

--Apple-Mail=_1CC576F4-D86C-455E-BAF7-E436B5B31168
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaxmXAACgkQuwUzVZGdMxRHJQCgjRVxOwogJHJZLqBit01p6u/W
fMgAniaWYg7tuCJUK0tKnY4M7xLvChy9
=8IO9
-----END PGP SIGNATURE-----

--Apple-Mail=_1CC576F4-D86C-455E-BAF7-E436B5B31168--
