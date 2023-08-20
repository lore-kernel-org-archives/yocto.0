Return-Path: <mahdishahini2001official@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AC6EE49A4
	for <webhook@archiver.kernel.org>; Sun, 20 Aug 2023 07:09:26 +0000 (UTC)
Subject: build application be link to a shared library
To: yocto@lists.yoctoproject.org
From: mahdishahini2001official@gmail.com
X-Originating-Location: IR (2.190.62.81)
X-Originating-Platform: Linux Firefox 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 20 Aug 2023 00:09:19 -0700
Message-ID: <CBvR.1692515359603852706.UKQl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LgCnOGS59lf159alXIMN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Aug 2023 07:09:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60834

--LgCnOGS59lf159alXIMN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am reaching out with an inquiry pertaining to the utilization of the Exte=
nsible Software Development Kit (ESDK). After successfully generating the c=
ore-image-minimal through the command

```bitbake core-image-minimal -c populate_sdk_ext```

I proceeded to install the ESDK. At present, I find myself faced with a que=
ry regarding the installation of an application characterized by dynamic li=
nk library dependencies.

My objective is twofold: I aim to both construct and deploy this applicatio=
n. However, a notable challenge has emerged. My uncertainty lies in the pro=
cess of building and deploying the application, specifically with a focus o=
n dynamic linking, without resorting to static linking. My intention is for=
 the libraries to be seamlessly integrated within the "/usr/lib" and "/usr/=
include" directories, while the application itself finds its place within t=
he "/usr/bin" directory. It is of utmost importance that the application ma=
intains dynamic links to the requisite libraries, as opposed to relying on =
static links.

app directory:
CMakeLists.txt
main.c (#include <stdio.h> #include <mylib.h>)

mylib directory:

CMakeLists.txt

src : mylib.h mylib.c

I humbly request your expert guidance in navigating this aspect of the proj=
ect. Your insights and expertise would be instrumental in steering me towar=
ds a successful resolution.

Thank you profoundly for your valuable time and consideration. I eagerly aw=
ait your guidance and counsel on this matter.

With utmost respect,

Mahdi

--LgCnOGS59lf159alXIMN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I am reaching out with an inquiry pertaining to the utilization of the E=
xtensible Software Development Kit (ESDK). After successfully generating th=
e core-image-minimal through the command</p>
<p>```bitbake core-image-minimal -c populate_sdk_ext```</p>
<p>I proceeded to install the ESDK. At present, I find myself faced with a =
query regarding the installation of an application characterized by dynamic=
 link library dependencies.<br /><br />My objective is twofold: I aim to bo=
th construct and deploy this application. However, a notable challenge has =
emerged. My uncertainty lies in the process of building and deploying the a=
pplication, specifically with a focus on dynamic linking, without resorting=
 to static linking. My intention is for the libraries to be seamlessly inte=
grated within the "/usr/lib" and "/usr/include" directories, while the appl=
ication itself finds its place within the "/usr/bin" directory. It is of ut=
most importance that the application maintains dynamic links to the requisi=
te libraries, as opposed to relying on static links.</p>
<p>app directory:<br />CMakeLists.txt<br />main.c (#include &lt;stdio.h&gt;=
 #include &lt;mylib.h&gt;)</p>
<p>mylib directory:</p>
<p>CMakeLists.txt</p>
<p>src : mylib.h mylib.c</p>
<p><br /><br />I humbly request your expert guidance in navigating this asp=
ect of the project. Your insights and expertise would be instrumental in st=
eering me towards a successful resolution.<br /><br />Thank you profoundly =
for your valuable time and consideration. I eagerly await your guidance and=
 counsel on this matter.<br /><br />With utmost respect,<br /><br />Mahdi</=
p>

--LgCnOGS59lf159alXIMN--

