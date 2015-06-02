Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A60CE0094C; Mon,  1 Jun 2015 22:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49356E0086D
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 22:07:23 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Tue, 2 Jun 2015 10:37:21 +0530
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Tue, 2 Jun 2015 10:37:19 +0530
Received: from SOC-EXCH-01.invecas.local ([::1]) by SOC-EXCH-01.invecas.local
	([fe80::6180:8f13:4740:3577%14]) with mapi id 15.00.0995.028;
	Tue, 2 Jun 2015 10:37:18 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Thread-Topic: [yocto] Issue with toaster
Thread-Index: AQHQiMPwlgqxDyEgoECjGg7s0AKjdZ1xiN4L///iuACAAGkbYYAK7u0AgBwOnRY=
Date: Tue, 2 Jun 2015 05:07:18 +0000
Message-ID: <1433221637508.32807@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
	<1431062039464.37764@inedasystems.com>
	<CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
	<1431078146099.25248@inedasystems.com>,
	<CAJ2CSBvBaoPC-4Rny4a+DbJoEjYKMP5T19Yzp21XxVf35v5qnw@mail.gmail.com>
In-Reply-To: <CAJ2CSBvBaoPC-4Rny4a+DbJoEjYKMP5T19Yzp21XxVf35v5qnw@mail.gmail.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [202.153.34.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with toaster
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
X-List-Received-Date: Tue, 02 Jun 2015 05:07:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143322163750832807inedasystemscom_"

--_000_143322163750832807inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alex,


Do you have any updates on this issue?


Regards,

Raghavendra K.

________________________________
From: Damian, Alexandru <alexandru.damian@intel.com>
Sent: Friday, May 15, 2015 7:38 PM
To: Raghavendra Kakarla
Cc: Barros Pena, Belen; yocto@yoctoproject.org
Subject: Re: [yocto] Issue with toaster

I'm still investigating these bugs.

There is something funny going on, but I didn't figure out the root cause y=
et.

Alex

On Fri, May 8, 2015 at 10:42 AM, Raghavendra Kakarla <Raghavendra.Kakarla@i=
nedasystems.com<mailto:Raghavendra.Kakarla@inedasystems.com>> wrote:

Hi Alex,


I attached the Toaster Web logs with this mail.


Please find the attachments.


Thanks and Regards,


Raghavendra K.

________________________________
From: Damian, Alexandru <alexandru.damian@intel.com<mailto:alexandru.damian=
@intel.com>>
Sent: Friday, May 8, 2015 2:24 PM
To: Raghavendra Kakarla
Cc: Barros Pena, Belen; yocto@yoctoproject.org<mailto:yocto@yoctoproject.or=
g>

Subject: Re: [yocto] Issue with toaster

Hello,

Is there any error message displayed on screen ?

Can you please paste bin your latest toaster_web.log file  and send us the =
link ?
You can find your latest toaster_web.log file by looking in /tmp/toaster_* =
and take most recent one. One way to do this is:

$ find /tmp/toaster_* -printf '%T@ %p\0' | sort -zk 1nr | xargs -0n1 | cut =
-d " " -f 2 | head -1

Thank you,
Alex

On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kakarla <Raghavendra.Kakarla@in=
edasystems.com<mailto:Raghavendra.Kakarla@inedasystems.com>> wrote:
Hi Belen,

I am using yocto fido.

I am entered the my custom layer git repository url(Which is our local git =
repository where our product corresponding recipe layers re there),a unique=
 layer name and our git repository revision number.

We entered these data but the import layer version is not respond.

Thanks and Regards,

Raghavendra K.
________________________________________
From: Barros Pena, Belen <belen.barros.pena@intel.com<mailto:belen.barros.p=
ena@intel.com>>
Sent: Thursday, May 7, 2015 6:17 PM
To: Raghavendra Kakarla; yocto@yoctoproject.org<mailto:yocto@yoctoproject.o=
rg>
Subject: Re: [yocto] Issue with toaster

On 07/05/2015 10:18, "Raghavendra Kakarla"
<Raghavendra.Kakarla@inedasystems.com<mailto:Raghavendra.Kakarla@inedasyste=
ms.com>> wrote:

>Hi,
>
>I have an issue while importing custom layer in toaster. When i gave the
>all layer information for importing the layer and click on the import
>layer button in toaster it    wont respond.
>Could you please help for resolving this issue.

Hi Raghavendra,

We would need a bit more information to understand what's happening:

* Which branch are you using (fido or master). If you are using master,
which commit?
* Which data are you entering in the import layer form? Keep in mind that
you must provide a git url, a unique layer name and a revision. Without
that information, the "import layer" button will remain stubbornly
inactive and nothing will happen when you click on it.

Cheers

Bel=E9n

>
>
>
>Thanks in advance.
>
>
> Regards,
> Raghavendra K.
>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--
Alex Damian
Yocto Project
SSG / OTC



--
Alex Damian
Yocto Project
SSG / OTC

--_000_143322163750832807inedasystemscom_
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
<p>Hi Alex,</p>
<p><br>
</p>
<p>Do you have any updates on this issue?</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Damian, Alexandru &=
lt;alexandru.damian@intel.com&gt;<br>
<b>Sent:</b> Friday, May 15, 2015 7:38 PM<br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Issue with toaster</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">I'm st=
ill investigating these bugs.</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">There =
is something funny going on, but I didn't figure out the root cause yet.</d=
iv>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Alex</=
div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, May 8, 2015 at 10:42 AM, Raghavendra Kak=
arla <span dir=3D"ltr">
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
ffffff; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Alex,</p>
<p><br>
</p>
<p>I attached the Toaster Web logs with this mail.</p>
<p><br>
</p>
<p>Please find the attachments.</p>
<span class=3D"">
<p><br>
</p>
<p>Thanks and Regards,</p>
<p><br>
</p>
<p>Raghavendra K.<br>
</p>
</span>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block; width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Damian, Alexandru &lt;<a href=3D"mailto:al=
exandru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&=
gt;<br>
<b>Sent:</b> Friday, May 8, 2015 2:24 PM<br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">
yocto@yoctoproject.org</a>
<div>
<div class=3D"h5"><br>
<b>Subject:</b> Re: [yocto] Issue with toaster</div>
</div>
</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"h5">
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Hello,=
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Is the=
re any error message displayed on screen ?&nbsp;</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Can yo=
u please paste bin your latest
<i>toaster_web.log</i> file &nbsp;and send us the link ?</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">You ca=
n find your latest
<i>toaster_web.log</i> file by looking in <i>/tmp/toaster_*</i> and take mo=
st recent one. One way to do this is:</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default"><font face=3D"monospace, monospace" size=3D"1"=
>$ find /tmp/toaster_* -printf '%T@ %p\0' | sort -zk 1nr | xargs -0n1 | cut=
 -d &quot; &quot; -f 2 | head -1<br>
</font></div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Thank =
you,</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Alex</=
div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kaka=
rla <span dir=3D"ltr">
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
Hi Belen,<br>
<br>
I am using yocto fido.<br>
<br>
I am entered the my custom layer git repository url(Which is our local git =
repository where our product corresponding recipe layers re there),a unique=
 layer name and our git repository revision number.<br>
<br>
We entered these data but the import layer version is not respond.<br>
<br>
Thanks and Regards,<br>
<br>
Raghavendra K.<br>
________________________________________<br>
From: Barros Pena, Belen &lt;<a href=3D"mailto:belen.barros.pena@intel.com"=
 target=3D"_blank">belen.barros.pena@intel.com</a>&gt;<br>
Sent: Thursday, May 7, 2015 6:17 PM<br>
To: Raghavendra Kakarla; <a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">
yocto@yoctoproject.org</a><br>
Subject: Re: [yocto] Issue with toaster<br>
<div>
<div><br>
On 07/05/2015 10:18, &quot;Raghavendra Kakarla&quot;<br>
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt; wrote:<br>
<br>
&gt;Hi,<br>
&gt;<br>
&gt;I have an issue while importing custom layer in toaster. When i gave th=
e<br>
&gt;all layer information for importing the layer and click on the import<b=
r>
&gt;layer button in toaster it&nbsp; &nbsp; wont respond.<br>
&gt;Could you please help for resolving this issue.<br>
<br>
Hi Raghavendra,<br>
<br>
We would need a bit more information to understand what's happening:<br>
<br>
* Which branch are you using (fido or master). If you are using master,<br>
which commit?<br>
* Which data are you entering in the import layer form? Keep in mind that<b=
r>
you must provide a git url, a unique layer name and a revision. Without<br>
that information, the &quot;import layer&quot; button will remain stubbornl=
y<br>
inactive and nothing will happen when you click on it.<br>
<br>
Cheers<br>
<br>
Bel=E9n<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;Thanks in advance.<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Raghavendra K.<br>
&gt;<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</div>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div>
<div dir=3D"ltr">Alex Damian
<div>Yocto Project<br>
</div>
<div>SSG / OTC&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature">
<div dir=3D"ltr">Alex Damian
<div>Yocto Project<br>
</div>
<div>SSG / OTC&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_143322163750832807inedasystemscom_--
