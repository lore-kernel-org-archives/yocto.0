Return-Path: <alex@redfish.com.au>
Received: from mail.redfish.com.au (unknown [203.206.170.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F028BE0030B
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:02:40 -0700 (PDT)
Received: from EXCHANGE.redfish.local ([fe80::a5d8:d572:ea9a:cac7]) by
	exchange.redfish.local ([fe80::a5d8:d572:ea9a:cac7%10]) with mapi;
	Tue, 17 Apr 2012 11:02:32 +1000
From: Alex Robenko <alex@redfish.com.au>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Library objects and headers are not installed in sysroots
	directory
Thread-Index: Ac0aHh+flWe/RpzgTH+myuTDeN8GeQCEC0YA
Date: Tue, 17 Apr 2012 01:02:31 +0000
Message-ID: <9305BFBA7387494D9AF3CAFF867C24D345F9E2D6@exchange.redfish.local>
References: <9305BFBA7387494D9AF3CAFF867C24D345F9DF98@exchange.redfish.local>
In-Reply-To: <9305BFBA7387494D9AF3CAFF867C24D345F9DF98@exchange.redfish.local>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: Library objects and headers are not installed in sysroots	directory
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
X-List-Received-Date: Tue, 17 Apr 2012 01:02:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9305BFBA7387494D9AF3CAFF867C24D345F9E2D6exchangeredfish_"

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9E2D6exchangeredfish_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
I think I have figured it out myself. In case someone encounters the same p=
roblem, the solution is to add the packages as the dependencies for the ima=
ge:
EXTRA_IMAGEDEPENDS +=3D "boost openssl"

Regards,
Alex

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alex Robenko
Sent: Saturday, 14 April 2012 7:08 PM
To: yocto@yoctoproject.org
Subject: [yocto] Library objects and headers are not installed in sysroots =
directory


Hi all,
I'm trying to use "poky-edison-6.0.1" to build an image for freescale mx28e=
vk based platform using "core-image-minimal" as a basis with several additi=
onal libraries such as "boost" and "openssl" (IMAGE_INSTALL +=3D "openssl b=
oost"). The image itself and the root file system with shared libraries are=
 built correctly. However it seems that "do_populate_sysroot" is not execut=
ed for these libraries when the command "bitbake <image>" is used. As a res=
ult "build/tmp/sysroots/mx28evk" doesn't contain headers and static/shared =
objects of the libraries.
When I try to build the libraries directly using "bitbake boost" or "bitbak=
e openssl" everything works as expected (headers, static and shared objects=
 are installed in the directory mentioned above).
Does anyone have any idea why it happens? Do I forget to put something esse=
ntial in the image recipe? Is there any way to make the headers and objects=
 of the libraries to be installed in "sysroots" when the whole image is bui=
lt?

Thanks,
Alex

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9E2D6exchangeredfish_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-AU link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Hi all,<o=
:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fo=
nt-family:"Calibri","sans-serif";color:#1F497D'>I think I have figured it o=
ut myself. In case someone encounters the same problem, the solution is to =
add the packages as the dependencies for the image:<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","s=
ans-serif";color:#1F497D'>EXTRA_IMAGEDEPENDS +=3D &quot;boost openssl&quot;=
<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;=
font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif";color:#1F497D'>Regards,<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>Alex<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&n=
bsp;</o:p></span></p><div><div style=3D'border:none;border-top:solid #B5C4D=
F 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span=
></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","san=
s-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org] <b>On Behalf Of </b>Alex Robenko<br><b>Sent:</b> Saturday, 14 April =
2012 7:08 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto=
] Library objects and headers are not installed in sysroots directory<o:p><=
/o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div>=
<div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif";color:black'>&nbsp;<o:p></o:p></span></p></div><p class=3D=
MsoNormal><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"=
;color:black'>Hi all,<br>I'm trying to use &quot;poky-edison-6.0.1&quot; to=
 build an image for freescale mx28evk based platform using &quot;core-image=
-minimal&quot; as a basis with several additional libraries such as &quot;b=
oost&quot; and &quot;openssl&quot; (IMAGE_INSTALL +=3D &quot;openssl boost&=
quot;). The image itself and the root file system with shared libraries are=
 built correctly. However it seems that &quot;do_populate_sysroot&quot; is =
not executed for these libraries when the command &quot;bitbake &lt;image&g=
t;&quot; is used. As a result &quot;build/tmp/sysroots/mx28evk&quot; doesn'=
t contain headers and static/shared objects of the libraries.<br>When I try=
 to build the libraries directly using &quot;bitbake boost&quot; or &quot;b=
itbake openssl&quot; everything works as expected (headers, static and shar=
ed objects are installed in the directory mentioned above).<br>Does anyone =
have any idea why it happens? Do I forget to put something essential in the=
 image recipe? Is there any way to make the headers and objects of the libr=
aries to be installed in &quot;sysroots&quot; when the whole image is built=
?<br><br>Thanks,<br>Alex<o:p></o:p></span></p></div></div></body></html>=

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9E2D6exchangeredfish_--
