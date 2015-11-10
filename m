Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B58F9E00A9B; Mon,  9 Nov 2015 19:08:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8617DE00A81
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 19:08:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tAA38XvW015835
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 9 Nov 2015 19:08:33 -0800
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Mon, 9 Nov 2015 19:08:32 -0800
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1447065096992.47595@inedasystems.com>
	<1447070120093.83542@inedasystems.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <56415FAD.3010200@windriver.com>
Date: Tue, 10 Nov 2015 11:08:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1447070120093.83542@inedasystems.com>
X-Originating-IP: [128.224.163.137]
Subject: Re: LTP tests
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
X-List-Received-Date: Tue, 10 Nov 2015 03:08:40 -0000
Content-Type: multipart/alternative;
	boundary="------------050006040200090605010803"

--------------050006040200090605010803
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Raghavendra,

There is a wiki page for LTP results: 
https://wiki.yoctoproject.org/wiki/LTP_result
You could check it as a reference.

Thanks,
Yi


在 2015年11月09日 19:55, Raghavendra Kakarla 写道:
>
> Hi All,
>
>
> I built the ltp_20150119 in the yocto build system.
>
>
> But  while running the test cases, some tests are failed.
>
>
> I am attaching the document for that failed test cases to this mail.
>
>
>
> Please confirm me these test cases are failed due to the yocto rfs 
> or kernel.
>
>
> Thanks in advance.
>
>
> Regards,
>
> Raghavendra K.
>
>
>


--------------050006040200090605010803
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Type=
">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hi Raghavendra,<br>
    <br>
    There is a wiki page for LTP results:
    <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoctoproject.or=
g/wiki/LTP_result">https://wiki.yoctoproject.org/wiki/LTP_result</a><br>
    You could check it as a reference.<br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2015=E5=B9=B411=E6=9C=8809=E6=
=97=A5 19:55, Raghavendra
      Kakarla =E5=86=99=E9=81=93:<br>
    </div>
    <blockquote cite=3D"mid:1447070120093.83542@inedasystems.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;ma=
