Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAFA7E00828; Thu,  1 Dec 2016 12:03:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A245E00529
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 12:03:39 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id u144so62114559wmu.1
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 12:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oy+j+wrNC6WoqHC4LzDVulBiOcynN2fMKRMOnwtybGA=;
	b=mke1fhrJc/tpxcjFTsc2/nulhOa41zpdW8A9OqVPvYtZ/NY8VJ36Plsex1eDkh8mza
	grGQrvSGRZREii0OJ7xgZ2ZxAMRlo8yPuLRTv9fx5dFqYmegWUlxvsUGZ+5ikifSwIpq
	dSpFYn26PELPVmH7vhRrId54c5rBB1GFQM1wOmgW2YlahcPYf3aohHEhR77pO6o+n3Er
	B91bHqYgUmqBnzOIcW6AdxtRDB7jxOopDoOFFe9q7THzpmY3sOGaKohZlguz43EfO7qE
	q3w8AWk2k7rG8BUGqrugtG2bb/8x2K6uZh2e2HIFslqGFwcSRLNg1So7bfVqg+bzXII3
	Daug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oy+j+wrNC6WoqHC4LzDVulBiOcynN2fMKRMOnwtybGA=;
	b=aPWqI6mxkQ8+r4WZAYwzZ5qzKohaCJwICAik2FwSaxLvWAW0qfRa9gxn82TVhipMYq
	Rb68RWSpP7ccSS8BPQNbswjg6ZoxyWcD7awBjqTzE2l0FOnPiMEz3fCQDjTkkjzAxQCH
	EV58U8hWl0yas8EpR16oF7k0nqCJAWVI0nLn3x90dO5GaIIODj3fi77SRYq8Bjd06CiF
	KGTgv05Yrl5ailYzvkf3FS/tjHDPDEeCMNQQxddjqU7y5S0a9mR72pXvZqXvFo4iBdNI
	kZZQ9mGJbXOcN48+5FBnylDPaX+puKmGOhxpVjH9mQinv4leoZYHnqBKQn9XEBaVcjGv
	82ZA==
X-Gm-Message-State: AKaTC01SLEt7tBenG/xyMae6sujWgpeUDxpnssCDPZUQiw6EDCSliWrRQ6EsMxECjXke+/HCHmaM3ahqBotv6w==
X-Received: by 10.28.39.199 with SMTP id n190mr33166210wmn.124.1480622618597; 
	Thu, 01 Dec 2016 12:03:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.134.144 with HTTP; Thu, 1 Dec 2016 12:03:38 -0800 (PST)
In-Reply-To: <DM5PR05MB2954510A2FB8EB42A2CC64F8BB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB2954A758A4F3A3642281F22FBB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CA+chaQeQuM4-WBOJ6Wo2nEupT1Meopg5bzeCeDeYqr=k2swAPQ@mail.gmail.com>
	<DM5PR05MB2954510A2FB8EB42A2CC64F8BB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2016 21:03:38 +0100
Message-ID: <CA+chaQdictM8Qfg4yoGBzLQ3aTZoLvqFJ_NgPbybS7GDMQVMWQ@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't set march=armv5te
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
X-List-Received-Date: Thu, 01 Dec 2016 20:03:41 -0000
Content-Type: multipart/alternative; boundary=001a114e313c3a63df05429e5150

--001a114e313c3a63df05429e5150
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The package architecture was change to match with compiler flags used in
build.

Most people were assuming that they are using thumb when they have seen "t"
in package arch, but because default value of ARM_INSTRUCTION_SET is "arm"
they in most cases weren't actually building with -mthumb.

On Thu, Dec 1, 2016 at 8:54 PM, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

> Martin,
>
>
>
> OK, so regardless of what the arch was finally getting set at, in this
> case since =E2=80=9C-marm=E2=80=9D was in the GCC compiler options it was=
 always compiling
