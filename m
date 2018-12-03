Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7EFFE00BB7; Mon,  3 Dec 2018 06:15:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60105E0095C
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 06:15:32 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id 81so11715624otj.2
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 06:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L7XagCDhpEtvz96u8V6RLtpUakDGe+6FiZ7K3rBGOI4=;
	b=loaoPaOzPnxSf/2GGS7yZd2FWyp20CWlrcFEQDtYqvqnXPcIdk38jIJbo3EsXRYhzI
	64JALoDul9XFOHB0COkzVi7gonO114KyWUIBIKYcca9dG0ljohP7e43jg6+AHgxSFtRf
	NqS/G7gtWJaYd2yrGT+jr8htTKjvyyJXxWM2xagMJYvC/QdN28jRVn7Mr67HsI8FpFLH
	MKzW1JAy/G6joDZ3+UCJgE3MeHUftscSYBvparh1X0RJndLmwVGrGOX2vJqR80FUUsRo
	a4ml/SQB3QOoiRUSBW8xrOy3s2FD36bIXuGlmEPxC+7gA26beS2tdjbLgfmUMa+3JMJB
	PJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L7XagCDhpEtvz96u8V6RLtpUakDGe+6FiZ7K3rBGOI4=;
	b=jMK2utnoMCDkjJw+qmRKr++Cbvluxn1Ywp5ez4s4r0wZSMiInrL2raF5jMjiNdUGLE
	/MiyK5q2T42pmeUSq0xxmKLszhDtH126hHLe2K/JYLBkwSWwk4F181CWDHOm+pZ+pdxc
	hRCl7QFLaJXJcGSI6yjVdu1vfPfeuEyqDbgFvij9wYaPwqdJI7La0lN6mwq1PvhUeAXO
	Q5GeO46VIvGnEee/qhKCXo07VMf7zRcrNwa+LqQlwQe0G70hOeH1UqtExhLjUaqeiVin
	lAS7hW+4ZJersvOMsgPm3XIANVG3nTH6scwXJMPo4Y2WYr09s2w1PF9WW2KXsHC48GXp
	YsYA==
X-Gm-Message-State: AA+aEWZUHSIW2VaOC9R6PuM3JKJn4kWhcdIikonaIohYUuq/voRQI7Ys
	9lHPPSfRAkMrkpoF2a3XMfoBuEn4tLB25YVFHayeg0Y/
X-Google-Smtp-Source: AFSGD/W4ou2fWz65ZCq74QgNIbH7tN89Nuov55eNfdf+ZudF8Enl6dP2J2C4CCbViWL+GLK5A4OQ928RJ1u699ssHTA=
X-Received: by 2002:a9d:7201:: with SMTP id u1mr10654777otj.365.1543846531566; 
	Mon, 03 Dec 2018 06:15:31 -0800 (PST)
MIME-Version: 1.0
References: <CAH+z4xQBO6WjqopVDYd7ix-eDk8hjwHe4cuWVeWLVd-zY8-RvA@mail.gmail.com>
	<DM6PR01MB4636D09820FB14FCE31DE8F38FD70@DM6PR01MB4636.prod.exchangelabs.com>
In-Reply-To: <DM6PR01MB4636D09820FB14FCE31DE8F38FD70@DM6PR01MB4636.prod.exchangelabs.com>
From: Conor Slater <slaterc@gmail.com>
Date: Mon, 3 Dec 2018 15:15:19 +0100
Message-ID: <CAH+z4xTRoMJXwq9NCt7o+bn6UC-zrQHvxBuxFii7Dk9VbMb8zg@mail.gmail.com>
To: "Muhlenkamp, Lewis" <lewis.muhlenkamp@stryker.com>
Cc: yocto@yoctoproject.org
Subject: Re: GLIBC_GENERATE_LOCALES setting not generating locales
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
X-List-Received-Date: Mon, 03 Dec 2018 14:15:33 -0000
Content-Type: multipart/alternative; boundary="0000000000001a1203057c1ec8cb"

--0000000000001a1203057c1ec8cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I worked a bit with Lewis to figure this out.

Conclusion - It's the IMAGE_LINGUAS variable that loads the locales, not
the GLIBC_GENERATE_LOCALES. The GLIB variable is more so a build
optimisation.

In my case the IMAGE_LINGUAS was being reset by an image file.

To check if the settings are correct I ran:
$ bitbake gmpanel-dev-image -e | grep -E
"^GLIBC_GENERATE_LOCALES=3D|^IMAGE_LINGUAS=3D"

I was getting:
GLIBC_GENERATE_LOCALES=3D"en_IE.UTF-8 fr_CH.UTF-8"
IMAGE_LINGUAS=3D"en-us"

Even though my local.conf had:
GLIBC_GENERATE_LOCALES =3D "en_IE.UTF-8 fr_CH.UTF-8"
IMAGE_LINGUAS =3D "en-ie fr-ch"

