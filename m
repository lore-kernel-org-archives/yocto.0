Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0F8E009B9; Fri, 10 Mar 2017 05:31:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC2S4.hotmail.com (col004-omc2s4.hotmail.com
	[65.55.34.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B38FDE009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:31:45 -0800 (PST)
Received: from APC01-SG2-obe.outbound.protection.outlook.com ([65.55.34.73])
	by COL004-OMC2S4.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 10 Mar 2017 05:31:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=eT8i2Gwtz25/efPTh2evDxr109zWicRQwOA04vpPLtU=;
	b=fXE5OMZi/61jYVer4+oLdy6QQf5VVu8HM0i8sXIlnWscuud5JuSGHzOh5OysrJBX/hBY7VYelm0GkaxpxvxcSgrr96AQkU80Y1Y9/stBDzPtUkS7ThIMWzt9dr1Ddww24y8T5s8a5FUZLgW4vuCb7u56yn8/oCkyxyRTedhSKtyxAhk3j8nWUlIPv1SGqxEwlZgjuwkbg5eoc79E1sDiEG/ZD16VJZMsLbF7nlVz5yMDU+P3Fo4dCCXgUz2mPlCsPMnzKUa/JYDfXIJ3sb5apQAetbn+SpfytmQNvUXq3KeOCTZrQUmHyXTKTW9oBny4sHTMF6CRC4YACUVR7Wnc7g==
Received: from PU1APC01FT040.eop-APC01.prod.protection.outlook.com
	(10.152.252.54) by PU1APC01HT156.eop-APC01.prod.protection.outlook.com
	(10.152.253.163) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.933.11;
	Fri, 10 Mar 2017 13:31:41 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com (10.152.252.53) by
	PU1APC01FT040.mail.protection.outlook.com (10.152.253.118) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7 via
	Frontend Transport; Fri, 10 Mar 2017 13:31:40 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) by
	SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) with mapi id
	15.01.0961.018; Fri, 10 Mar 2017 13:31:40 +0000
From: Steve Plant <steove@hotmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] Raspberry Pi2 Fails to boot into LXDE.
Thread-Index: AQHSmAS6lDZ5/Vwgn0y/oXWyad/Mn6GLL8AAgAIMNjmAAFYwAIAAgfXA
Date: Fri, 10 Mar 2017 13:31:40 +0000
Message-ID: <SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<20170308171742.GC2586@haswell>
	<SG2PR0301MB201643023083BF1A84D10302D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>,
	<c8169cf0-c594-42d6-b286-7080e9693c95@mlbassoc.com>
In-Reply-To: <c8169cf0-c594-42d6-b286-7080e9693c95@mlbassoc.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:51A7FB9A2512383F27D66A9560A052C7B5A2D4EBC448944FD44EFBEEBD64AECC;
	UpperCasedChecksum:B5AE1C70845D7600A8B8441FF2935C1CAF4CF6CBDC2D8AC381C37D5EB676F32D;
	SizeAsReceived:8034; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vaApWsRtGg/twGWKU/im4KjHenD+jZwU]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; PU1APC01HT156;
	5:pNZwO37yqGCuhUlp910bUwqu+Nk4TXr+sBGIRmYwqJEFF4I19MJeKDRUJ32VTJitVbXFaQLE8nkaXyOA/qGXSwk2abJdrEbiW48CvS6nd0mcwJm19okVvfS+BfamSKFUlcYPolEjgTj9F99pUmuAJUs6ie6+kJp+oBvwD7MibDY=;
	24:24K23Y9r5gNdpjvIRAfpVP/FHd5qU7O5tn4uEmxds/MzpkjFbtsZJMBWkwlIFuMOmisQCeVKoy9/PqehfmtTVdWVswC+MnZCAtCj+5X591U=;
	7:LErM58JXiI5IurwKGbXoLBC39R5SeF2RFE4y16vuvoECbUxQL19WCPyHo++hRwJV1SFRkg67zMlt13ohVLs9YoThyybx5evyuHlmoPG/TYj+sScqSeUphMzZ9eQljmKEzmQnWOdAzqDyuI9TT4tpzaBqJoFDECDDyu7nN0Q0Zb2OG7kJeXneRn9X2Rmsd0Oal5++RJAGEwouR6YGv5KAKjiCkfW/vGxWFmMhuS8VK6JKYBKr9jKv25nTAIkypzbpEsHRRpX6Pbq7n2UKwn6h68LFQewUYpHnK/0PRt2meN9P5wvJiAiUqU3zT61XeaJ1
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900016);
	DIR:OUT; SFP:1102; SCL:1; SRVR:PU1APC01HT156;
	H:SG2PR0301MB2016.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 7634a93c-c83f-4d20-9299-08d467b9c91d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:PU1APC01HT156; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015087)(444000031); SRVR:PU1APC01HT156; BCL:0; PCL:0;
	RULEID:; SRVR:PU1APC01HT156; 
