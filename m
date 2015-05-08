Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E33E009BB; Fri,  8 May 2015 02:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2592BE00945
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 02:42:43 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 8 May 2015 15:12:44 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 8 May 2015 15:12:35 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Fri, 8 May 2015 15:12:35 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Thread-Topic: [yocto] Issue with toaster
Thread-Index: AQHQiMPwlgqxDyEgoECjGg7s0AKjdZ1xiN4L///iuACAAGkbYQ==
Date: Fri, 8 May 2015 09:42:34 +0000
Message-ID: <1431078146099.25248@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
	<1431062039464.37764@inedasystems.com>,
	<CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
In-Reply-To: <CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
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
X-List-Received-Date: Fri, 08 May 2015 09:42:51 -0000
X-Groupsio-MsgNum: 24742
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_143107814609925248inedasystemscom_"

--_005_143107814609925248inedasystemscom_
Content-Type: multipart/alternative;
	boundary="_000_143107814609925248inedasystemscom_"

--_000_143107814609925248inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alex,


I attached the Toaster Web logs with this mail.


Please find the attachments.


Thanks and Regards,


Raghavendra K.

________________________________
From: Damian, Alexandru <alexandru.damian@intel.com>
Sent: Friday, May 8, 2015 2:24 PM
To: Raghavendra Kakarla
Cc: Barros Pena, Belen; yocto@yoctoproject.org
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

--_000_143107814609925248inedasystemscom_
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
<p>I attached the Toaster Web logs with this mail.</p>
<p><br>
</p>
<p>Please find the attachments.</p>
<p><br>
</p>
<p>Thanks and Regards,</p>
<p><br>
</p>
<p>Raghavendra K.<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Damian, Alexandru &l=
t;alexandru.damian@intel.com&gt;<br>
<b>Sent:</b> Friday, May 8, 2015 2:24 PM<br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Issue with toaster</font>
<div>&nbsp;</div>
</div>
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
<div class=3D"gmail_default"><font size=3D"1" face=3D"monospace, monospace"=
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
>belen.barros.pena@intel.com</a>&gt;<br>
Sent: Thursday, May 7, 2015 6:17 PM<br>
To: Raghavendra Kakarla; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yo=
ctoproject.org</a><br>
Subject: Re: [yocto] Issue with toaster<br>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>
On 07/05/2015 10:18, &quot;Raghavendra Kakarla&quot;<br>
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com">Raghavendra.Kak=
arla@inedasystems.com</a>&gt; wrote:<br>
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
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
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

--_000_143107814609925248inedasystemscom_--

--_005_143107814609925248inedasystemscom_
Content-Type: text/x-log; name="toaster.log"
Content-Description: toaster.log
Content-Disposition: attachment; filename="toaster.log"; size=2144;
	creation-date="Fri, 08 May 2015 09:41:26 GMT";
	modification-date="Fri, 08 May 2015 09:41:26 GMT"
Content-Transfer-Encoding: base64

MjAxNS0wNS0wNyAxNDo1OToxMiwyNTIgREVCVUcgcnVuYnVpbGRzOiBzdGFydGluZyBidWlsZCBC
dWlsZFJlcXVlc3Qgb2JqZWN0LCBlbnZpcm9ubWVudCBCdWlsZEVudmlyb25tZW50IG9iamVjdAoy
MDE1LTA1LTA3IDE0OjU5OjEyLDI1NSBERUJVRyBsb2NhbGhvc3RiZWNvbnRyb2xsZXIsIG91ciBn
aXQgcmVwb3MgYXJlIHsodSdnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9wb2t5LmdpdCcsIHUn
ZmlkbycpOiBbKCdiaXRiYWtlJywgdSdiaXRiYWtlJyksCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHUnb3BlbmVtYmVkZGVkLWNvcmUnLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1J21ldGEn
KSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAo
dSdtZXRhLXlvY3RvJywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdSdtZXRhLXlvY3RvJyksCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgKHUnbWV0YS15b2N0by1ic3AnLAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1J21ldGEteW9jdG8tYnNw
JyldfQoyMDE1LTA1LTA3IDE0OjU5OjEyLDI2NyBERUJVRyBsb2NhbGhvc3RiZWNvbnRyb2xsZXI6
IGdpdHVybCBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9wb2t5LmdpdDpmaWRvIGNoZWNraW5n
IG91dCBpbiBjdXJyZW50IGRpcmVjdG9yeSAvaG9tZS90ZXN0dXNlci9EaHJ1d2EvX3Bva3lfZmlk
by50b2FzdGVyX2Nsb25lZAoyMDE1LTA1LTA3IDE0OjU5OjEyLDI3MCBFUlJPUiBydW5idWlsZHM6
IEVycm9yIGV4ZWN1dGluZyBzaGVsbCBjb21tYW5kIEV4aXN0aW5nIGdpdCByZXBvc2l0b3J5IGF0
IC9ob21lL3Rlc3R1c2VyL0RocnV3YS9fcG9reV9maWRvLnRvYXN0ZXJfY2xvbmVkLCBidXQgd2l0
aCBkaWZmZXJlbnQgcmVtb3RlcyAoJ29yaWdpbgkvaG9tZS90ZXN0dXNlci9EaHJ1d2EvcG9reSAo
ZmV0Y2gpLCBvcmlnaW4JL2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kgKHB1c2gpLCAnLCBleHBl
Y3RlZCAnZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9reS5naXQnKS4gVG9hc3RlciB3aWxs
IG5vdCBjb250aW51ZSBvdXQgb2YgZmVhciBvZiBkYW1hZ2luZyBzb21ldGhpbmcuClRyYWNlYmFj
ayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToKICBGaWxlICIvaG9tZS90ZXN0dXNlci9EaHJ1d2Ev
cG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL2JsZGNvbnRyb2wvbWFuYWdlbWVudC9jb21tYW5kcy9y
dW5idWlsZHMucHkiLCBsaW5lIDU4LCBpbiBzY2hlZHVsZQogICAgYmVjLnNldExheWVycyhici5i
cmJpdGJha2Vfc2V0LmFsbCgpLCBici5icmxheWVyX3NldC5hbGwoKSkKICBGaWxlICIvaG9tZS90
ZXN0dXNlci9EaHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL2JsZGNvbnRyb2wvbG9jYWxo
b3N0YmVjb250cm9sbGVyLnB5IiwgbGluZSAyNTMsIGluIHNldExheWVycwogICAgcmFpc2UgQnVp
bGRTZXR1cEV4Y2VwdGlvbigiRXhpc3RpbmcgZ2l0IHJlcG9zaXRvcnkgYXQgJXMsIGJ1dCB3aXRo
IGRpZmZlcmVudCByZW1vdGVzICgnJXMnLCBleHBlY3RlZCAnJXMnKS4gVG9hc3RlciB3aWxsIG5v
dCBjb250aW51ZSBvdXQgb2YgZmVhciBvZiBkYW1hZ2luZyBzb21ldGhpbmcuIiAlIChsb2NhbGRp
cm5hbWUsICIsICIuam9pbihsb2NhbHJlbW90ZXMuc3BsaXQoIlxuIikpLCBnaXR1cmwpKQpCdWls
ZFNldHVwRXhjZXB0aW9uOiBFeGlzdGluZyBnaXQgcmVwb3NpdG9yeSBhdCAvaG9tZS90ZXN0dXNl
ci9EaHJ1d2EvX3Bva3lfZmlkby50b2FzdGVyX2Nsb25lZCwgYnV0IHdpdGggZGlmZmVyZW50IHJl
bW90ZXMgKCdvcmlnaW4JL2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kgKGZldGNoKSwgb3JpZ2lu
CS9ob21lL3Rlc3R1c2VyL0RocnV3YS9wb2t5IChwdXNoKSwgJywgZXhwZWN0ZWQgJ2dpdDovL2dp
dC55b2N0b3Byb2plY3Qub3JnL3Bva3kuZ2l0JykuIFRvYXN0ZXIgd2lsbCBub3QgY29udGludWUg
b3V0IG9mIGZlYXIgb2YgZGFtYWdpbmcgc29tZXRoaW5nLgo=

--_005_143107814609925248inedasystemscom_
Content-Type: text/x-log; name="toaster_web.log"
Content-Description: toaster_web.log
Content-Disposition: attachment; filename="toaster_web.log"; size=27083;
	creation-date="Fri, 08 May 2015 09:41:26 GMT";
	modification-date="Fri, 08 May 2015 09:41:26 GMT"
