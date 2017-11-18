Return-Path: <am.gondaliya007@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A285FE00D1B; Sat, 18 Nov 2017 07:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (am.gondaliya007[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.133.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic305-3.consmr.mail.bf2.yahoo.com
	(sonic305-3.consmr.mail.bf2.yahoo.com [74.6.133.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E19C5E00B1A
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 07:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1511017643; bh=yBKAY6sBuk/3y41R8kvwgG6/E/FQ3x7rAxK4Lzfs1OE=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=FaF92heifjePC5PszyTAjj0F60m7j2IrwShCahFZDTc1R/SpERfKVTWW12x+my04ZlQ/c7WXVSkcjn1/ViGctuWWTSmZsXqqzegPRKz0xKMUzRRdH6TL4lYK1DlXF16sLiCH2MszXfEHZle4EecVzh2UiBnPvPr20UEEoMm87JP+avi77AW18SrYNfdimrP5YRtIOj8fMF2ZGwutfMPB7MgRR7Ubin386Mthx9XjyG6D03w0/oF2SEAL7wWMcNon4PbAstPEcjwMGpoAwJbFe9Ia4qu9Gj/9tsungelAACtVTUW1z0Zjv9QOWqvTzz8Ef+9J6g684WVa1XfNxGVHgg==
X-YMail-OSG: 7r8FIkcVM1l06N9eHRZ330CH5h2LIJK6Fb59sp80Jf4XCxSnWdvg.LBdze.oXZc
	pz2pwEkphUL34KNuNcsA7X4o6_PLepMT.zXoC7LSAd_92U6R7viXI9ZBcb4tMtxm_7NknBRcMKN3
	BEd7RGruztiKGTZIhBY1HbyM7UNQLJfUmw4UhnwJyfAzk4x7JDUoBxom6daAuEHa1Gr6ag3gAtAK
	_dJ0ZlQExd2hodpV6kU0a969SKUywpOF568tcrwsBqDFXTuex1_nAEyK0m0Ha9_QInLU1db8lMHu
	fwPhRP6WHvu30KEz9hLGkqT8NIo86EDKChvaEDtPFJ6EUjJ3KFAOQwGQ3Zf7jyT39UwzHThsDwbD
	_QXCVW4aXdyNANEzvyYme9FWOzU4Z_Mg9pBAaN7ZfBSY6gD6.aSalyHhFcbg48bF9NHim5hnSAHG
	8iHxUcbBZxTvqAb7iEmit0DgMEkvwfSwTwwkH2cSDs_k3BoSLmpgWx2Z1QNxPYu96CiJWozuym5J
	.jKFEggoZ0KfBwm6PTHD_zbfFCQPGb7mocz5fAFSYpzKB
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 18 Nov 2017 15:07:23 +0000
Date: Sat, 18 Nov 2017 15:07:18 +0000 (UTC)
From: Amit Gondaliya <am.gondaliya007@yahoo.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <657250900.936692.1511017638870@mail.yahoo.com>
In-Reply-To: <895691273.349839.1510932064131@mail.yahoo.com>
References: <895691273.349839.1510932064131.ref@mail.yahoo.com>
	<895691273.349839.1510932064131@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.10976 YahooMailIosMobile Raven/39880 CFNetwork/887
	Darwin/17.0.0
Subject: Fw: Generate Native Package in Pyro2.3
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
X-List-Received-Date: Sat, 18 Nov 2017 15:07:24 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_936691_1497709611.1511017638868"

------=_Part_936691_1497709611.1511017638868
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Can anybody help or guid me =C2=A0generate native package. From third party=
 package in pyro 2.3?
I want to generate native package of pyang as libnetconf want pyand and It=
 is looking pyang at path sysroot-components/x86_64/pyang/usr/bin/pyang.
Begin forwarded message:

On Friday, November 17, 2017, 8:51 PM, Amit Gondaliya <am.gondaliya007@yah=
oo.com> wrote:

Hello All,
I am creating custom meta-layer for my project work, but some of my third =
package is not able to fine the dependent library and package previously in=
 yocto daisy1.6 all the dependent package are found into below directory.
<workspace>/sysroot/${BUILD-SYS} directory but in pyro There is nothing li=
ne ${BUILD_SYS} directory.
Also my sysroot directory is empty what I found was all the package in dai=
sy found in <workspace>/sysroot/${BUILD-SYS} directory are now moved into s=
ysroot-components/<package-native> directory.
can anyone help me to how i can use that package..?
How to generate <name>-native package from third party package
Thanks,Amit G



------=_Part_936691_1497709611.1511017638868
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy>
Can anybody help or guid me &nbsp;generate native package. From third part=
y package in pyro 2.3?<div><br></div><div>I want to generate native package=
 of pyang as libnetconf want pyand and It is looking pyang at path sysroot-=
components/x86_64/pyang/usr/bin/pyang.<br><div><br></div><div><div><br><br>=
<a href=3D"https://overview.mail.yahoo.com/?.src=3DiOS"></a><br><br><p clas=
s=3D"yahoo-quoted-begin" style=3D"font-size: 15px; color: #715FFA; padding-=
top: 15px; margin-top: 0"><span style=3D"color: #AAAAAA;">Begin forwarded m=
essage:</span><br><br>On Friday, November 17, 2017, 8:51 PM, Amit Gondaliya=
 &lt;am.gondaliya007@yahoo.com&gt; wrote:</p><blockquote class=3D"iosymail"=
><div id=3D"yiv5228471177"><div><div style=3D"color:#000;background-color:#=
fff;font-family:Courier New, courier, monaco, monospace, sans-serif;font-si=
ze:16px;"><div id=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768">Hel=
lo All,</div><div id=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768">=
<br></div><div id=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768" dir=
=
=3D"ltr">I am creating custom meta-layer for my project work, but some of =
my third package is not able to fine the dependent library and package prev=
iously in yocto daisy1.6 all the dependent package are found into below dir=
ectory.</div><div id=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768" =
dir=3D"ltr"><br></div><div id=3D"yiv5228471177yui_3_16_0_ym19_1_15109315701=
00_2768" dir=3D"ltr">&lt;workspace&gt;/sysroot/${BUILD-SYS} directory but i=
n pyro There is nothing line ${BUILD_SYS} directory.</div><div id=3D"yiv522=
8471177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=
=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">Also my=
 sysroot directory is empty what I found was all the package in daisy found=
 in &lt;workspace&gt;/sysroot/${BUILD-SYS} directory are now moved into sys=
root-components/&lt;package-native&gt; directory.</div><div id=3D"yiv522847=
1177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D"=
yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">can anyone h=
elp me to how i can use that package..?</div><div id=3D"yiv5228471177yui_3_=
16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D"yiv5228471=
177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">How to generate &lt;na=
me&gt;-native package from third party package</div><div id=3D"yiv522847117=
7yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D"yiv=
5228471177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">Thanks,</div><d=
iv id=3D"yiv5228471177yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">Ami=
t G</div></div></div></div><blockquote></blockquote></blockquote></div></di=
v></div>
</body></html>

------=_Part_936691_1497709611.1511017638868--
