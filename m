Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E2AE009D4; Sun, 17 May 2015 23:02:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC2CE00830
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 23:01:58 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Mon, 18 May 2015 10:56:21 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Mon, 18 May 2015 10:56:20 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Mon, 18 May 2015 10:56:15 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with ADT when we use the extrcted rootfile system
Thread-Index: AQHQkSpCYyFano73ME6rrRGw5BSitw==
Date: Mon, 18 May 2015 05:26:14 +0000
Message-ID: <1431926774578.12916@inedasystems.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.55]
MIME-Version: 1.0
Cc: Ramakrishna Chatram <Ramakrishna.Chatram@inedasystems.com>
Subject: Issue with ADT when we use the extrcted rootfile system
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
X-List-Received-Date: Mon, 18 May 2015 06:02:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143192677457812916inedasystemscom_"

--_000_143192677457812916inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I have some issues with the ADT while building example autotool project whe=
n I extracted the rootfs using the "runqemu-extract-sdk" and give extracted=
 directory path to ADT sysroot path.


But while building the same application in ADT by giving the sysroot path t=
o actual sysroot path i.e "~/poky/build/tmp/sysroot/machine-name".


Could you please let me know is the way what i am doing is recommended or n=
ot.


If not please tell me the why i am getting the errors while building the ap=
plication using the extracted sysroot.


Thanks in advance.


Regards,

Raghavendra K.

--_000_143192677457812916inedasystemscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, 166, 1=
66) solid;font-family:'Segoe UI','Segoe WP','Segoe UI WPC',Tahoma,Arial,san=
s-serif;font-size:10pt;color:rgb(51, 51, 51);} .ms-cui-menusection-title {d=
isplay:none;} .ms-cui-ctl {vertical-align:text-top;text-decoration:none;col=
or:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rgb(205, 230, 247);op=
acity: 0.8;} .ms-cui-img-cont-float {display:inline-block;margin-top:2px} .=
ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-option-icon {margin: 0p=
x 6px 0px 6px;vertical-align:middle!important;padding-bottom: 2px;display:i=
nline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(205, 23=
0, 247) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {paddin=
g:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; width:85p=
x;height:24px;overflow:hidden}.wf {speak:none; font-weight:normal; font-var=
iant:normal; text-transform:none; -webkit-font-smoothing:antialiased; verti=
cal-align:middle; display:inline-block;}.wf-family-owa {font-family:'o365Ic=
ons'}@font-face {  font-family:'o365IconsIE8';  src:url('prem/15.0.995.29/r=
esources/styles/office365icons.ie8.eot?#iefix') format('embedded-opentype')=
,         url('prem/15.0.995.29/resources/styles/office365icons.ie8.woff') =
format('woff'),         url('prem/15.0.995.29/resources/styles/office365ico=
ns.ie8.ttf') format('truetype');  font-weight:normal;  font-style:normal;}@=
font-face {  font-family:'o365IconsMouse';  src:url('prem/15.0.995.29/resou=
rces/styles/office365icons.mouse.eot?#iefix') format('embedded-opentype'), =
        url('prem/15.0.995.29/resources/styles/office365icons.mouse.woff') =
format('woff'),         url('prem/15.0.995.29/resources/styles/office365ico=
ns.mouse.ttf') format('truetype');  font-weight:normal;  font-style:normal;=
}.wf-family-owa {font-family:'o365IconsMouse'}.ie8 .wf-family-owa {font-fam=
ily:'o365IconsIE8'}.ie8 .wf-owa-play-large:before {content:'\e254';}.notIE8=
 .wf-owa-play-large:before {content:'\e054';}.ie8 .wf-owa-play-large {color=
:#FFFFFF/*$WFWhiteColor*/;}.notIE8 .wf-owa-play-large {border-color:#FFFFFF=
/*$WFWhiteColor*/; width:1.4em; height:1.4em; border-width:.1em; border-sty=
le:solid; border-radius:.8em; text-align:center; box-sizing:border-box; -mo=
z-box-sizing:border-box; padding:0.1em; color:#FFFFFF/*$WFWhiteColor*/;}.ie=
8 .wf-size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-=
size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-owa-tr=
iangle-down-small:before {content:'\e052';}.ie8 .wf-owa-triangle-down-small=
:before { content:'\e052';}.ie8 .wf-owa-triangle-down-small {color:#666666/=
*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px!important;}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>I have some issues with the ADT while building&nbsp;example&nbsp;autotoo=
l&nbsp;project when I extracted the rootfs using the &quot;runqemu-extract-=
sdk&quot; and&nbsp;give extracted directory&nbsp;path to&nbsp;ADT&nbsp;sysr=
oot&nbsp;path.
</p>
<p><br>
</p>
<p>But while building the same application in ADT by giving the sysroot pat=
h to actual sysroot path i.e &quot;~/poky/build/tmp/sysroot/machine-name&qu=
ot;.</p>
<p><br>
</p>
<p>Could you please let me know&nbsp;is the way what i am doing is recommen=
ded or not.</p>
<p><br>
</p>
<p>If not please tell me the why i am getting the errors while building the=
 application using the extracted sysroot.</p>
<p><br>
</p>
<p>Thanks in advance.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
</body>
</html>

--_000_143192677457812916inedasystemscom_--
