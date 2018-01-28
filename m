Return-Path: <prvs=056647afc3=fakhruddin.shekh@sonovts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1282BE00DF8; Sun, 28 Jan 2018 03:19:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.245.254.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Sun, 28 Jan 2018 03:19:04 PST
Received: from mx01.sonovts.de (mx01.sonovts.de [62.245.254.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 270ADE005B1
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 03:19:04 -0800 (PST)
Received: from [172.16.1.27] (port=26431 helo=ex06.vts-gmbh.local)
	by mx01.sonovts.de with esmtps (TLSv1.2:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Fakhruddin.Shekh@sonovts.com>) id 1efksF-0005zI-2P
	for yocto@yoctoproject.org; Sun, 28 Jan 2018 12:11:47 +0100
Received: from ex06.vts-gmbh.local (172.16.1.27) by ex06.vts-gmbh.local
	(172.16.1.27) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Sun, 28 Jan 2018 12:11:47 +0100
Received: from ex06.vts-gmbh.local ([fe80::55b:3ace:f245:147d]) by
	ex06.vts-gmbh.local ([fe80::55b:3ace:f245:147d%15]) with mapi id
	15.00.1210.000; Sun, 28 Jan 2018 12:11:47 +0100
X-CTCH-RefID: str=0001.0A0C0207.5A6DAFF3.0201, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Fakhruddin Shekh <Fakhruddin.Shekh@sonovts.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding/Editing C++ source code and test for an application
Thread-Index: AQHTmCjJjCK1hmvo1EO0dBfoWCWbbA==
Date: Sun, 28 Jan 2018 11:11:47 +0000
Message-ID: <1517137906546.31307@sonovts.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.1.1]
x-c2processedorg: cc227717-7aa3-4b5f-8004-2734d0e6bfa9
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Subject: Adding/Editing C++ source code and test for an application
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
X-List-Received-Date: Sun, 28 Jan 2018 11:19:08 -0000
X-Groupsio-MsgNum: 39734
Content-Language: en-US
Content-Type: multipart/related; boundary="_004_151713790654631307sonovtscom_";
	type="multipart/alternative"

--_004_151713790654631307sonovtscom_
Content-Type: multipart/alternative;
	boundary="_000_151713790654631307sonovtscom_"

--_000_151713790654631307sonovtscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am very new to Yocto Project and I am using it for IMX.7.


I followed steps mentioned in

https://wiki.phytec.com/display/PRODUCTINFO/BSP+Yocto+FSL+i.MX7+PD17.2.x+Qu=
ickstart

which is basically taken from

Yocto Project Mega-Manual<https://community.nxp.com/external-link.jspa?url=
=3Dhttp%3A%2F%2Fwww.yoctoproject.org%2Fdocs%2F2.4.1%2Fmega-manual%2Fmega-ma=
nual.html>


 It took me 6 hours on virtual box ubuntu to compile BSP(Building Images fr=
om Source?) and build image. The size it took on hard disk is 42,3 GB.


I have all final products(.sdcard, .ext4, zimage, uoot, ...) in a tmp folde=
r.

(...build/tmp/deploy/image/machinename/)


but I didn't understand where to add/edit c++ or any other source code to i=
t for my application and how to test it? Lets say I want to use UART/PCIE f=
or an application and test it whether it is functioning or not.


I referred the manual but it was not clear to me.


Can anybody please clarify me.


Best Regards




Dipl.-Ing. (Univ) Fakhruddin Shekh
Research and Development

fon  +49 89 419 671 9604
fax  +49 89 419 671 9996
mail Fakhruddin.Shekh@sonovts.com
web www.sonovts.com<http://www.sonovts.com/>
        [cid:logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29e8.jpg]

sonoVTS GmbH
Hauptsitz: Kapellenstra=DFe 11, 85622 Feldkirchen bei M=FCnchen, Germany
Niederlassung Hohenkammer: Am K=F6nigholz Ost 4, 85411 Hohenkammer, Germany
Niederlassung Frankfurt: Justus-von-Liebig-Stra=DFe 9, 63128 Dietzenbach, G=
ermany
Niederlassung K=F6ln: Am Coloneum 1, Bauteil B, 50829 K=F6ln, Germany

fon +49 89 419671 0
fax +49 89 419671 9999
web www.sonovts.com<http://www.sonovts.com/>
HRB M=FCnchen 206249 Gerichtsstand M=FCnchen

Gesch=E4ftsf=FChrer: Stefan Kr=F6mer, Franz Olbert

Tochtergesellschaften:
Austria: sonoVTS Austria GmbH, Hallwanger Landesstra=DFe 6, 5300 Hallwang b=
ei Salzburg, Austria
United States: sonoVTS Corporation, 200 S. Wacker Drive | Suite 1375, Chica=
go IL  60606, USA

Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese E-Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergab=
e dieser E-Mail sind nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

--_000_151713790654631307sonovtscom_
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
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
Hi,</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
I am very new to&nbsp;Yocto Project and I am using it for&nbsp;IMX.7.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
I followed steps mentioned in&nbsp;<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<a href=3D"https://wiki.phytec.com/display/PRODUCTINFO/BSP&#43;Yocto&#43;FS=
L&#43;i.MX7&#43;PD17.2.x&#43;Quickstart">https://wiki.phytec.com/display/PR=
ODUCTINFO/BSP&#43;Yocto&#43;FSL&#43;i.MX7&#43;PD17.2.x&#43;Quickstart</a><b=
r>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
which is basically taken from<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<a class=3D"jive-link-external-small" href=3D"https://community.nxp.com/ext=
ernal-link.jspa?url=3Dhttp%3A%2F%2Fwww.yoctoproject.org%2Fdocs%2F2.4.1%2Fme=
ga-manual%2Fmega-manual.html" rel=3D"nofollow" target=3D"_blank" data-conte=
nt-finding=3D"Community" style=3D"margin: 0px; padding: 0px calc(12px &#43;=
 0.35ex) 0px 0px; border: 0px; font-weight: inherit; font-style: inherit; f=
