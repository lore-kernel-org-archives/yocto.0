Return-Path: <keith.derrick@lge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8892E00994; Fri, 13 Sep 2019 08:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [156.147.23.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1800 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Sep 2019 08:26:45 PDT
Received: from lgeamrelo11.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6FDE0096F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 08:26:45 -0700 (PDT)
Received: from unknown (HELO lgeamrelo01.lge.com) (156.147.1.125)
	by 156.147.23.52 with ESMTP; 13 Sep 2019 23:56:43 +0900
X-Original-SENDERIP: 156.147.1.125
X-Original-MAILFROM: keith.derrick@lge.com
Received: from unknown (HELO LGSVL-EXC02.lgsvl.net) (10.195.253.63)
	by 156.147.1.125 with ESMTP; 13 Sep 2019 23:56:42 +0900
X-Original-SENDERIP: 10.195.253.63
X-Original-MAILFROM: keith.derrick@lge.com
Received: from LGSVL-EXC02.lgsvl.net (10.195.253.63) by LGSVL-EXC02.lgsvl.net
	(10.195.253.63) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 13 Sep 2019 07:56:42 -0700
Received: from LGSVL-EXC02.lgsvl.net ([10.195.253.63]) by
	LGSVL-EXC02.lgsvl.net ([10.195.253.63]) with mapi id 15.00.1044.021;
	Fri, 13 Sep 2019 07:56:42 -0700
From: keith.derrick <keith.derrick@lge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Alternative to _git.bb convention for unstable versions?
Thread-Index: AQHVakHEPVyhoriL40q6eAs8vD4B5w==
Date: Fri, 13 Sep 2019 14:56:41 +0000
Message-ID: <1568386601901.43131@lge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.195.247.37]
MIME-Version: 1.0
Subject: Alternative to _git.bb convention for unstable versions?
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
X-List-Received-Date: Fri, 13 Sep 2019 15:26:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_156838660190143131lgecom_"

--_000_156838660190143131lgecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am currently creating a new layer (which will eventually be made generall=
y available). I need to provide both a versioned recipe, and an "unstable" =
 one.


Currently I have somepackage_1.0.bb and somepackage_git.bb which are workin=
g fine.


However, using the "_git" approach (with DEFAULT_PREFERENCE =3D "-1") requi=
res the use of PREFERRED_VERSION in either local.conf or a distro.conf. I'v=
e tried putting it in the image files, and that doesn't work.


If you are not creating your own DISTRO, and instead just adding the layer =
to a straight poky/meta build, you seem to be pretty much stuck with adding=
 3 PREFERRED_VERSION statements (target, -native, and nativesdk- variants) =
to local.conf. I'd rather not require that of users of the layer.


I'm considering instead using either "somepackage-unstable.bb" or "somepack=
age-devel.bb" instead of "sompackage_git.bb". This allows a simple selectio=
n of either  RDEPENDS =3D "somepackage" or RDEPENDS =3D "somepackage-devel"=
 to add the desired one to an image.


However, neither "-devel" or "-unstable" have the right feel for the suffix=
. If, for example, you are picking up an older commit (between versions  sa=
y) it might well be completely stable.


Does the community have a naming convention for this type of recipe? Failin=
g that, is there somewhere else in the met-data the PREFERRED_VERSION state=
ment can go other than a configuration file?


Thanks

Keith Derrick


--_000_156838660190143131lgecom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!-- p { margin-top: 0px; m=
argin-bottom: 0px; }--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I am currently&nbsp;creating a new&nbsp;layer (which will eventually be =
made generally available). I need to provide both a versioned recipe, and a=
n &quot;unstable&quot;&nbsp; one.<br>
</p>
<p><br>
</p>
<p>Currently I have somepackage_1.0.bb and somepackage_git.bb which are wor=
king fine.<br>
</p>
<p><br>
</p>
<p>However, using the &quot;_git&quot; approach (with DEFAULT_PREFERENCE =
=3D &quot;-1&quot;) requires the use of PREFERRED_VERSION in either local.c=
onf or a&nbsp;distro.conf. I've tried putting it in the image files, and th=
at doesn't work.<br>
</p>
<p><br>
</p>
<p>If you are not creating your own DISTRO, and instead just adding the lay=
er to a straight&nbsp;poky/meta build, you seem to be&nbsp;pretty much stuc=
k with adding 3 PREFERRED_VERSION statements (target, -native, and nativesd=
k- variants) to local.conf. I'd rather not
 require that of users of the layer.<br>
</p>
<p><br>
</p>
<p>I'm considering instead using either &quot;somepackage-unstable.bb&quot;=
 or &quot;somepackage-devel.bb&quot; instead of &quot;sompackage_git.bb&quo=
t;. This allows a simple selection of either&nbsp;&nbsp;R<span style=3D"fon=
t-size: 12pt;">DEPENDS =3D &quot;somepackage&quot; or RDEPENDS =3D &quot;so=
mepackage-devel&quot; to
 add the desired&nbsp;one&nbsp;to an image.<br>
</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p>However, neither &quot;-devel&quot; or &quot;-unstable&quot; have the ri=
ght feel for the suffix. If, for example, you are picking up an older commi=
t (between versions&nbsp;&nbsp;say) it might well be completely stable.<br>
</p>
<p><br>
</p>
<p>Does the community have a naming convention for this type of recipe? Fai=
ling that, is there somewhere else in the met-data the PREFERRED_VERSION st=
atement can go other than a configuration file?<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith Derrick<br>
</p>
<p><br>
</p>
</body>
</html>

--_000_156838660190143131lgecom_--
