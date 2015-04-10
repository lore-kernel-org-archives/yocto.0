Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9993E008EC; Thu,  9 Apr 2015 17:25:04 -0700 (PDT)
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
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE3CE0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 17:25:01 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so4070715pac.1
	for <yocto@yoctoproject.org>; Thu, 09 Apr 2015 17:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=oATsIDcWPByMvwiREnIAJBtjAdwh9w78ACQcDqHW3uQ=;
	b=Jld0F/sgawNJR6qxx3QuszYlpPXYBCbf7FwuLSDxHRY5NM4gZHpdDUvIzl63y1h/J6
	3D6/jckEi2GLE1Hz06GIkgEWqafTZku5MspyRwVxDTaX3Og/VZx8tSn0A2ws801ULux3
	gOy068cG6LlZzMA9VdIXKraOsIgbZDq30Pp5e3fbJTPz6UgUGMHLcIAxKUaS1V14tATz
	g+49YOB4jVXHlk/SV3AZu6h+RepuIMMeD5GYNCehqdCeqGB5jmM+26MUB9xz8WHXhqpS
	Uv/caEkPBCVnvS/AJHMHnV0+nOwgOkH1HErsCEqjcEuva63AovKKCu5BekocnZAGTnkg
	SuRA==
X-Received: by 10.70.96.233 with SMTP id dv9mr60893719pdb.44.1428625500651;
	Thu, 09 Apr 2015 17:25:00 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id bo2sm215937pbb.1.2015.04.09.17.24.59
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 09 Apr 2015 17:25:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1261690743.1240210.1428583042565.JavaMail.yahoo@mail.yahoo.com>
Date: Thu, 9 Apr 2015 17:24:58 -0700
Message-Id: <830F98AF-CD39-408A-918A-21EEFA353391@gmail.com>
References: <1261690743.1240210.1428583042565.JavaMail.yahoo@mail.yahoo.com>
To: kris duff <t_dufff@yahoo.ca>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemd inherited package will not be enabled on boot
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
X-List-Received-Date: Fri, 10 Apr 2015 00:25:04 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F3E2432C-3714-4831-9583-C61B316F2083"

--Apple-Mail=_F3E2432C-3714-4831-9583-C61B316F2083
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 9, 2015, at 5:37 AM, kris duff <t_dufff@yahoo.ca> wrote:
>=20
> Hello,
>=20
> using yocto dizzy ( but had the same problem with daisy )
>=20
> I have a strange problem with few recipes that inherit from =
systemd.bbclass.
>=20
> When I add the package to an image recipe, the software will NOT be =
started on boot. But, if I install the package from RPM, it will be =
started automatically on boot.
>=20
> I use a .bbappend template to add systemd service file to the package.
>=20
> The template looks like this :
>=20
> #=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> inherit systemd
>=20
> SRC_URI +=3D "file://filiname.service"
>               =20
> FILES_${PN} +=3D "/lib/"
>=20
> SYSTEMD_SERVICE_${PN} =3D "filename.service"
>=20
> do_install_append() {
>     install -d ${D}${systemd_unitdir}/system
>     install -m 0644 ${WORKDIR}/filename.service =
${D}${systemd_unitdir}/system
> }
> #=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I tried to add SYSTEMD_PACKAGE =3D ${PN}-systemd
>=20
> no luck
>=20
> I tried to add SYSTEMD_AUTO_ENABLE =3D "enable"
>=20
> will not help neither.
>=20
> Do somebody have an advice to help me debug this ?

show you .service file too please
You need to have [install] section inside your unit file. I think you =
are missing that

