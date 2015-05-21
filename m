Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5F9CE0096A; Wed, 20 May 2015 22:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C067AE005B9
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 22:10:53 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Thu, 21 May 2015 10:40:50 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Thu, 21 May 2015 10:40:42 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Thu, 21 May 2015 10:40:42 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: =?iso-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Usage of apt-get package in yocto
Thread-Index: AQHQktqnOHeXTyFWeUSbAETCqs/IvZ2EpDIAgAE85R4=
Date: Thu, 21 May 2015 05:10:41 +0000
Message-ID: <1432185017343.69879@inedasystems.com>
References: <1432112441117.48793@inedasystems.com>,
	<555CAA84.30805@linux.intel.com>
In-Reply-To: <555CAA84.30805@linux.intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Re: Usage of apt-get package in yocto
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
X-List-Received-Date: Thu, 21 May 2015 05:10:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143218501734369879inedasystemscom_"

--_000_143218501734369879inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alimon,


After adding the lines what you mentioned in the local.conf file and tried =
to get the git packages with "apt-get " it also give the error but this tim=
e it is different. It gives the error "unable to locate package git".


I have a doubt here, when I run the apt-get in yocto distribution where it =
can get the given package.


Could you please clarify it.


Thnaks in advance.


Regards,

Raghavendra K.

________________________________
From: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
Sent: Wednesday, May 20, 2015 9:08 PM
To: Raghavendra Kakarla; yocto@yoctoproject.org
Subject: Re: [yocto] Usage of apt-get package in yocto


Hi Raghavendra,

On 20/05/15 04:01, Raghavendra Kakarla wrote:

Hi,


I have some requirement with apt-get in yocto genearted rootfs.


I built the yocto source code with enabling the apt package.


But after booting the image on my machine and run the "apt-get" command for=
 installing some package it gives the following error.


Could not open the file /var/lib/dpkg/status open(2: no such a file or dire=
ctory).

The package lists or status files could not be parsed or opened.

This error is because you need to add package-management to EXTRA_IMAGE_FEA=
TURES in local.conf,

PACKAGE_CLASSES ?=3D "package_deb"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management"

Regards,
    alimon


Could you please help me for resolving this issue.


Regards,

Raghavendra K.






--_000_143218501734369879inedasystemscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, 166, 1=
66) solid;font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,san=
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
<p>Hi Alimon,</p>
<p><br>
</p>
<p>After adding the lines what you mentioned in the local.conf file and tri=
ed to get the git packages with &quot;apt-get &quot; it also give the error=
 but this time it is different. It gives the error &quot;unable to locate p=
ackage git&quot;.</p>
<p><br>
</p>
<p>I have a doubt here, when I run the apt-get in yocto distribution where =
it can get the given package.</p>
<p><br>
</p>
<p>Could you please clarify it.</p>
<p><br>
</p>
<p>Thnaks in advance.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> An=EDbal Lim=F3n &lt=
;anibal.limon@linux.intel.com&gt;<br>
<b>Sent:</b> Wednesday, May 20, 2015 9:08 PM<br>
<b>To:</b> Raghavendra Kakarla; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Usage of apt-get package in yocto</font>
<div>&nbsp;</div>
</div>
<div><br>
Hi Raghavendra,<br>
<br>
<div class=3D"moz-cite-prefix">On 20/05/15 04:01, Raghavendra Kakarla wrote=
:<br>
</div>
<blockquote type=3D"cite">
<pre>Hi,=0A=
=0A=
=0A=
I have some requirement with apt-get in yocto genearted rootfs.=0A=
=0A=
=0A=
I built the yocto source code with enabling the apt package.=0A=
=0A=
=0A=
But after booting the image on my machine and run the &quot;apt-get&quot; c=
ommand for installing some package it gives the following error.=0A=
=0A=
=0A=
Could not open the file /var/lib/dpkg/status open(2: no such a file or dire=
ctory).=0A=
=0A=
The package lists or status files could not be parsed or opened.</pre>
</blockquote>
This error is because you need to add package-management to EXTRA_IMAGE_FEA=
TURES in local.conf,<br>
<br>
PACKAGE_CLASSES ?=3D &quot;package_deb&quot;<br>
EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks package-management&quot;<br>
<br>
Regards,<br>
&nbsp;&nbsp;&nbsp; alimon<br>
<blockquote type=3D"cite">
<pre>=0A=
Could you please help me for resolving this issue.=0A=
=0A=
=0A=
Regards,=0A=
=0A=
Raghavendra K.=0A=
=0A=
</pre>
<br>
<fieldset class=3D"mimeAttachmentHeader"></fieldset> <br>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_143218501734369879inedasystemscom_--
