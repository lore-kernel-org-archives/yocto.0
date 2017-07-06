Return-Path: <droid.baner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F8DDE00B28; Wed,  5 Jul 2017 20:28:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_20_30, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (droid.baner[at]gmail.com)
	* 2.0 HTML_OBFUSCATE_20_30 BODY: Message is 20% to 30% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08347E00ACF
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 20:28:15 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id v193so2925186ywg.2
	for <yocto@yoctoproject.org>; Wed, 05 Jul 2017 20:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Nq4bXW3hay0nOMh9w2mx9g+xica53znRJD6+p/DlMHo=;
	b=qb7aXZHmchqqeEaat22gDQpuauYmwgfexo5ux/Q/BGE6qu5diQhM24rJi1Bnk0mhse
	Mgz5xMDMkHFrr7RqPKiWYvvUZ0QuPoHRkp6I0mAsrbS/kQLPgZCUers5zsbo1tgUU21w
	NrqFMcBG4r6XPiLoacP8PZb8ggNZxZ/B92NZypZga+UYR2drIp/PjeeaztJPiFcmJNba
	1MWp404AC2PTTKTUcf5L4dj2cw0TzPcN7QqC094+KBIBjrpiTH9QsWp0YF3Scf5Vk4hb
	l93vztq4tdPnPbye2gnxOye0OmfQEJg6ZRRXdOuUroq+d7sTcg4kyXlq716fzsxh+TWM
	g5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Nq4bXW3hay0nOMh9w2mx9g+xica53znRJD6+p/DlMHo=;
	b=GWFH5BhdxL00Uw7KQ7ixD1Mgp8mbPo3LHCmGBBxu098d8IohohdlHSBtKPkkcYrUH8
	f9FR/kfT1UUWW0ZaInqVbmihnpkGDJED+/YAT/TpoeH0CxAVRz2DCxF9YsNmA4NPr9hN
	EV6rA98BdwujC82nDlRa8bsYrR1neivc/W9kVATmPxCDgsz1nPQRD3K7nPMPyHaghTpa
	gSD8kzzFb92j/wLKfqy/DlkwH4GOFxy87r/0D/mupu8sf/PxzgGmGnsILTRNmQ2LDDuY
	AEsWXtSF1MZ8R01YqaDlXRIEWqdKvLfrYnCAO8THWjK04cmmdHET/qsLnAKeb4IeKznZ
	240w==
X-Gm-Message-State: AKS2vOxUfnCvpXef+r1vvHTESro76B1qS5UgHlgvyLTlF/+3mvFV9LGw
	AzKu7Q922bPNi7Gm7ZRZlyYUCGfvfg==
X-Received: by 10.13.199.195 with SMTP id j186mr36535436ywd.118.1499311694630; 
	Wed, 05 Jul 2017 20:28:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.78.145 with HTTP; Wed, 5 Jul 2017 20:28:14 -0700 (PDT)
Received: by 10.129.78.145 with HTTP; Wed, 5 Jul 2017 20:28:14 -0700 (PDT)
From: sourabh banerjee <droid.baner@gmail.com>
Date: Thu, 6 Jul 2017 08:58:14 +0530
Message-ID: <CANmFEgtrdWTZYa1=pU0gBCiD1AP+gGNvviYkj1DmELJAkwUnWg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: setting groups and users other than root
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
X-List-Received-Date: Thu, 06 Jul 2017 03:28:19 -0000
Content-Type: multipart/alternative; boundary="001a114e61aef754a405539db433"

--001a114e61aef754a405539db433
Content-Type: text/plain; charset="UTF-8"

I have observed that the group and user default to root for unless I do
explicit chown and chgrp in the do_install step for a given recipe.

I have few recipes for which the group and user are to be set to something
other than root. Is there a way to achieve this? Such that the user and
group default to something else for these given recipes?

