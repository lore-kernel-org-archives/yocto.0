Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 823C1C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 07:16:11 +0000 (UTC)
Subject: Re: [yocto] How to include full Golang build support in SDK?
To: "Jonas Fredriksson" <jonas.fredriksson92@gmail.com>, yocto@lists.yoctoproject.org
From: "Bratiranjan Acharya" <bratiranjan12@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (52.95.75.29)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 May 2024 00:16:07 -0700
References: <Hm8U.1716791719153851376.1lBm@lists.yoctoproject.org>
In-Reply-To: <Hm8U.1716791719153851376.1lBm@lists.yoctoproject.org>
Message-ID: <22769.1716794167619610605@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GEkOiQuPxiwZ4drZrPCq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 07:16:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63201

--GEkOiQuPxiwZ4drZrPCq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

As per my understanding please try these things

1)locate where the Go source files are installed on your system, maybe in $=
GOROOT/src d irectory.
2)You may need to include this to your sdk to ensure it is added.

May need to add this line to, your recipe
*FILES:${PN}-dev +=3D "${datadir}/go/src"*

Then try to rebuild your SDK.

Thanks & Regards

Brati

--GEkOiQuPxiwZ4drZrPCq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>As per my understanding please try these things&nbsp;</p>
<p><span style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system=
, system-ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif=
, Helvetica, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">1)locate where the Go source files are installed on your sys=
tem, maybe in $GOROOT/src d</span><span style=3D"color: #0d0d0d; font-famil=
y: ui-sans-serif, -apple-system, system-ui, 'Segoe UI', Roboto, Ubuntu, Can=
tarell, 'Noto Sans', sans-serif, Helvetica, 'Apple Color Emoji', Arial, 'Se=
goe UI Emoji', 'Segoe UI Symbol'; font-size: 16px; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: pre-wrap; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; display: inline !important; float: none;">irectory.<br />2)You may need=
 to include this to your sdk to ensure it is added.</span></p>
<p><span style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system=
, system-ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif=
, Helvetica, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">May need to add this line to, your recipe<br /></span><span =
style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system, system-=
ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif, Helveti=
ca, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol'; font-s=
ize: 16px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-co=
lor: #ffffff; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;"><span class=3D"hljs-string" style=3D"border: 0px solid #e3e3e3; box-s=
izing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw=
-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-=
skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: p=
roximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-r=
ing-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --=
tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-=
colored: 0 0 transparent; color: #00a67d; font-family: ui-monospace, SFMono=
-Regular, 'SF Mono', Menlo, Consolas, 'Liberation Mono', monospace; font-si=
ze: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: pre; background-color: #=
0d0d0d; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial;"></span><strong>FILES:${PN}-dev +=3D "${da=
tadir}/go/src"</strong></span></p>
<p><span style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system=
, system-ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif=
, Helvetica, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">Then try to rebuild your SDK.</span></p>
<p>&nbsp;</p>
<p><span style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system=
, system-ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif=
, Helvetica, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">Thanks &amp; Regards </span></p>
<p><span style=3D"color: #0d0d0d; font-family: ui-sans-serif, -apple-system=
, system-ui, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif=
, Helvetica, 'Apple Color Emoji', Arial, 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">Brati</span></p>

--GEkOiQuPxiwZ4drZrPCq--

