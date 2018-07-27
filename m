Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65065E00874; Fri, 27 Jul 2018 15:36:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.150.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F107E006F1
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 15:36:01 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx27.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 27 Jul 2018 22:35:58 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 27 Jul 2018 15:20:51 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 27 Jul 2018 15:20:51 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel configuration problems
Thread-Index: AdQl83+2wf7UcfbhTUCg0nogyDuDZg==
Date: Fri, 27 Jul 2018 22:20:51 +0000
Message-ID: <b33f8ef62bed47b3b9caee0478c376e8@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1532730958-637137-27403-170258-1
X-BESS-VER: 2018.9-r1807242345
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Envelope-From: GWilson@sakuraus.com
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.196626
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-Orig-Rcpt: yocto@yoctoproject.org
X-BESS-BRTS-Status: 1
Subject: Kernel configuration problems
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
X-List-Received-Date: Fri, 27 Jul 2018 22:36:02 -0000
X-Groupsio-MsgNum: 41979
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_";
	type="multipart/alternative"

--_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_"

--_000_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to add a couple of drivers to the kernel in a Raspberry pi3 buil=
d.



I've got the passing of the config options working, but I'm getting warning=
s from the kernel build that the options are not being applied:





WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 do_kernel_conf=
igcheck: [kernel config]: specified values did not make it into the kernel'=
s final configuration:

---------- CONFIG_SND_SOC_MAX9768 -----------------
Config: CONFIG_SND_SOC_MAX9768
From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
Actual value:

Config 'SND_SOC_MAX9768' has the following conditionals:

Dependency values are:


---------- CONFIG_MAX1363 -----------------
Config: CONFIG_MAX1363
From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_MAX1363=3Dm
Actual value:     # CONFIG_MAX1363 is not set

Config 'MAX1363' has the following conditionals:
  I2C (value: "y")
Dependency values are:
  I2C [y]


My problem is that I don't understand why the options are not being applied=
.

For the MAX_9768, it depends on I2C=3Dy which is true. I've run the linux k=
ernel menu config and when I get to the Sound SOC support none of the drive=
rs that require I2C support (i.e. 'select SND_SOC_MAX9768 if I2C') are disp=
layed. I don't see anything else that would disable them, the other drivers=
 in the SOC Kconfig that don't depend on I2C or that depend on SPI_MASTER a=
re displayed.

The MAX1363 can be set in the menuconfig to 'm', but still won't set from t=
he scc, cfg files.



Any insight into what's going on here would be greatly appreciated.

Regards,




Greg Wilson-Lindberg


Principal Firmware Engineer | Sakura Finetek USA, Inc.





1750 W 214th Street | Torrance, CA 90501 | U.S.A.


T: +1 310 783 5075


F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>


www.sakuraus.com<http://www.sakuraus.com>





[cid:image002.png@01D35D7D.179A7510]


[cid:image003.png@01D35D7D.179A7510]



________________________________


Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.