ont-family: inherit; vertical-align: baseline; color: rgb(94, 137, 193); fi=
ll: rgb(94, 137, 193); text-decoration-line: none; transition: color 0.1s l=
inear;">Yocto
 Project Mega-Manual</a>&nbsp;</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
&nbsp;It took me&nbsp;6 hours on virtual box&nbsp;ubuntu to compile BSP(<sp=
an style=3D"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-si=
ze: 12pt;">Building Images from Source</span><span style=3D"color: rgb(51, =
51, 51); font-family: Arial, sans-serif; font-size: 24px;">&#8203;</span>)&=
nbsp;and
 build&nbsp;image.&nbsp;The size it took on hard disk is 42,3 GB.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
I have all final products(.sdcard, .ext4, zimage, uoot, ...) in a tmp folde=
r.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
(...build/tmp/deploy/image/machinename/)</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
); min-height: 8pt;">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
but I&nbsp;didn't understand where to add/edit c&#43;&#43; or any other&nbs=
p;source code to it for my application and how to test it?&nbsp;Lets say I =
want to use&nbsp;UART/PCIE for an application and test it whether it is fun=
ctioning or not.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
I referred the manual but it was not clear to me.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
Can anybody please clarify me.<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
<br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;=
 font-size: 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial=
, &quot;Lucida Grande&quot;, sans-serif; vertical-align: baseline; word-wra=
p: break-word; color: rgb(81, 98, 111); background-color: rgb(255, 255, 255=
);">
Best Regards<br>
</p>
<p><br>
</p>
<div>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><br style=3D"FONT-FAMILY=
: Calibri">
<br style=3D"FONT-FAMILY: Calibri">
</p>
<table style=3D"FONT-SIZE: 10pt; TEXT-DECORATION: ; HEIGHT: 158px; FONT-FAM=
ILY: Calibri; BORDER-TOP-COLOR: ; WIDTH: 614px; BORDER-LEFT-COLOR: ; COLOR:=
 ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: " cellspacing=3D"2" border=3D=
