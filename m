Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2DC4E0089B; Thu,  3 Nov 2016 14:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC3S1.hotmail.com (bay004-omc3s1.hotmail.com
	[65.54.190.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31795E0074B
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:27:49 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com ([65.54.190.187])
	by BAY004-OMC3S1.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 3 Nov 2016 14:27:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=UqNCWy+poyEv005b5/o+ko+R+jD0KQn8tUKW54NlUis=;
	b=A0vuIO7Z41HZtNeg473UR2arrgFrD8qOL5kVITm3cc9iFnAHzmH57684w0jpDWNgN1PoChIBxEVQ1IFusanuFkR/XhRvuUsYcc4zf/d9/pKH3ABL9Ar8JigNI9KSejayOJszNm03ZHrgXaruQ3tcnu+5LsaSJkR3i72msp3jYcrNFH9r6mXjNdkg7BSDU5dBDmjnfq2wroxlfTmfoTI34CM2qEEUK3CEcqAM7xTISEaEn8V8l+v9pL+LvUf2JGDJFUDy8kEoWjpujiINdaHK+haEFmjio2+6BskOt8+ghIME8o8IKrw8k9AXSPir7tBT+6qyOW0K2+N2LiasDOOBug==
Received: from VE1EUR03FT046.eop-EUR03.prod.protection.outlook.com
	(10.152.18.59) by VE1EUR03HT198.eop-EUR03.prod.protection.outlook.com
	(10.152.19.63) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.693.6;
	Thu, 3 Nov 2016 21:27:46 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.18.56) by
	VE1EUR03FT046.mail.protection.outlook.com (10.152.19.226) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.693.6 via Frontend Transport; Thu, 3 Nov 2016 21:27:46 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0693.016; Thu, 3 Nov 2016 21:27:45 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi][PATCH V2]
	gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
Thread-Index: AQHSNhTlzet3Bq8A0EC83Bea+qBBQqDHxBfJ
Date: Thu, 3 Nov 2016 21:27:45 +0000
Message-ID: <HE1PR01MB188355B9382AA3E56FECCD9092A30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <20161103205709.32535-1-raj.khem@gmail.com>
In-Reply-To: <20161103205709.32535-1-raj.khem@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:; UpperCasedChecksum:;
	SizeAsReceived:7390; Count:38
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [kCBHK0guIce5NNuTZ1tfJj5s6AM5zQCd]
x-incomingheadercount: 38
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT198;
	7:9F2ehNEIk7v+rOW6Df0WW9rC0Tu4f8LBlhWYlm72YKlwoF0gBZeX6GyZnQR96IPNnrGP0kw6Kaw80AWEP0PfcqUAmnnkSti5g1wgmobB2OmX1Sonj1e3oLXzjEI44QQRytBk+08u91u42uZkW0PgQtUFLbjIVt0fXxVmHrQbA7HsIb5OuDFcUfUEbu9MnZy51iZfqB8cV/kXM4txVyVFvjqU8sM1NqT62zGFpUJakB7/sBTzKHxUiE+L52QrZ969ECZnoV9k41SfrKWnpLotdop/8lz1ToFCnDxYmbYSjdImfZTaTBbBnKCpfbEDqIBxc3cakmZlA6huRDb8JHyZvZkfUOYyCd5y7XBWvcD61YM=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR03HT198;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 946fda03-e0a0-4fa7-5317-08d4043040b5
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103106)(1601125047); SRVR:VE1EUR03HT198;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR03HT198; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT198; 
x-forefront-prvs: 011579F31F
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2016 21:27:45.4967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT198
X-OriginalArrivalTime: 03 Nov 2016 21:27:48.0679 (UTC)
	FILETIME=[200A3D70:01D23619]
Subject: Re: [meta-raspberrypi][PATCH V2]	gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Thu, 03 Nov 2016 21:27:54 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB188355B9382AA3E56FECCD9092A30HE1PR01MB1883eurp_"

--_000_HE1PR01MB188355B9382AA3E56FECCD9092A30HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Khem,


I just tried to rebuild gstreamer1.0-plugins-bad from a clean checkout with=
 your patch.

At first glance, it's working.


"bitbake gstreamer1.0-plugins-bad" succeeded but with a QA Warning:


gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue: gstreamer1.0-plug=
ins-bad: invalid PACKAGECONFIG: "dispmanx [invalid-packageconfig]


Karim