rgin-bottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, =
166, 166) solid;font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Ari=
al,sans-serif;font-size:10pt;color:rgb(51, 51, 51);} .ms-cui-menusection-ti=
tle {display:none;} .ms-cui-ctl {vertical-align:text-top;text-decoration:no=
ne;color:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rgb(205, 230, 2=
47);opacity: 0.8;} .ms-cui-img-cont-float {display:inline-block;margin-top:=
2px} .ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-option-icon {marg=
in: 0px 6px 0px 6px;vertical-align:middle!important;padding-bottom: 2px;dis=
play:inline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(2=
05, 230, 247) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {=
padding:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; wid=
th:85px;height:24px;overflow:hidden}.wf {speak:none; font-weight:normal; fo=
nt-variant:normal; text-tran
sform:none; -webkit-font-smoothing:antialiased; vertical-align:middle; disp=
lay:inline-block;}.wf-family-owa {font-family:'o365Icons'}@font-face {  fon=
t-family:'o365IconsIE8';  src:url('prem/15.0.995.29/resources/styles/office=
365icons.ie8.eot?#iefix') format('embedded-opentype'),         url('prem/15=
.0.995.29/resources/styles/office365icons.ie8.woff') format('woff'),       =
  url('prem/15.0.995.29/resources/styles/office365icons.ie8.ttf') format('t=
ruetype');  font-weight:normal;  font-style:normal;}@font-face {  font-fami=
ly:'o365IconsMouse';  src:url('prem/15.0.995.29/resources/styles/office365i=
cons.mouse.eot?#iefix') format('embedded-opentype'),         url('prem/15.0=
.995.29/resources/styles/office365icons.mouse.woff') format('woff'),       =
  url('prem/15.0.995.29/resources/styles/office365icons.mouse.ttf') format(=
'truetype');  font-weight:normal;  font-style:normal;}.wf-family-owa {font-=
family:'o365IconsMouse'}.ie8 .wf-family-owa {font-family:'o365IconsIE8'}.ie=
8 .wf-owa-play-large:bef
ore {content:'\e254';}.notIE8 .wf-owa-play-large:before {content:'\e054';}.=
ie8 .wf-owa-play-large {color:#FFFFFF/*$WFWhiteColor*/;}.notIE8 .wf-owa-pla=
y-large {border-color:#FFFFFF/*$WFWhiteColor*/; width:1.4em; height:1.4em; =
border-width:.1em; border-style:solid; border-radius:.8em; text-align:cente=
r; box-sizing:border-box; -moz-box-sizing:border-box; padding:0.1em; color:=
#FFFFFF/*$WFWhiteColor*/;}.ie8 .wf-size-play-large {width:40px; height:40px=
; font-size:30px}.notIE8 .wf-size-play-large {width:40px; height:40px; font=
-size:30px}.notIE8 .wf-owa-triangle-down-small:before {content:'\e052';}.ie=
8 .wf-owa-triangle-down-small:before { content:'\e052';}.ie8 .wf-owa-triang=
le-down-small {color:#666666/*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px=
!important;}
<!--
p
	{margin-top:0;
	margin-bottom:0}
.ms-cui-menu
	{background-color:#ffffff;
	border:1px rgb(166,166,166) solid;
	font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,sans-serif;
	font-size:10pt;
	color:rgb(51,51,51)}
.ms-cui-ctl
	{vertical-align:text-top;
	text-decoration:none;
	color:rgb(51,51,51)}
.ms-cui-ctl-on
	{background-color:rgb(205,230,247)}
.ms-cui-img-cont-float
	{display:inline-block;
	margin-top:2px}
.ms-cui-smenu-inner
	{padding-top:0px}
.ms-owa-paste-option-icon
	{margin:0px 6px 0px 6px;
	vertical-align:middle!important;
	padding-bottom:2px;
	display:inline-block}
.ms-rtePasteFlyout-option
	{padding:8px 4px 8px 4px;
	outline:none}
.ms-cui-menusection
	{float:left;
	width:85px;
	height:24px;
	overflow:hidden}
.wf
	{speak:none;
	font-weight:normal;
	font-variant:normal;
	text-transform:none;
	vertical-align:middle;
	display:inline-block}
.wf-family-owa
	{font-family:'o365Icons'}
@font-face
	{font-family:'o365IconsIE8';
	font-weight:normal;
	font-style:normal}
@font-face
	{font-family:'o365IconsMouse';
	font-weight:normal;
	font-style:normal}
.wf-family-owa
	{font-family:'o365IconsMouse'}
.ie8 .wf-family-owa
	{font-family:'o365IconsIE8'}
.notIE8 .wf-owa-play-large
	{border-color:#FFFFFF;
	width:1.4em;
	height:1.4em;
	border-width:.1em;
	border-style:solid;
	text-align:center;
	padding:0.1em;
	color:#FFFFFF}
.ie8 .wf-size-play-large
	{width:40px;
	height:40px;
	font-size:30px}
.notIE8 .wf-size-play-large
	{width:40px;
	height:40px;
	font-size:30px}
.wf-size-x20
	{font-size:20px!important}
-->
--></style>
      <div style=3D"font-size:12pt; color:#000000;
        background-color:#FFFFFF;
        font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr">
        <div>
          <p>Hi All,</p>
          <p><br>
          </p>
          <p>I built the ltp_20150119 in the yocto build system.</p>
          <p><br>
          </p>
          <p>But=C2=A0 while running the test cases, some tests are failed.=
</p>
          <p><br>
          </p>
          <p>I am attaching the document for that failed test cases to
            this mail.</p>
          <p><br>
          </p>
          <p><br>
            Please confirm me these test cases are failed due to the
            yocto rfs or=C2=A0kernel.</p>
          <p><br>
          </p>
          <p>Thanks in advance.</p>
          <p><br>
          </p>
          <p>Regards,</p>
          <p>Raghavendra K.<br>
          </p>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------050006040200090605010803--
