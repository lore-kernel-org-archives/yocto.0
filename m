Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEA08E00BD6; Wed, 21 Jun 2017 19:10:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [83.102.40.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 558 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Jun 2017 19:10:31 PDT
Received: from tulikuusama2.dnainternet.net (tulikuusama2.dnainternet.net
	[83.102.40.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A4EDE00BBD
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 19:10:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id 8507A141F4
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:01:11 +0300 (EEST)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from tulikuusama2.dnainternet.net ([83.102.40.151])
	by localhost (tulikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041) with ESMTP id xOkQLxtwD2rS for <yocto@yoctoproject.org>;
	Thu, 22 Jun 2017 05:01:11 +0300 (EEST)
Received: from oliivipuu2.dnainternet.net (oliivipuu2.dnainternet.net
	[83.102.40.53])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id 20210141E2
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:01:11 +0300 (EEST)
Received: from [192.168.1.22] (89-27-78-236.bb.dnainternet.fi [89.27.78.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by oliivipuu2.dnainternet.net (Postfix) with ESMTPS id 0D4257D
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:01:09 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 22 Jun 2017 05:01:09 +0300
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
	<CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
Message-Id: <AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
X-Mailer: Apple Mail (2.3273)
Subject: Re: AppArmor
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
X-List-Received-Date: Thu, 22 Jun 2017 02:10:34 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7ABDDCE1-3297-46CF-9BC4-9063F126403D"

--Apple-Mail=_7ABDDCE1-3297-46CF-9BC4-9063F126403D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On 21 Jun 2017, at 23:46, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Jun 20, 2017 at 9:56 AM Anders Montonen =
<Anders.Montonen@iki.fi <mailto:Anders.Montonen@iki.fi>> wrote:
> Has anyone tried using AppArmor with Yocto? The recipe in the
> meta-security layer is broken, and when fixed so it actually builds, =
it
> turns out the installed init script relies on functions not found in
> Yocto's version of LSB.
> That seems a bug to me perhaps can be fixed in initscripts ?

I ended up replacing the recipe with one combining the one from =
meta-security and from the OpenSwitch project[1]. This allowed me to get =
rid of the sysvinit and apache2 dependencies. I=E2=80=99ll have to look =
for Tom Rini=E2=80=99s tweaks and see if he fixed the Python issues more =
elegantly.

IIRC the issues I ran into with the meta-security recipe were:
- The tools under binutils require the static library
- The systemd service file isn=E2=80=99t installed
- The Python apparmor module is built against Python 2.7, while the =
scripts that use it are Python 3. Commit=20
89683b4fee4616a08d249bc7afd7be55f3fa71a3 is wrong, it papers over a QA =
warning without fixing the actual problem.
- The Python LibAppArmor module isn=E2=80=99t built at all.

Regards,
Anders

[1] =
<http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch=
/meta-foss-openswitch/recipes-security/apparmor =
<http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch=
/meta-foss-openswitch/recipes-security/apparmor/apparmor_2.10.95.bb?h=3Dma=
ster>>=

--Apple-Mail=_7ABDDCE1-3297-46CF-9BC4-9063F126403D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">On 21 Jun 2017, at 23:46, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:<br class=3D""><div><blockquote type=3D"cite" class=3D"">On Tue, =
Jun 20, 2017 at 9:56 AM Anders Montonen &lt;<a =
href=3D"mailto:Anders.Montonen@iki.fi" =
class=3D"">Anders.Montonen@iki.fi</a>&gt; wrote:<br class=3D""><div =
class=3D""><div class=3D""><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">Has anyone tried using AppArmor with Yocto? The =
recipe in the<br class=3D"">
meta-security layer is broken, and when fixed so it actually builds, =
it<br class=3D"">
turns out the installed init script relies on functions not found in<br =
class=3D"">
Yocto's version of LSB.<br class=3D"">
</blockquote><div dir=3D"auto" class=3D"">That seems a bug to me perhaps =
can be fixed in initscripts =
?</div></div></div></div></blockquote><div><br class=3D""></div></div>I =
ended up replacing the recipe with one combining the one from =
meta-security and from the OpenSwitch project[1]. This allowed me to get =
rid of the sysvinit and apache2 dependencies. I=E2=80=99ll have to look =
for Tom Rini=E2=80=99s tweaks and see if he fixed the Python issues more =
elegantly.<div class=3D""><br class=3D""></div><div class=3D"">IIRC the =
issues I ran into with the meta-security recipe were:</div><div =
class=3D"">- The tools under binutils require the static =
library</div><div class=3D"">- The systemd service file isn=E2=80=99t =
installed</div><div class=3D"">- The Python apparmor module is built =
against Python 2.7, while the scripts that use it are Python 3. =
Commit&nbsp;<br class=3D"">89683b4fee4616a08d249bc7afd7be55f3fa71a3 is =
wrong, it papers over a QA warning without fixing the actual =
problem.</div><div class=3D"">- The Python LibAppArmor module isn=E2=80=99=
t built at all.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,</div><div class=3D"">Anders<br class=3D""><div =
class=3D""><br class=3D""></div><div class=3D"">[1] &lt;<a =
href=3D"http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/ope=
nswitch/meta-foss-openswitch/recipes-security/apparmor/apparmor_2.10.95.bb=
?h=3Dmaster" =
class=3D"">http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/=
openswitch/meta-foss-openswitch/recipes-security/apparmor</a>&gt;</div></d=
iv></body></html>=

--Apple-Mail=_7ABDDCE1-3297-46CF-9BC4-9063F126403D--