Content-Transfer-Encoding: base64

WzA3L01heS8yMDE1IDE0OjU5OjAwXSAiR0VUIC8gSFRUUC8xLjEiIDMwMSAwClswNy9NYXkvMjAx
NSAxNDo1OTowMF0gIkdFVCAvdG9hc3Rlcmd1aS9sYW5kaW5nLyBIVFRQLzEuMSIgMzAyIDAKWzA3
L01heS8yMDE1IDE0OjU5OjAwXSAiR0VUIC90b2FzdGVyZ3VpL2J1aWxkcy8gSFRUUC8xLjEiIDMw
MiAwCi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9tb2Rl
bHMvZmllbGRzL19faW5pdF9fLnB5Ojg0ODogUnVudGltZVdhcm5pbmc6IERhdGVUaW1lRmllbGQg
QnVpbGRSZXF1ZXN0LmNyZWF0ZWQgcmVjZWl2ZWQgYSBuYWl2ZSBkYXRldGltZSAoMjAxNS0wNS0w
NyAwMDowMDowMCkgd2hpbGUgdGltZSB6b25lIHN1cHBvcnQgaXMgYWN0aXZlLgogIFJ1bnRpbWVX
YXJuaW5nKQoKL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2Ri
L21vZGVscy9maWVsZHMvX19pbml0X18ucHk6ODQ4OiBSdW50aW1lV2FybmluZzogRGF0ZVRpbWVG
aWVsZCBCdWlsZFJlcXVlc3QuY3JlYXRlZCByZWNlaXZlZCBhIG5haXZlIGRhdGV0aW1lICgyMDE1
LTA1LTA2IDAwOjAwOjAwKSB3aGlsZSB0aW1lIHpvbmUgc3VwcG9ydCBpcyBhY3RpdmUuCiAgUnVu
dGltZVdhcm5pbmcpCgovdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFu
Z28vZGIvbW9kZWxzL2ZpZWxkcy9fX2luaXRfXy5weTo4NDg6IFJ1bnRpbWVXYXJuaW5nOiBEYXRl
VGltZUZpZWxkIEJ1aWxkUmVxdWVzdC51cGRhdGVkIHJlY2VpdmVkIGEgbmFpdmUgZGF0ZXRpbWUg
KDIwMTUtMDUtMDcgMDA6MDA6MDApIHdoaWxlIHRpbWUgem9uZSBzdXBwb3J0IGlzIGFjdGl2ZS4K
ICBSdW50aW1lV2FybmluZykKCi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2Vz
L2RqYW5nby9kYi9tb2RlbHMvZmllbGRzL19faW5pdF9fLnB5Ojg0ODogUnVudGltZVdhcm5pbmc6
IERhdGVUaW1lRmllbGQgQnVpbGRSZXF1ZXN0LnVwZGF0ZWQgcmVjZWl2ZWQgYSBuYWl2ZSBkYXRl
dGltZSAoMjAxNS0wNS0wNiAwMDowMDowMCkgd2hpbGUgdGltZSB6b25lIHN1cHBvcnQgaXMgYWN0
aXZlLgogIFJ1bnRpbWVXYXJuaW5nKQoKWzA3L01heS8yMDE1IDE0OjU5OjAwXSAiR0VUIC90b2Fz
dGVyZ3VpL2J1aWxkcy8/Y291bnQ9MTAmb3JkZXJieT1jb21wbGV0ZWRfb24lM0EtJnBhZ2U9MSBI
VFRQLzEuMSIgMjAwIDQ3MTExClswNy9NYXkvMjAxNSAxNDo1OTowMF0gIlBPU1QgL3RvYXN0ZXJn
dWkveGhyX3Byb2plY3RpbmZvLyBIVFRQLzEuMSIgMjAwIDM1MDgKWzA3L01heS8yMDE1IDE0OjU5
OjExXSAiUE9TVCAvdG9hc3Rlcmd1aS94aHJfcHJvamVjdGJ1aWxkLzEvIEhUVFAvMS4xIiAyMDAg
Mjc0MQpbMDcvTWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3RvYXN0ZXJndWkvYnVpbGRzLz9jb3Vu
dD0xMCZvcmRlcmJ5PWNvbXBsZXRlZF9vbiUzQS0mcGFnZT0xIEhUVFAvMS4xIiAyMDAgNDc5MzQK
WzA3L01heS8yMDE1IDE0OjU5OjExXSAiR0VUIC9zdGF0aWMvY3NzL2ZvbnQtYXdlc29tZS5taW4u
Y3NzIEhUVFAvMS4xIiAyMDAgMTU3MzAKWzA3L01heS8yMDE1IDE0OjU5OjExXSAiR0VUIC9zdGF0
aWMvY3NzL3ByZXR0aWZ5LmNzcyBIVFRQLzEuMSIgMjAwIDY3NgpbMDcvTWF5LzIwMTUgMTQ6NTk6
MTFdICJHRVQgL3N0YXRpYy9jc3MvZGVmYXVsdC5jc3MgSFRUUC8xLjEiIDIwMCAxMTYyOApbMDcv
TWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9jc3MvYm9vdHN0cmFwLXJlc3BvbnNpdmUu
bWluLmNzcyBIVFRQLzEuMSIgMjAwIDE2ODQ5ClswNy9NYXkvMjAxNSAxNDo1OToxMV0gIkdFVCAv
c3RhdGljL2Nzcy9ib290c3RyYXAubWluLmNzcyBIVFRQLzEuMSIgMjAwIDEwNTkzOQpbMDcvTWF5
LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9qcy9qcXVlcnktMi4wLjMubWluLmpzIEhUVFAv
MS4xIiAyMDAgODM2MTIKWzA3L01heS8yMDE1IDE0OjU5OjExXSAiR0VUIC9zdGF0aWMvanMvYm9v
dHN0cmFwLm1pbi5qcyBIVFRQLzEuMSIgMjAwIDI4NjMxClswNy9NYXkvMjAxNSAxNDo1OToxMV0g
IkdFVCAvc3RhdGljL2pzL3ByZXR0aWZ5LmpzIEhUVFAvMS4xIiAyMDAgMTM2MzIKWzA3L01heS8y
MDE1IDE0OjU5OjExXSAiR0VUIC9zdGF0aWMvanMvanF1ZXJ5LmNvb2tpZS5qcyBIVFRQLzEuMSIg
MjAwIDMwOTUKWzA3L01heS8yMDE1IDE0OjU5OjExXSAiR0VUIC9zdGF0aWMvY3NzL2pxdWVyeS11
aS5taW4uY3NzIEhUVFAvMS4xIiAzMDQgMApbMDcvTWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0
YXRpYy9jc3MvanF1ZXJ5LXVpLnN0cnVjdHVyZS5taW4uY3NzIEhUVFAvMS4xIiAzMDQgMApbMDcv
TWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9qcy9iYXNlLmpzIEhUVFAvMS4xIiAyMDAg
NDYyNgpbMDcvTWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9jc3MvanF1ZXJ5LXVpLnRo
ZW1lLm1pbi5jc3MgSFRUUC8xLjEiIDMwNCAwClswNy9NYXkvMjAxNSAxNDo1OToxMV0gIkdFVCAv
c3RhdGljL2pzL2xpYnRvYXN0ZXIuanMgSFRUUC8xLjEiIDIwMCAxMjUzNQpbMDcvTWF5LzIwMTUg
MTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9qcy9maWx0ZXJzbmlwcGV0LmpzIEhUVFAvMS4xIiAzMDQg
MApbMDcvTWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9qcy9qcXVlcnktdWkubWluLmpz
IEhUVFAvMS4xIiAzMDQgMApbMDcvTWF5LzIwMTUgMTQ6NTk6MTFdICJHRVQgL3N0YXRpYy9pbWcv
bG9nby5wbmcgSFRUUC8xLjEiIDIwMCAzMDIwClswNy9NYXkvMjAxNSAxNDo1OToxMl0gIlBPU1Qg
L3RvYXN0ZXJndWkveGhyX3Byb2plY3RpbmZvLyBIVFRQLzEuMSIgMjAwIDM3MzQKWzA3L01heS8y
MDE1IDE0OjU5OjU0XSAiR0VUIC90b2FzdGVyZ3VpL3Byb2plY3QvMS8gSFRUUC8xLjEiIDIwMCAz
MjA5OQpbMDcvTWF5LzIwMTUgMTQ6NTk6NTZdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3Rl
ZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTQ6NTk6NThdICJHRVQgL3Rv
YXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIw
MTUgMTU6MDA6MDBdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4x
IiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6MDJdICJHRVQgL3RvYXN0ZXJndWkveGhyX3By
b2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6MDRdICJH
RVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcv
TWF5LzIwMTUgMTU6MDA6MDZdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhU
VFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6MDhdICJHRVQgL3RvYXN0ZXJndWkv
eGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6
MTBdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0
MQpbMDcvTWF5LzIwMTUgMTU6MDA6MTJdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0
LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6MTRdICJHRVQgL3RvYXN0
ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAyMDAgNTA0MQpbMDcvTWF5LzIwMTUg
MTU6MDA6MTZdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzEvIEhUVFAvMS4xIiAy
MDAgNTA0MQpbMDcvTWF5LzIwMTUgMTU6MDA6MThdICJHRVQgL3RvYXN0ZXJndWkvdGFyZ2V0cy8g
SFRUUC8xLjEiIDMwMiAwCjIwMTUtMDUtMDcgMTU6MDA6MTgsMzExIEVSUk9SIEludGVybmFsIFNl
cnZlciBFcnJvcjogL3RvYXN0ZXJndWkvdGFyZ2V0cy8KVHJhY2ViYWNrIChtb3N0IHJlY2VudCBj
YWxsIGxhc3QpOgogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2Vz
L2RqYW5nby9jb3JlL2hhbmRsZXJzL2Jhc2UucHkiLCBsaW5lIDExNCwgaW4gZ2V0X3Jlc3BvbnNl
CiAgICByZXNwb25zZSA9IHdyYXBwZWRfY2FsbGJhY2socmVxdWVzdCwgKmNhbGxiYWNrX2FyZ3Ms
ICoqY2FsbGJhY2tfa3dhcmdzKQogIEZpbGUgIi9ob21lL3Rlc3R1c2VyL0RocnV3YS9wb2t5L2Jp
dGJha2UvbGliL3RvYXN0ZXIvdG9hc3Rlcmd1aS92aWV3cy5weSIsIGxpbmUgMjg3NCwgaW4gdGFy
Z2V0cwogICAgdGFyZ2V0X2luZm8gPSBfYnVpbGRfcGFnZV9yYW5nZShQYWdpbmF0b3IocXVlcnlz
ZXRfd2l0aF9zZWFyY2gsIHJlcXVlc3QuR0VULmdldCgnY291bnQnLCAxMCkpLHJlcXVlc3QuR0VU
LmdldCgncGFnZScsIDEpKQogIEZpbGUgIi9ob21lL3Rlc3R1c2VyL0RocnV3YS9wb2t5L2JpdGJh
a2UvbGliL3RvYXN0ZXIvdG9hc3Rlcmd1aS92aWV3cy5weSIsIGxpbmUgOTAsIGluIF9idWlsZF9w
YWdlX3JhbmdlCiAgICBwYWdlID0gcGFnaW5hdG9yLnBhZ2UoaW5kZXgpCiAgRmlsZSAiL3Vzci9s
b2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5
IiwgbGluZSA1MCwgaW4gcGFnZQogICAgbnVtYmVyID0gc2VsZi52YWxpZGF0ZV9udW1iZXIobnVt
YmVyKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5n
by9jb3JlL3BhZ2luYXRvci5weSIsIGxpbmUgMzksIGluIHZhbGlkYXRlX251bWJlcgogICAgaWYg
bnVtYmVyID4gc2VsZi5udW1fcGFnZXM6CiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43
L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5IiwgbGluZSA4NiwgaW4gX2dl
dF9udW1fcGFnZXMKICAgIGlmIHNlbGYuY291bnQgPT0gMCBhbmQgbm90IHNlbGYuYWxsb3dfZW1w
dHlfZmlyc3RfcGFnZToKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNr
YWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDcyLCBpbiBfZ2V0X2NvdW50CiAg
ICBzZWxmLl9jb3VudCA9IHNlbGYub2JqZWN0X2xpc3QuY291bnQoKQogIEZpbGUgIi91c3IvbG9j
YWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9tb2RlbHMvcXVlcnkucHki
LCBsaW5lIDI5MSwgaW4gY291bnQKICAgIHJldHVybiBzZWxmLnF1ZXJ5LmdldF9jb3VudCh1c2lu
Zz1zZWxmLmRiKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2Vz
L2RqYW5nby9kYi9tb2RlbHMvc3FsL3F1ZXJ5LnB5IiwgbGluZSAzOTAsIGluIGdldF9jb3VudAog
ICAgbnVtYmVyID0gb2JqLmdldF9hZ2dyZWdhdGlvbih1c2luZz11c2luZylbTm9uZV0KICBGaWxl
ICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvbW9kZWxz
L3NxbC9xdWVyeS5weSIsIGxpbmUgMzU2LCBpbiBnZXRfYWdncmVnYXRpb24KICAgIHJlc3VsdCA9
IHF1ZXJ5LmdldF9jb21waWxlcih1c2luZykuZXhlY3V0ZV9zcWwoU0lOR0xFKQogIEZpbGUgIi91
c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9tb2RlbHMvc3Fs
L2NvbXBpbGVyLnB5IiwgbGluZSA3ODEsIGluIGV4ZWN1dGVfc3FsCiAgICBjdXJzb3IuZXhlY3V0
ZShzcWwsIHBhcmFtcykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNr
YWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIsIGxpbmUgNjksIGluIGV4ZWN1dGUKICAg
IHJldHVybiBzdXBlcihDdXJzb3JEZWJ1Z1dyYXBwZXIsIHNlbGYpLmV4ZWN1dGUoc3FsLCBwYXJh
bXMpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdv
L2RiL2JhY2tlbmRzL3V0aWwucHkiLCBsaW5lIDUzLCBpbiBleGVjdXRlCiAgICByZXR1cm4gc2Vs
Zi5jdXJzb3IuZXhlY3V0ZShzcWwsIHBhcmFtcykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRo
b24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvdXRpbHMucHkiLCBsaW5lIDk5LCBpbiBfX2V4
aXRfXwogICAgc2l4LnJlcmFpc2UoZGpfZXhjX3R5cGUsIGRqX2V4Y192YWx1ZSwgdHJhY2ViYWNr
KQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9k
Yi9iYWNrZW5kcy91dGlsLnB5IiwgbGluZSA1MywgaW4gZXhlY3V0ZQogICAgcmV0dXJuIHNlbGYu
Y3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9u
Mi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3NxbGl0ZTMvYmFzZS5weSIsIGxp
bmUgNDUwLCBpbiBleGVjdXRlCiAgICByZXR1cm4gRGF0YWJhc2UuQ3Vyc29yLmV4ZWN1dGUoc2Vs
ZiwgcXVlcnksIHBhcmFtcykKT3BlcmF0aW9uYWxFcnJvcjogdG9vIG1hbnkgU1FMIHZhcmlhYmxl
cwpJbnRlcm5hbCBTZXJ2ZXIgRXJyb3I6IC90b2FzdGVyZ3VpL3RhcmdldHMvClRyYWNlYmFjayAo
bW9zdCByZWNlbnQgY2FsbCBsYXN0KToKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcv
ZGlzdC1wYWNrYWdlcy9kamFuZ28vY29yZS9oYW5kbGVycy9iYXNlLnB5IiwgbGluZSAxMTQsIGlu
IGdldF9yZXNwb25zZQogICAgcmVzcG9uc2UgPSB3cmFwcGVkX2NhbGxiYWNrKHJlcXVlc3QsICpj
YWxsYmFja19hcmdzLCAqKmNhbGxiYWNrX2t3YXJncykKICBGaWxlICIvaG9tZS90ZXN0dXNlci9E
aHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3MucHkiLCBsaW5l
IDI4NzQsIGluIHRhcmdldHMKICAgIHRhcmdldF9pbmZvID0gX2J1aWxkX3BhZ2VfcmFuZ2UoUGFn
aW5hdG9yKHF1ZXJ5c2V0X3dpdGhfc2VhcmNoLCByZXF1ZXN0LkdFVC5nZXQoJ2NvdW50JywgMTAp
KSxyZXF1ZXN0LkdFVC5nZXQoJ3BhZ2UnLCAxKSkKICBGaWxlICIvaG9tZS90ZXN0dXNlci9EaHJ1
d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3MucHkiLCBsaW5lIDkw
LCBpbiBfYnVpbGRfcGFnZV9yYW5nZQogICAgcGFnZSA9IHBhZ2luYXRvci5wYWdlKGluZGV4KQog
IEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3Jl
L3BhZ2luYXRvci5weSIsIGxpbmUgNTAsIGluIHBhZ2UKICAgIG51bWJlciA9IHNlbGYudmFsaWRh
dGVfbnVtYmVyKG51bWJlcikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1w
YWNrYWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDM5LCBpbiB2YWxpZGF0ZV9u
dW1iZXIKICAgIGlmIG51bWJlciA+IHNlbGYubnVtX3BhZ2VzOgogIEZpbGUgIi91c3IvbG9jYWwv
bGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3JlL3BhZ2luYXRvci5weSIsIGxp
bmUgODYsIGluIF9nZXRfbnVtX3BhZ2VzCiAgICBpZiBzZWxmLmNvdW50ID09IDAgYW5kIG5vdCBz
ZWxmLmFsbG93X2VtcHR5X2ZpcnN0X3BhZ2U6CiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9u
Mi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5IiwgbGluZSA3MiwgaW4g
X2dldF9jb3VudAogICAgc2VsZi5fY291bnQgPSBzZWxmLm9iamVjdF9saXN0LmNvdW50KCkKICBG
aWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvbW9k
ZWxzL3F1ZXJ5LnB5IiwgbGluZSAyOTEsIGluIGNvdW50CiAgICByZXR1cm4gc2VsZi5xdWVyeS5n
ZXRfY291bnQodXNpbmc9c2VsZi5kYikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcv
ZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvbW9kZWxzL3NxbC9xdWVyeS5weSIsIGxpbmUgMzkwLCBp
biBnZXRfY291bnQKICAgIG51bWJlciA9IG9iai5nZXRfYWdncmVnYXRpb24odXNpbmc9dXNpbmcp
W05vbmVdCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGph
bmdvL2RiL21vZGVscy9zcWwvcXVlcnkucHkiLCBsaW5lIDM1NiwgaW4gZ2V0X2FnZ3JlZ2F0aW9u
CiAgICByZXN1bHQgPSBxdWVyeS5nZXRfY29tcGlsZXIodXNpbmcpLmV4ZWN1dGVfc3FsKFNJTkdM
RSkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28v
ZGIvbW9kZWxzL3NxbC9jb21waWxlci5weSIsIGxpbmUgNzgxLCBpbiBleGVjdXRlX3NxbAogICAg
Y3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9u
Mi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3V0aWwucHkiLCBsaW5lIDY5LCBp
biBleGVjdXRlCiAgICByZXR1cm4gc3VwZXIoQ3Vyc29yRGVidWdXcmFwcGVyLCBzZWxmKS5leGVj
dXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBh
Y2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy91dGlsLnB5IiwgbGluZSA1MywgaW4gZXhlY3V0ZQog
ICAgcmV0dXJuIHNlbGYuY3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAiL3Vzci9s
b2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL3V0aWxzLnB5IiwgbGlu
ZSA5OSwgaW4gX19leGl0X18KICAgIHNpeC5yZXJhaXNlKGRqX2V4Y190eXBlLCBkal9leGNfdmFs
dWUsIHRyYWNlYmFjaykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNr
YWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIsIGxpbmUgNTMsIGluIGV4ZWN1dGUKICAg
IHJldHVybiBzZWxmLmN1cnNvci5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91c3IvbG9j
YWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy9zcWxpdGUz
L2Jhc2UucHkiLCBsaW5lIDQ1MCwgaW4gZXhlY3V0ZQogICAgcmV0dXJuIERhdGFiYXNlLkN1cnNv
ci5leGVjdXRlKHNlbGYsIHF1ZXJ5LCBwYXJhbXMpCk9wZXJhdGlvbmFsRXJyb3I6IHRvbyBtYW55
IFNRTCB2YXJpYWJsZXMKWzA3L01heS8yMDE1IDE1OjAwOjE4XSAiR0VUIC90b2FzdGVyZ3VpL3Rh
cmdldHMvP2NvdW50PTEwMCZvcmRlcmJ5PW5hbWUlM0ElMkImcGFnZT0xIEhUVFAvMS4xIiA1MDAg
MzExNjI1ClswNy9NYXkvMjAxNSAxNTowMDoyOV0gIkdFVCAvdG9hc3Rlcmd1aS9wcm9qZWN0LzEv
IEhUVFAvMS4xIiAyMDAgMzIwOTkKWzA3L01heS8yMDE1IDE1OjAwOjMxXSAiR0VUIC90b2FzdGVy
Z3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1
OjAwOjMzXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAw
IDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjM1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0
ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjM3XSAiR0VUIC90
b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8y
MDE1IDE1OjAwOjM5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEu
MSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjQxXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9w
cm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjQzXSAi
R0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3
L01heS8yMDE1IDE1OjAwOjQ1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBI
VFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjQ3XSAiR0VUIC90b2FzdGVyZ3Vp
L3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAw
OjQ5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUw
NDEKWzA3L01heS8yMDE1IDE1OjAwOjUxXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRp
dC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjUzXSAiR0VUIC90b2Fz
dGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1
IDE1OjAwOjU1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIg
MjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjU3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9q
ZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAwOjU5XSAiR0VU
IC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01h
eS8yMDE1IDE1OjAxOjAxXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQ
LzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjAzXSAiR0VUIC90b2FzdGVyZ3VpL3ho
cl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjA1
XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEK
WzA3L01heS8yMDE1IDE1OjAxOjA3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8x
LyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjA5XSAiR0VUIC90b2FzdGVy
Z3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1
OjAxOjExXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAw
IDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjEzXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0
ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjE1XSAiR0VUIC90
b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8y
MDE1IDE1OjAxOjE3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEu
MSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjE5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9w
cm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjIxXSAi
R0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3
L01heS8yMDE1IDE1OjAxOjIzXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBI
VFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjI1XSAiR0VUIC90b2FzdGVyZ3Vp
L3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAx
OjI3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUw
NDEKWzA3L01heS8yMDE1IDE1OjAxOjI5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRp
dC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjMxXSAiR0VUIC90b2Fz
dGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1
IDE1OjAxOjMzXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIg
MjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjM1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9q
ZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjM3XSAiR0VU
IC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01h
eS8yMDE1IDE1OjAxOjM5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQ
LzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjQxXSAiR0VUIC90b2FzdGVyZ3VpL3ho
cl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjQz
XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEK
WzA3L01heS8yMDE1IDE1OjAxOjQ1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8x
LyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjQ3XSAiR0VUIC90b2FzdGVy
Z3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1
OjAxOjQ5XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAw
IDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjUxXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0
ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjUzXSAiR0VUIC90
b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8y
MDE1IDE1OjAxOjU1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEu
MSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjU3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9w
cm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAxOjU5XSAi
R0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3
L01heS8yMDE1IDE1OjAyOjAxXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBI
VFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAyOjAzXSAiR0VUIC90b2FzdGVyZ3Vp
L3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAy
OjA1XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUw
NDEKWzA3L01heS8yMDE1IDE1OjAyOjA3XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRp
dC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAyOjA5XSAiR0VUIC90b2Fz
dGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1
IDE1OjAyOjExXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8xLyBIVFRQLzEuMSIg
MjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAyOjEzXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9q
ZWN0ZWRpdC8xLyBIVFRQLzEuMSIgMjAwIDUwNDEKWzA3L01heS8yMDE1IDE1OjAyOjEzXSAiR0VU
IC90b2FzdGVyZ3VpL3Byb2plY3QvMS9idWlsZHMgSFRUUC8xLjEiIDMwMiAwClswNy9NYXkvMjAx
NSAxNTowMjoxNF0gIkdFVCAvdG9hc3Rlcmd1aS9wcm9qZWN0LzEvYnVpbGRzP2NvdW50PTEwJm9y
ZGVyYnk9Y29tcGxldGVkX29uJTNBLSZwYWdlPTEgSFRUUC8xLjEiIDIwMCA0NTAwMgpbMDcvTWF5
LzIwMTUgMTU6MDI6MTRdICJQT1NUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0aW5mby8gSFRUUC8x
LjEiIDIwMCA1MDQxClswNy9NYXkvMjAxNSAxNTowMjoxOF0gIkdFVCAvdG9hc3Rlcmd1aS9wcm9q
ZWN0LzEvIEhUVFAvMS4xIiAyMDAgMzIwOTkKWzA3L01heS8yMDE1IDE1OjAyOjIwXSAiR0VUIC90
b2FzdGVyZ3VpL3RhcmdldHMvIEhUVFAvMS4xIiAzMDIgMAoyMDE1LTA1LTA3IDE1OjAyOjIwLDI0
NiBFUlJPUiBJbnRlcm5hbCBTZXJ2ZXIgRXJyb3I6IC90b2FzdGVyZ3VpL3RhcmdldHMvClRyYWNl
YmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRo
b24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vY29yZS9oYW5kbGVycy9iYXNlLnB5IiwgbGluZSAx
MTQsIGluIGdldF9yZXNwb25zZQogICAgcmVzcG9uc2UgPSB3cmFwcGVkX2NhbGxiYWNrKHJlcXVl
c3QsICpjYWxsYmFja19hcmdzLCAqKmNhbGxiYWNrX2t3YXJncykKICBGaWxlICIvaG9tZS90ZXN0
dXNlci9EaHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3MucHki
LCBsaW5lIDI4NzQsIGluIHRhcmdldHMKICAgIHRhcmdldF9pbmZvID0gX2J1aWxkX3BhZ2VfcmFu
Z2UoUGFnaW5hdG9yKHF1ZXJ5c2V0X3dpdGhfc2VhcmNoLCByZXF1ZXN0LkdFVC5nZXQoJ2NvdW50
JywgMTApKSxyZXF1ZXN0LkdFVC5nZXQoJ3BhZ2UnLCAxKSkKICBGaWxlICIvaG9tZS90ZXN0dXNl
ci9EaHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3MucHkiLCBs
aW5lIDkwLCBpbiBfYnVpbGRfcGFnZV9yYW5nZQogICAgcGFnZSA9IHBhZ2luYXRvci5wYWdlKGlu
ZGV4KQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5n
by9jb3JlL3BhZ2luYXRvci5weSIsIGxpbmUgNTAsIGluIHBhZ2UKICAgIG51bWJlciA9IHNlbGYu
dmFsaWRhdGVfbnVtYmVyKG51bWJlcikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcv
ZGlzdC1wYWNrYWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDM5LCBpbiB2YWxp
ZGF0ZV9udW1iZXIKICAgIGlmIG51bWJlciA+IHNlbGYubnVtX3BhZ2VzOgogIEZpbGUgIi91c3Iv
bG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3JlL3BhZ2luYXRvci5w
eSIsIGxpbmUgODYsIGluIF9nZXRfbnVtX3BhZ2VzCiAgICBpZiBzZWxmLmNvdW50ID09IDAgYW5k
IG5vdCBzZWxmLmFsbG93X2VtcHR5X2ZpcnN0X3BhZ2U6CiAgRmlsZSAiL3Vzci9sb2NhbC9saWIv
cHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5IiwgbGluZSA3
MiwgaW4gX2dldF9jb3VudAogICAgc2VsZi5fY291bnQgPSBzZWxmLm9iamVjdF9saXN0LmNvdW50
KCkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28v
ZGIvbW9kZWxzL3F1ZXJ5LnB5IiwgbGluZSAyOTEsIGluIGNvdW50CiAgICByZXR1cm4gc2VsZi5x
dWVyeS5nZXRfY291bnQodXNpbmc9c2VsZi5kYikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRo
b24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvbW9kZWxzL3NxbC9xdWVyeS5weSIsIGxpbmUg
MzkwLCBpbiBnZXRfY291bnQKICAgIG51bWJlciA9IG9iai5nZXRfYWdncmVnYXRpb24odXNpbmc9
dXNpbmcpW05vbmVdCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2Fn
ZXMvZGphbmdvL2RiL21vZGVscy9zcWwvcXVlcnkucHkiLCBsaW5lIDM1NiwgaW4gZ2V0X2FnZ3Jl
Z2F0aW9uCiAgICByZXN1bHQgPSBxdWVyeS5nZXRfY29tcGlsZXIodXNpbmcpLmV4ZWN1dGVfc3Fs
KFNJTkdMRSkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9k
amFuZ28vZGIvbW9kZWxzL3NxbC9jb21waWxlci5weSIsIGxpbmUgNzgxLCBpbiBleGVjdXRlX3Nx
bAogICAgY3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIv
cHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3V0aWwucHkiLCBsaW5l
IDY5LCBpbiBleGVjdXRlCiAgICByZXR1cm4gc3VwZXIoQ3Vyc29yRGVidWdXcmFwcGVyLCBzZWxm
KS5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9k
aXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy91dGlsLnB5IiwgbGluZSA1MywgaW4gZXhl
Y3V0ZQogICAgcmV0dXJuIHNlbGYuY3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAi
L3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL3V0aWxzLnB5
IiwgbGluZSA5OSwgaW4gX19leGl0X18KICAgIHNpeC5yZXJhaXNlKGRqX2V4Y190eXBlLCBkal9l
eGNfdmFsdWUsIHRyYWNlYmFjaykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlz
dC1wYWNrYWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIsIGxpbmUgNTMsIGluIGV4ZWN1
dGUKICAgIHJldHVybiBzZWxmLmN1cnNvci5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91
c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy9z
cWxpdGUzL2Jhc2UucHkiLCBsaW5lIDQ1MCwgaW4gZXhlY3V0ZQogICAgcmV0dXJuIERhdGFiYXNl
LkN1cnNvci5leGVjdXRlKHNlbGYsIHF1ZXJ5LCBwYXJhbXMpCk9wZXJhdGlvbmFsRXJyb3I6IHRv
byBtYW55IFNRTCB2YXJpYWJsZXMKSW50ZXJuYWwgU2VydmVyIEVycm9yOiAvdG9hc3Rlcmd1aS90
YXJnZXRzLwpUcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6CiAgRmlsZSAiL3Vzci9s
b2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvaGFuZGxlcnMvYmFz
ZS5weSIsIGxpbmUgMTE0LCBpbiBnZXRfcmVzcG9uc2UKICAgIHJlc3BvbnNlID0gd3JhcHBlZF9j
YWxsYmFjayhyZXF1ZXN0LCAqY2FsbGJhY2tfYXJncywgKipjYWxsYmFja19rd2FyZ3MpCiAgRmls
ZSAiL2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kvYml0YmFrZS9saWIvdG9hc3Rlci90b2FzdGVy
Z3VpL3ZpZXdzLnB5IiwgbGluZSAyODc0LCBpbiB0YXJnZXRzCiAgICB0YXJnZXRfaW5mbyA9IF9i
dWlsZF9wYWdlX3JhbmdlKFBhZ2luYXRvcihxdWVyeXNldF93aXRoX3NlYXJjaCwgcmVxdWVzdC5H
RVQuZ2V0KCdjb3VudCcsIDEwKSkscmVxdWVzdC5HRVQuZ2V0KCdwYWdlJywgMSkpCiAgRmlsZSAi
L2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kvYml0YmFrZS9saWIvdG9hc3Rlci90b2FzdGVyZ3Vp
L3ZpZXdzLnB5IiwgbGluZSA5MCwgaW4gX2J1aWxkX3BhZ2VfcmFuZ2UKICAgIHBhZ2UgPSBwYWdp
bmF0b3IucGFnZShpbmRleCkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1w
YWNrYWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDUwLCBpbiBwYWdlCiAgICBu
dW1iZXIgPSBzZWxmLnZhbGlkYXRlX251bWJlcihudW1iZXIpCiAgRmlsZSAiL3Vzci9sb2NhbC9s
aWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5IiwgbGlu
ZSAzOSwgaW4gdmFsaWRhdGVfbnVtYmVyCiAgICBpZiBudW1iZXIgPiBzZWxmLm51bV9wYWdlczoK
ICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vY29y
ZS9wYWdpbmF0b3IucHkiLCBsaW5lIDg2LCBpbiBfZ2V0X251bV9wYWdlcwogICAgaWYgc2VsZi5j
b3VudCA9PSAwIGFuZCBub3Qgc2VsZi5hbGxvd19lbXB0eV9maXJzdF9wYWdlOgogIEZpbGUgIi91
c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3JlL3BhZ2luYXRv
ci5weSIsIGxpbmUgNzIsIGluIF9nZXRfY291bnQKICAgIHNlbGYuX2NvdW50ID0gc2VsZi5vYmpl
Y3RfbGlzdC5jb3VudCgpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFj
a2FnZXMvZGphbmdvL2RiL21vZGVscy9xdWVyeS5weSIsIGxpbmUgMjkxLCBpbiBjb3VudAogICAg
cmV0dXJuIHNlbGYucXVlcnkuZ2V0X2NvdW50KHVzaW5nPXNlbGYuZGIpCiAgRmlsZSAiL3Vzci9s
b2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL21vZGVscy9zcWwvcXVl
cnkucHkiLCBsaW5lIDM5MCwgaW4gZ2V0X2NvdW50CiAgICBudW1iZXIgPSBvYmouZ2V0X2FnZ3Jl
Z2F0aW9uKHVzaW5nPXVzaW5nKVtOb25lXQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIu
Ny9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9tb2RlbHMvc3FsL3F1ZXJ5LnB5IiwgbGluZSAzNTYs
IGluIGdldF9hZ2dyZWdhdGlvbgogICAgcmVzdWx0ID0gcXVlcnkuZ2V0X2NvbXBpbGVyKHVzaW5n
KS5leGVjdXRlX3NxbChTSU5HTEUpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rp
c3QtcGFja2FnZXMvZGphbmdvL2RiL21vZGVscy9zcWwvY29tcGlsZXIucHkiLCBsaW5lIDc4MSwg
aW4gZXhlY3V0ZV9zcWwKICAgIGN1cnNvci5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91
c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy91
dGlsLnB5IiwgbGluZSA2OSwgaW4gZXhlY3V0ZQogICAgcmV0dXJuIHN1cGVyKEN1cnNvckRlYnVn
V3JhcHBlciwgc2VsZikuZXhlY3V0ZShzcWwsIHBhcmFtcykKICBGaWxlICIvdXNyL2xvY2FsL2xp
Yi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIsIGxp
bmUgNTMsIGluIGV4ZWN1dGUKICAgIHJldHVybiBzZWxmLmN1cnNvci5leGVjdXRlKHNxbCwgcGFy
YW1zKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5n
by9kYi91dGlscy5weSIsIGxpbmUgOTksIGluIF9fZXhpdF9fCiAgICBzaXgucmVyYWlzZShkal9l
eGNfdHlwZSwgZGpfZXhjX3ZhbHVlLCB0cmFjZWJhY2spCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIv
cHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3V0aWwucHkiLCBsaW5l
IDUzLCBpbiBleGVjdXRlCiAgICByZXR1cm4gc2VsZi5jdXJzb3IuZXhlY3V0ZShzcWwsIHBhcmFt
cykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28v
ZGIvYmFja2VuZHMvc3FsaXRlMy9iYXNlLnB5IiwgbGluZSA0NTAsIGluIGV4ZWN1dGUKICAgIHJl
dHVybiBEYXRhYmFzZS5DdXJzb3IuZXhlY3V0ZShzZWxmLCBxdWVyeSwgcGFyYW1zKQpPcGVyYXRp
b25hbEVycm9yOiB0b28gbWFueSBTUUwgdmFyaWFibGVzClswNy9NYXkvMjAxNSAxNTowMjoyMF0g
IkdFVCAvdG9hc3Rlcmd1aS90YXJnZXRzLz9jb3VudD0xMDAmb3JkZXJieT1uYW1lJTNBJTJCJnBh
Z2U9MSBIVFRQLzEuMSIgNTAwIDMxMTYyNQpbMDcvTWF5LzIwMTUgMTU6MDI6MjVdICJHRVQgL3Rv
YXN0ZXJndWkvcHJvamVjdC8xLyBIVFRQLzEuMSIgMjAwIDMyMDk5ClswNy9NYXkvMjAxNSAxNTow
MjoyN10gIkdFVCAvdG9hc3Rlcmd1aS94aHJfcHJvamVjdGVkaXQvMS8gSFRUUC8xLjEiIDIwMCA1
MDQxClswNy9NYXkvMjAxNSAxNTowMjoyOV0gIkdFVCAvdG9hc3Rlcmd1aS94aHJfcHJvamVjdGVk
aXQvMS8gSFRUUC8xLjEiIDIwMCA1MDQxClswNy9NYXkvMjAxNSAxNTowMjozMV0gIkdFVCAvdG9h
c3Rlcmd1aS94aHJfcHJvamVjdGVkaXQvMS8gSFRUUC8xLjEiIDIwMCA1MDQxClswNy9NYXkvMjAx
NSAxNTowMjozN10gIkdFVCAvdG9hc3Rlcmd1aS9idWlsZHMvP2NvdW50PTEwJm9yZGVyYnk9c3Rh
dGUlM0ElMkImcGFnZT0xIEhUVFAvMS4xIiAyMDAgNDk1OTAKWzA3L01heS8yMDE1IDE1OjAyOjM3
XSAiUE9TVCAvdG9hc3Rlcmd1aS94aHJfcHJvamVjdGluZm8vIEhUVFAvMS4xIiAyMDAgNTA0MQpb
MDcvTWF5LzIwMTUgMTU6MDI6NDVdICJHRVQgL3RvYXN0ZXJndWkvbmV3cHJvamVjdC8gSFRUUC8x
LjEiIDIwMCA4OTQwClswNy9NYXkvMjAxNSAxNTowMjo1N10gIlBPU1QgL3RvYXN0ZXJndWkvbmV3
cHJvamVjdC8gSFRUUC8xLjEiIDMwMiAwClswNy9NYXkvMjAxNSAxNTowMjo1N10gIkdFVCAvdG9h
c3Rlcmd1aS9wcm9qZWN0LzIvIEhUVFAvMS4xIiAyMDAgMjc5NTYKWzA3L01heS8yMDE1IDE1OjAz
OjAwXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8yLyBIVFRQLzEuMSIgMjAwIDEw
MzMKWzA3L01heS8yMDE1IDE1OjAzOjAyXSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRp
dC8yLyBIVFRQLzEuMSIgMjAwIDEwMzMKWzA3L01heS8yMDE1IDE1OjAzOjA0XSAiR0VUIC90b2Fz
dGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8yLyBIVFRQLzEuMSIgMjAwIDEwMzMKWzA3L01heS8yMDE1
IDE1OjAzOjA2XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9qZWN0ZWRpdC8yLyBIVFRQLzEuMSIg
MjAwIDEwMzMKWzA3L01heS8yMDE1IDE1OjAzOjA4XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9wcm9q
ZWN0ZWRpdC8yLyBIVFRQLzEuMSIgMjAwIDEwMzMKWzA3L01heS8yMDE1IDE1OjAzOjA4XSAiR0VU
IC90b2FzdGVyZ3VpL3RhcmdldHMvIEhUVFAvMS4xIiAzMDIgMAoyMDE1LTA1LTA3IDE1OjAzOjA4
LDQ3MCBFUlJPUiBJbnRlcm5hbCBTZXJ2ZXIgRXJyb3I6IC90b2FzdGVyZ3VpL3RhcmdldHMvClRy
YWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9w
eXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vY29yZS9oYW5kbGVycy9iYXNlLnB5IiwgbGlu
ZSAxMTQsIGluIGdldF9yZXNwb25zZQogICAgcmVzcG9uc2UgPSB3cmFwcGVkX2NhbGxiYWNrKHJl
cXVlc3QsICpjYWxsYmFja19hcmdzLCAqKmNhbGxiYWNrX2t3YXJncykKICBGaWxlICIvaG9tZS90
ZXN0dXNlci9EaHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3Mu
cHkiLCBsaW5lIDI4NzQsIGluIHRhcmdldHMKICAgIHRhcmdldF9pbmZvID0gX2J1aWxkX3BhZ2Vf
cmFuZ2UoUGFnaW5hdG9yKHF1ZXJ5c2V0X3dpdGhfc2VhcmNoLCByZXF1ZXN0LkdFVC5nZXQoJ2Nv
dW50JywgMTApKSxyZXF1ZXN0LkdFVC5nZXQoJ3BhZ2UnLCAxKSkKICBGaWxlICIvaG9tZS90ZXN0
dXNlci9EaHJ1d2EvcG9reS9iaXRiYWtlL2xpYi90b2FzdGVyL3RvYXN0ZXJndWkvdmlld3MucHki
LCBsaW5lIDkwLCBpbiBfYnVpbGRfcGFnZV9yYW5nZQogICAgcGFnZSA9IHBhZ2luYXRvci5wYWdl
KGluZGV4KQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2Rq
YW5nby9jb3JlL3BhZ2luYXRvci5weSIsIGxpbmUgNTAsIGluIHBhZ2UKICAgIG51bWJlciA9IHNl
bGYudmFsaWRhdGVfbnVtYmVyKG51bWJlcikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24y
LjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDM5LCBpbiB2
YWxpZGF0ZV9udW1iZXIKICAgIGlmIG51bWJlciA+IHNlbGYubnVtX3BhZ2VzOgogIEZpbGUgIi91
c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3JlL3BhZ2luYXRv
ci5weSIsIGxpbmUgODYsIGluIF9nZXRfbnVtX3BhZ2VzCiAgICBpZiBzZWxmLmNvdW50ID09IDAg
YW5kIG5vdCBzZWxmLmFsbG93X2VtcHR5X2ZpcnN0X3BhZ2U6CiAgRmlsZSAiL3Vzci9sb2NhbC9s
aWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5IiwgbGlu
ZSA3MiwgaW4gX2dldF9jb3VudAogICAgc2VsZi5fY291bnQgPSBzZWxmLm9iamVjdF9saXN0LmNv
dW50KCkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFu
Z28vZGIvbW9kZWxzL3F1ZXJ5LnB5IiwgbGluZSAyOTEsIGluIGNvdW50CiAgICByZXR1cm4gc2Vs
Zi5xdWVyeS5nZXRfY291bnQodXNpbmc9c2VsZi5kYikKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9w
eXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvbW9kZWxzL3NxbC9xdWVyeS5weSIsIGxp
bmUgMzkwLCBpbiBnZXRfY291bnQKICAgIG51bWJlciA9IG9iai5nZXRfYWdncmVnYXRpb24odXNp
bmc9dXNpbmcpW05vbmVdCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFj
a2FnZXMvZGphbmdvL2RiL21vZGVscy9zcWwvcXVlcnkucHkiLCBsaW5lIDM1NiwgaW4gZ2V0X2Fn
Z3JlZ2F0aW9uCiAgICByZXN1bHQgPSBxdWVyeS5nZXRfY29tcGlsZXIodXNpbmcpLmV4ZWN1dGVf
c3FsKFNJTkdMRSkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdl
cy9kamFuZ28vZGIvbW9kZWxzL3NxbC9jb21waWxlci5weSIsIGxpbmUgNzgxLCBpbiBleGVjdXRl
X3NxbAogICAgY3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmlsZSAiL3Vzci9sb2NhbC9s
aWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3V0aWwucHkiLCBs
aW5lIDY5LCBpbiBleGVjdXRlCiAgICByZXR1cm4gc3VwZXIoQ3Vyc29yRGVidWdXcmFwcGVyLCBz
ZWxmKS5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIu
Ny9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5kcy91dGlsLnB5IiwgbGluZSA1MywgaW4g
ZXhlY3V0ZQogICAgcmV0dXJuIHNlbGYuY3Vyc29yLmV4ZWN1dGUoc3FsLCBwYXJhbXMpCiAgRmls
ZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL3V0aWxz
LnB5IiwgbGluZSA5OSwgaW4gX19leGl0X18KICAgIHNpeC5yZXJhaXNlKGRqX2V4Y190eXBlLCBk
al9leGNfdmFsdWUsIHRyYWNlYmFjaykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcv
ZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIsIGxpbmUgNTMsIGluIGV4
ZWN1dGUKICAgIHJldHVybiBzZWxmLmN1cnNvci5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUg
Ii91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5k
cy9zcWxpdGUzL2Jhc2UucHkiLCBsaW5lIDQ1MCwgaW4gZXhlY3V0ZQogICAgcmV0dXJuIERhdGFi
YXNlLkN1cnNvci5leGVjdXRlKHNlbGYsIHF1ZXJ5LCBwYXJhbXMpCk9wZXJhdGlvbmFsRXJyb3I6
IHRvbyBtYW55IFNRTCB2YXJpYWJsZXMKSW50ZXJuYWwgU2VydmVyIEVycm9yOiAvdG9hc3Rlcmd1
aS90YXJnZXRzLwpUcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6CiAgRmlsZSAiL3Vz
ci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvaGFuZGxlcnMv
YmFzZS5weSIsIGxpbmUgMTE0LCBpbiBnZXRfcmVzcG9uc2UKICAgIHJlc3BvbnNlID0gd3JhcHBl
ZF9jYWxsYmFjayhyZXF1ZXN0LCAqY2FsbGJhY2tfYXJncywgKipjYWxsYmFja19rd2FyZ3MpCiAg
RmlsZSAiL2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kvYml0YmFrZS9saWIvdG9hc3Rlci90b2Fz
dGVyZ3VpL3ZpZXdzLnB5IiwgbGluZSAyODc0LCBpbiB0YXJnZXRzCiAgICB0YXJnZXRfaW5mbyA9
IF9idWlsZF9wYWdlX3JhbmdlKFBhZ2luYXRvcihxdWVyeXNldF93aXRoX3NlYXJjaCwgcmVxdWVz
dC5HRVQuZ2V0KCdjb3VudCcsIDEwKSkscmVxdWVzdC5HRVQuZ2V0KCdwYWdlJywgMSkpCiAgRmls
ZSAiL2hvbWUvdGVzdHVzZXIvRGhydXdhL3Bva3kvYml0YmFrZS9saWIvdG9hc3Rlci90b2FzdGVy
Z3VpL3ZpZXdzLnB5IiwgbGluZSA5MCwgaW4gX2J1aWxkX3BhZ2VfcmFuZ2UKICAgIHBhZ2UgPSBw
YWdpbmF0b3IucGFnZShpbmRleCkKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlz
dC1wYWNrYWdlcy9kamFuZ28vY29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDUwLCBpbiBwYWdlCiAg
ICBudW1iZXIgPSBzZWxmLnZhbGlkYXRlX251bWJlcihudW1iZXIpCiAgRmlsZSAiL3Vzci9sb2Nh
bC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2NvcmUvcGFnaW5hdG9yLnB5Iiwg
bGluZSAzOSwgaW4gdmFsaWRhdGVfbnVtYmVyCiAgICBpZiBudW1iZXIgPiBzZWxmLm51bV9wYWdl
czoKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28v
Y29yZS9wYWdpbmF0b3IucHkiLCBsaW5lIDg2LCBpbiBfZ2V0X251bV9wYWdlcwogICAgaWYgc2Vs
Zi5jb3VudCA9PSAwIGFuZCBub3Qgc2VsZi5hbGxvd19lbXB0eV9maXJzdF9wYWdlOgogIEZpbGUg
Ii91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9jb3JlL3BhZ2lu
YXRvci5weSIsIGxpbmUgNzIsIGluIF9nZXRfY291bnQKICAgIHNlbGYuX2NvdW50ID0gc2VsZi5v
YmplY3RfbGlzdC5jb3VudCgpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3Qt
cGFja2FnZXMvZGphbmdvL2RiL21vZGVscy9xdWVyeS5weSIsIGxpbmUgMjkxLCBpbiBjb3VudAog
ICAgcmV0dXJuIHNlbGYucXVlcnkuZ2V0X2NvdW50KHVzaW5nPXNlbGYuZGIpCiAgRmlsZSAiL3Vz
ci9sb2NhbC9saWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL21vZGVscy9zcWwv
cXVlcnkucHkiLCBsaW5lIDM5MCwgaW4gZ2V0X2NvdW50CiAgICBudW1iZXIgPSBvYmouZ2V0X2Fn
Z3JlZ2F0aW9uKHVzaW5nPXVzaW5nKVtOb25lXQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhv
bjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9tb2RlbHMvc3FsL3F1ZXJ5LnB5IiwgbGluZSAz
NTYsIGluIGdldF9hZ2dyZWdhdGlvbgogICAgcmVzdWx0ID0gcXVlcnkuZ2V0X2NvbXBpbGVyKHVz
aW5nKS5leGVjdXRlX3NxbChTSU5HTEUpCiAgRmlsZSAiL3Vzci9sb2NhbC9saWIvcHl0aG9uMi43
L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL21vZGVscy9zcWwvY29tcGlsZXIucHkiLCBsaW5lIDc4
MSwgaW4gZXhlY3V0ZV9zcWwKICAgIGN1cnNvci5leGVjdXRlKHNxbCwgcGFyYW1zKQogIEZpbGUg
Ii91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2RqYW5nby9kYi9iYWNrZW5k
cy91dGlsLnB5IiwgbGluZSA2OSwgaW4gZXhlY3V0ZQogICAgcmV0dXJuIHN1cGVyKEN1cnNvckRl
YnVnV3JhcHBlciwgc2VsZikuZXhlY3V0ZShzcWwsIHBhcmFtcykKICBGaWxlICIvdXNyL2xvY2Fs
L2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFuZ28vZGIvYmFja2VuZHMvdXRpbC5weSIs
IGxpbmUgNTMsIGluIGV4ZWN1dGUKICAgIHJldHVybiBzZWxmLmN1cnNvci5leGVjdXRlKHNxbCwg
cGFyYW1zKQogIEZpbGUgIi91c3IvbG9jYWwvbGliL3B5dGhvbjIuNy9kaXN0LXBhY2thZ2VzL2Rq
YW5nby9kYi91dGlscy5weSIsIGxpbmUgOTksIGluIF9fZXhpdF9fCiAgICBzaXgucmVyYWlzZShk
al9leGNfdHlwZSwgZGpfZXhjX3ZhbHVlLCB0cmFjZWJhY2spCiAgRmlsZSAiL3Vzci9sb2NhbC9s
aWIvcHl0aG9uMi43L2Rpc3QtcGFja2FnZXMvZGphbmdvL2RiL2JhY2tlbmRzL3V0aWwucHkiLCBs
aW5lIDUzLCBpbiBleGVjdXRlCiAgICByZXR1cm4gc2VsZi5jdXJzb3IuZXhlY3V0ZShzcWwsIHBh
cmFtcykKICBGaWxlICIvdXNyL2xvY2FsL2xpYi9weXRob24yLjcvZGlzdC1wYWNrYWdlcy9kamFu
Z28vZGIvYmFja2VuZHMvc3FsaXRlMy9iYXNlLnB5IiwgbGluZSA0NTAsIGluIGV4ZWN1dGUKICAg
IHJldHVybiBEYXRhYmFzZS5DdXJzb3IuZXhlY3V0ZShzZWxmLCBxdWVyeSwgcGFyYW1zKQpPcGVy
YXRpb25hbEVycm9yOiB0b28gbWFueSBTUUwgdmFyaWFibGVzClswNy9NYXkvMjAxNSAxNTowMzow
OF0gIkdFVCAvdG9hc3Rlcmd1aS90YXJnZXRzLz9jb3VudD0xMDAmb3JkZXJieT1uYW1lJTNBJTJC
JnBhZ2U9MSBIVFRQLzEuMSIgNTAwIDQ1NjIzNwpbMDcvTWF5LzIwMTUgMTU6MDM6MTFdICJHRVQg
L3RvYXN0ZXJndWkvcHJvamVjdC8yLyBIVFRQLzEuMSIgMjAwIDI3OTU2ClswNy9NYXkvMjAxNSAx
NTowMzoxM10gIkdFVCAvdG9hc3Rlcmd1aS9sYXllcnMvIEhUVFAvMS4xIiAzMDIgMApbMDcvTWF5
LzIwMTUgMTU6MDM6MTRdICJHRVQgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzIvIEhUVFAv
MS4xIiAyMDAgMTAzMwpbMDcvTWF5LzIwMTUgMTU6MDM6MTRdICJHRVQgL3RvYXN0ZXJndWkvbGF5
ZXJzLz9jb3VudD0xMDAmb3JkZXJieT1sYXllcl9zb3VyY2VfX25hbWUlM0EtJnBhZ2U9MSBIVFRQ
LzEuMSIgMjAwIDI1NTk5MApbMDcvTWF5LzIwMTUgMTU6MDM6MTRdICJQT1NUIC90b2FzdGVyZ3Vp
L3hocl9wcm9qZWN0aW5mby8gSFRUUC8xLjEiIDIwMCAxMDMzClswNy9NYXkvMjAxNSAxNTowMzoy
Ml0gIkdFVCAvdG9hc3Rlcmd1aS9pbXBvcnRsYXllci8gSFRUUC8xLjEiIDIwMCAxNjY2MQpbMDcv
TWF5LzIwMTUgMTU6MDM6MjNdICJHRVQgL3RvYXN0ZXJndWkveGhyX2RhdGF0eXBlYWhlYWQvP3R5
cGU9bGF5ZXJzJnByb2plY3RfaWQ9MiZpbmNsdWRlX2FkZGVkPXRydWUmdmFsdWU9b3BlbmVtYmVk
ZGVkLWNvcmUgSFRUUC8xLjEiIDIwMCAyOTcKWzA3L01heS8yMDE1IDE1OjAzOjIzXSAiR0VUIC90
b2FzdGVyZ3VpL3hocl9kYXRhdHlwZWFoZWFkLz90eXBlPWxheWVyZGVwcyZ2YWx1ZT0yJnByb2pl
Y3RfaWQ9MiBIVFRQLzEuMSIgMjAwIDI3ClswNy9NYXkvMjAxNSAxNTowMzozMl0gIkdFVCAvdG9h
c3Rlcmd1aS94aHJfZGF0YXR5cGVhaGVhZC8/dHlwZT1sYXllcnMmcHJvamVjdF9pZD0yJmluY2x1
ZGVfYWRkZWQ9dHJ1ZSZ2YWx1ZT1tIEhUVFAvMS4xIiAyMDAgNTE3NzQKWzA3L01heS8yMDE1IDE1
OjExOjQ5XSAiR0VUIC90b2FzdGVyZ3VpL2xheWVycy8/c2VhcmNoPSZvcmRlcmJ5PWxheWVyX3Nv
dXJjZV9fbmFtZSUzQS0mcGFnZT0xIEhUVFAvMS4xIiAzMDIgMApbMDcvTWF5LzIwMTUgMTU6MTE6
NTBdICJHRVQgL3RvYXN0ZXJndWkvbGF5ZXJzLz9vcmRlcmJ5PWxheWVyX3NvdXJjZV9fbmFtZSUz
QS0mY291bnQ9MTAwJnNlYXJjaD0mcGFnZT0xIEhUVFAvMS4xIiAyMDAgMjU1OTkwClswNy9NYXkv
MjAxNSAxNToxMTo1MF0gIlBPU1QgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RpbmZvLyBIVFRQLzEu
MSIgMjAwIDEwMzMKWzA3L01heS8yMDE1IDE1OjExOjU0XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9k
YXRhdHlwZWFoZWFkLz90eXBlPWxheWVyZGVwcyZ2YWx1ZT0xNCBIVFRQLzEuMSIgMjAwIDI3Clsw
Ny9NYXkvMjAxNSAxNToxMTo1NF0gIlBPU1QgL3RvYXN0ZXJndWkveGhyX3Byb2plY3RlZGl0LzIv
IEhUVFAvMS4xIiAyMDAgMTI1MQpbMDcvTWF5LzIwMTUgMTU6MTI6MDFdICJHRVQgL3RvYXN0ZXJn
dWkvaW1wb3J0bGF5ZXIvIEhUVFAvMS4xIiAyMDAgMTY2NjEKWzA3L01heS8yMDE1IDE1OjEyOjAy
XSAiR0VUIC90b2FzdGVyZ3VpL3hocl9kYXRhdHlwZWFoZWFkLz90eXBlPWxheWVycyZwcm9qZWN0
X2lkPTImaW5jbHVkZV9hZGRlZD10cnVlJnZhbHVlPW9wZW5lbWJlZGRlZC1jb3JlIEhUVFAvMS4x
IiAyMDAgMjk3ClswNy9NYXkvMjAxNSAxNToxMjowMl0gIkdFVCAvdG9hc3Rlcmd1aS94aHJfZGF0
YXR5cGVhaGVhZC8/dHlwZT1sYXllcmRlcHMmdmFsdWU9MiZwcm9qZWN0X2lkPTIgSFRUUC8xLjEi
IDIwMCAyNwo=

--_005_143107814609925248inedasystemscom_--
