Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2EFCE0089B; Thu,  3 Nov 2016 14:44:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BCCE0074B
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:44:24 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y68so5892437pfb.1
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 14:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=7SiMkV5Mz49PeMHIaq22lEG/cWwiG2gyN0sJ1tif8RY=;
	b=QIARKtSNBknadR7agEcxopBz5/p1jQQqNtj5LjA3xKukvFpp2N3Sn9RsaxjB+5wPBP
	JiHdsygXDiVT660r0ISWmDisob+cqjQYG0RWXm5phFZTq71o4nRKzI9sTFNBLNbu1i0K
	gWm6EAxL5TlTy1R4oYuM5DVE5FwOl/sMOmeLJ7hmUorPQlz7nDua+WDzb064Aucpp/lZ
	lFT/lmkrWTs56ZpjuJaMEVPjYPrxpa/6xJIdI5DRcc+SfFpOenUWmmjA/Myai8BdiLW2
	P7NzAFzyoF3zmiLL98TgbJOppCXSEHcORu4BM0TAU6I2DgqprxGFYnbAoc1s4R5ef3L5
	Kuvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=7SiMkV5Mz49PeMHIaq22lEG/cWwiG2gyN0sJ1tif8RY=;
	b=cyLfeT/+Qc+hHmQkfedSKwFRc9iPRsTACdLvDPUIF8ugRJsT5CQc4Yrdgl2TCjBc72
	czB5jTbkddPOezhxXBR58xihPWSRkP65W3yAXm0QkO2lBLh8hmR0Br0xECGd3Z8Bkf4L
	3qIhV24x1z/toupGX+ylv0SPWOLmOSp1fDmpA3m5pwNPxOafLAV0K+y7H6NjoZhugStc
	MvrITXWEQ43lbp3fksFRw0qKHXCefZBgUKakA0gPeahufiknaTo9kGvgfHzbRUx2yWBj
	pUY4ymiVX3JFO2r/kVoPAlnf7VwjeKakHh8++qns9n/EFcz0UByr8ctQkzsU1BeuR4Lu
	y/vQ==
X-Gm-Message-State: ABUngveVXmrbQ7NulJCsbyAvmrSonrRm5JpeR55ZMJtlexd6+mNVoRH5BWjyTr4It8mHeA==
X-Received: by 10.99.226.83 with SMTP id y19mr17054053pgj.147.1478209463926;
	Thu, 03 Nov 2016 14:44:23 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:d87c:cd06:754:6afe?
	([2601:646:8882:b8c:d87c:cd06:754:6afe])
	by smtp.gmail.com with ESMTPSA id
	v6sm14985975pab.14.2016.11.03.14.44.23
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 14:44:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <HE1PR01MB188355B9382AA3E56FECCD9092A30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Date: Thu, 3 Nov 2016 14:44:22 -0700
Message-Id: <1B1AB8C7-B125-4187-B7AF-4EBEA5D3D133@gmail.com>
References: <20161103205709.32535-1-raj.khem@gmail.com>
	<HE1PR01MB188355B9382AA3E56FECCD9092A30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Thu, 03 Nov 2016 21:44:27 -0000
X-Groupsio-MsgNum: 32834
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A998A7B1-02DE-4915-9289-3EBF66AFEB59";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A998A7B1-02DE-4915-9289-3EBF66AFEB59
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7886ECA2-9A84-4FD7-9A69-09429055F718"

--Apple-Mail=_7886ECA2-9A84-4FD7-9A69-09429055F718
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

here is reworked patch
=
https://github.com/kraj/meta-raspberrypi/commit/468e28084a4d41e71fc0fde53b=
43033cd19ef9d5.patch =
<https://github.com/kraj/meta-raspberrypi/commit/468e28084a4d41e71fc0fde53=
b43033cd19ef9d5.patch>

try it again

