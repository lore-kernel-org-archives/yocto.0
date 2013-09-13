Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99980E0148D
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 06:31:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Sep 2013 06:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,898,1371106800"; 
	d="scan'208,217";a="402852241"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 13 Sep 2013 06:31:03 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 13 Sep 2013 14:30:38 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.47]) with mapi id
	14.03.0123.003; Fri, 13 Sep 2013 14:30:37 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, 'Anders Darander'
	<anders@chargestorm.se>, "Barros Pena,
	Belen" <belen.barros.pena@intel.com>, 
	"Bodke, Kishore K" <kishore.k.bodke@intel.com>, 'Bruce Ashfield'
	<bruce.ashfield@windriver.com>, 'Daniel Cauchy' <dcauchy@mvista.com>,
	"'deVries, Alex'" <Alex.deVries@windriver.com>, "'Dixon, Brad'"
	<Brad_Dixon@mentor.com>, "Dmytriyenko, Denys" <denys@ti.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Hart, Darren" <darren.hart@intel.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, 'Jeremy Puhlman'
	<jpuhlman@gmail.com>, "Kridner, Jason" <jdk@ti.com>,
	"'Lieu.Ta@windriver.com'" <'Lieu.Ta@windriver.com'>, "Lock, Joshua"
	<joshua.lock@intel.com>, "Moeller, Thorsten" <thorsten.moeller@intel.com>, 
	'Sanjay Raina' <sraina@mvista.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>, "'Polk,
	Jeffrey'" <jeff.polk@windriver.com>, 
	"Purdie, Richard" <richard.purdie@intel.com>, "'Ranslam, Rob'"
	<Rob.Ranslam@windriver.com>, "Saxena, Rahul" <rahul.saxena@intel.com>, 
	"Stewart, David C" <david.c.stewart@intel.com>, "Wold, Saul"
	<saul.wold@intel.com>, "Zanussi, Tom" <tom.zanussi@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "'Hudson, Sean'" <Sean_Hudson@mentor.com>,
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, "Petrisor, Ileana"
	<ileana.petrisor@intel.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>, "Burton, Ross" <ross.burton@intel.com>,
	"Mueller, Robert" <robert.mueller@intel.com>, "Arce Moreno, Abraham"
	<abraham.arce.moreno@intel.com>,
	'Ravi Vompolu' <Ravi.Vompolu@mathworks.com>, 
	"'Sadiq, Irfan'" <Irfan_Sadiq@mentor.com>, "Santana Lopez, Mario A"
	<mario.a.santana.lopez@intel.com>, "Patel, Keyur R"
	<keyur.r.patel@intel.com>, "'achaudha@mvista.com'" <achaudha@mvista.com>,
	"Popa, Valentin" <valentin.popa@intel.com>, "Moses, Fred"
	<fred.moses@intel.com>, "Iorga, Cristian" <cristian.iorga@intel.com>,
	"Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "'Butler, Paul'"
	<Paul.Butler@windriver.com>, "Mirea, Viorel" <viorel.mirea@intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Szankin, Maciej"
	<maciej.szankin@intel.com>, "Moisan, Radu" <radu.moisan@intel.com>,
	"Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>, Olivia Salisbury
	<olivia.salisbury@tobias.tv>, 'Chris Kaminski' <chris.kaminski@tobias.tv>, 
	"'Maupin, Chase'" <chase.maupin@ti.com>, "Gavaz, Ionut A"
	<ionut.a.gavaz@intel.com>, "Pruteanu, Codrin C"
	<codrin.c.pruteanu@intel.com>, "Letnes, Thaddeus C"
	<thaddeus.c.letnes@intel.com>, "Ong,
	Boon Leong" <boon.leong.ong@intel.com>, 
	"Seow, Chen Yong" <chen.yong.seow@intel.com>, "Haw, Foo Chien"
	<foo.chien.haw@intel.com>, "steve.long@windriver.com"
	<steve.long@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project 1.5 M4 release readiness meeting
