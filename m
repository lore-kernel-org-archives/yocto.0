Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B4BEB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 05:13:02 +0000 (UTC)
Subject: Can't access https://www.yoctoproject.org/connectivity.html in China mainland.
To: yocto@lists.yoctoproject.org
From: mwen@ambarella.com
X-Originating-Location: Shanghai, CN (116.246.37.178)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Jun 2023 22:12:57 -0700
Message-ID: <hGgt.1686719577548533695.bGn9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sMsVNQiGMGOujuV7YamH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 05:13:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60283

--sMsVNQiGMGOujuV7YamH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Since yesterday, we can't access=C2=A0https://www.yoctoproject.org/connecti=
vity.html in China mainland. As a result, we can't build Yocto successfully=
 with below Sanity check error.
It will be appreciated if you have any idea about this. Thanks~~

*ERROR:=C2=A0 OE-core's config sanity checker detected a potential misconfi=
guration.*

*Either fix the cause of this error or at your own risk disable the checker=
 (see sanity.conf).*

*Following is the list of potential problems / advisories:*

**

*Fetcher failure for URL: 'https://yoctoproject.org/connectivity.html'. URL=
* *https://yoctoproject.org/connectivity.html* ( https://yoctoproject.org/c=
onnectivity.html ) *doesn't work.*

*Please ensure your host's network is configured correctly.*

*Please ensure CONNECTIVITY_CHECK_URIS is correct and specified URIs are av=
ailable.*

*If your ISP or network is blocking the above URL,*

*try with another domain name, for example by setting:*

*CONNECTIVITY_CHECK_URIS =3D "* *https://www.example.com/* ( https://www.ex=
ample.com/ ) *"=C2=A0=C2=A0=C2=A0 You could also set BB_NO_NETWORK =3D "1" =
to disable network*

*access if all required sources are on local disk.*

--sMsVNQiGMGOujuV7YamH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br/><br/>Since yesterday, we can&#39;t access=C2=A0https://www.yoctopro=
ject.org/connectivity.html in China mainland. As a result, we can&#39;t bui=
ld Yocto successfully with below Sanity check error.<br/>It will be appreci=
ated if you have any idea about this. Thanks~~<br/><br/>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">ERROR:=C2=A0 OE-core&#39;s config sa=
nity checker detected a potential misconfiguration.</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 Either fix the ca=
use of this error or at your own risk disable the checker (see sanity.conf)=
.</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 Following is the =
list of potential problems / advisories:</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 Fetcher failure f=
or URL: &#39;https://yoctoproject.org/connectivity.html&#39;. URL </span></=
strong><a href=3D"https://yoctoproject.org/connectivity.html"><strong><span=
 style=3D"font-size: 10.0pt; font-family: &#39;Times New Roman&#39;,serif;"=
>https://yoctoproject.org/connectivity.html</span></strong></a><strong><spa=
n style=3D"font-size: 10.0pt; font-family: &#39;Times New Roman&#39;,serif;=
 color: #0070c0;"> doesn&#39;t work.</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 Please ensure you=
r host&#39;s network is configured correctly.</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 Please ensure CON=
NECTIVITY_CHECK_URIS is correct and specified URIs are available.</span></s=
trong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 If your ISP or ne=
twork is blocking the above URL,</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 try with another =
domain name, for example by setting:</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 CONNECTIVITY_CHEC=
K_URIS =3D &#34;</span></strong><a href=3D"https://www.example.com/"><stron=
g><span style=3D"font-size: 10.0pt; font-family: &#39;Times New Roman&#39;,=
serif;">https://www.example.com/</span></strong></a><strong><span style=3D"=
font-size: 10.0pt; font-family: &#39;Times New Roman&#39;,serif; color: #00=
70c0;">&#34;=C2=A0=C2=A0=C2=A0 You could also set BB_NO_NETWORK =3D &#34;1&=
#34; to disable network</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"text-indent: 11.4pt;" style=3D"marg=
in:0px;"><strong><span style=3D"font-size: 10.0pt; font-family: &#39;Times =
New Roman&#39;,serif; color: #0070c0;">=C2=A0=C2=A0=C2=A0 access if all req=
uired sources are on local disk.</span></strong></p>

--sMsVNQiGMGOujuV7YamH--