In my poky directory I did a:
grep -r "en-us" .

And found a line in the image I was using that set IMAGE_LINGUAS =3D "en-us=
"
and removed it.

The locales were the loaded correctly.

Lewis had the same problem as his IMAGE_LINGUAS was being set to " ".

Best Regards,

Conor.

On Mon, 26 Nov 2018 at 21:40, Muhlenkamp, Lewis <
lewis.muhlenkamp@stryker.com> wrote:

> Hello,
>
>
>
> I too am encountering this same issue.  Here is a diff from the default
> local.conf file:
>
>
>
> diff conf/local.conf conf/local.conf~
>
> 28,31d27
>
> < # From meta-intel BSP layer
>
> < #MACHINE ?=3D "intel-core2-32"
>
> < MACHINE ?=3D "intel-corei7-64"
>
> < #
>
> 46c42
>
> < DL_DIR ?=3D "/downloads"
>
> ---
>
> > #DL_DIR ?=3D "${TOPDIR}/downloads"
>
> 89c85
>
> < PACKAGE_CLASSES ?=3D "package_rpm"
>
> ---
>
> > PACKAGE_CLASSES ?=3D "package_ipk"
>
> 221,227d216
>
> < DISTRO_FEATURES_append =3D " opengl"
>
> < CORE_IMAGE_EXTRA_INSTALL +=3D "rpm python python3 python3-pip
> python3-flask"
>
> < IMAGE_INSTALL_append =3D " glibc-utils localedef"
>
> < GLIBC_GENERATE_LOCALES =3D "en_US.UTF-8"
>
> < SERIAL_CONSOLES =3D "38400 tty1"
>
> < IMAGE_FSTYPES +=3D "live"
>
> < NOISO =3D "0"
>
>
>
>
>
> Any help would be appreciated.
>
>
>
> Also, how do I generate that build configuration information at the botto=
m
> of Conor=E2=80=99s email?
>
>
>
> Thank you
>
>
>
> Lewis Muhlenkamp
>
>
>
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *=
On
> Behalf Of *Conor Slater
> *Sent:* Monday, November 26, 2018 2:56 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] GLIBC_GENERATE_LOCALES setting not generating locales
>
>
>
> Dear All,
>
>
>
> I'm having trouble adding locales to my image.
>
>
>
> If I make changes to GLIBC_GENERATE_LOCALES in my local.conf glibc-locale=
s
> will rebuild but only the default locales are present:
>
> $ locale -a
>
> C
>
> POSIX
>
> en_US
>
>
>
> The locales are listed when I run this before building the image:
>
> $ bitbake -e gmpanel-image | grep -e "^GLIBC_GENERATE_LOCALES=3D"
>
> GLIBC_GENERATE_LOCALES=3D"fr_CH.UTF8 en_GB.UTF-8 en_US.UTF-8"
>
>
>
> Are there other settings I have to change or any packages I have to add t=
o
> the image for this to work?
>
>
>
> You can find information on my configuration below:
>
>
>
> Best Regards,
>
>
>
> Conor.
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "1.38.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>
> MACHINE              =3D "raspberrypi3"
>
> DISTRO               =3D "gmpanel"
>
> DISTRO_VERSION       =3D "1.0"
>
> TUNE_FEATURES        =3D "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
>
> TARGET_FPU           =3D "hard"
>
> meta
>
> meta-poky            =3D "sumo:d240b885f26e9b05c8db0364ab2ace9796709aad"
>
> meta-oe
>
> meta-networking
>
> meta-python
>
> meta-perl
>
> meta-webserver       =3D "sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
>
> meta-rust            =3D "sumo:3efa0f069ffe4dfcb3531ea89834e69cd2257157"
>
> meta-browser         =3D "master:b5fa3f598236a58da6217852340f5f8dd01c9a71=
"
>
> meta-security        =3D "sumo:1e4b45ca888188b4eb838cb29b501ee004237552"
>
> meta-raspberrypi     =3D "sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97"
>
> meta-gmpanel         =3D "sumo-dev:2350072a65ce361548be7a23c78358191b9da5=
55"
>