Thread-Index: Ac6wBBkOLJ8PBZtLSTKPO2vxssYKRgAAAWMgACA2sQA=
Importance: high
X-Priority: 1
Date: Fri, 13 Sep 2013 13:30:36 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F622FC@IRSMSX104.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E9619F61626@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F61626@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 14 Sep 2013 09:24:39 -0700
Subject: Re: Yocto Project 1.5 M4 release readiness meeting
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
X-List-Received-Date: Fri, 13 Sep 2013 13:31:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F622FCIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F622FCIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Song,
Please update to the release criteria OpensSuse 12.3 and 12.2, as well as C=
entOS. I have ommited them by mistake on the last report, but they were cov=
ered in the Distro testing.
The Distributions tested wiki is updated at: https://wiki.yoctoproject.org/=
wiki/1.5_Distribution_Tested

Regards,
--
Alexandru Georgescu


-----Original Appointment-----
From: Liu, Song
Sent: Friday, September 13, 2013 01:08
To: Liu, Song; 'Anders Darander'; Barros Pena, Belen; Bodke, Kishore K; 'Br=
uce Ashfield'; 'Daniel Cauchy'; 'deVries, Alex'; 'Dixon, Brad'; Dmytriyenko=
, Denys; Erway, Tracey M; Flanagan, Elizabeth; Hart, Darren; 'Hatle, Mark';=
 'Jeremy Puhlman'; Kridner, Jason; 'Lieu.Ta@windriver.com'; Lock, Joshua; M=
oeller, Thorsten; 'Sanjay Raina'; Osier-mixon, Jeffrey; 'Polk, Jeffrey'; Pu=
rdie, Richard; 'Ranslam, Rob'; Saxena, Rahul; Stewart, David C; Wold, Saul;=
 Zanussi, Tom; Zhang, Jessica; Rifenbark, Scott M; 'Hudson, Sean'; Serban, =
Laurentiu; Petrisor, Ileana; Damian, Alexandru; Burton, Ross; Mueller, Robe=
rt; Arce Moreno, Abraham; 'Ravi Vompolu'; 'Sadiq, Irfan'; Santana Lopez, Ma=
rio A; Patel, Keyur R; 'achaudha@mvista.com'; Popa, Valentin; Moses, Fred; =
Iorga, Cristian; Palalau, AlexandruX; 'Butler, Paul'; Mirea, Viorel; Kamble=
, Nitin A; Szankin, Maciej; Moisan, Radu; Grigoropol, IoanaX; Olivia Salisb=
ury; 'Chris Kaminski'; 'Maupin, Chase'; Georgescu, Alexandru C; Gavaz, Ionu=
t A; Pruteanu, Codrin C; Letnes, Thaddeus C; Ong, Boon Leong; Seow, Chen Yo=
ng; Haw, Foo Chien; steve.long@windriver.com; yocto@yoctoproject.org
Subject: FW: Yocto Project 1.5 M4 release readiness meeting
When: Friday, September 13, 2013 9:00 AM-9:30 AM (UTC-08:00) Pacific Time (=
US & Canada).
Where: 916-356-2663, 8-356-2663, Bridge: 1, Passcode: 3282280




-----Original Appointment-----
From: Liu, Song
Sent: Thursday, September 12, 2013 3:05 PM
To: Liu, Song; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Yocto Project 1.5 M4 release readiness meeting
When: Friday, September 13, 2013 9:00 AM-9:30 AM (UTC-08:00) Pacific Time (=
US & Canada).
Where: 916-356-2663, 8-356-2663, Bridge: 1, Passcode: 3282280


https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status#Milestone_4<ht=
tps://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status>


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F622FCIRSMSX104gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div><font color=3D"#1F497D">Hi Song,</font></div>
<div><font color=3D"#1F497D">Please update to the release criteria OpensSus=
e 12.3 and 12.2, as well as CentOS. I have ommited them by mistake on the l=
ast report, but they were covered in the Distro testing.</font></div>
<div><font color=3D"#1F497D">The Distributions tested wiki is updated at: <=
a href=3D"https://wiki.yoctoproject.org/wiki/1.5_Distribution_Tested"><font=
 color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/1.5_Distribution_Test=