x-forefront-prvs: 02426D11FE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 13:31:40.5914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT156
X-OriginalArrivalTime: 10 Mar 2017 13:31:44.0702 (UTC)
	FILETIME=[A90B7DE0:01D299A2]
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
X-List-Received-Date: Fri, 10 Mar 2017 13:31:47 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200SG2PR0301MB2016_"

--_000_SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200SG2PR0301MB2016_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Gary,


You where spot on! I have now been able to SSH into the rpi and have posted=
 the Xorg.log file to the mailing list.


I think Xorg is failing to load correctly because it cannot find the evdev =
module. Looking into how to fix this now......


Regards, Steve.


________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Gary Thomas <gary@mlbassoc.com>
Sent: Friday, 10 March 2017 5:42 a.m.
To: yocto@yoctoproject.org
Subject: Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.

On 2017-03-10 01:55, Steve Plant wrote:
> OK, I have spent the last day googling my heart out trying to find the Xo=
rg.log file without any luck.
>
>
> The problem is that due to the rpi hanging on boot, the only way I can ac=
cess the SD card to look for the file is place
> it in a USB SD card reader and use my VirtualBox based Debian to "ls" dir=
ectores etc.
>
> Having established that there is no file located at /var/log/Xorg.log (th=
ere isn't a log directory) but there is a
> symbolic link in the var directory - goes nowhere.
>
>
> After goggling I discovered that the file could also be in the ~/.local/s=
hare/xorg/Xorg.0.log, however if I try to look
> there I get "permission denied" and cannot seem to get to the root direct=
ory of the card and I can't find a way around
> this as I'm trying to access this directory through the USB card reader.
>
>
> Looked everywhere with no answers, Is there anyone who could help me here=
??

/var/log is on a volatile file system (i.e. it does not live on the SD card=
)

If you can get into your board via SSH, you can copy the file and send it

> -------------------------------------------------------------------------=
-----------------------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Wednesday, 8 March 2017 5:17 p.m.
> *To:* Steve Plant
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.
>
> On 17-03-08 12:40:51, Steve Plant wrote:
>> Hi All,
>>
>>
>> Very new to all this linux world, and especially Yocto.
>>
>>
>> I'm working on a embedded project at the moment using a raspberry pi2 bo=
ard.
>>
>>
>> I have used toaster with Morty 2.2 to compile an image using"rpi-basic-i=
mage", to this I have added the following bitbake variables:
>>
>> Bitbake variables
>>
>> DISTRO
>> poky
>> DL_DIR
>> /home/steve/poky/downloads
>> IMAGE_FSTYPES
>> ext3 jffs2 tar.bz2 rpi-sdimg
>> IMAGE_INSTALL_append
>> packagegroup-core-x11-base packagegroup-lxde-base connman
>> PACKAGE_CLASSES
>> package_rpm
>> SSTATE_DIR
>> /home/steve/poky/sstate-cache
>>
>> DISABLE_OVERSCAN
>> 1
>> GPU_MEM_1024
>> 512
>>
>> I have dd'ed the image to an SD card increased the sdb2 partition to the=
 max size and powered up the rpi. Everything looks fine to start with, as i=
t displays the four raspberrys in the top left, then the white "Yocto Proje=
ct" splash screen complete with small blue dot to the side appears, the pro=
gress bar moves across to 100 percent, then the screen turns black with a w=
hite
> cursor in the middle and it appears to freeze with only a very dim one se=
cond flash of the "act" led.
>>
>>
>> I have then connected the 7" touchscreen and apart from the added multic=
olored square at the very beginning I get the exact same boot up problem, h=
angs on the black screen with white cursor (good to see its all resized cor=
rectly for the TfT through!!)
>>
>>
>> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base =
I successfully copied over and ran the rpi-basic-image with no problem, end=
ing up with a usable console.
>>
>>
>> Looking for any help here, I'm thinking I've missed adding a package, or=
 some type of local.conf instruction. any suggestions would be appreciated.=
............
>
> Can you send the content of /var/log/Xorg.log file ?


--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



--_000_SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200SG2PR0301MB2016_
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
<p>Thanks Gary, <br>
</p>
<p><br>
</p>
<p>You where spot on! I have now been able to SSH into the rpi and have pos=
ted the Xorg.log file to the mailing list.</p>
<p><br>
</p>
<p>I think Xorg is failing to load correctly because it cannot find the evd=
ev module. Looking into how to fix this now......</p>
<p><br>
</p>
<div id=3D"Signature">Regards, Steve. </div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" colo=
r=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Gary Thomas=
 &lt;gary@mlbassoc.com&gt;<br>
<b>Sent:</b> Friday, 10 March 2017 5:42 a.m.<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 2017-03-10 01:55, Steve Plant wrote:<br>
&gt; OK, I have spent the last day googling my heart out trying to find the=
 Xorg.log file without any luck.<br>
&gt;<br>
&gt;<br>
&gt; The problem is that due to the rpi hanging on boot, the only way I can=
 access the SD card to look for the file is place<br>
&gt; it in a USB SD card reader and use my VirtualBox based Debian to &quot=
;ls&quot; directores etc.<br>
&gt;<br>
&gt; Having established that there is no file located at /var/log/Xorg.log =
(there isn't a log directory) but there is a<br>
&gt; symbolic link in the var directory - goes nowhere.<br>
&gt;<br>
&gt;<br>
&gt; After goggling I discovered that the file could also be in the ~/.loca=
l/share/xorg/Xorg.0.log, however if I try to look<br>
&gt; there I get &quot;permission denied&quot; and cannot seem to get to th=
e root directory of the card and I can't find a way around<br>
&gt; this as I'm trying to access this directory through the USB card reade=
r.<br>
&gt;<br>
&gt;<br>
&gt; Looked everywhere with no answers, Is there anyone who could help me h=
ere??<br>
<br>
/var/log is on a volatile file system (i.e. it does not live on the SD card=
)<br>
<br>
If you can get into your board via SSH, you can copy the file and send it<b=
r>
<br>
&gt; ----------------------------------------------------------------------=
--------------------------------------------------<br>
&gt; *From:* Khem Raj &lt;raj.khem@gmail.com&gt;<br>
&gt; *Sent:* Wednesday, 8 March 2017 5:17 p.m.<br>
&gt; *To:* Steve Plant<br>
&gt; *Cc:* yocto@yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.<br>
&gt;<br>
&gt; On 17-03-08 12:40:51, Steve Plant wrote:<br>
&gt;&gt; Hi All,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Very new to all this linux world, and especially Yocto.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I'm working on a embedded project at the moment using a raspberry =
pi2 board.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have used toaster with Morty 2.2 to compile an image using&quot;=
rpi-basic-image&quot;, to this I have added the following bitbake variables=
:<br>
&gt;&gt;<br>
&gt;&gt; Bitbake variables<br>
&gt;&gt;<br>
&gt;&gt; DISTRO<br>
&gt;&gt; poky<br>
&gt;&gt; DL_DIR<br>
&gt;&gt; /home/steve/poky/downloads<br>
&gt;&gt; IMAGE_FSTYPES<br>
&gt;&gt; ext3 jffs2 tar.bz2 rpi-sdimg<br>
&gt;&gt; IMAGE_INSTALL_append<br>
&gt;&gt; packagegroup-core-x11-base packagegroup-lxde-base connman<br>
&gt;&gt; PACKAGE_CLASSES<br>
&gt;&gt; package_rpm<br>
&gt;&gt; SSTATE_DIR<br>
&gt;&gt; /home/steve/poky/sstate-cache<br>
&gt;&gt;<br>
&gt;&gt; DISABLE_OVERSCAN<br>
&gt;&gt; 1<br>
&gt;&gt; GPU_MEM_1024<br>
&gt;&gt; 512<br>
&gt;&gt;<br>
&gt;&gt; I have dd'ed the image to an SD card increased the sdb2 partition =
to the max size and powered up the rpi. Everything looks fine to start with=
, as it displays the four raspberrys in the top left, then the white &quot;=
Yocto Project&quot; splash screen complete with
 small blue dot to the side appears, the progress bar moves across to 100 p=
ercent, then the screen turns black with a white<br>
&gt; cursor in the middle and it appears to freeze with only a very dim one=
 second flash of the &quot;act&quot; led.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have then connected the 7&quot; touchscreen and apart from the a=
dded multicolored square at the very beginning I get the exact same boot up=
 problem, hangs on the black screen with white cursor (good to see its all =
resized correctly for the TfT through!!)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Before adding the packagegroup-core-x11-base and packagegroup-lxde=
-base I successfully copied over and ran the rpi-basic-image with no proble=
m, ending up with a usable console.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Looking for any help here, I'm thinking I've missed adding a packa=
ge, or some type of local.conf instruction. any suggestions would be apprec=
iated.............<br>
&gt;<br>
&gt; Can you send the content of /var/log/Xorg.log file ?<br>
<br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; Consulting for the<br>
MLB Associates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a previewremoved=3D"true" id=3D"LPlnk708528" href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
<div style=3D"margin-bottom: 20px; overflow: auto; width: 100%; text-indent=
: 0px;" id=3D"LPBorder_GT_14891524540550.31978314925188456">
<table style=3D"width: 90%; background-color: rgb(255, 255, 255); position:=
 relative; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-=
top: 20px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px do=
tted rgb(200, 200, 200);" id=3D"LPContainer_14891524540480.4284351575993793=
3" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td colspan=3D"2" style=3D"vertical-align: top; position: relative; padding=
: 0px; display: table-cell;" id=3D"TextCell_14891524540490.5647668204399955=
">
<div id=3D"LPRemovePreviewContainer_14891524540490.1869207947217919"></div>
<div id=3D"LPExpandDescriptionContainer_14891524540490.06712994963910701"><=
/div>
<div style=3D"top: 0px; color: rgb(0, 120, 215); font-weight: 400; font-siz=
e: 21px; font-family: &quot;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&qu=
ot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Ta=
homa,Arial,sans-serif; line-height: 21px;" id=3D"LPTitle_14891524540490.126=
3865818643981">
<a target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"text-decoration: none;" id=3D"LPUrlAnchor_14891524540510.73960256=
2840772">yocto Info Page</a></div>
<div style=3D"margin: 10px 0px 16px; color: rgb(102, 102, 102); font-weight=
: 400; font-family: &quot;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&qu=
ot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font-size: 14px; line-height: 14=
px;" id=3D"LPMetadata_14891524540510.16456307941279003">
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
_14891524540520.39715364706669276">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_SG2PR0301MB20164F99A2AF83AFC01ECDCFD1200SG2PR0301MB2016_--
