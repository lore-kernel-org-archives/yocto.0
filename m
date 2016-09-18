Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF709E00D98; Sun, 18 Sep 2016 14:36:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E45E0073D
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 14:36:08 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id my20so3007696pab.3
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 14:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=OvnOvpj2l9rgtgwZ6gjMdjj911TiVbfmlrj4HvsVgCE=;
	b=duu9fW3ZV+h/0aRZrwpXjhBGR6gfU+F0IwXBp+75+ID728mnfQlDeZTG4VjBuoxb/s
	+muMW/9ja/N8xony8lLwbkEHwjQ7aIRCJ0syxmp20/AE1VsW61JjorZQhcR93ZuJPwCW
	cj/KjWh6CgGs33VisYs4Zp8II5Md7NGgv58S0i51HxGpZOjOchNDArKIbHuAbwX1Xmpz
	5oGJM3Sj/mKMNC6SIPh6sYx7ns/NoFCK8TkC1OQBLn9OSN7cc4MLeXF/Y0z+Li1ppo38
	PRh2wap0XSAdWoLxKWT2bpDNSLqS/N8eDIayCqubpGbSDYkrXugPwFkC3yJj4dDzjfaa
	3NBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=OvnOvpj2l9rgtgwZ6gjMdjj911TiVbfmlrj4HvsVgCE=;
	b=hUIXmpf4Go7ufmPIl4w4i/vpzF1GA+lLHo9TB7NaE+lhZR78ebyTgYvgUi4GQunoDc
	nEijICyLU+uY4TlF3WzwDVPrTfmeb9l6enrDIUo/UzvyCSPLhyP1Xm4Yz8PB6G9/eMBi
	C9W1wsvZTpBrlHolWj+5jRPR44fkbElQjpi2AzjJLJL/T1oA4MOBEY1i4qtl/gw5mWfb
	HUUwLzK8cTlNSWwmH2dTaxzKz2r8LGxFeNfKYyuD/siENlKUezLtv1HU2lfwbfDiQ9BF
	P+T0cYlhBvXK/i4aGXHDrZCLth1EHrZZCcLm8BfQ0qS9RNvSxElPM6uHXa+29Y1Buv5R
	1wLQ==
X-Gm-Message-State: AE9vXwMflJG/H613ThEiSdSej4mmP9BiBXcmaJu1IFY6sU/zl6IkRy/TCY6kQYc44D6ywA==
X-Received: by 10.66.235.100 with SMTP id ul4mr41508087pac.50.1474234568441;
	Sun, 18 Sep 2016 14:36:08 -0700 (PDT)
Received: from ?IPv6:2607:fb90:42a:63a4:2db0:5bb:90c6:efa?
	([2607:fb90:42a:63a4:2db0:5bb:90c6:efa])
	by smtp.gmail.com with ESMTPSA id
	s7sm66219206pfk.11.2016.09.18.14.36.07
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 18 Sep 2016 14:36:07 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <TicoTimo@gmail.com>
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (14A403)
In-Reply-To: <c463add6-4cc0-d7a6-71fe-73452af2bfce@gmail.com>
Date: Sun, 18 Sep 2016 14:36:06 -0700
Message-Id: <F906D785-04AD-41D0-A969-BC7E2C42CD5D@gmail.com>
References: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
	<1474027656.2923.0.camel@linux.intel.com>
	<c463add6-4cc0-d7a6-71fe-73452af2bfce@gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Sun, 18 Sep 2016 21:36:11 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-23FA6BD7-2808-40BE-BA09-6714DFE120B0
Content-Transfer-Encoding: 7bit

--Apple-Mail-23FA6BD7-2808-40BE-BA09-6714DFE120B0
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

The last commit to support Jethro in the plugins was http://git.yoctoproject=
.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3De38ce99f413b832be4a8c6db5f739fe=
d0041d2f4

Krogoth (2.1.1+) continues to be supported.

The difference is the drop of ADT and HOB. We have very limited resources to=
 backport.

Some functionality might still work on Jethro. If the community would like t=
o help continue/improve Jethro support in the plugins, we can provide some p=
ointers to what is needed.