"0">
<tbody style=3D"FONT-FAMILY: Calibri">
<tr style=3D"TEXT-DECORATION: ; FONT-FAMILY: Calibri; BORDER-TOP-COLOR: ; B=
ORDER-LEFT-COLOR: ; COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
<td style=3D"FONT-FAMILY: Calibri; WIDTH: 314px">
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><strong style=3D"FONT-FA=
MILY: Calibri"><font style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Calibri">Dipl.-=
Ing. (Univ) Fakhruddin Shekh</font></strong><em style=3D"FONT-FAMILY: Calib=
ri"><br style=3D"FONT-FAMILY: Calibri">
Research and Development<br>
</em><em style=3D"FONT-FAMILY: Calibri"></em><em style=3D"FONT-FAMILY: Cali=
bri"><br style=3D"FONT-FAMILY: Calibri">
</em>fon &nbsp;&#43;49 89 419 671 9604<br style=3D"FONT-FAMILY: Calibri">
fax &nbsp;&#43;49 89 419 671 9996<br style=3D"FONT-FAMILY: Calibri">
mail Fakhruddin.Shekh@sonovts.com<br style=3D"FONT-FAMILY: Calibri">
web <a title=3D"" style=3D"FONT-FAMILY: Calibri; href: &quot;http://www.son=
ovts.de&quot;" href=3D"http://www.sonovts.com/">
www.sonovts.com</a></p>
</td>
<td style=3D"FONT-FAMILY: Calibri"><img style=3D"HEIGHT: 147px; FONT-FAMILY=
: Calibri; WIDTH: 202px" src=3D"cid:logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29=
e8.jpg"></td>
</tr>
</tbody>
</table>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></p>
</div>
<div>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">sonoVTS GmbH<br style=3D"FONT-FA=
MILY: Calibri">
Hauptsitz: Kapellenstra=DFe 11, 85622 Feldkirchen bei M=FCnchen, Germany<br=
 style=3D"FONT-FAMILY: Calibri">
Niederlassung Hohenkammer: Am K=F6nigholz Ost 4, 85411 Hohenkammer, Germany=
<br style=3D"FONT-FAMILY: Calibri">
Niederlassung Frankfurt: Justus-von-Liebig-Stra=DFe 9, 63128 Dietzenbach, G=
ermany<br style=3D"FONT-FAMILY: Calibri">
Niederlassung K=F6ln: Am Coloneum 1, Bauteil B, 50829 K=F6ln, Germany</span=
></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">fon &#43;49 89 419671 0<br style=
=3D"FONT-FAMILY: Calibri">
fax &#43;49 89 419671 9999<br style=3D"FONT-FAMILY: Calibri">
web <a title=3D"" style=3D"FONT-FAMILY: Calibri" href=3D"http://www.sonovts=
.com/">www.sonovts.com</a><br style=3D"FONT-FAMILY: Calibri">
HRB M=FCnchen 206249 Gerichtsstand M=FCnchen</span></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">Gesch=E4ftsf=FChrer: Stefan Kr=
=F6mer, Franz Olbert</span></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">Tochtergesellschaften:<br style=
=3D"FONT-FAMILY: Calibri">
Austria: sonoVTS Austria GmbH, Hallwanger Landesstra=DFe 6, 5300 Hallwang b=
ei Salzburg, Austria<br style=3D"FONT-FAMILY: Calibri">
United States: sonoVTS Corporation, 200 S. Wacker Drive | Suite 1375, Chica=
go IL&nbsp; 60606, USA</span></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">Diese E-Mail enth=E4lt vertrauli=
che und/oder rechtlich gesch=FCtzte Informationen.
 Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich e=