--001a114e61aef754a405539db433
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><p style=3D"margin:0px 0px 0.8em;padding:0px;border:0px;f=
ont-size:15px;line-height:inherit;font-family:&quot;helvetica neue&quot;,he=
lvetica,arial,sans-serif;vertical-align:baseline;color:rgb(12,13,14);backgr=
ound-color:rgb(255,255,255)">I have observed that the group and user defaul=
t to=C2=A0<code style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-size:13px;line-height:inhe=
rit;font-family:&#39;consolas&#39;,&#39;menlo&#39;,&#39;monaco&#39;,&#39;lu=
cida console&#39;,&#39;liberation mono&#39;,&#39;dejavu sans mono&#39;,&#39=
;bitstream vera sans mono&#39;,&#39;courier new&#39;,monospace;vertical-ali=
gn:baseline;background-color:rgb(240,240,240);max-height:300px">root</code>=
=C2=A0for unless I do explicit=C2=A0<code style=3D"margin:0px;padding:0px;b=
order:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-=
size:13px;line-height:inherit;font-family:&#39;consolas&#39;,&#39;menlo&#39=
;,&#39;monaco&#39;,&#39;lucida console&#39;,&#39;liberation mono&#39;,&#39;=
dejavu sans mono&#39;,&#39;bitstream vera sans mono&#39;,&#39;courier new&#=
39;,monospace;vertical-align:baseline;background-color:rgb(240,240,240);max=
-height:300px">chown</code>=C2=A0and=C2=A0<code style=3D"margin:0px;padding=
:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit=
;font-size:13px;line-height:inherit;font-family:&#39;consolas&#39;,&#39;men=
lo&#39;,&#39;monaco&#39;,&#39;lucida console&#39;,&#39;liberation mono&#39;=
,&#39;dejavu sans mono&#39;,&#39;bitstream vera sans mono&#39;,&#39;courier=
 new&#39;,monospace;vertical-align:baseline;background-color:rgb(240,240,24=
0);max-height:300px">chgrp</code>=C2=A0in the=C2=A0<code style=3D"margin:0p=
x;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weigh=
t:inherit;font-size:13px;line-height:inherit;font-family:&#39;consolas&#39;=
,&#39;menlo&#39;,&#39;monaco&#39;,&#39;lucida console&#39;,&#39;liberation =
mono&#39;,&#39;dejavu sans mono&#39;,&#39;bitstream vera sans mono&#39;,&#3=
9;courier new&#39;,monospace;vertical-align:baseline;background-color:rgb(2=
40,240,240);max-height:300px">do_install</code>=C2=A0step for a given recip=
e.</p><p style=3D"margin:0px;padding:0px;border:0px;font-size:15px;line-hei=
ght:inherit;font-family:&quot;helvetica neue&quot;,helvetica,arial,sans-ser=
if;vertical-align:baseline;color:rgb(12,13,14);background-color:rgb(255,255=
,255)">I have few recipes for which the group and user are to be set to som=
ething other than=C2=A0<code style=3D"margin:0px;padding:0px;border:0px;fon=
t-style:inherit;font-variant:inherit;font-weight:inherit;font-size:13px;lin=
e-height:inherit;font-family:&#39;consolas&#39;,&#39;menlo&#39;,&#39;monaco=
&#39;,&#39;lucida console&#39;,&#39;liberation mono&#39;,&#39;dejavu sans m=
ono&#39;,&#39;bitstream vera sans mono&#39;,&#39;courier new&#39;,monospace=
;vertical-align:baseline;background-color:rgb(240,240,240);max-height:300px=
">root</code>. Is there a way to achieve this? Such that the=C2=A0<code sty=
le=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inh=
erit;font-weight:inherit;font-size:13px;line-height:inherit;font-family:&#3=
9;consolas&#39;,&#39;menlo&#39;,&#39;monaco&#39;,&#39;lucida console&#39;,&=
#39;liberation mono&#39;,&#39;dejavu sans mono&#39;,&#39;bitstream vera san=
s mono&#39;,&#39;courier new&#39;,monospace;vertical-align:baseline;backgro=
und-color:rgb(240,240,240);max-height:300px">user</code>=C2=A0and=C2=A0<cod=
e style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-size:13px;line-height:inherit;font-famil=
y:&#39;consolas&#39;,&#39;menlo&#39;,&#39;monaco&#39;,&#39;lucida console&#=
39;,&#39;liberation mono&#39;,&#39;dejavu sans mono&#39;,&#39;bitstream ver=
a sans mono&#39;,&#39;courier new&#39;,monospace;vertical-align:baseline;ba=
ckground-color:rgb(240,240,240);max-height:300px">group=C2=A0</code>default=
 to something else for these given recipes?</p></div>

--001a114e61aef754a405539db433--
