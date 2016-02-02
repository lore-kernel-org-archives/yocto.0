Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DD38E00C18; Tue,  2 Feb 2016 11:52:04 -0800 (PST)
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
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEC0E00838
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 11:52:03 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id n128so109703404pfn.3
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 11:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zypewbjwiBER4NruMqzKKOXCH4WJlZZUbV01x4wdO9U=;
	b=J+G/YJ3WB1CGWjgIL3x4KkFioKr5VY06ImMjmAK9AFpFPY87wQwTV5ZegyIFHR0sj/
	t0H7H5XVeMWuJ7wVxXGzeLt8EEqr6yPE0kP6xUySRVfXSU+1ULGtXcgoUzAyd63VKofx
	8Xoe9DwdhytiHw3KIysQCyZKb1C5DqnI9elsmudxiKfAGQF6YR+QTH9fFUMY3Sr59VWh
	29fxRtP/G44zV6i+Q9M2/vDpXDlGjWVMcz9suPN7MlJIuEYokHbN26Dm/sXWZ22E8ffH
	HAxvsuUkA7MD/HzxpnuzF5hhJh5wRpzZ4aCdo3YII3Jrpf8oCG74OGNP4YWrvagFeb4I
	KXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=zypewbjwiBER4NruMqzKKOXCH4WJlZZUbV01x4wdO9U=;
	b=JhsodTQAk2xvj+Ya6XkmHK1r3qCqdfiDNzSnqFAli8WPT7ckRvD0vjCVD2/kSx95iL
	7/R3fnyMXfn9BzM1s4PwP9KWhi2NkSgCUVUmhK5eXl0CE4WrD4jEJ2DWHt0ZPSVBJ3lH
	fAwp/ksA6siGLTeXl07hBj6P7Mf7OrcKAiDLYe1ZLnKDjZLumzxu6sP76addvzhtInM5
	wgLxC2762vdNyW7cNIUG+8pvFzdUewgEyqJms20tclW/WrTeACCy1fXYQF16O4zM/iaQ
	W41t71Y8sMExXiD+akua1ST0peHTaDS2b6HWhi9CduktWB3ORA/J34G1j9ACrl4HaKdG
	2wqw==
X-Gm-Message-State: AG10YOTVbjUGf/FfUZGMabFgqQWKblidWGmHc691ePFpKPv0t8FZ/1L4X/BCkWUQevnP5g==
X-Received: by 10.98.0.66 with SMTP id 63mr49978666pfa.61.1454442722820;
	Tue, 02 Feb 2016 11:52:02 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:6867:8d24:d4b6:fecd?
	([2601:646:8802:5d5c:6867:8d24:d4b6:fecd])
	by smtp.gmail.com with ESMTPSA id
	f12sm4452393pfd.87.2016.02.02.11.52.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Feb 2016 11:52:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AMXPR01MB086D31E538EF035E1F7BCC592DF0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Date: Tue, 2 Feb 2016 11:51:57 -0800
Message-Id: <1F8A541A-4322-4515-8B01-C9ADE0E96AF9@gmail.com>
References: <AMXPR01MB086D31E538EF035E1F7BCC592DF0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi2] do_rootfs() failure at the end of qt5-image-demo recipe
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
X-List-Received-Date: Tue, 02 Feb 2016 19:52:04 -0000
X-Groupsio-MsgNum: 28214
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D84E8BA2-B190-48E1-8A56-3152888145F9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D84E8BA2-B190-48E1-8A56-3152888145F9
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D6422690-1B30-447E-A1E1-95E58F5F00DE"

--Apple-Mail=_D6422690-1B30-447E-A1E1-95E58F5F00DE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Feb 1, 2016, at 10:53 PM, Karim ATIKI <karim_atiki@hotmail.com> =
wrote:
>=20
> Hello,
>=20
> I'm experiencing issue while building qt-image-demo (jethro) for =
raspberrypi2.
> At the very end of the build: do_rootfs failure.
>=20
> Collected errors:
>  * satisfy_dependencies_for: Cannot satisfy the following dependencies =
for packagegroup-qt5-graphics:
>  *      qt3d-tools *
>  * opkg_install_cmd: Cannot install package packagegroup-qt5-graphics.
>=20
> However, I haven't added or modified the layers and recipes.
>=20
> Any idea ?

check if right knobs are enabled in meta-qt5 to enable qt3d-tools. There =
are cases sometimes where DISTRO_FEATURES control
the knobs and that differs from distro to distro

>=20
>=20
> K.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_D6422690-1B30-447E-A1E1-95E58F5F00DE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 1, 2016, at 10:53 PM, Karim ATIKI &lt;<a =
href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
font-size: 12pt; background-color: rgb(255, 255, 255); font-family: =
Calibri, Arial, Helvetica, sans-serif;" class=3D""><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Hello,</div><div=
 style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">I'm experiencing issue while building qt-image-demo (jethro) =
for raspberrypi2.</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D"">At the very end of the build: do_rootfs =
failure.</div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><p style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""></p><div class=3D""><b =
class=3D"">Collected errors:</b></div><div class=3D""><b =
class=3D"">&nbsp;* satisfy_dependencies_for: Cannot satisfy the =
following dependencies for packagegroup-qt5-graphics:</b></div><div =
class=3D""><b class=3D"">&nbsp;* &nbsp; &nbsp; &nbsp;qt3d-tools =
*</b></div><div class=3D""><b class=3D"">&nbsp;* opkg_install_cmd: =
Cannot install package packagegroup-qt5-graphics.</b></div><div =
class=3D""><br class=3D""></div>However, I haven't added or modified the =
layers and recipes.<p style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""></p><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Any idea =
?</div></div></div></blockquote><div><br class=3D""></div><div>check if =
right knobs are enabled in meta-qt5 to enable qt3d-tools. There are =
cases sometimes where DISTRO_FEATURES control</div><div>the knobs and =
that differs from distro to distro</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" =
style=3D"font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; font-size: 12pt; =
background-color: rgb(255, 255, 255); font-family: Calibri, Arial, =
Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">K.</div></div><span style=3D"font-family: Ubuntu; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">--<span =
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
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_D6422690-1B30-447E-A1E1-95E58F5F00DE--

--Apple-Mail=_D84E8BA2-B190-48E1-8A56-3152888145F9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaxCOEACgkQuwUzVZGdMxSSJgCeLngAoBnSvDWEbxCwFZFVt8YX
RaIAoIHG/Q90KQgPCN/I/I9lXoLqPrhx
=6XwJ
-----END PGP SIGNATURE-----

--Apple-Mail=_D84E8BA2-B190-48E1-8A56-3152888145F9--