--_000_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<div style=3D"">
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">I'm t=
rying to add a couple of drivers to the kernel in a Raspberry pi3 build.</s=
pan></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">&nbsp=
;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">I've =
got the passing of the config options working, but&nbsp;I'm getting warning=
s from the kernel build that the options are not being applied:</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">&nbsp=
;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">&nbsp=
;</p>
<div>WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067-r0 d=
o_kernel_configcheck: [kernel config]: specified values did not make it int=
o the kernel's final configuration:</div>
<div><br>
</div>
<div>---------- CONFIG_SND_SOC_MAX9768 -----------------</div>
<div>Config: CONFIG_SND_SOC_MAX9768</div>
<div>From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tm=
p/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</d=
iv>
<div>Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;</div>
<div><br>
</div>
<div>Config 'SND_SOC_MAX9768' has the following conditionals:&nbsp;</div>
<div>&nbsp;&nbsp;</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp;</div>
<div><br>
</div>
<div>---------- CONFIG_MAX1363 -----------------</div>
<div>Config: CONFIG_MAX1363</div>
<div>From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tm=
p/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</d=
iv>
<div>Requested value:&nbsp; CONFIG_MAX1363=3Dm</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set</div>
<div><br>
</div>
<div>Config 'MAX1363' has the following conditionals:&nbsp;</div>
<div>&nbsp; I2C (value: &quot;y&quot;)</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp; I2C [y]</div>
<div><br>
</div>
<div><br>
</div>
<div>My problem is that I don't understand why the options are not being ap=
plied.</div>
<div><br>
</div>
<div>For the MAX_9768, it depends on I2C=3Dy which is true. I've run the li=
nux kernel menu config and when I get to the Sound SOC support none of the =
drivers that require I2C support (i.e. '<span>select SND_SOC_MAX9768 if I2C=
') are displayed. I don't see anything
 else that would disable them, the other drivers in the SOC Kconfig that do=
n't depend on I2C or that depend on SPI_MASTER are displayed.</span></div>
<div><span><br>
</span></div>
<div><span>The&nbsp;<span style=3D"font-family: Arial, sans-serif; font-siz=
e: 14.6667px;">MAX1363 can be set in the menuconfig to 'm', but still won't=
 set from the scc,&nbsp;cfg files.</span></span></div>
</span>
<p></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">&nbsp=
;</span></p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">Any i=
nsight&nbsp;into what's going on here would be greatly appreciated.</span><=
/p>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif; color:black">Regar=
ds,</span></p>
<span style=3D""></span><span style=3D""></span><span style=3D""></span><sp=
an style=3D""></span><span style=3D""></span><span style=3D""></span><span =
style=3D""></span><span style=3D""></span><span style=3D""></span><span sty=
le=3D""></span><span style=3D""></span><span style=3D""></span>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"97%" style=3D"width:97.66%">
<tbody>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<a name=3D"_MailAutoSig"><span style=3D"font-size:12.0pt; line-height:105%;=
 font-family:&quot;Times New Roman&quot;,serif; color:black"><img naturalhe=
ight=3D"0" naturalwidth=3D"0" width=3D"36" height=3D"7" id=3D"Picture_x0020=
_1" alt=3D"cid:image001.png@01D35D7D.179A7510" style=3D"user-select: none;"=
 src=3D"cid:image001.png@01D425B9.29231710"></span></a></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
; color:#0089D1">Greg Wilson-Lindberg&nbsp;
</span></b></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
; color:#58595B">Principal Firmware Engineer | Sakura Finetek USA, Inc.&nbs=
p;
</span></b></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><b><span style=3D"font-size:10.5pt; line-height:105%; font=
-family:&quot;Arial&quot;,sans-serif; color:#58595B">&nbsp;</span></b></spa=
n></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:10.0pt; line-height:105%; font-fa=
mily:&quot;Arial&quot;,sans-serif; color:#58595B">1750 W 214<sup>th</sup> S=
treet | Torrance, CA 90501 | U.S.A.&nbsp;
</span></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span lang=3D"DE" style=3D"font-size:10.0pt; line-height:1=
05%; font-family:&quot;Arial&quot;,sans-serif; color:#58595B">T: &#43;1 310=
 783 5075&nbsp;
</span></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span lang=3D"DE" style=3D"font-size:10.0pt; line-height:1=
05%; font-family:&quot;Arial&quot;,sans-serif; color:#58595B">F: &#43;1 310=
 618 6902 | E:&nbsp;</span></span><span style=3D""></span><a href=3D"mailto=
:gwilson@sakuraus.com" style=3D"color: rgb(5, 99, 193); text-decoration: un=
derline;"><span style=3D""><span lang=3D"DE" style=3D"color:#0563C1">gwilso=
n</span></span><span style=3D""><span lang=3D"DE" style=3D"font-size:10.0pt=
; line-height:105%; font-family:&quot;Arial&quot;,sans-serif; color:#0563C1=
">@sakuraus.com</span></span><span style=3D""></span></a><span style=3D""><=
span lang=3D"DE" style=3D"font-size:10.0pt; line-height:105%; font-family:&=
quot;Arial&quot;,sans-serif; color:#58595B"><span style=3D"">&nbsp;&nbsp;
</span>&nbsp;&nbsp; </span></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""></span><a href=3D"http://www.sakuraus.com" style=3D"color:=
 rgb(5, 99, 193); text-decoration: underline;"><span style=3D""><span style=
=3D"font-size:10.0pt; line-height:105%; font-family:&quot;Arial&quot;,sans-=
serif; color:#0089D1; text-decoration:none">www.sakuraus.com</span></span><=
span style=3D""></span></a><span style=3D""><span style=3D"font-size:10.0pt=
; line-height:105%; font-family:&quot;Arial&quot;,sans-serif; color:#0089D1=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:9.0pt; line-height:105%; font-fam=
ily:&quot;Arial&quot;,sans-serif; color:#58595B">&nbsp;</span></span></p>
</td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in"><span style=3D""></span><span style=
=3D""></span>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%; margin-bottom:5=
.75pt">
<tbody>
<tr style=3D"">
<td valign=3D"bottom" style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:12.0pt; line-height:105%; font-fa=
mily:&quot;Times New Roman&quot;,serif; color:black"><img naturalheight=3D"=
0" naturalwidth=3D"0" border=3D"0" width=3D"188" height=3D"12" id=3D"Pictur=
e_x0020_2" alt=3D"cid:image002.png@01D35D7D.179A7510" style=3D"user-select:=
 none;" src=3D"cid:image002.png@01D425B9.29231710"></span></span></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60.0pt; padding:0in 0in 0=
in 0in">
<p align=3D"right" style=3D"text-align: right; line-height: 105%; margin: 0=
in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:12.0pt; line-height:105%; font-fa=
mily:&quot;Times New Roman&quot;,serif; color:black"><img naturalheight=3D"=
0" naturalwidth=3D"0" border=3D"0" width=3D"66" height=3D"64" id=3D"Picture=
_x0020_3" alt=3D"cid:image003.png@01D35D7D.179A7510" style=3D"user-select: =
none;" src=3D"cid:image003.png@01D425B9.29231710"></span></span></p>
</td>
</tr>
</tbody>
</table>
<span style=3D""></span></td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in"><span style=3D""></span>
<div align=3D"center" style=3D"text-align: center; line-height: 105%; margi=
n: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:12.0pt; line-height:105%; font-fa=
mily:&quot;Times New Roman&quot;,serif; color:black">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></span></div>
<span style=3D""></span></td>
</tr>
<tr style=3D"">
<td style=3D"padding:0in 0in 0in 0in">
<p style=3D"line-height: 105%; margin: 0in 0in 0.0001pt; font-size: 11pt; f=
ont-family: Calibri, sans-serif;">
<span style=3D""><span style=3D"font-size:7.0pt; line-height:105%; font-fam=
ily:&quot;Arial&quot;,sans-serif; color:#58595B">Confidentiality Notice: Th=
is e-mail transmission may contain confidential or legally privileged infor=
mation that is intended only for the individual
 or entity named in the e-mail address. If you are not the intended recipie=
nt, you are hereby notified that any disclosure, copying, distribution, or =
reliance upon the contents of this e-mail is strictly prohibited. If you ha=
ve received this e-mail transmission
 in error, please reply to the sender, so that Sakura Finetek USA, Inc. can=
 arrange for proper delivery, and then please delete the message from your =
inbox. Thank you.</span></span><span style=3D""><span style=3D"font-size:7.=
0pt; line-height:105%; font-family:&quot;Arial&quot;,sans-serif; color:#585=
95B"></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
<span style=3D""><span style=3D"color:black">&nbsp;</span></span></p>
<span style=3D""></span>
<p style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri=
, sans-serif;">
&nbsp;</p>
</div>
</div>
</body>
</html>

--_000_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_--

--_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=949;
	creation-date="Fri, 27 Jul 2018 21:50:30 GMT";
	modification-date="Fri, 27 Jul 2018 21:50:30 GMT"
Content-ID: <image001.png@01D425B9.29231710>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAACQAAAAHCAYAAABgOO8AAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MzVGQUUxQUI3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MzVGQUUxQUE3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgTWFjaW50b3NoIj4gPHht
cE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0OEM0Q0YzMTFF
NzkwRTZGNDNENDJEOEY5RTEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0OEQ0Q0Yz
MTFFNzkwRTZGNDNENDJEOEY5RTEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94
OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5STp/zAAAAJUlEQVR42mK8LW39n2EQASaGQQYG
nYMY////PxpCow6iBAAEGACEIQU6y9MNmAAAAABJRU5ErkJggg==

--_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=1916;
	creation-date="Fri, 27 Jul 2018 21:50:30 GMT";
	modification-date="Fri, 27 Jul 2018 21:50:30 GMT"
Content-ID: <image002.png@01D425B9.29231710>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAALwAAAAMCAYAAADYg9feAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1
Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOklu
c3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0ODg0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0ODk0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RjRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk4MDRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjV7eI0AAAPqSURBVHja7FnLkZtAEJ1VbQLs
2b6wBweA7/aBDUGEACGgEKQQIAQRAhwcgLnbB83FdxGCPKhe1z7PDgNoWa/sUld1iYH5vH7d09Og
ux8fvqiFZW10a/QR7ZPRxGilrkuuCRdz1l/vjd4tNHc/b/4Oti5h06iPPv36NmvC1RsYGhgNqb0x
qtX1yTXhYs40sC0lfbDvjDbvaFPwynkWEwn4HliNHfXdaEyL9TvzCN3S2APa8iyGFrQ7FRm9xhoy
5kDrnPBcOdqC7QhsPN9pYEyEvieMdZEWjtjCmPeYq7Ac4eLmaPXbYw5l2V4QB0OcScAO8Z/j92Q9
4z4yRzzBn7llv0hNa4l9wUybFO7ZvvfZqCbwrX5+/Lo1ejR6wHWN64L67Pv7KzKolyejHYGtQX6C
rJPSQiECIjPaYkyLbCJzKYyJADjGdYJMVnh2cmBhkzG1Z+cHFGQtYSgcfQXXkC2KMHd4xmOGuKks
Z8bIrjn6bKAxxtucRegngZBj7czBf07z5YRNEWeKMvyYP/s5SsfJF9NaGZUrU21i/9i+99lob7oX
2E0QC4YM99fE+Qs/3BPIBEA1AKxB4GfcF8ApHbk7ODiAAR2RNXSEJugXDgSiTXQI0jT04MhAvuM0
m3gs2rawZLRxZPMOcSNOC6EB5q0RTCX1d3GWWpuypBqWg5wxS6aNCI+ia41nU/y5G+GHcXQzbcoc
vh+zUVGidGHvpTS1fIVMLhj6dmraf/hhRYHB5HCQMIGdddxeIt2MvlzX8u8YhgT4a5Q20cL1aejh
psE1ZxqNZ5w59cR1tLVG8Eouff70zdc6cMy1qbvAxjHsTgxmA9h+aM09vXIEUYRA6RzBFf6FF73A
QWAwsAGGxkc4FR6x04uFMeoRbqSsWdNJpx39pySHYCH+9Sv9GVjX+kKbLrHRh901XtHpElPiUfeU
gbY4WnI6hqXW2mGi1HPkucqRZoYz1vhNLcCCQbBpqz5LrQzeoV9IJcrSm7QZ4aaid42S7qXkpHyA
Mxa2Wc3kfy7mKZ83JdhzsmuuTWqmjeFILIYoXTS9EyjifM9l6T2VAAWc1NDLzhPd144ar3McVUJs
v9CD5yjrrBq5wJiKDHRhe6J1SjxrBsak1surD0Pnueca4+NGjtOW+m8QLFuqfWMHZ5n16ZTfKcoB
/sdKkm6mP11SAbskww1tgDk22ev4bJTN0HqwBxQ7HdYNrfdIbcqZczl09wZ/PN3k/5MTAq65Qmzn
r2gS0CbTn7/emPYD2v1Hjsq0N5zhb3KTf1XOJa0J7IzaFb7ORFQSnWV14+smEySxvpBck2Tq+f+Z
vXr+pzpCeyfZv5ffAgwAvCfP5+7+KRkAAAAASUVORK5CYII=

--_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=3012;
	creation-date="Fri, 27 Jul 2018 21:50:30 GMT";
	modification-date="Fri, 27 Jul 2018 21:50:30 GMT"
Content-ID: <image003.png@01D425B9.29231710>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEIAAABDCAYAAAAoCNNNAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MEY0Q0M1RkE3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MEY0Q0M1Rjk3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RDRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk3RTRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PrnG8fYAAAgySURBVHja7FsLlA5VHL8fu2RZ
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

--_006_b33f8ef62bed47b3b9caee0478c376e8sakurauscom_--