rhalten haben, informieren Sie bitte sofort den Absender und vernichten Sie=
 diese E-Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe diese=
r E-Mail sind nicht gestattet.</span></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><span style=3D"FONT-SIZE=
: 10pt; FONT-FAMILY: Calibri; COLOR: gray; mso-ansi-language: DE; mso-farea=
st-language: DE; mso-bidi-language: AR-SA">This e-mail may contain confiden=
tial and/or privileged information.
 If you are not the intended recipient (or have received this e-mail in err=
or) please notify the sender immediately and destroy this e-mail. Any unaut=
horized copying, disclosure or distribution of the material in this e-mail =
is strictly forbidden.
</span></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></p>
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></p>
</div>
</body>
</html>

--_000_151713790654631307sonovtscom_--

--_004_151713790654631307sonovtscom_
Content-Type: image/jpeg;
	name="logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29e8.jpg"
Content-Description: logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29e8.jpg
Content-Disposition: inline;
	filename="logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29e8.jpg"; size=12659;
	creation-date="Sun, 28 Jan 2018 11:11:47 GMT";
	modification-date="Sun, 28 Jan 2018 11:11:47 GMT"
Content-ID: <logo_6dcbe8df-667e-4f80-9a2b-be2a3c7d29e8.jpg>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEASABIAAD/4QEiRXhpZgAATU0AKgAAAAgABwESAAMAAAABAAEAAAEaAAUA
AAABAAAAYgEbAAUAAAABAAAAagEoAAMAAAABAAIAAAExAAIAAAAMAAAAcgEyAAIAAAAUAAAAfodp
AAQAAAABAAAAkgAAANQAAABIAAAAAQAAAEgAAAABR0lNUCAyLjguMTQAMjAxNjowODowOCAxODox
NDoyMwAABZAAAAcAAAAEMDIyMaAAAAcAAAAEMDEwMKABAAMAAAAB//8AAKACAAQAAAABAAAAyqAD
AAQAAAABAAAAkwAAAAAABAEDAAMAAAABAAYAAAEaAAUAAAABAAABCgEbAAUAAAABAAABEgEoAAMA
AAABAAIAAAAAAAAAAABIAAAAAQAAAEgAAAAB/+EKVmh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC8APD94cGFja2V0IGJlZ2luPSfvu78nIGlkPSdXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQnPz4K
PHg6eG1wbWV0YSB4bWxuczp4PSdhZG9iZTpuczptZXRhLyc+CjxyZGY6UkRGIHhtbG5zOnJkZj0n
aHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyc+CgogPHJkZjpEZXNj
cmlwdGlvbiB4bWxuczp4bXBNTT0naHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyc+CiAg
PHhtcE1NOkluc3RhbmNlSUQ+eG1wLmlpZDplYmE0YzNhMi1iZmY2LTQ5OWEtYWU0NS1hZDAwNWVj
MzE4YWY8L3htcE1NOkluc3RhbmNlSUQ+CiAgPHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD4wRDk3
MjFEMTEyRTAzOTcxQTMxRDNCNUU2NzE0NUE1MzwveG1wTU06T3JpZ2luYWxEb2N1bWVudElEPgog
IDx4bXBNTTpEb2N1bWVudElEIHJkZjpyZXNvdXJjZT0nYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjQz
M2ZjNzU3LTk1NjAtMTE3OS1hNjJlLTgyODNhZjU2YzI1YycgLz4KICA8eG1wTU06SW5zdGFuY2VJ
RD54bXAuaWlkOmViYTRjM2EyLWJmZjYtNDk5YS1hZTQ1LWFkMDA1ZWMzMThhZjwveG1wTU06SW5z
dGFuY2VJRD4KICA8eG1wTU06T3JpZ2luYWxEb2N1bWVudElEPjBEOTcyMUQxMTJFMDM5NzFBMzFE
M0I1RTY3MTQ1QTUzPC94bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ+CiAgPHhtcE1NOkhpc3Rvcnk+
CiAgIDxyZGY6U2VxPgogICA8L3JkZjpTZXE+CiAgPC94bXBNTTpIaXN0b3J5PgogIDx4bXBNTTpJ
bmdyZWRpZW50cz4KICAgPHJkZjpTZXE+CiAgIDwvcmRmOlNlcT4KICA8L3htcE1NOkluZ3JlZGll
bnRzPgogPC9yZGY6RGVzY3JpcHRpb24+CgogPHJkZjpEZXNjcmlwdGlvbiB4bWxuczpkYz0naHR0
cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8nPgogIDxkYzpmb3JtYXQ+aW1hZ2UvanBlZzwv
ZGM6Zm9ybWF0PgogPC9yZGY6RGVzY3JpcHRpb24+CgogPHJkZjpEZXNjcmlwdGlvbiB4bWxuczpw
aG90b3Nob3A9J2h0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8nPgogIDxwaG90b3No
b3A6Q29sb3JNb2RlPjM8L3Bob3Rvc2hvcDpDb2xvck1vZGU+CiAgPHBob3Rvc2hvcDpJQ0NQcm9m
aWxlIC8+CiAgPHBob3Rvc2hvcDpDb2xvck1vZGU+MzwvcGhvdG9zaG9wOkNvbG9yTW9kZT4KICA8
cGhvdG9zaG9wOklDQ1Byb2ZpbGUgLz4KIDwvcmRmOkRlc2NyaXB0aW9uPgoKIDxyZGY6RGVzY3Jp
cHRpb24geG1sbnM6eG1wPSdodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvJz4KICA8eG1wOkNy
ZWF0ZURhdGU+MjAxNi0wNy0yOFQxNjo0MDo0OCswMjowMDwveG1wOkNyZWF0ZURhdGU+CiAgPHht
cDpNb2RpZnlEYXRlPjIwMTYtMDctMjhUMTY6NDU6MTkrMDI6MDA8L3htcDpNb2RpZnlEYXRlPgog
IDx4bXA6TWV0YWRhdGFEYXRlPjIwMTYtMDctMjhUMTY6NDU6MTkrMDI6MDA8L3htcDpNZXRhZGF0
YURhdGU+CiA8L3JkZjpEZXNjcmlwdGlvbj4KCiA8cmRmOkRlc2NyaXB0aW9uIHhtbG5zOmV4aWY9
J2h0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvJz4KICA8ZXhpZjpJbWFnZVdpZHRoPjIwMjwv
ZXhpZjpJbWFnZVdpZHRoPgogIDxleGlmOkltYWdlTGVuZ3RoPjE0NzwvZXhpZjpJbWFnZUxlbmd0
aD4KICA8ZXhpZjpCaXRzUGVyU2FtcGxlPjgsIDgsIDg8L2V4aWY6Qml0c1BlclNhbXBsZT4KICA8
ZXhpZjpQaG90b21ldHJpY0ludGVycHJldGF0aW9uPlJHQjwvZXhpZjpQaG90b21ldHJpY0ludGVy
cHJldGF0aW9uPgogIDxleGlmOk9yaWVudGF0aW9uPlRvcC1sZWZ0PC9leGlmOk9yaWVudGF0aW9u
PgogIDxleGlmOlNhbXBsZXNQZXJQaXhlbD4zPC9leGlmOlNhbXBsZXNQZXJQaXhlbD4KICA8ZXhp
ZjpYUmVzb2x1dGlvbj43MiwwMDAwPC9leGlmOlhSZXNvbHV0aW9uPgogIDxleGlmOllSZXNvbHV0
aW9uPjcyLDAwMDA8L2V4aWY6WVJlc29sdXRpb24+CiAgPGV4aWY6UmVzb2x1dGlvblVuaXQ+SW5j
aDwvZXhpZjpSZXNvbHV0aW9uVW5pdD4KICA8ZXhpZjpTb2Z0d2FyZT5BZG9iZSBQaG90b3Nob3Ag
Q0MgMjAxNS41IChNYWNpbnRvc2gpPC9leGlmOlNvZnR3YXJlPgogIDxleGlmOkRhdGVUaW1lPjIw
MTY6MDc6MjggMTY6NDU6MTk8L2V4aWY6RGF0ZVRpbWU+CiAgPGV4aWY6Q29tcHJlc3Npb24+SlBF
RyBjb21wcmVzc2lvbjwvZXhpZjpDb21wcmVzc2lvbj4KICA8ZXhpZjpYUmVzb2x1dGlvbj43Mjwv
ZXhpZjpYUmVzb2x1dGlvbj4KICA8ZXhpZjpZUmVzb2x1dGlvbj43MjwvZXhpZjpZUmVzb2x1dGlv
bj4KICA8ZXhpZjpSZXNvbHV0aW9uVW5pdD5JbmNoPC9leGlmOlJlc29sdXRpb25Vbml0PgogIDxl
eGlmOkV4aWZWZXJzaW9uPkV4aWYgVmVyc2lvbiAyLjIxPC9leGlmOkV4aWZWZXJzaW9uPgogIDxl
eGlmOkZsYXNoUGl4VmVyc2lvbj5GbGFzaFBpeCBWZXJzaW9uIDEuMDwvZXhpZjpGbGFzaFBpeFZl
cnNpb24+CiAgPGV4aWY6Q29sb3JTcGFjZT5VbmNhbGlicmF0ZWQ8L2V4aWY6Q29sb3JTcGFjZT4K
ICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MjAyPC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICA8ZXhp
ZjpQaXhlbFlEaW1lbnNpb24+MTQ3PC9leGlmOlBpeGVsWURpbWVuc2lvbj4KIDwvcmRmOkRlc2Ny
aXB0aW9uPgoKPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KPD94cGFja2V0IGVuZD0ncic/Pgr/2wBD
AAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8t
MC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo
KCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCACTAMoDAREAAhEBAxEB/8QAHAAAAQUBAQEAAAAAAAAA
AAAAAAMEBQYHAggB/8QAQxAAAQMDAwEGBAMEBgkFAAAAAQIDBAAFEQYSITEHEyJBUWEIFHGBMkKR
FSNSoTNicqKxsxYkNDh1gsHR8Bc2N5Lh/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QALREA
AgICAgEDAgcBAAMBAAAAAAECAwQREiExE0FRImEFFDJxgaHBI7HR4fD/2gAMAwEAAhEDEQA/APVN
AFAFAFAFAFAFAFAR13usOzxhIuUgMMlYQFEE5Ueg4Hsa0rqna+MFtmdlka1ub0hadNjwoTsuU6G4
7adyl9QB9utVhCU5cYrstKaguUvB1BlsTojUmK4HGHU7kLHmKicXCTjLyhGSklKPgc1BYKAKAKAK
AKAKAKAKAKAbGUwmUiMp5AkLSVpbKvEUjqcfep4vXLXRXkt8d9jmoLBQBQBQBQBQBQBQBQBQBQDK
TcIkR5hmVIaZefO1pC1gFZ9B61aNcpJuK6RSU4xaTfkj9UT7LCiNjUHcFlxXgQ613mVDzCcHpnr7
1pRXbY/+PkzvnVFf9fAtdrja27IqXcHWV211A8ShuSsK6YHnmorrsdnGC+pFrLK1DlPwfbZcrWqx
omQXmUW1pBwpI2pQlPUY8selROuz1OMl9QhZDhyi+jqy3u3Xphx62SQ+hCtq/CUlJ9wQDS2idL1N
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

--_004_151713790654631307sonovtscom_--