ed</u></font></a></font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font color=3D"#1F497D">Regards,</font></div>
<div><font face=3D"SimSun" size=3D"1" color=3D"#7F7F7F"><span style=3D"font=
-size:8pt;"><b>--</b></span></font></div>
<div><font size=3D"1" color=3D"#7F7F7F"><span style=3D"font-size:8pt;"><b>A=
lexandru Georgescu</b></span></font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Tahoma" size=3D"2"><span style=3D"font-size:10pt;">-----=
Original Appointment-----<br>

<b>From:</b> Liu, Song <br>

<b>Sent:</b> Friday, September 13, 2013 01:08<br>

<b>To:</b> Liu, Song; 'Anders Darander'; Barros Pena, Belen; Bodke, Kishore=
 K; 'Bruce Ashfield'; 'Daniel Cauchy'; 'deVries, Alex'; 'Dixon, Brad'; Dmyt=
riyenko, Denys; Erway, Tracey M; Flanagan, Elizabeth; Hart, Darren; 'Hatle,=
 Mark'; 'Jeremy Puhlman'; Kridner,
Jason; 'Lieu.Ta@windriver.com'; Lock, Joshua; Moeller, Thorsten; 'Sanjay Ra=
ina'; Osier-mixon, Jeffrey; 'Polk, Jeffrey'; Purdie, Richard; 'Ranslam, Rob=
'; Saxena, Rahul; Stewart, David C; Wold, Saul; Zanussi, Tom; Zhang, Jessic=
a; Rifenbark, Scott M; 'Hudson,
Sean'; Serban, Laurentiu; Petrisor, Ileana; Damian, Alexandru; Burton, Ross=
; Mueller, Robert; Arce Moreno, Abraham; 'Ravi Vompolu'; 'Sadiq, Irfan'; Sa=
ntana Lopez, Mario A; Patel, Keyur R; 'achaudha@mvista.com'; Popa, Valentin=
; Moses, Fred; Iorga, Cristian;
Palalau, AlexandruX; 'Butler, Paul'; Mirea, Viorel; Kamble, Nitin A; Szanki=
n, Maciej; Moisan, Radu; Grigoropol, IoanaX; Olivia Salisbury; 'Chris Kamin=
ski'; 'Maupin, Chase'; Georgescu, Alexandru C; Gavaz, Ionut A; Pruteanu, Co=
drin C; Letnes, Thaddeus C; Ong,
Boon Leong; Seow, Chen Yong; Haw, Foo Chien; steve.long@windriver.com; yoct=
o@yoctoproject.org<br>

<b>Subject:</b> FW: Yocto Project 1.5 M4 release readiness meeting<br>

<b>When:</b> Friday, September 13, 2013 9:00 AM-9:30 AM (UTC-08:00) Pacific=
 Time (US &amp; Canada).<br>

<b>Where:</b> 916-356-2663, 8-356-2663, Bridge: 1, Passcode: 3282280</span>=
</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Tahoma" size=3D"2"><span style=3D"font-size:10pt;">-----=
Original Appointment-----<br>

<b>From:</b> Liu, Song <br>

<b>Sent:</b> Thursday, September 12, 2013 3:05 PM<br>

<b>To:</b> Liu, Song; <a href=3D"mailto:yocto@yoctoproject.org"><font color=
=3D"blue"><u>yocto@yoctoproject.org</u></font></a><br>

<b>Subject:</b> Yocto Project 1.5 M4 release readiness meeting<br>

<b>When:</b> Friday, September 13, 2013 9:00 AM-9:30 AM (UTC-08:00) Pacific=
 Time (US &amp; Canada).<br>

<b>Where:</b> 916-356-2663, 8-356-2663, Bridge: 1, Passcode: 3282280</span>=
</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman"><a href=3D"https://wiki.yoctoproject.or=
g/wiki/Yocto_Project_v1.5_Status"><font face=3D"Calibri" color=3D"blue"><u>=
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status#Milestone_4</u=
></font></a></font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F622FCIRSMSX104gercor_--
