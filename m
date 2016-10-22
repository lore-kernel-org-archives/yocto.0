Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43716E00546; Sat, 22 Oct 2016 09:14:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04818E0049D
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:14:01 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id s8so73807842pfj.2
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=I+pkwCc0aBNWnrSWWeCbZYst/uMmpWRpKqE4zps9PKE=;
	b=Er4RDQLJ68NZjZHFpIZeBNsUqn/gfsA42YJCZexjox50X8vTXM8SE7FW7xmtoNyUt0
	XRaHPIpsyGPxdqy3c6COLuo3SCaE5o9HLdggqxTSXLB2jYpXJ5N753aaeU/hmCXyq838
	hATDPLZ2CuzlY1HqThW+iES1YRWgauXGFcvpFKdTLfQJi+VFUPmcn5OF2qzyjZVT96A1
	n1I0//ju/B398Qi9rShxvFTpr0+rr3r80y0ca1/OL+6xWGnYs+3HeQ/yT0vD4hdk3B6e
	PTbfLg/8lzIiE9MHYCiOnRsGjz24ofaNLKaDnJcphaTLZ+0dwehRI0xgYeYlUg0waqqK
	R12w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=I+pkwCc0aBNWnrSWWeCbZYst/uMmpWRpKqE4zps9PKE=;
	b=OraCoIo5viwvWll5GNDLK9sNCm2IIQe8a4mE5oq+9cTNuRIjsBvqXSwzHT5wp4OAKi
	759xLzW8LM7lv/w9OqJD0NWJ/kThgi9KVWQGzgZ9wnZZb8iwvz4m0C8l8wL22MAV9E2N
	hbhMD7XKsUPqOG3skz9gHR0j9j771FFFNuMQaLKAuR0my7LQsAVOEogO8QgXrkC0G6d3
	Trf887epH+9E9j4LpojPY+uB10VEAif0K6RlOQyis5YA9VgGBZqDVneJI96Wrveg/uat
	+YOEl43vOdh88PIXjuULLGG1LwRnPQ0XrjSwP818OfZOuimKo5oUf+6XAVVOnd3kUEqi
	a4dQ==
X-Gm-Message-State: ABUngvfBwmVEvelgqY6zeuz14DyZmNpDXR9IV2MeOL2qSPFXM+WR1sEDMITGAzmNAkUoQw==
X-Received: by 10.98.35.220 with SMTP id q89mr12410267pfj.141.1477152841084;
	Sat, 22 Oct 2016 09:14:01 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:69a1:6763:cf15:8ed8?
	([2601:646:8882:b8c:69a1:6763:cf15:8ed8])
	by smtp.gmail.com with ESMTPSA id
	y2sm13382154pfk.54.2016.10.22.09.13.59
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 09:14:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Date: Sat, 22 Oct 2016 09:13:53 -0700
Message-Id: <682A676C-7174-476C-B845-13329DC857F9@gmail.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 16:14:05 -0000
X-Groupsio-MsgNum: 32571
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A675B848-8CA9-447F-8B4D-43552EEC6B10";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A675B848-8CA9-447F-8B4D-43552EEC6B10
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A1BF1842-AF6B-43C3-9F18-3ACB2CE9F2ED"

--Apple-Mail=_A1BF1842-AF6B-43C3-9F18-3ACB2CE9F2ED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Oct 22, 2016, at 8:16 AM, Karim ATIKI <karim_atiki@hotmail.com> =
wrote:
>=20
> Actually, it looks like the issue comes from gstreamer1.0-plugins-bad =
recipe.
>=20
> This function, graphics_get_display_size, comes from libbcm_host which =
seems to be present in sysroot.
>=20
> In log.doconfigure i found:
>=20
> checking for bcm_host_init in -lbcm_host... yes
> checking bcm_host.h usability... yes
> checking bcm_host.h presence... yes
> checking for bcm_host.h... yes
>=20
> So it seems that it found the necessary library.
>=20
> However, in the logfile of the compile error, there is no "-lbcm_host" =
dependency at all.
>=20
> Any idea to solve it ?

Look at the packageconfig files from userland package and see if its =
exporting the right libraries in .pc files.

