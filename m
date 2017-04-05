Return-Path: <Sven.Woelfel@continental-corporation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 508F0E0094C; Wed,  5 Apr 2017 06:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [94.199.92.161 listed in list.dnswl.org]
X-Greylist: delayed 464 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Apr 2017 06:26:52 PDT
Received: from mailout01.de1.retarus.com (mailout01.de1.retarus.com
	[94.199.92.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36886E00777
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 06:26:52 -0700 (PDT)
Received: from kdin01.de1.retarus.com (unknown [10.241.12.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout01.de1.retarus.com (Postfix) with ESMTPS id 3vymdN0XJBz4ywnr
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 15:19:04 +0200 (CEST)
Received: from FRHB103.fr.ge.conti.de (unknown [10.220.1.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by kdin01.de1.retarus.com (Postfix) with ESMTPS id 3vymdM1Klwz12Ljx
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 15:19:03 +0200 (CEST)
Received: from frhb103.fr.ge.conti.de (FRHB103.fr.ge.conti.de [172.29.13.42])
	by FRHB103.fr.ge.conti.de (8.14.4/8.14.4) with ESMTP id
	v35DJ2iG045738
	for <yocto@yoctoproject.org>; Wed, 5 Apr 2017 15:19:02 +0200
Received: from frhb008.auto.contiwan.com ([172.29.8.54])
	by frhb103.fr.ge.conti.de (IBM Domino Release 9.0.1FP6)
	with ESMTP id 2017040515185979-2493613 ;
	Wed, 5 Apr 2017 15:18:59 +0200 
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: DF44EE5E:65D7C437-C12580F9:0048D807;
	type=4; flags=0; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP6 SHF603 February 03, 2016
Message-ID: <OFDF44EE5E.65D7C437-ONC12580F9.0048D807-C12580F9.0049266B@continental-corporation.com>
From: Sven.Woelfel@continental-corporation.com
Date: Wed, 5 Apr 2017 15:18:58 +0200
X-MIMETrack: Serialize by Router on frhb008/srvc7/srvc/cag(Release
	9.0.1FP6|April 20, 2016) at 04/05/2017 03:19:00 PM,
	Serialize complete at 04/05/2017 03:19:00 PM,
	Itemize by SMTP Server on vshb101/srvcMX/srvc/cag(Release
	9.0.1FP6|April 20, 2016) at 04/05/2017 03:18:59 PM,
	Serialize by Router on vshb101/srvcMX/srvc/cag(Release 9.0.1FP6|April
	20, 2016) at 04/05/2017 03:19:02 PM,
	Serialize complete at 04/05/2017 03:19:02 PM
X-TNEFEvaluated: 1
X-AutoFooter: AFMA Version 2.0.11 (frhb103.fr.ge.conti.de)
X-RMX-ID: 20170405-151903-3vymdM1Klwz12Ljx-0@10
X-RMX-TRACE: 2017-04-05 15:19:03 KdIn2013@10/mailcc04 [0.0s]
	20170405-151903-3vymdM1Klwz12Ljx-0@10 0:00:00
X-RMX-TRACE: 2017-04-05 15:19:03 RmxMSO@kdin01/mailcc05 [0.1s]
	20170405-151903-3vymdM1Klwz12Ljx-0@10 0:00:00
Subject: [extensible_SDK] meta-world-pkgdata fails due to unresolvable RDEPEND statements
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
X-List-Received-Date: Wed, 05 Apr 2017 13:26:54 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00492669C12580F9_="

--=_alternative 00492669C12580F9_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-15"

When trying to build the extensible sdk with 'bitbake -c populate_sdk_ext=
=20
<image_name>' and these settings in my local.conf:

SDK_TITLE =3D =22CAS_Extensible_SDK=22
SDK_EXT_TYPE =3D =22minimal=22
SDK_INCLUDE_PKGDATA =3D =221=22
SDK_INCLUDE_TOOLCHAIN =3D =220=22

Bitbake is trying to build the 'meta-world-pkgdata' target. This would be=
=20
fine, however I get a lot of errors regarding=20
missing or unbuildable dependencys due to some unresolvable RDEPENDS=20
statements.
(e.g.: ERROR: Nothing RPROVIDES 'libgles2' (but=20
/local.build/nightly/poky_h3/build_h3/../poky/meta/recipes-graphics/cogl/co=
gl-1.0_1.22.0.bb=20
RDEPENDS on or otherwise requires it))

I tried to mask some recipes with the EXCLUDE_FROM_WORLD variable (in the=
=20
above case: for cogl) but after 20 recipes and still the same errors I=20
stopped.

If I build the SDK with 'SDK_INCLUDE_PKGDATA =3D =220=22 ' it works fine bu=
t I=20
do not get package index.=20

I also tried to find the missing recipes for the RDEPENDS but they are not=
=20
in any of my used layers.

Is there a way restrict the 'meta-world-pkgdata' target to a certain=20
layer? It would be sufficient for me if the package index would be created=
=20
only for my custom layer.
If not, is there a way to systematically resolve the RDEPENDS issues?=20
Where to start here?

I'm using krogoth together with the meta-renesas layer and some project=20
specific custom layers. I also tried building the SDK for=20
'core-image-minimal' with the same result.

Here is the content of my bblayers.conf:

POKY_BBLAYERS_CONF_VERSION =3D =222=22

BBPATH =3D =22=24=7BTOPDIR=7D=22
BBFILES ?=3D =22=22

BBLAYERS ?=3D =22 =5C
  =24=7BTOPDIR=7D/../poky/meta =5C
  =24=7BTOPDIR=7D/../poky/meta-poky =5C
  =24=7BTOPDIR=7D/../poky/meta-yocto-bsp =5C
  =24=7BTOPDIR=7D/../meta-renesas/meta-rcar-gen3 =5C
  =24=7BTOPDIR=7D/../meta-linaro/meta-optee =5C
  =24=7BTOPDIR=7D/../meta-linaro/meta-linaro-toolchain =5C
  =24=7BTOPDIR=7D/../meta-openembedded/meta-oe =5C
  =24=7BTOPDIR=7D/../CAS_platform =5C
  =24=7BTOPDIR=7D/../tf-apd/yocto-layers/meta-ara =5C
  =24=7BTOPDIR=7D/../cas-applications/CAS_application =5C
  =22
BBLAYERS_NON_REMOVABLE ?=3D =22 =5C
  =24=7BTOPDIR=7D/../poky/meta =5C
  =24=7BTOPDIR=7D/../poky/meta-poky =5C
  =22

=20
It would be very nice if someone could point me in the right direction. At=
=20
the moment I just ran out of ideas how to proceed.

With kind regards

Sven Woelfel

--=_alternative 00492669C12580F9_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="ISO-8859-15"

<font size=3D2 face=3D=22sans-serif=22>When trying to build the extensible =
sdk
with 'bitbake -c populate_sdk_ext &lt;image_name&gt;' and these settings
in my local.conf:</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>SDK_TITLE =3D &quot;CAS_Extensib=
le_SDK&quot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>SDK_EXT_TYPE =3D &quot;minimal&q=
uot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>SDK_INCLUDE_PKGDATA =3D &quot;1&=
quot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>SDK_INCLUDE_TOOLCHAIN =3D &quot;=
0&quot;</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>Bitbake is trying to build the '=
meta-world-pkgdata'
target. This would be fine, however I get a lot of errors regarding </font>=

<br><font size=3D2 face=3D=22sans-serif=22>missing or unbuildable dependenc=
ys due
to some unresolvable RDEPENDS statements.</font>
<br><font size=3D2 face=3D=22sans-serif=22>(e.g.: ERROR: Nothing RPROVIDES =
'libgles2'
(but /local.build/nightly/poky_h3/build_h3/../poky/meta/recipes-graphics/co=
gl/cogl-1.0_1.22.0.bb
RDEPENDS on or otherwise requires it))</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>I tried to mask some recipes wit=
h the
EXCLUDE_FROM_WORLD variable (in the above case: for cogl) but after 20
recipes and still the same errors I stopped.</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>If I build the SDK with 'SDK_INC=
LUDE_PKGDATA
=3D &quot;0&quot; ' it works fine but I do not get package index. </font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>I also tried to find the missing=
 recipes
for the RDEPENDS but they are not in any of my used layers.</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>Is there a way restrict the 'met=
a-world-pkgdata'
target to a certain layer? It would be sufficient for me if the package
index would be created only for my custom layer.</font>
<br><font size=3D2 face=3D=22sans-serif=22>If not, is there a way to system=
atically
resolve the RDEPENDS issues? Where to start here?</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>I'm using krogoth together with =
the
meta-renesas layer and some project specific custom layers. I also tried
building the SDK for 'core-image-minimal' with the same result.</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>Here is the content of my bblaye=
rs.conf:</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>POKY_BBLAYERS_CONF_VERSION =3D &=
quot;2&quot;</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>BBPATH =3D &quot;=24=7BTOPDIR=7D=
&quot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>BBFILES ?=3D &quot;&quot;</font>=

<br>
<br><font size=3D2 face=3D=22sans-serif=22>BBLAYERS ?=3D &quot; =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../poky/m=
eta =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../poky/m=
eta-poky =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../poky/m=
eta-yocto-bsp
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../meta-r=
enesas/meta-rcar-gen3
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../meta-l=
inaro/meta-optee
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../meta-l=
inaro/meta-linaro-toolchain
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../meta-o=
penembedded/meta-oe
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../CAS_pl=
atform =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../tf-apd=
/yocto-layers/meta-ara
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../cas-ap=
plications/CAS_application
=5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; &quot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>BBLAYERS_NON_REMOVABLE ?=3D &quo=
t; =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../poky/m=
eta =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; =24=7BTOPDIR=7D/../poky/m=
eta-poky =5C</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; &quot;</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; </font>
<br><font size=3D2 face=3D=22sans-serif=22>It would be very nice if someone=
 could
point me in the right direction. At the moment I just ran out of ideas
how to proceed.</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>With kind regards</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>Sven Woelfel</font>
<br>

--=_alternative 00492669C12580F9_=--