________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Khem Raj <raj.khem@gmail.com>
Envoy=E9 : jeudi 3 novembre 2016 21:57
=C0 : yocto@yoctoproject.org
Objet : [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bba=
ppend: Set PACKAGECONFIG_GL for RPi

Enable dispmanx support if using bcm driver

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes from V1->V2:
- Remove spurious "
- Rearrange code
- Remove duplicate packageconfig for dispmanx

 .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++=
++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappe=
nd b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index ab0280e..7292f90 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,2 +1,12 @@
-EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr/incl=
ude/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/int=
erface/vmcs_host/linux'"
+EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_INCDIR}/interface/vc=
os/pthreads \
+                                   -I${STAGING_INCDIR}/interface/vmcs_host=
/linux'"
+
+# if using bcm driver enable dispmanx not when using VC4 driver
+
+PACKAGECONFIG_append_rpi =3D "${@bb.utils.contains('MACHINE_FEATURES', 'vc=
4graphics', '', ' dispmanx', d)}"
+
+PACKAGECONFIG_GL_rpi =3D "egl gles2"
+
+PACKAGECONFIG_append_rpi =3D " hls libmms faad"
+
+PACKAGECONFIG[dispmanx] =3D "--enable-dispmanx,--disable-dispmanx,userland=
"
--
2.10.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.




--_000_HE1PR01MB188355B9382AA3E56FECCD9092A30HE1PR01MB1883eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Khem,</p>
<p><br>
</p>
<p>I just tried to rebuild gstreamer1.0-plugins-bad from a clean checkout w=
ith your patch.</p>
<p>At first glance, it's working.</p>
<p><br>
</p>
<p>&quot;bitbake gstreamer1.0-plugins-bad&quot; succeeded but with a QA War=
ning:</p>
<p><br>
</p>
<p><span>gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue: gstreame=
r1.0-plugins-bad: invalid PACKAGECONFIG: &quot;dispmanx [invalid-packagecon=
fig]</span><br>
</p>
<p><br>
</p>
<p>Karim</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctop=
roject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Khem Raj &l=
t;raj.khem@gmail.com&gt;<br>
<b>Envoy=E9 :</b> jeudi 3 novembre 2016 21:57<br>
<b>=C0 :</b> yocto@yoctoproject.org<br>
<b>Objet :</b> [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-ba=
d_%.bbappend: Set PACKAGECONFIG_GL for RPi</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Enable dispmanx support if using bcm driver<br>
<br>
Signed-off-by: Khem Raj &lt;raj.khem@gmail.com&gt;<br>
---<br>
Changes from V1-&gt;V2:<br>
- Remove spurious &quot;<br>
- Rearrange code<br>
- Remove duplicate packageconfig for dispmanx<br>
<br>
&nbsp;.../gstreamer/gstreamer1.0-plugins-bad_%.bbappend&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 14 &#43;&#43;&#43;&#43;&#43;&#43;&#43;=
&#43;&#43;&#43;&#43;&#43;--<br>
&nbsp;1 file changed, 12 insertions(&#43;), 2 deletions(-)<br>
<br>
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappe=
nd b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br>
index ab0280e..7292f90 100644<br>
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br>
&#43;&#43;&#43; b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.b=
bappend<br>
@@ -1,2 &#43;1,12 @@<br>
-EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr=
/include/interface/vcos/pthreads \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -I${STAGING_DIR_TAR=
GET}/usr/include/interface/vmcs_host/linux'&quot;<br>
&#43;EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D'-I${STAGING_INCDIR}/int=
erface/vcos/pthreads \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -I${STAGING_INC=
DIR}/interface/vmcs_host/linux'&quot;<br>
&#43;<br>
&#43;# if using bcm driver enable dispmanx not when using VC4 driver<br>
&#43;<br>
&#43;PACKAGECONFIG_append_rpi =3D &quot;${@bb.utils.contains('MACHINE_FEATU=
RES', 'vc4graphics', '', ' dispmanx', d)}&quot;<br>
&#43;<br>
&#43;PACKAGECONFIG_GL_rpi =3D &quot;egl gles2&quot;<br>
&#43;<br>
&#43;PACKAGECONFIG_append_rpi =3D &quot; hls libmms faad&quot;<br>
&#43;<br>
&#43;PACKAGECONFIG[dispmanx] =3D &quot;--enable-dispmanx,--disable-dispmanx=
,userland&quot;<br>
-- <br>
2.10.2<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk447668=
" previewremoved=3D"true">https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14782080361260.6612538345123915" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14782080361210.03866191713764899" cellspacing=3D"0=
" style=3D"width: 90%; background-color: rgb(255, 255, 255); position: rela=
tive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: =
20px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted =
rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14782080361230.44613243419282544" colspan=3D"2" style=3D=
"vertical-align: top; position: relative; padding: 0px; display: table-cell=
;">
<div id=3D"LPRemovePreviewContainer_14782080361230.36011063713095415"></div=
>
<div id=3D"LPTitle_14782080361230.833436019926242" style=3D"top: 0px; color=
: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_s=
egoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quo=
t;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-hei=
ght: 21px;">
<a id=3D"LPUrlAnchor_14782080361230.8981496760712158" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n: none;">yocto Info Page</a></div>
<div id=3D"LPMetadata_14782080361230.4148812972269915" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14782080361260.8517236209021737" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB188355B9382AA3E56FECCD9092A30HE1PR01MB1883eurp_--