>=20
> Karim
>=20
>=20
>=20
> De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> =
de la part de Karim ATIKI <karim_atiki@hotmail.com>
> Envoy=E9 : samedi 22 octobre 2016 14:26
> =C0 : yocto
> Objet : [yocto] [raspberrypi3][meta-qt5] Failed to build =
meta-toolchain-qt5
>=20
> Hi all,
>=20
> Tryng to build the meta-toolchain-qt5, I've a failure while bulidng =
gst-plugins-bad.
>=20
> The underlying error seems to be:
>=20
> | ./.libs/libgstgl-1.0.so: undefined reference to =
`graphics_get_display_size
>=20
> This function seems to come from bcm_host library.
> Isn't it related to  RaspberryPi graphic libs ?
>=20
> Should I add a specific dependency ?
>=20
> Weird.
>=20
> Karim
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A1BF1842-AF6B-43C3-9F18-3ACB2CE9F2ED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 22, 2016, at 8:16 AM, Karim ATIKI &lt;<a =
href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; font-family: Calibri, =
Arial, Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Actually, it looks like the issue comes =
from gstreamer1.0-plugins-bad recipe.</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">This function, =
graphics_get_display_size, comes from libbcm_host which seems to be =
present in sysroot.</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">In log.doconfigure i found:</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><p style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""></p><div class=3D"">checking for bcm_host_init in =
-lbcm_host... yes</div><div class=3D"">checking bcm_host.h usability... =
yes</div><div class=3D"">checking bcm_host.h presence... yes</div><div =
class=3D"">checking for bcm_host.h... yes</div><div class=3D""><br =
class=3D""></div>So it seems that it found the necessary library.<p =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""></p><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">However, in the logfile of the compile error, there is no =
"-lbcm_host" dependency at all.</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Any idea to =
solve it ?</div></div></div></blockquote><div><br =
class=3D""></div><div>Look at the packageconfig files from userland =
package and see if its exporting the right libraries in .pc =
files.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; font-family: Calibri, =
Arial, Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Karim</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><br class=3D""><br class=3D""><div style=3D"" =
class=3D""><hr tabindex=3D"-1" style=3D"display: inline-block; width: =
1054.46875px;" class=3D""><div id=3D"divRplyFwdMsg" dir=3D"ltr" =
class=3D""><font face=3D"Calibri, sans-serif" style=3D"font-size: 11pt;" =
class=3D""><b class=3D"">De :</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a> &lt;<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a>&gt; de la part de Karim =
ATIKI &lt;<a href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt;<br class=3D""><b =
class=3D"">Envoy=E9 :</b><span =
class=3D"Apple-converted-space">&nbsp;</span>samedi 22 octobre 2016 =
14:26<br class=3D""><b class=3D"">=C0 :</b><span =
class=3D"Apple-converted-space">&nbsp;</span>yocto<br class=3D""><b =
class=3D"">Objet :</b><span =
class=3D"Apple-converted-space">&nbsp;</span>[yocto] =
[raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5</font><div =
class=3D"">&nbsp;</div></div><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; font-family: =
Calibri, Arial, Helvetica, sans-serif;" class=3D""><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Hi =
all,</div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Tryng to build the meta-toolchain-qt5, =
I've a failure while bulidng gst-plugins-bad.</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">The underlying error seems to be:</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><i class=3D""><b class=3D""></b></i><span class=3D""><b =
class=3D""><i class=3D"">| ./.libs/libgstgl-1.0.so: undefined reference =
to `graphics_get_display_size</i></b></span><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
class=3D""><b class=3D""><i class=3D""><br =
class=3D""></i></b></span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span class=3D"">This function seems to =
come from bcm_host library.</span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span class=3D"">Isn't it related =
to&nbsp; RaspberryPi graphic libs ?</span></div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Should I add a =
specific dependency ?</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Weird.</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Karim</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
class=3D""><b class=3D""><i class=3D""><br =
class=3D""></i></b></span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span class=3D""><b class=3D""><i =
class=3D""><br =
class=3D""></i></b></span></div></div></div></div></div><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D""><a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a></span><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></span></div><=
/blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A1BF1842-AF6B-43C3-9F18-3ACB2CE9F2ED--

--Apple-Mail=_A675B848-8CA9-447F-8B4D-43552EEC6B10
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgLkEYACgkQuwUzVZGdMxQZxACeNJQ1/QJ3Ea3jzaO1P2IqcFn8
RS4AoJEEeyRR+hAgysxOcl3xFkj6/rXa
=OgRN
-----END PGP SIGNATURE-----

--Apple-Mail=_A675B848-8CA9-447F-8B4D-43552EEC6B10--