--0000000000001a1203057c1ec8cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>I worked a bit =
with Lewis to figure this=C2=A0out.</div><div><br></div><div><div>Conclusio=
n - It&#39;s the IMAGE_LINGUAS variable that loads the locales, not the GLI=
BC_GENERATE_LOCALES. The GLIB variable is more so a build optimisation.</di=
v><div><br></div><div>In my case the IMAGE_LINGUAS was being reset by an im=
age file.</div><div><br></div><div>To check if the settings are correct I r=
an:</div><div>$ bitbake gmpanel-dev-image -e | grep -E &quot;^GLIBC_GENERAT=
E_LOCALES=3D|^IMAGE_LINGUAS=3D&quot;</div><div><br></div><div>I was getting=
:</div><div>GLIBC_GENERATE_LOCALES=3D&quot;en_IE.UTF-8 fr_CH.UTF-8&quot;</d=
iv><div>IMAGE_LINGUAS=3D&quot;en-us&quot;</div><div><br></div><div>Even tho=
ugh my local.conf had:</div><div>GLIBC_GENERATE_LOCALES =3D &quot;en_IE.UTF=
-8 fr_CH.UTF-8&quot;</div><div>IMAGE_LINGUAS =3D &quot;en-ie fr-ch&quot;</d=
iv><div><br></div><div>In my poky directory I did a:</div><div>grep -r &quo=
t;en-us&quot; .</div><div><br></div><div>And found a line in the image I wa=
s using that set IMAGE_LINGUAS =3D &quot;en-us&quot; and removed it.</div><=
div><br></div><div>The locales were the loaded correctly.</div><div><br></d=
iv><div>Lewis had the same problem as his IMAGE_LINGUAS was being set to &q=
uot; &quot;.</div><div><br></div><div>Best Regards,</div></div><div><br></d=
iv><div>Conor.</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Mon, 26 Nov 2018 at 21:40, Muhlenkamp, Lewis &lt;<a href=3D"mailto:=
lewis.muhlenkamp@stryker.com">lewis.muhlenkamp@stryker.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-5908456480265601339WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I too am encountering this same issue.=C2=A0 Here is=
 a diff from the default local.conf file:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">diff conf/local.conf conf/local.conf~<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">28,31d27<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; # From meta-intel BSP layer<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; #MACHINE ?=3D &quot;intel-core2-32&quot=
;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; MACHINE ?=3D &quot;intel-corei7-64&quot=
;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; #<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">46c42<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; DL_DIR ?=3D &quot;/downloads&quot;<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">---<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&gt; #DL_DIR ?=3D &quot;${TOPDIR}/downloads&=
quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">89c85<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; PACKAGE_CLASSES ?=3D &quot;package_rpm&=
quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">---<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&gt; PACKAGE_CLASSES ?=3D &quot;package_ipk&=
quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">221,227d216<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; DISTRO_FEATURES_append =3D &quot; openg=
l&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot;rpm=
 python python3 python3-pip python3-flask&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; IMAGE_INSTALL_append =3D &quot; glibc-u=
tils localedef&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; GLIBC_GENERATE_LOCALES =3D &quot;en_US.=
UTF-8&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; SERIAL_CONSOLES =3D &quot;38400 tty1&qu=
ot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; IMAGE_FSTYPES +=3D &quot;live&quot;<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:#7030a0">&lt; NOISO =3D &quot;0&quot;<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any help would be appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Also, how do I generate that build configuration inf=
ormation at the bottom of Conor=E2=80=99s email?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Lewis Muhlenkamp<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> &lt;<a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Conor Slater<br>
<b>Sent:</b> Monday, November 26, 2018 2:56 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] GLIBC_GENERATE_LOCALES setting not generating local=
es<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Dear All,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m having trouble adding locales to my image.<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If I make changes to GLIBC_GENERATE_LOCALES in my lo=
cal.conf glibc-locales will rebuild but only the default locales are presen=
t:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ locale -a<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">C<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">POSIX<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">en_US<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The locales are listed when I run this before buildi=
ng the image:=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$=C2=A0bitbake -e gmpanel-image | grep -e &quot;^GLI=
BC_GENERATE_LOCALES=3D&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">GLIBC_GENERATE_LOCALES=3D&quot;fr_CH.UTF8 en_GB.UTF-=
8 en_US.UTF-8&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Are there other settings I have to change or any pac=
kages I have to add to the image for this to work?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You can find information on my configuration below:<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Conor.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Build Configuration:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;1.38.0&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;x86_64-linux&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;univer=
sal&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;arm-poky-linux-gnueabi&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;raspberrypi3&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;gmpanel&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1=
.0&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;a=
rm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7&quot;<u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;hard&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;sumo:d240b885f26e9b05c8db0364ab2ace9796709aad&quot;<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">meta-oe<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-networking<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-python<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-perl<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;s=
umo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-rust=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;sumo:3efa0f069ffe4dfcb3531ea89834e69cd2257157&quot;<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">meta-browser=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;master:b5fa3f598236a58da6217852340f5f8dd01c9a71&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-security=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;s=
umo:1e4b45ca888188b4eb838cb29b501ee004237552&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:2=
d40b000021bc8a9ef7f329ed0ad410f8d227b97&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-gmpanel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;sumo-dev:2350072a65ce361548be7a23c78358191b9da555&quot;<u></u><u></u></=
p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000001a1203057c1ec8cb--
