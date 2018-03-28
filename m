Return-Path: <rtillet@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 323D4E00B8E; Wed, 28 Mar 2018 08:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MISSING_MID, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rtillet[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 MISSING_MID Missing Message-Id: header
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4A7E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 08:00:38 -0700 (PDT)
Received: from [IPv6:::ffff:192.168.0.20] (unknown [82.239.23.157])
	(Authenticated sender: rtillet@free.fr)
	by smtp5-g21.free.fr (Postfix) with ESMTPSA id 95EFA5FF95
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 17:00:36 +0200 (CEST)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: =?utf-8?Q?Rapha=C3=ABl_TILLET?= <rtillet@free.fr>
Date: Wed, 28 Mar 2018 17:00:37 +0200
Importance: normal
X-Priority: 3
Message-Id: <20180328150040.323D4E00B8E@yocto-www.yoctoproject.org>
Subject: RDEPENDS is ignored when building rootfs
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
X-List-Received-Date: Wed, 28 Mar 2018 15:00:40 -0000
Content-Type: multipart/alternative;
	boundary="_5459493D-1DEB-4BE3-9C8B-54762A8675BC_"

--_5459493D-1DEB-4BE3-9C8B-54762A8675BC_
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

SGksDQoNCknigJltIHVzaW5nIMKrwqBQeXJvwqDCuywgYW5kIGhhdmUgYnVpbHQgYSB2ZXJ5IHNp
bXBsZSByZWNpcGUuIFRoZSBidWlsZCBwcm9ncmFtIEluc2lkZSB0aGUgcmVjaXBlIG5lZWRzIMKr
wqBsaWJuY3Vyc2VzLnNvwqDCuyBhdCBydW4gdGltZSwgc28gSSBoYXZlIGFkZGVkIHRvIG15IHJl
Y2lwZSB0aGUgZm9sbG93aW5nwqA6DQotIERFUEVORFNfe1BOfSA9IMKrwqBuY3Vyc2VzwqDCuw0K
LSBSREVQRU5EU18ke1BOfT3CoMKrwqAgbmN1cnNlcy1saWJmb3JtwqDCuw0KDQpUaGUgYnVpbGQg
aXMgb2ssIGJ1dCBteSBmaW5hbCBSb290RnMgZG9lcyBub3QgY29udGFpbiB0aGUgZXhwZWN0ZWQg
wqvCoGxpYm5jdXJzZXMuc2/CoMK7IExpYnJhcnkuDQoNClRoZSBvbmx5IHdheSB0byBmb3JjZSB0
aGUgYnVpbGQgdG8gaW5jbHVkZSDCq8KgbGlibmN1cnNlcy5zb8KgwrsgaW4gdGhlIHJvb3RmcyBp
cyB0byBhZGQgwqvCoG5jdXJzZXMtbGliZm9ybcKgwrsgdG8gbXkgwqvCoElNQUdFX0lOU1RBTEzC
oMK7IGluIMKrwqBteSBsb2NhbC5jb25mwqDCuyBmaWxlLCBhbmQgbm9ybWFsbHkgSSBzaG91bGQg
bm90IGhhdmUgdG8gZG8gdGhpc+KApi4uDQoNCknigJl2ZSBzZWFyY2ggdGhlIHdlYiwgYW5kIHRo
ZSBSREVQRU5EUyBzaG91bGQgYmUgdGhlIHJpZ2h0IG1ldGhvZCwgYW5kIEkgZGlkIG5vdCBmaW5k
IGFuIGV4cGxhbmF0aW9uIG9mIHN1Y2ggYmVoYXZpb3IuDQoNCkFueSBpZGVhIG9yIHN1Z2dlc3Rp
b27CoD8NCg0KVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrIG9yIGFkdmljZS4NCg0KUmFwaGHDq2wu
DQoNCg0KDQoNCg==

--_5459493D-1DEB-4BE3-9C8B-54762A8675BC_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1934851147;
	mso-list-type:hybrid;
	mso-list-template-ids:858414590 -1 67895299 67895301 67895297 67895299 678=
95301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style></head><body lang=3DFR link=3Dblue vlink=3D"#954F72"><div class=
=3DWordSection1><p class=3DMsoNormal>Hi,</p><p class=3DMsoNormal><o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal>I=E2=80=99m using =C2=AB&nbsp;Pyro&nbsp;=C2=
=BB, and have built a very simple recipe. The build program Inside the reci=
pe needs =C2=AB&nbsp;libncurses.so&nbsp;=C2=BB at run time, so I have added=
 to my recipe the following&nbsp;:</p><ul style=3D'margin-top:0cm' type=3Dd=
isc><li class=3DMsoListParagraph style=3D'margin-left:0cm;mso-list:l0 level=
1 lfo1'>DEPENDS_{PN} =3D =C2=AB&nbsp;ncurses&nbsp;=C2=BB</li><li class=3DMs=
oListParagraph style=3D'margin-left:0cm;mso-list:l0 level1 lfo1'>RDEPENDS_$=
{PN}=3D&nbsp;=C2=AB&nbsp; ncurses-libform&nbsp;=C2=BB</li></ul><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The build is ok, but my =
final RootFs does not contain the expected =C2=AB&nbsp;libncurses.so&nbsp;=
=C2=BB Library.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>The only way to force the build to include =C2=AB&nbsp;libncurses.so=
&nbsp;=C2=BB in the rootfs is to add =C2=AB&nbsp;ncurses-libform&nbsp;=C2=
=BB to my =C2=AB&nbsp;IMAGE_INSTALL&nbsp;=C2=BB in =C2=AB&nbsp;my local.con=
f&nbsp;=C2=BB file, and normally I should not have to do this=E2=80=A6..</p=
><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I=E2=80=99v=
e search the web, and the RDEPENDS should be the right method, and I did no=
t find an explanation of such behavior.</p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><p class=3DMsoNormal>Any idea or suggestion&nbsp;?</p><p class=3D=
MsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for your feedbac=
k or advice.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNor=
mal>Rapha=C3=ABl.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_5459493D-1DEB-4BE3-9C8B-54762A8675BC_--
