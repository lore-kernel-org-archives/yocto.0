Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FAF6E009B9; Thu,  9 Mar 2017 19:28:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9156 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Mar 2017 19:28:33 PST
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-oln040092254072.outbound.protection.outlook.com [40.92.254.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A864E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 19:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ebg00dVsj/nKxGy4kztulVEC7be3L+OM3rtjmZLMNq4=;
	b=MSNQh1IhemwBrYfUBKEm1HKAAqQLqXPRvlFAPkNy1Mgo1lA9Dpp7PIyIQd3ZSl42gIn7Cn2VRsjK09kqeDCLJOU9y3F8DGYGxGBFPN6RA/ST+/CTECjVBT3DMFQ5ubh3W/LbA3hKmdr8+2iyD16Mayx46C5c4lgO8a4vP0w5ud2kdynTG9Icu7zPyWpnmTnV6ahGytSsTY+ZMHFK5Nf6Hy7nvy0hu2UoxGvr3Pb8F0HSftYcdqLctV9l+0q3AYZSxYSSkZiMOuNhKqX6rP6xkltpAPtHapf+6ag1sanEuBbMSwAR5hTSo6OQwjq2nNx+47BW8cTSbIM6Zm9AkckiqQ==
Received: from PU1APC01FT019.eop-APC01.prod.protection.outlook.com
	(10.152.252.57) by PU1APC01HT231.eop-APC01.prod.protection.outlook.com
	(10.152.252.194) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.933.11;
	Fri, 10 Mar 2017 00:55:54 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com (10.152.252.53) by
	PU1APC01FT019.mail.protection.outlook.com (10.152.252.222) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7 via
	Frontend Transport; Fri, 10 Mar 2017 00:55:54 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) by
	SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) with mapi id
	15.01.0961.014; Fri, 10 Mar 2017 00:55:53 +0000
From: Steve Plant <steove@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Raspberry Pi2 Fails to boot into LXDE.
Thread-Index: AQHSmAS6lDZ5/Vwgn0y/oXWyad/Mn6GLL8AAgAIMNjk=
Date: Fri, 10 Mar 2017 00:55:52 +0000
Message-ID: <SG2PR0301MB201643023083BF1A84D10302D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>,
	<20170308171742.GC2586@haswell>
In-Reply-To: <20170308171742.GC2586@haswell>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:AA81ACD01933BBFD399E1B4D7B4A6EF183E461EB79BC1B229EABC46E01FE3394;
	UpperCasedChecksum:FBFEE82C247F5C9B91BBB83F932CD2D73E56E419B31FB1B738EC76ED2C6F4CCB;
	SizeAsReceived:7863; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [w5K5NktdwdU9W+khV+vkLsoqNjkYWlUx]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; PU1APC01HT231;
	5:K2J+Q7rAJyujlqeuS7JCMFoEibI5GzfWBnTKlXaFas68Zix06UE+saV8DaoIK7d48CWNJPLg1xeOjcQZSn4I4LO6gdTiU8KHhHZubj1tWJAIsiQKEjE2YxJdLxqP39pEACC8QqiN5M6Y4D8G64Zitz2MeS9zYhAfBZo9JJ63OjQ=;
	24:bA7NZZJyi4jnrRRDxqoOxyXdqUVtOJUa88rCUfLuLsKeg1uwLG2GwXTY7sscEbEip8mq9VwdUdElBZFgdHwArBl0w+Xa/fAnRcIgUmSDdTU=;
	7:zHqJf0InrqCmIXwnEVDspfFzv6oUP6o1On80hOI+swVdkzsKe8zZVs+1GQEaDNLRpc7B6jAb/geWUpImwB3TdOgya3QS/noeCJ/rvFwAYMH2ag57/E2xMxLseLoPv0v3CRJl2uhE1MIr1YoQ3q7/ledi3Jo5vw8NJi+e2zltiUxb2H+1uiG6F+1tGuz8fKJfUe/sNDfk650kxMQ7hYG9VZyEXdPwybvwOSLo2B86GajU7mO2fCQKPWnCBheq/+JNbLezyVV5ZIiL8Y8EmeczTudk1qLiVHOQOKhG/Q/xLd1Zz0SQUvSlVqT2l5n3ECTZ
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98900016);
	DIR:OUT; SFP:1901; SCL:1; SRVR:PU1APC01HT231;
	H:SG2PR0301MB2016.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c139949e-5ebe-4612-1f16-08d467503413
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:PU1APC01HT231; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:PU1APC01HT231; BCL:0; PCL:0; RULEID:; SRVR:PU1APC01HT231; 
x-forefront-prvs: 02426D11FE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 00:55:52.7139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT231
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Fri, 10 Mar 2017 03:28:37 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0301MB201643023083BF1A84D10302D1200SG2PR0301MB2016_"

--_000_SG2PR0301MB201643023083BF1A84D10302D1200SG2PR0301MB2016_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, I have spent the last day googling my heart out trying to find the Xorg=
.log file without any luck.