> On Sep 18, 2016, at 2:22 PM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
> Are these eclipse  versions supported by Krogoth or Jethro?
>=20
> - armin
>=20
>> On 09/16/2016 05:07 AM, Joshua Lock wrote:
>>> On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:
>>> We are no longer supporting kepler or luna. Remove the build set for
>>> those and
>>> remove luna from yoctoAB.conf.
>> Pushed to master, thanks!
>>=20
>>> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
>>> ---
>>>  buildset-config.controller/eclipse-plugin-kepler.conf | 10 -------
>>> ---
>>>  buildset-config.controller/eclipse-plugin-luna.conf   | 11 -------
>>> ----
>>>  buildset-config.controller/yoctoAB.conf               |  1 -
>>>  3 files changed, 22 deletions(-)
>>>  delete mode 100644 buildset-config.controller/eclipse-plugin-
>>> kepler.conf
>>>  delete mode 100644 buildset-config.controller/eclipse-plugin-
>>> luna.conf
>>>=20
>>> diff --git a/buildset-config.controller/eclipse-plugin-kepler.conf
>>> b/buildset-config.controller/eclipse-plugin-kepler.conf
>>> deleted file mode 100644
>>> index 9948852..0000000
>>> --- a/buildset-config.controller/eclipse-plugin-kepler.conf
>>> +++ /dev/null
>>> @@ -1,10 +0,0 @@
>>> -[eclipse-plugin-kepler]
>>> -builders: 'example-worker'
>>> -repos: [{'eclipse-poky-kepler':
>>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>>> -             'branch':'kepler-master'}}]
>>> -steps: [{'SetDest':{}},
>>> -        {'CheckOutLayers': {}},
>>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
>>> kepler'}},
>>> -        {'PublishLayerTarballs':{}},
>>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>>> kepler']}}]
>>> diff --git a/buildset-config.controller/eclipse-plugin-luna.conf
>>> b/buildset-config.controller/eclipse-plugin-luna.conf
>>> deleted file mode 100644
>>> index d745af3..0000000
>>> --- a/buildset-config.controller/eclipse-plugin-luna.conf
>>> +++ /dev/null
>>> @@ -1,11 +0,0 @@
>>> -[eclipse-plugin-luna]
>>> -builders: 'example-worker'
>>> -repos: [{'eclipse-poky-luna':
>>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>>> -             'branch':'luna-master' }}]
>>> -steps: [{'SetDest':{}},
>>> -        {'CheckOutLayers': {}},
>>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-luna'}},
>>> -        {'PublishLayerTarballs':{}},
>>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>>> luna']}}]
>>> -
>>> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
>>> config.controller/yoctoAB.conf
>>> index fe9750b..309a5ab 100644
>>> --- a/buildset-config.controller/yoctoAB.conf
>>> +++ b/buildset-config.controller/yoctoAB.conf
>>> @@ -1,6 +1,5 @@
>>>  [BuildSets]
>>>  order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars',
>>> -        'eclipse-plugin-luna',
>>>          'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb',
>>>          'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',
>>>          'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
>>> --=20
>>> 2.7.0
>>>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-23FA6BD7-2808-40BE-BA09-6714DFE120B0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><div style=3D"direction: inherit;">The=
 last commit to support Jethro in the plugins was&nbsp;<a href=3D"http://git=
.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3De38ce99f413b832be4=
a8c6db5f739fed0041d2f4">http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-po=
ky/commit/?id=3De38ce99f413b832be4a8c6db5f739fed0041d2f4</a></div><div style=
=3D"direction: inherit;"><br></div><div style=3D"direction: inherit;">Krogot=
h (2.1.1+) continues to be supported.</div><div style=3D"direction: inherit;=
"><br></div><div style=3D"direction: inherit;">The difference is the drop of=
 ADT and HOB. We have very limited resources to backport.</div><div style=3D=
"direction: inherit;"><br></div><div style=3D"direction: inherit;">Some func=
tionality might still work on Jethro. If the community would like to help co=
ntinue/improve Jethro support in the plugins, we can provide some pointers t=
o what is needed.</div><div style=3D"direction: inherit;"><br></div></div><d=
iv><br>On Sep 18, 2016, at 2:22 PM, akuster808 &lt;<a href=3D"mailto:akuster=
808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br><br></div><blockquote t=
ype=3D"cite"><div><span></span><br><span>Are these eclipse &nbsp;versions su=
pported by Krogoth or Jethro?</span><br><span></span><br><span>- armin</span=
><br><span></span><br><span>On 09/16/2016 05:07 AM, Joshua Lock wrote:</span=
><br><blockquote type=3D"cite"><span>On Thu, 2016-09-15 at 22:08 -0700, Gray=
don, Tracy wrote:</span><br></blockquote><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>We are no longer supporting kepler or luna. Remove th=
e build set for</span><br></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>those and</span><br></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>remove luna fr=
om yoctoAB.conf.</span><br></blockquote></blockquote><blockquote type=3D"cit=
e"><span>Pushed to master, thanks!</span><br></blockquote><blockquote type=3D=
"cite"><span></span><br></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span>Signed-off-by: Graydon, Tracy &lt;<a href=3D"mailto:tracy=
.graydon@intel.com">tracy.graydon@intel.com</a>&gt;</span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>---</s=
pan><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><span> &nbsp;buildset-config.controller/eclipse-plugin-kepler.conf=
 | 10 -------</span><br></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>---</span><br></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;buildset-config=
.controller/eclipse-plugin-luna.conf &nbsp;&nbsp;| 11 -------</span><br></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><s=
pan>----</span><br></blockquote></blockquote><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><span> &nbsp;buildset-config.controller/yoctoAB.conf &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;| &nbsp;1 -</span><br></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span> &nbsp;3 files changed, 22 deletions(-)<=
/span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><span> &nbsp;delete mode 100644 buildset-config.controller/eclip=
se-plugin-</span><br></blockquote></blockquote><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><span>kepler.conf</span><br></blockquote></blockquote=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;delete mod=
e 100644 buildset-config.controller/eclipse-plugin-</span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>luna.c=
onf</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><span></span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>diff --git a/buildset-config.controll=
er/eclipse-plugin-kepler.conf</span><br></blockquote></blockquote><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><span>b/buildset-config.controller=
/eclipse-plugin-kepler.conf</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>deleted file mode 100644</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>index 9948852..0000000</span><br></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span>--- a/buildset-config.c=
ontroller/eclipse-plugin-kepler.conf</span><br></blockquote></blockquote><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>+++ /dev/null</span><=
br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><span>@@ -1,10 +0,0 @@</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>-[eclipse-plugin-kepler]</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>-builders: 'example-worker'</span><br></blockquote></blockquote>=
<blockquote type=3D"cite"><blockquote type=3D"cite"><span>-repos: [{'eclipse=
-poky-kepler':</span><br></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;{'repourl':'git://git.yoctoproject.org/eclipse-poky=
',</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;'branch':'kepler-master'}}]</span><br></blockquote></bloc=
kquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>-steps: [{'=
SetDest':{}},</span><br></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
{'CheckOutLayers': {}},</span><br></blockquote></blockquote><blockquote type=
=3D"cite"><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;{'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-</span><br></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span>kepler'}},</span><br></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;{'PublishLayerTarballs':{}},</span><br></blockquote></blockquote><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;{'PublishArtifacts': {'artifacts': ['eclipse-plugin-</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>kepler']}}]</span><br></blockquote></blockquote><blockquote type=
=3D"cite"><blockquote type=3D"cite"><span>diff --git a/buildset-config.contr=
oller/eclipse-plugin-luna.conf</span><br></blockquote></blockquote><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span>b/buildset-config.controlle=
r/eclipse-plugin-luna.conf</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>deleted file mode 100644</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>index d745af3..0000000</span><br></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span>--- a/buildset-config.c=
ontroller/eclipse-plugin-luna.conf</span><br></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span>+++ /dev/null</span><br=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><span>@@ -1,11 +0,0 @@</span><br></blockquote></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><span>-[eclipse-plugin-luna]</span><br=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><span>-builders: 'example-worker'</span><br></blockquote></blockquote><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>-repos: [{'eclipse-po=
ky-luna':</span><br></blockquote></blockquote><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;{'repourl':'git://git.yoctoproject.org/eclipse-poky',</s=
pan><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;'branch':'luna-master' }}]</span><br></blockquote></blockquote=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span>-steps: [{'SetDes=
t':{}},</span><br></blockquote></blockquote><blockquote type=3D"cite"><block=
quote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{'Chec=
kOutLayers': {}},</span><br></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;{'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-luna'}},</span><br><=
/blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"=
><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{'PublishLayerTarballs':{=
}},</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{'PublishA=
rtifacts': {'artifacts': ['eclipse-plugin-</span><br></blockquote></blockquo=
te><blockquote type=3D"cite"><blockquote type=3D"cite"><span>luna']}}]</span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>-</span><br></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><span>diff --git a/buildset-config.controller/yoc=
toAB.conf b/buildset-</span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>config.controller/yoctoAB.conf</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>index fe9750b..309a5ab 100644</span><br></blockquote></blockquot=
e><blockquote type=3D"cite"><blockquote type=3D"cite"><span>--- a/buildset-c=
onfig.controller/yoctoAB.conf</span><br></blockquote></blockquote><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><span>+++ b/buildset-config.contro=
ller/yoctoAB.conf</span><br></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span>@@ -1,6 +1,5 @@</span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp=
;[BuildSets]</span><br></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><span> &nbsp;order: ['nightly', 'eclipse-plugin-neo=
n', 'eclipse-plugin-mars',</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;'eclipse-plugin-luna',</span><br></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'nightly-arm', 'nightly-arm64', 'nightly-ar=
m-lsb',</span><br></blockquote></blockquote><blockquote type=3D"cite"><block=
quote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',</span><br></block=
quote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span=
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'nightly-ppc', 'nigh=
tly-ppc-lsb', 'nightly-no-x11',</span><br></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span>-- </span><br></blockquote=
></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>2.7.=
0</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span></span><br></blockquote></blockquote><span></span><br><sp=
an>-- </span><br><span>_______________________________________________</span=
><br><span>yocto mailing list</span><br><span><a href=3D"mailto:yocto@yoctop=
roject.org">yocto@yoctoproject.org</a></span><br><span><a href=3D"https://li=
sts.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo=
/yocto</a></span><br></div></blockquote></body></html>=

--Apple-Mail-23FA6BD7-2808-40BE-BA09-6714DFE120B0--