> all the code in ARM mode and never in Thumb mode, correct?
>
>
>
> It still bugs me why the architecture name changed (I=E2=80=99ve traced t=
hrough
> the machine include path several times), but if at the end of the day it=
=E2=80=99ll
> be compiling the same code then I=E2=80=99ll move on to some more product=
ive tasks.
>
>
>
> Thanks,
>
> Bryan
>
>
>
> *From:* Martin Jansa [mailto:martin.jansa@gmail.com]
> *Sent:* Thursday, December 01, 2016 2:06 PM
> *To:* Bryan Evenson <bevenson@melinkcorp.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Can't set march=3Darmv5te
>
>
>
> Using and not using thumb was also controlled not only by TUNE_FEATURES
> (MACHINE defines that) but also by ARM_INSTRUCTION_SET (DISTRO defines
> that).
>
>
>
> So you weren't building with thumb enabled even when you were seeing
> armv5te before.
>
>
>
> On Thu, Dec 1, 2016 at 5:26 PM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:
>
> I'm in the process of upgrading from the dizzy branch to the fido branch,
> and I'm still a little confused about some tune changes that I'm seeing.
> I'm using an Atmel AT91SAM9G25 processor.  The meta-atmel layer that I am
> using had incorrectly set DEFAULTTUNE =3D "arm926ejs" which had been sett=
ing
> the architecture to "arm926ejste".  They fixed that here:
> https://github.com/linux4sam/meta-atmel/commit/
> 47238062c04ca97c2ea0570576072ad5b46ce261 and according to the commit
> message it should now be building with DEFAULTTUNE (and the resulting
> architecture) set to "armv5te".  However, when I build using my autobuild=
er
> I am getting an architecture of "armv5e".  From my understanding, this
> means the compiler thinks the processor does not have Thumb support.  I'v=
e
> tried "arm926ejs" and "armv5te" for DEFAULTTUNE settings and it hasn't ma=
de
> any difference.
>
> I've checked the working directories for a few packages, and previously
> the relevant gcc options were being set to: "-march=3Darmv5te -marm
> -mthumb-interwork -mtune=3Darm926ej-s".  Now they are being set to:
> "-march=3Darmv5e -marm  -mthumb-interwork".  How do I get it back to buil=
ding
> with march=3Darmv5te?
>
> Here is the autobuilder configuration that I am using:
>
> [nightly-atmel-demo-fido]
> builders: 'builder1'
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>                  'layerversion':{'core':'meta',
> 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
>              'branch':'fido'}},
>         {'meta-atmel':
>             {'repourl':'git://github.com/linux4sam/meta-atmel.git',
>              'branch':'fido'}},
>         {'meta-openembedded':
>             {'autoinclude':False, 'repourl':'git://git.
> openembedded.org/meta-openembedded',
>              'branch':'fido'}},
>         {'meta-qt5':
>             {'repourl':'git://github.com/meta-qt5/meta-qt5.git',
>              'branch':'fido'}}]
> steps: [{'SetDest':{}},
>         {'CheckOutLayers': {}},
>         {'RunPreamble': {}},
>         {'GetDistroVersion' : {'distro': 'poky'}},
>         {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE':
> 'i686', 'distro': 'poky-atmel', 'buildhistory': True, 'packages': 'ipk',
> 'atextappend': 'EXTRA_IMAGE_FEATURES =3D ""\nDEFAULTTUNE =3D "armv5te"\n'=
}},
>         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
>             ['meta-atmel', 'meta-qt5', 'meta-openembedded/meta-oe',
> 'meta-openembedded/meta-networking', 'meta-openembedded/meta-python']}},
>         {'BuildImages': {'images': 'atmel-demo-image'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
> scheduler: [{'nightly-scheduler-atmel-fido' :
>                 {'type':'Nightly',
>                  'hour':'1',
>                  'minute':'15',}}]
>
> The resulting build configuration:
> Build Configuration:
> BB_VERSION        =3D "1.26.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "at91sam9x5ek"
> DISTRO            =3D "poky-atmel"
> DISTRO_VERSION    =3D "1.8.2"
> TUNE_FEATURES     =3D "arm armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "fido:c9f0a99050ec0050f0dbcd55d0cd2ab18848113f"
> meta-atmel        =3D "fido:dd595e6e8ec7010cf646a9ca356b2e01f10e274c"
> meta-qt5          =3D "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
> meta-oe
> meta-networking
> meta-python       =3D "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"
>
> TUNE_FEATURES includes "thumb", but the compiler options aren't set for
> armv5te.  I've tried changing the DEFAULTTUNE specification in
> CreateAutoConf to "arm926ejs" and I've had the same results.  How do I ge=
t
> the architecture set back correctly for the processor I'm using?
>
> Thanks,
> Bryan Evenson
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a114e313c3a63df05429e5150
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The package architecture was change to match with compiler=
 flags used in build.<div><br></div><div>Most people were assuming that the=
y are using thumb when they have seen &quot;t&quot; in package arch, but be=
cause default value of ARM_INSTRUCTION_SET is &quot;arm&quot; they in most =
cases weren&#39;t actually building with -mthumb.</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 1, 2016 at 8:54 PM,=
 Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.=
com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_4885312099800010658WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Martin,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">OK, so regardless of what the arch was finally gett=
ing set at, in this case since =E2=80=9C-marm=E2=80=9D was in the GCC compi=
ler options it was always compiling all the code in ARM mode and
 never in Thumb mode, correct?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">It still bugs me why the architecture name changed =
(I=E2=80=99ve traced through the machine include path several times), but i=
f at the end of the day it=E2=80=99ll be compiling the same code
 then I=E2=80=99ll move on to some more productive tasks.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Thanks,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Bryan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Martin Jansa [mailto:<a href=
=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com=
</a><wbr>]
<br>
<b>Sent:</b> Thursday, December 01, 2016 2:06 PM<br>
<b>To:</b> Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com" tar=
get=3D"_blank">bevenson@melinkcorp.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Can&#39;t set march=3Darmv5te<u></u><u></u></sp=
an></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Using and not using thumb was also controlled not on=
ly by TUNE_FEATURES (MACHINE defines that) but also by=C2=A0ARM_INSTRUCTION=
_SET (DISTRO defines that).<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">So you weren&#39;t building with thumb enabled even =
when you were seeing armv5te before.<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Thu, Dec 1, 2016 at 5:26 PM, Bryan Evenson &lt;<a=
 href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkc=
orp.com</a>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal">I&#39;m in the process of upgrading from the dizzy b=
ranch to the fido branch, and I&#39;m still a little confused about some tu=
ne changes that I&#39;m seeing.=C2=A0 I&#39;m using an Atmel AT91SAM9G25 pr=
ocessor.=C2=A0 The meta-atmel layer that I am using had incorrectly
 set DEFAULTTUNE =3D &quot;arm926ejs&quot; which had been setting the archi=
tecture to &quot;arm926ejste&quot;.=C2=A0 They fixed that here:
<a href=3D"https://github.com/linux4sam/meta-atmel/commit/47238062c04ca97c2=
ea0570576072ad5b46ce261" target=3D"_blank">
https://github.com/linux4sam/<wbr>meta-atmel/commit/<wbr>47238062c04ca97c2e=
a0570576072a<wbr>d5b46ce261</a> and according to the commit message it shou=
ld now be building with DEFAULTTUNE (and the resulting architecture) set to=
 &quot;armv5te&quot;.=C2=A0 However, when I build using my autobuilder
 I am getting an architecture of &quot;armv5e&quot;.=C2=A0 From my understa=
nding, this means the compiler thinks the processor does not have Thumb sup=
port.=C2=A0 I&#39;ve tried &quot;arm926ejs&quot; and &quot;armv5te&quot; fo=
r DEFAULTTUNE settings and it hasn&#39;t made any difference.<br>
<br>
I&#39;ve checked the working directories for a few packages, and previously=
 the relevant gcc options were being set to: &quot;-march=3Darmv5te -marm -=
mthumb-interwork -mtune=3Darm926ej-s&quot;.=C2=A0 Now they are being set to=
: &quot;-march=3Darmv5e -marm=C2=A0 -mthumb-interwork&quot;.=C2=A0 How do I=
 get
 it back to building with march=3Darmv5te?<br>
<br>
Here is the autobuilder configuration that I am using:<br>
<br>
[nightly-atmel-demo-fido]<br>
builders: &#39;builder1&#39;<br>
repos: [{&#39;poky&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://git.yoctoproject.org/poky" target=3D"_blank">git.<wbr>yoctop=
roject.org/poky</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;layerver=
sion&#39;:{&#39;core&#39;:&#39;meta&#39;<wbr>, &#39;yoctobsp&#39;:&#39;meta=
-yocto-bsp&#39;, &#39;yocto&#39;:&#39;meta-yocto&#39;, &#39;poky&#39;:&#39;=
meta-poky&#39;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-atmel&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/linux4sam/meta-atmel.git" target=3D"_blank">githu=
b.com/<wbr>linux4sam/meta-atmel.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-openembedded&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;autoinclude&#39;:False, &#3=
9;repourl&#39;:&#39;git://<a href=3D"http://git.openembedded.org/meta-opene=
mbedded" target=3D"_blank">git.<wbr>openembedded.org/meta-<wbr>openembedded=
</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-qt5&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/meta-qt5/meta-qt5.git" target=3D"_blank">github.c=
om/<wbr>meta-qt5/meta-qt5.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}}]<br>
steps: [{&#39;SetDest&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CheckOutLayers&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;RunPreamble&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;GetDistroVersion&#39; : {&#39;distro&#39;=
: &#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateAutoConf&#39;: {&#39;machine&#39;: =
&#39;at91sam9x5ek&#39;, &#39;SDKMACHINE&#39;: &#39;i686&#39;, &#39;distro&#=
39;: &#39;poky-atmel&#39;, &#39;buildhistory&#39;: True, &#39;packages&#39;=
: &#39;ipk&#39;, &#39;atextappend&#39;: &#39;EXTRA_IMAGE_FEATURES =3D &quot=
;&quot;\nDEFAULTTUNE =3D &quot;armv5te&quot;\n&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateBBLayersConf&#39;: {&#39;buildprovi=
der&#39; : &#39;yocto&#39;, &#39;layerdirs&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;meta-atmel&#39;, &#39;meta-=
qt5&#39;, &#39;meta-openembedded/meta-oe&#39;, &#39;meta-openembedded/meta-=
<wbr>networking&#39;, &#39;meta-openembedded/meta-<wbr>python&#39;]}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;BuildImages&#39;: {&#39;images&#39;: &#39=
;atmel-demo-image&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;SyncPersistDB&#39; : {&#39;commit&#39; : =
True, &#39;distro&#39;:&#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishLayerTarballs&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishArtifacts&#39;: {&#39;artifacts&#3=
9;: [&#39;at91sam9x5ek&#39;, &#39;ipk&#39;]}}]<br>
scheduler: [{&#39;nightly-scheduler-atmel-<wbr>fido&#39; :<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;type&#39;:&#3=
9;Nightly&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;hour&#39=
;:&#39;1&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;minute&#=
39;:&#39;15&#39;,}}]<br>
<br>
The resulting build configuration:<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.26.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;at91sam9x5ek&quot=
;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky-atmel&quot;<=
br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8.2&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv5 thumb dsp&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;soft&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;fido:<wbr>c9f0a99050ec0050f0dbcd55d0c=
d2a<wbr>b18848113f&quot;<br>
meta-atmel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fido:<wbr>dd595e6e8ec7010cf=
646a9ca356b2e<wbr>01f10e274c&quot;<br>
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fido:<wbr>90919b9d8698=
8e7da01fa2c0a07246<wbr>b5b5600a5d&quot;<br>
meta-oe<br>
meta-networking<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fido:<wbr>902964a4da26e4601=
8d2a8d17dcdda<wbr>1ac4627a39&quot;<br>
<br>
TUNE_FEATURES includes &quot;thumb&quot;, but the compiler options aren&#39=
;t set for armv5te.=C2=A0 I&#39;ve tried changing the DEFAULTTUNE specifica=
tion in CreateAutoConf to &quot;arm926ejs&quot; and I&#39;ve had the same r=
esults.=C2=A0 How do I get the architecture set back correctly for the proc=
essor
 I&#39;m using?<br>
<br>
Thanks,<br>
Bryan Evenson<br>
<span class=3D"m_4885312099800010658hoenzb"><span style=3D"color:#888888">-=
-</span></span><span style=3D"color:#888888"><br>
<span class=3D"m_4885312099800010658hoenzb">______________________________<=
wbr>_________________</span><br>
<span class=3D"m_4885312099800010658hoenzb">yocto mailing list</span><br>
<span class=3D"m_4885312099800010658hoenzb"><a href=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank">yocto@yoctoproject.org</a></span><br>
<span class=3D"m_4885312099800010658hoenzb"><a href=3D"https://lists.yoctop=
roject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<wb=
r>org/listinfo/yocto</a></span></span><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--001a114e313c3a63df05429e5150--