> On Nov 3, 2016, at 2:27 PM, Karim ATIKI <karim_atiki@hotmail.com> =
wrote:
>=20
> Hi Khem,
>=20
> I just tried to rebuild gstreamer1.0-plugins-bad from a clean checkout =
with your patch.
> At first glance, it's working.
>=20
> "bitbake gstreamer1.0-plugins-bad" succeeded but with a QA Warning:
>=20
> gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue: =
gstreamer1.0-plugins-bad: invalid PACKAGECONFIG: "dispmanx =
[invalid-packageconfig]
>=20
> Karim
>=20
>=20
>=20
> De : yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org> <yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>> de la part de Khem Raj =
<raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> Envoy=E9 : jeudi 3 novembre 2016 21:57
> =C0 : yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Objet : [yocto] [meta-raspberrypi][PATCH V2] =
gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
>=20
> Enable dispmanx support if using bcm driver
>=20
> Signed-off-by: Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>>
> ---
> Changes from V1->V2:
> - Remove spurious "
> - Rearrange code
> - Remove duplicate packageconfig for dispmanx
>=20
>  .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 =
++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git =
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index ab0280e..7292f90 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,2 +1,12 @@
> -EXTRA_OECONF_append_rpi =3D " =
CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads =
\
> -                                   =
-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
> +EXTRA_OECONF_append_rpi =3D " =
CPPFLAGS=3D'-I${STAGING_INCDIR}/interface/vcos/pthreads \
> +                                   =
-I${STAGING_INCDIR}/interface/vmcs_host/linux'"
> +
> +# if using bcm driver enable dispmanx not when using VC4 driver
> +
> +PACKAGECONFIG_append_rpi =3D =
"${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' =
dispmanx', d)}"
> +
> +PACKAGECONFIG_GL_rpi =3D "egl gles2"
> +
> +PACKAGECONFIG_append_rpi =3D " hls libmms faad"
> +
> +PACKAGECONFIG[dispmanx] =3D =
"--enable-dispmanx,--disable-dispmanx,userland"
> --
> 2.10.2
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org <http://lists.yoctoproject.org/>
> Discussion of all things about the Yocto Project. Read our Community =
Guidelines or learn more about how to participate in other community =
discussions.


--Apple-Mail=_7886ECA2-9A84-4FD7-9A69-09429055F718
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">here is reworked patch<div class=3D""><a =
href=3D"https://github.com/kraj/meta-raspberrypi/commit/468e28084a4d41e71f=
c0fde53b43033cd19ef9d5.patch" =
class=3D"">https://github.com/kraj/meta-raspberrypi/commit/468e28084a4d41e=
71fc0fde53b43033cd19ef9d5.patch</a></div><div class=3D""><br =
class=3D""></div><div class=3D"">try it again&nbsp;</div><div =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 3, 2016, at 2:27 PM, Karim ATIKI &lt;<a =
href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; font-family: Calibri, =
Arial, Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Hi Khem,</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">I just tried =
to rebuild gstreamer1.0-plugins-bad from a clean checkout with your =
patch.</div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">At first glance, it's working.</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">"bitbake =
gstreamer1.0-plugins-bad" succeeded but with a QA Warning:</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><span class=3D"">gstreamer1.0-plugins-bad-1.8.3-r0 =
do_configure: QA Issue: gstreamer1.0-plugins-bad: invalid PACKAGECONFIG: =
"dispmanx [invalid-packageconfig]</span><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">Karim</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D""><br class=3D""></div><br class=3D""><br class=3D""><div =
style=3D"" class=3D""><div class=3D""><hr tabindex=3D"-1" =
style=3D"display: inline-block; width: 1041.734375px;" class=3D""><div =
id=3D"x_divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, =
sans-serif" style=3D"font-size: 11pt;" class=3D""><b class=3D"">De =
:</b><span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>&lt;<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a>&gt; de la part de Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D""><b class=3D"">Envoy=E9=
 :</b><span class=3D"Apple-converted-space">&nbsp;</span>jeudi 3 =
