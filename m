Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A89E01363
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 21:43:24 -0700 (PDT)
X-SBRS: 4.5
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx01dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AmYDAI65g09CtGAbkWdsb2JhbABDgka3LwEBAQEUEhQnghAtXgGBACYBBBuIBguYdqFPj35jBJZ9kig
X-IronPort-AV: E=Sophos;i="4.75,396,1330923600"; 
	d="scan'208,217";a="393437102"
Received: from exchange.cbeyondonline.net (HELO hub402dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 10 Apr 2012 00:43:24 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub402dal.mmeprod.cbeyond ([192.168.13.100]) with mapi; Tue, 10 Apr 2012
	00:43:24 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 10 Apr 2012 00:43:21 -0400
Thread-Topic: ADT Manual v1.1.1 Issues - 3 of 3
Thread-Index: Ac0W0nXrmIVCeE4/TyKnoNthBRXOPw==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEF@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: ADT Manual v1.1.1 Issues - 3 of 3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 04:43:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEFEXMBX05mmepro_"

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEFEXMBX05mmepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I ran through the ADT manual and ran into some goofynees in section 2.1.1.2=
. Configuring and Running the ADT Installer Script.

My adt_installer.conf contains:
YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.1.1"
YOCTOADT_TARGETS=3D"x86_64"
YOCTOADT_QEMU=3D"Y"
YOCTOADT_NFS_UTIL=3D"Y"
YOCTOADT_ROOTFS_x86_64=3D"minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_x86_64=3D"minimal"
YOCTOADT_TARGET_SYSROOT_LOC_x86_64=3D"$HOME/Desktop/ADT_Try2/sysroot"

Which should all be just fine.  When you run the installer script with thes=
e settings you will come to a 404 Not Found Error.

The image that was supposed to be downloaded to the /download_image/ folder=
 is not there and eventually you will get an error from the script when it =
tries to extract the sysroot image it thought it downloaded.  I've found th=
e sysroot file it's looking for in the Yocto downloads and put it in /downl=
oad_image/ folder manually.  Once that's done the ADT installer script will=
 then complete successfully.  There's a broken link there.

Does the YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.1.1" need to co=
ntain a more exact path.  I'll try again with YOCTOADT_REPO=3D"http://adtre=
po.yoctoproject.org/1.1.1/adt-ipk/x86_64/"  or something like that...

Just an FYI,

~Andy Gikling
LasX Industries Inc.


--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEFEXMBX05mmepro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>All,<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I ran thr=
ough the ADT manual and ran into some goofynees in section 2.1.1.2. Configu=
ring and Running the ADT Installer Script.<o:p></o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>My adt_installer.conf contains=
:<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_REPO=3D&quot;http://adtrepo.y=
octoproject.org/1.1.1&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_TAR=
GETS=3D&quot;x86_64&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_QEMU=
=3D&quot;Y&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_NFS_UTIL=3D&qu=
ot;Y&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_ROOTFS_x86_64=3D&quo=
t;minimal&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTOADT_TARGET_SYSROOT_=
IMAGE_x86_64=3D&quot;minimal&quot;<o:p></o:p></p><p class=3DMsoNormal>YOCTO=
ADT_TARGET_SYSROOT_LOC_x86_64=3D&quot;$HOME/Desktop/ADT_Try2/sysroot&quot;<=
o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorma=
l>Which should all be just fine.&nbsp; When you run the installer script wi=
th these settings you will come to a 404 Not Found Error.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The image that =
was supposed to be downloaded to the /download_image/ folder is not there a=
nd eventually you will get an error from the script when it tries to extrac=
t the sysroot image it thought it downloaded.&nbsp; I&#8217;ve found the sy=
sroot file it&#8217;s looking for in the Yocto downloads and put it in /dow=
nload_image/ folder manually.&nbsp; Once that&#8217;s done the ADT installe=
r script will then complete successfully.&nbsp; There&#8217;s a broken link=
 there.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3D=
MsoNormal>Does the YOCTOADT_REPO=3D&quot;http://adtrepo.yoctoproject.org/1.=
1.1&quot; need to contain a more exact path.&nbsp; I&#8217;ll try again wit=
h YOCTOADT_REPO=3D&quot;http://adtrepo.yoctoproject.org/1.1.1/adt-ipk/x86_6=
4/&#8221;&nbsp; or something like that&#8230;<o:p></o:p></p><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Just an FYI,<o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>~Andy Giklin=
g<o:p></o:p></p><p class=3DMsoNormal>LasX Industries Inc.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEFEXMBX05mmepro_--
