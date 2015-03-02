Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF0FE00871; Mon,  2 Mar 2015 04:40:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Mar 2015 04:40:19 PST
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E67A0E00867
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 04:40:19 -0800 (PST)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EDGE-02.invecas.local (10.0.30.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 2 Mar 2015 18:09:54 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Mon, 2 Mar 2015 18:09:03 +0530
Received: from SOC-EXCH-02.invecas.local ([fe80::99f5:2524:170c:1d9e]) by
	SOC-EXCH-02.invecas.local ([fe80::99f5:2524:170c:1d9e%17]) with mapi id
	15.00.0995.028; Mon, 2 Mar 2015 18:09:03 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Index: AQHQVOKnEdHQ5xtig0SwR9HOdEOjuw==
Date: Mon, 2 Mar 2015 12:39:03 +0000
Message-ID: <1425299943857.67146@inedasystems.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.55]
MIME-Version: 1.0
Subject: (No subject)
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
X-List-Received-Date: Mon, 02 Mar 2015 12:40:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_142529994385767146inedasystemscom_"

--_000_142529994385767146inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Yocto Team,


Now I am working on the yocto sdk generation.


I am generated the yocto SDK using the yocto sdk script "bitbake core-image=
-minimal -c populate_sdk" command. With this command I am able to generte t=
he installation script file and .manifest file.


I run the installation script file. After running installation script file =
it propts that following message:


Extracting SDK...done
Setting it up...done
SDK has been successfully set up and is ready to be used.



After this i run the ". /opt/poky/1.7/environment-setup-mips32rel-poky-linu=
x" and echo $PATH i got the correct path.


After this i built wrote a small example and try to build with the sdk gene=
rated toolchain by running following command:


mipsel-poky-linux-gcc test.c


but i got the following errors:

***************************************************************************=
***********************************************************************

/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crt1.o: No such file or director=
y
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crti.o: No such file or director=
y
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtbegin.o: No such file or dire=
ctory
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lc
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtend.o: No such file or direct=
ory
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtn.o: No such file or director=
y
collect2: error: ld returned 1 exit status


***************************************************************************=
***************************************************************************=
*****

Please help me to resolving this issue.


Thanks in advance.


Cheers,


Raghavendra Kakarla.



--_000_142529994385767146inedasystemscom_
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
<p>Hi Yocto Team,</p>
<p><br>
</p>
<p>Now I am working on the yocto sdk generation.</p>
<p><br>
</p>
<p>I am generated the yocto SDK using the yocto sdk script &quot;bitbake co=
re-image-minimal -c populate_sdk&quot; command. With this command I am able=
 to generte the installation script file and .manifest file.</p>
<p><br>
</p>
<p>I run the installation script file. After running installation script fi=
le it propts that following message:</p>
<p><br>
</p>
<p>Extracting SDK...done<br>
Setting it up...done<br>
SDK has been successfully set up and is ready to be used.</p>
<p><br>
</p>
<p><br>
</p>
<p>After this i run the &quot;. /opt/poky/1.7/environment-setup-mips32rel-p=
oky-linux&quot; and echo $PATH i got the correct path.</p>
<p><br>
</p>
<p>After this i built wrote a small example and try to build with the sdk g=
enerated toolchain by running following command:</p>
<p><br>
</p>
<p>mipsel-poky-linux-gcc test.c</p>
<p><br>
</p>
<p>but i got the following errors:</p>
<p>************************************************************************=
**************************************************************************<=
br>
</p>
<p>/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linu=
x/gcc/mipsel-poky-linux/4.9.1/ld: cannot find crt1.o: No such file or direc=
tory<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crti.o: No such file or director=
y<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtbegin.o: No such file or dire=
ctory<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lc<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtend.o: No such file or direct=
ory<br>
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtn.o: No such file or director=
y<br>
collect2: error: ld returned 1 exit status<br>
</p>
<p><br>
</p>
<p>************************************************************************=
***************************************************************************=
********</p>
<p>Please help me to resolving this issue.</p>
<p><br>
</p>
<p>Thanks in advance.</p>
<p><br>
</p>
<p>Cheers,</p>
<p><br>
</p>
<p>Raghavendra Kakarla.<br>
</p>
<p><br>
</p>
<p><br>
</p>
</body>
</html>

--_000_142529994385767146inedasystemscom_--