novembre 2016 21:57<br class=3D""><b class=3D"">=C0 :</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><b class=3D"">Objet =
:</b><span class=3D"Apple-converted-space">&nbsp;</span>[yocto] =
[meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set =
PACKAGECONFIG_GL for RPi</font><div =
class=3D"">&nbsp;</div></div></div><font size=3D"2" class=3D""><span =
style=3D"font-size: 10pt;" class=3D""><div class=3D"PlainText">Enable =
dispmanx support if using bcm driver<br class=3D""><br =
class=3D"">Signed-off-by: Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D"">---<br =
class=3D"">Changes from V1-&gt;V2:<br class=3D"">- Remove spurious "<br =
class=3D"">- Rearrange code<br class=3D"">- Remove duplicate =
packageconfig for dispmanx<br class=3D""><br =
class=3D"">&nbsp;.../gstreamer/gstreamer1.0-plugins-bad_%.bbappend&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 14 ++++++++++++--<br =
class=3D"">&nbsp;1 file changed, 12 insertions(+), 2 deletions(-)<br =
class=3D""><br class=3D"">diff --git =
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br =
class=3D"">index ab0280e..7292f90 100644<br class=3D"">--- =
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br =
class=3D"">+++ =
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br =
class=3D"">@@ -1,2 +1,12 @@<br class=3D"">-EXTRA_OECONF_append_rpi =3D " =
CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads =
\<br =
class=3D"">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"<br =
class=3D"">+EXTRA_OECONF_append_rpi =3D " =
CPPFLAGS=3D'-I${STAGING_INCDIR}/interface/vcos/pthreads \<br =
class=3D"">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-I${STAGING_INCDIR}/interface/vmcs_host/linux'"<br class=3D"">+<br =
class=3D"">+# if using bcm driver enable dispmanx not when using VC4 =
driver<br class=3D"">+<br class=3D"">+PACKAGECONFIG_append_rpi =3D =
"${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' =
dispmanx', d)}"<br class=3D"">+<br class=3D"">+PACKAGECONFIG_GL_rpi =3D =
"egl gles2"<br class=3D"">+<br class=3D"">+PACKAGECONFIG_append_rpi =3D =
" hls libmms faad"<br class=3D"">+<br class=3D"">+PACKAGECONFIG[dispmanx] =
=3D "--enable-dispmanx,--disable-dispmanx,userland"<br class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">2.10.2<br =
class=3D""><br class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk447668" =
previewremoved=3D"true" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><div =
id=3D"LPBorder_GT_14782080361260.6612538345123915" style=3D"margin-bottom:=
 20px; overflow: auto; width: 1063px; text-indent: 0px;" class=3D""><table=
 id=3D"LPContainer_14782080361210.03866191713764899" cellspacing=3D"0" =
style=3D"width: 956px; background-color: rgb(255, 255, 255); position: =
relative; overflow: auto; padding-top: 20px; padding-bottom: 20px; =
margin-top: 20px; border-top-width: 1px; border-top-style: dotted; =
border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; =
border-bottom-style: dotted; border-bottom-color: rgb(200, 200, 200);" =
class=3D""><tbody class=3D""><tr valign=3D"top" style=3D"border-spacing: =
0px;" class=3D""><td id=3D"TextCell_14782080361230.44613243419282544" =
colspan=3D"2" style=3D"vertical-align: top; position: relative; padding: =
0px; display: table-cell;" class=3D""><div =
id=3D"LPRemovePreviewContainer_14782080361230.36011063713095415" =
class=3D""></div><div id=3D"LPTitle_14782080361230.833436019926242" =
style=3D"top: 0px; color: rgb(0, 120, 215); font-weight: normal; =
font-size: 21px; font-family: wf_segoe-ui_light, 'Segoe UI Light', =
'Segoe WP Light', 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif; =
line-height: 21px;" class=3D""><a =
id=3D"LPUrlAnchor_14782080361230.8981496760712158" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
style=3D"text-decoration: none;" class=3D"">yocto Info =
Page</a></div><div id=3D"LPMetadata_14782080361230.4148812972269915" =
style=3D"margin: 10px 0px 16px; color: rgb(102, 102, 102); font-weight: =
normal; font-family: wf_segoe-ui_normal, 'Segoe UI', 'Segoe WP', Tahoma, =
Arial, sans-serif; font-size: 14px; line-height: 14px;" class=3D""><a =
href=3D"http://lists.yoctoproject.org/" =
class=3D"">lists.yoctoproject.org</a></div><div =
id=3D"LPDescription_14782080361260.8517236209021737" style=3D"display: =
block; color: rgb(102, 102, 102); font-weight: normal; font-family: =
wf_segoe-ui_normal, 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif; =
font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;" class=3D"">Discussion of all things about the Yocto Project. =
Read our Community Guidelines or learn more about how to participate in =
other community =
discussions.</div></td></tr></tbody></table></div></div></span></font></di=
v></div></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_7886ECA2-9A84-4FD7-9A69-09429055F718--

--Apple-Mail=_A998A7B1-02DE-4915-9289-3EBF66AFEB59
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlgbr7YACgkQuwUzVZGdMxT0dgCYoI1d8xDjk7a8ats3BSmHYVFt
DQCfcTttTF/JYZWF+VGwLKVX3LNkzHk=
=y7bZ
-----END PGP SIGNATURE-----

--Apple-Mail=_A998A7B1-02DE-4915-9289-3EBF66AFEB59--