>=20
> Thank you
>=20
> Kris
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F3E2432C-3714-4831-9583-C61B316F2083
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 9, 2015, at 5:37 AM, kris duff &lt;<a =
href=3D"mailto:t_dufff@yahoo.ca" class=3D"">t_dufff@yahoo.ca</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D""><div style=3D"background-color: rgb(255, 255, 255); =
font-family: HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida =
Grande', sans-serif; font-size: 10px;" class=3D""><div =
id=3D"yui_3_16_0_1_1428581642874_8790" dir=3D"ltr" =
class=3D"">Hello,</div><div id=3D"yui_3_16_0_1_1428581642874_8572" =
dir=3D"ltr" class=3D""><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13951" dir=3D"ltr" class=3D"">using =
yocto dizzy ( but had the same problem with daisy )<br =
class=3D""></div><div id=3D"yui_3_16_0_1_1428581642874_13952" dir=3D"ltr" =
class=3D""><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_8573" dir=3D"ltr" class=3D"">I have a =
strange problem with few recipes that inherit from =
systemd.bbclass.</div><div id=3D"yui_3_16_0_1_1428581642874_8749" =
dir=3D"ltr" class=3D""><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_8748" dir=3D"ltr" class=3D"">When I add =
the package to an image recipe, the software will NOT be started on =
boot. But, if I install the package from RPM, it will be started =
automatically on boot.<br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_8574" dir=3D"ltr" class=3D""><br =
class=3D""></div><div id=3D"yui_3_16_0_1_1428581642874_8580" dir=3D"ltr" =
class=3D"">I use a .bbappend template to add systemd service file to the =
package.</div><div id=3D"yui_3_16_0_1_1428581642874_8747" dir=3D"ltr" =
class=3D""><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_8746" dir=3D"ltr" class=3D"">The =
template looks like this :</div><div =
id=3D"yui_3_16_0_1_1428581642874_8700" dir=3D"ltr" class=3D""><br =
class=3D""></div><div id=3D"yui_3_16_0_1_1428581642874_8644" dir=3D"ltr" =
class=3D"">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br class=3D""></div><div dir=3D"ltr" =
id=3D"yui_3_16_0_1_1428581642874_8486" class=3D"">inherit systemd<br =
style=3D"" class=3D""><br style=3D"" class=3D"">SRC_URI +=3D "<a =
href=3D"file:///filiname.service" =
class=3D"">file://filiname.service</a>"<br style=3D"" =
class=3D"">&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br =
style=3D"" class=3D"">FILES_${PN} +=3D "/lib/"<br style=3D"" =
class=3D""><br style=3D"" class=3D"">SYSTEMD_SERVICE_${PN} =3D =
"filename.service"<br style=3D"" class=3D""><br style=3D"" =
class=3D"">do_install_append() {<br style=3D"" =
class=3D"">&nbsp;&nbsp;&nbsp; install -d =
${D}${systemd_unitdir}/system<br style=3D"" class=3D"">&nbsp;&nbsp;&nbsp; =
install -m 0644 ${WORKDIR}/filename.service =
${D}${systemd_unitdir}/system<br style=3D"" class=3D"">}<br style=3D"" =
class=3D"">#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br class=3D""></div><div style=3D"" =
class=3D"" dir=3D"ltr" id=3D"yui_3_16_0_1_1428581642874_8486"><br =
class=3D""></div><div id=3D"yui_3_16_0_1_1428581642874_8743" style=3D"" =
class=3D"" dir=3D"ltr">I tried to add SYSTEMD_PACKAGE =3D =
${PN}-systemd</div><div id=3D"yui_3_16_0_1_1428581642874_13937" style=3D""=
 class=3D"" dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13938" style=3D"" class=3D"" =
dir=3D"ltr">no luck</div><div id=3D"yui_3_16_0_1_1428581642874_13939" =
style=3D"" class=3D"" dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13958" style=3D"" class=3D"" =
dir=3D"ltr">I tried to add SYSTEMD_AUTO_ENABLE =3D "enable"</div><div =
id=3D"yui_3_16_0_1_1428581642874_13975" style=3D"" class=3D"" =
dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13986" style=3D"" class=3D"" =
dir=3D"ltr">will not help neither.</div><div =
id=3D"yui_3_16_0_1_1428581642874_13987" style=3D"" class=3D"" =
dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13988" style=3D"" class=3D"" =
dir=3D"ltr">Do somebody have an advice to help me debug this =
?</div></div></div></div></blockquote><div><br class=3D""></div><div>show =
you .service file too please</div><div>You need to have [install] =
section inside your unit file. I think you are missing that</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D""><div style=3D"background-color: rgb(255, 255, 255); =
font-family: HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida =
Grande', sans-serif; font-size: 10px;" class=3D""><div =
id=3D"yui_3_16_0_1_1428581642874_13989" style=3D"" class=3D"" =
dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13990" style=3D"" class=3D"" =
dir=3D"ltr">Thank you</div><div id=3D"yui_3_16_0_1_1428581642874_13991" =
style=3D"" class=3D"" dir=3D"ltr"><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1428581642874_13992" style=3D"" class=3D"" =
dir=3D"ltr">Kris<br style=3D"" class=3D""></div></div></div>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_F3E2432C-3714-4831-9583-C61B316F2083--