The problem is that due to the rpi hanging on boot, the only way I can acce=
ss the SD card to look for the file is place it in a USB SD card reader and=
 use my VirtualBox based Debian to "ls" directores etc.

Having established that there is no file located at /var/log/Xorg.log (ther=
e isn't a log directory) but there is a symbolic link in the var directory =
- goes nowhere.


After goggling I discovered that the file could also be in the ~/.local/sha=
re/xorg/Xorg.0.log, however if I try to look there I get "permission denied=
" and cannot seem to get to the root directory of the card and I can't find=
 a way around this as I'm trying to access this directory through the USB c=
ard reader.


Looked everywhere with no answers, Is there anyone who could help me here??


Regards, Steve.


________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Wednesday, 8 March 2017 5:17 p.m.
To: Steve Plant
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.

On 17-03-08 12:40:51, Steve Plant wrote:
> Hi All,
>
>
> Very new to all this linux world, and especially Yocto.
>
>
> I'm working on a embedded project at the moment using a raspberry pi2 boa=
rd.
>
>
> I have used toaster with Morty 2.2 to compile an image using"rpi-basic-im=
age", to this I have added the following bitbake variables:
>
> Bitbake variables
>
> DISTRO
> poky
> DL_DIR
> /home/steve/poky/downloads
> IMAGE_FSTYPES
> ext3 jffs2 tar.bz2 rpi-sdimg
> IMAGE_INSTALL_append
> packagegroup-core-x11-base packagegroup-lxde-base connman
> PACKAGE_CLASSES
> package_rpm
> SSTATE_DIR
> /home/steve/poky/sstate-cache
>
> DISABLE_OVERSCAN
> 1
> GPU_MEM_1024
> 512
>
> I have dd'ed the image to an SD card increased the sdb2 partition to the =
max size and powered up the rpi. Everything looks fine to start with, as it=
 displays the four raspberrys in the top left, then the white "Yocto Projec=
t" splash screen complete with small blue dot to the side appears, the prog=
ress bar moves across to 100 percent, then the screen turns black with a wh=
ite cursor in the middle and it appears to freeze with only a very dim one =
second flash of the "act" led.
>
>
> I have then connected the 7" touchscreen and apart from the added multico=
lored square at the very beginning I get the exact same boot up problem, ha=
ngs on the black screen with white cursor (good to see its all resized corr=
ectly for the TfT through!!)
>
>
> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base I=
 successfully copied over and ran the rpi-basic-image with no problem, endi=
ng up with a usable console.
>
>
> Looking for any help here, I'm thinking I've missed adding a package, or =
some type of local.conf instruction. any suggestions would be appreciated..=
...........

Can you send the content of /var/log/Xorg.log file ?

>
>
>
> Regards, Steve.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.




--_000_SG2PR0301MB201643023083BF1A84D10302D1200SG2PR0301MB2016_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>OK, I have spent the last day googling my heart out trying to find the X=
org.log file without any luck.</p>
<p><br>
</p>
<p>The problem is that due to the rpi hanging on boot, the only way I can a=
ccess the SD card to look for the file is place it in a USB SD card reader =
and use my VirtualBox based Debian to &quot;ls&quot; directores etc.</p>
<p>Having established that there is no file located at <font size=3D"2"><sp=
an style=3D"font-size:10pt;"><span style=3D"font-size: 12pt;">/var/log/Xorg=
.log (there isn't a
</span><span style=3D"font-size: 12pt;">log directory) but there is a symbo=
lic link in the var directory - goes nowhere.</span></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><span style=3D"font-siz=
e: 12pt;"><br>
</span></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><span style=3D"font-siz=
e: 12pt;">After goggling I discovered that the file could also be in the
<span style=3D"font-size: 12pt;">~/.local/share/xorg/Xorg.0.log, however if=
 I try to look there I get &quot;permission denied&quot; and cannot seem to=
 get to the root directory of the card and I can't find a way around this a=
s I'm trying to access this directory through
 the USB card reader.</span></span></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><span style=3D"font-siz=
e: 12pt;"><span style=3D"font-size: 12pt;"><br>
</span></span></span></font></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"><span style=3D"font-siz=
e: 12pt;"><span style=3D"font-size: 12pt;">Looked everywhere with no answer=
s, Is there anyone who could help me here??</span></span></span></font><fon=
t size=3D"2"><span style=3D"font-size:10pt;"></span></font><br>
</p>
<p><br>
</p>
<div id=3D"Signature">Regards, Steve. </div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" colo=
r=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, 8 March 2017 5:17 p.m.<br>
<b>To:</b> Steve Plant<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 17-03-08 12:40:51, Steve Plant wrote:<br>
&gt; Hi All,<br>
&gt; <br>
&gt; <br>
&gt; Very new to all this linux world, and especially Yocto.<br>
&gt; <br>
&gt; <br>
&gt; I'm working on a embedded project at the moment using a raspberry pi2 =
board.<br>
&gt; <br>
&gt; <br>
&gt; I have used toaster with Morty 2.2 to compile an image using&quot;rpi-=
basic-image&quot;, to this I have added the following bitbake variables:<br=
>
&gt; <br>
&gt; Bitbake variables<br>
&gt; <br>
&gt; DISTRO<br>
&gt; poky<br>
&gt; DL_DIR<br>
&gt; /home/steve/poky/downloads<br>
&gt; IMAGE_FSTYPES<br>
&gt; ext3 jffs2 tar.bz2 rpi-sdimg<br>
&gt; IMAGE_INSTALL_append<br>
&gt; packagegroup-core-x11-base packagegroup-lxde-base connman<br>
&gt; PACKAGE_CLASSES<br>
&gt; package_rpm<br>
&gt; SSTATE_DIR<br>
&gt; /home/steve/poky/sstate-cache<br>
&gt; <br>
&gt; DISABLE_OVERSCAN<br>
&gt; 1<br>
&gt; GPU_MEM_1024<br>
&gt; 512<br>
&gt; <br>
&gt; I have dd'ed the image to an SD card increased the sdb2 partition to t=
he max size and powered up the rpi. Everything looks fine to start with, as=
 it displays the four raspberrys in the top left, then the white &quot;Yoct=
o Project&quot; splash screen complete with small
 blue dot to the side appears, the progress bar moves across to 100 percent=
, then the screen turns black with a white cursor in the middle and it appe=
ars to freeze with only a very dim one second flash of the &quot;act&quot; =
led.<br>
&gt; <br>
&gt; <br>
&gt; I have then connected the 7&quot; touchscreen and apart from the added=
 multicolored square at the very beginning I get the exact same boot up pro=
blem, hangs on the black screen with white cursor (good to see its all resi=
zed correctly for the TfT through!!)<br>
&gt; <br>
&gt; <br>
&gt; Before adding the packagegroup-core-x11-base and packagegroup-lxde-bas=
e I successfully copied over and ran the rpi-basic-image with no problem, e=
nding up with a usable console.<br>
&gt; <br>
&gt; <br>
&gt; Looking for any help here, I'm thinking I've missed adding a package, =
or some type of local.conf instruction. any suggestions would be appreciate=
d.............<br>
<br>
Can you send the content of /var/log/Xorg.log file ?<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Regards, Steve.<br>
<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a previewremoved=3D"true" id=3D"LPlnk154652" href=3D"https://lists.yo=
ctoproject.org/listinfo/yocto">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div style=3D"margin-bottom: 20px; overflow: auto; width: 100%; text-indent=
: 0px;" id=3D"LPBorder_GT_14891060400930.7144500999643874">
<table style=3D"width: 90%; background-color: rgb(255, 255, 255); position:=
 relative; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-=
top: 20px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px do=
tted rgb(200, 200, 200);" id=3D"LPContainer_14891060400860.3922394758865597=
" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td colspan=3D"2" style=3D"vertical-align: top; position: relative; padding=
: 0px; display: table-cell;" id=3D"TextCell_14891060400870.8569302588000811=
">
<div id=3D"LPRemovePreviewContainer_14891060400880.6590077005483601"></div>
<div id=3D"LPExpandDescriptionContainer_14891060400880.831105021620334"></d=
iv>
<div style=3D"top: 0px; color: rgb(0, 120, 215); font-weight: 400; font-siz=
e: 21px; font-family: &quot;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&qu=
ot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Ta=
homa,Arial,sans-serif; line-height: 21px;" id=3D"LPTitle_14891060400880.950=
2575562873631">
<a target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"text-decoration: none;" id=3D"LPUrlAnchor_14891060400880.84623354=
28697386">yocto Info Page</a></div>
<div style=3D"margin: 10px 0px 16px; color: rgb(102, 102, 102); font-weight=
: 400; font-family: &quot;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&qu=
ot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font-size: 14px; line-height: 14=
px;" id=3D"LPMetadata_14891060400890.9724475089621355">
lists.yoctoproject.org</div>
<div altdesc=3D"Discussion of all things about the Yocto Project. =0A=
Read our Community Guidelines or learn more about how to participate in oth=
er community discussions. =0A=
Subscribe before posting to bypass moderation. =0A=
To see the collection of prior postings to the list, visit the yocto Archiv=
es.&lt;br/&gt;&lt;br/&gt;To post a message to all the list members, send em=
ail to yocto@yoctoproject.org. =0A=
You can subscribe to the list, or change your existing subscription, in the=
 sections below. =0A=
Subscribing to yocto. =0A=
Subscribe to yocto by filling out the following form. &lt;br/&gt;&lt;br/&gt=
;Subscribe to yocto by filling out the following form. You will be sent ema=
il requesting confirmation, to prevent others from gratuitously subscribing=
 you. This is a private list, which means that the list of members is not a=
vailable to non-members." style=3D"display: block; color: rgb(102, 102, 102=
); font-weight: 400; font-family: &quot;wf_segoe-ui_normal&quot;,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font-size: 14px; l=
ine-height: 20px; max-height: 100px; overflow: hidden;" id=3D"LPDescription=
_14891060400890.6490701733551312">
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

--_000_SG2PR0301MB201643023083BF1A84D10302D1200SG2PR0301MB2016_--
