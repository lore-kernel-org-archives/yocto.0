Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 744F2E00CC0; Wed, 18 Oct 2017 16:04:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marlon.smith10[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAE6E00C96
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 16:04:03 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id r25so5490646pgn.4
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 16:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version; 
	bh=L/ObC9b7wvNr6auy5rKtAqfHlW7QQtnLyXBkPQ2CehY=;
	b=t4Aj8nTTPsY+FGg+R3YDGRTuGucaCLQXsJKuZZdkkD6qNlmGxFU0G2FBzkyroLxGva
	j4LhIi/rM/PNhpSM6o7GtnsqHarDTISyeYTuOYJEVwStRSs1DfYGmORNwjtlJ/DeesUl
	JxJMmBUYzvvrCcxvaO7WCb9nGD04Qmb4AXdSJ9Ik9cciZ/oRNS9H78yOysI0LiQbGy9F
	Mkvv/4UN8gP5GgDypWgIlPYLHopPIJQlSKCZNF2H9R9mZtI62ozcuzPaoY2HMdlT5R0k
	VxXP1rAyb1hqaGvWpWQL3pUESNWwEIs4pbmzAsGvmzuh1HOW7WIxY5bPNCRsTOKXyD0E
	opvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version;
	bh=L/ObC9b7wvNr6auy5rKtAqfHlW7QQtnLyXBkPQ2CehY=;
	b=acoA+apqlg+L0rhvLHwP7qc8fV882+3F18osb3oUIHBwsbmGn4UcgrDxsSl/UgYXAk
	CIqsFiG+laYctZ79dvV0ZxRwicpDKyiL/r29fTOvwMMVT82ztdJec4MCBSBGEFt8H/Kf
	xMIl8nSUowvraS70ruGtpIjZg/z+eWZXnAn7HfqFYC0wB+LTJu3V4zR/upBtnaSrqXJf
	FsnqksH52KUrkzR5qjNIrUiRdi/gzxqYeocy8oW+ZBJPqXKPkQRY7Gk4qzzPJfx62HSM
	2abpnvivmgjWj2hv2vz4AE6P3c69gYb/DJjW3TYdbUY6qpIvWkj0BjXWPt8grk/Wcirm
	yegA==
X-Gm-Message-State: AMCzsaWKNbHJawdzBMomtfOEaTUEtazn+/wHNUl9Cgw71KhxpPaQ8NIh
	Q158xXhmHKV0y0cLUK1Euh4kBQ==
X-Google-Smtp-Source: ABhQp+Rmc5CP+j7ayfgAdF0kTzid1x5g7KCixwb25aJARzc218+/SUEapiRIJxP1IHFvDsXS75bN8Q==
X-Received: by 10.98.218.13 with SMTP id c13mr13830832pfh.342.1508367843537;
	Wed, 18 Oct 2017 16:04:03 -0700 (PDT)
Received: from [10.2.0.10] (S0106a84e3f53ec33.gv.shawcable.net.
	[184.66.238.184]) by smtp.gmail.com with ESMTPSA id
	u77sm21442871pfd.168.2017.10.18.16.04.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Oct 2017 16:04:02 -0700 (PDT)
Message-ID: <1508367841.4636.35.camel@gmail.com>
From: Marlon Smith <marlon.smith10@gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 18 Oct 2017 16:04:01 -0700
In-Reply-To: <SN1PR0201MB1790B68697FEF20E9E05D400B24D0@SN1PR0201MB1790.namprd02.prod.outlook.com>
References: <1508364829.4636.30.camel@gmail.com>
	<SN1PR0201MB1790B68697FEF20E9E05D400B24D0@SN1PR0201MB1790.namprd02.prod.outlook.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Wed, 18 Oct 2017 23:04:05 -0000
Content-Type: multipart/alternative; boundary="=-tNSuzgkwgZqoqBIoNQYO"

--=-tNSuzgkwgZqoqBIoNQYO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Darcy, thanks for the detailed reply!
Do you remember how you were able to get it to compile in the first
place?  I end up with this error:
./kconf/conf: 1: ./kconf/conf: Syntax error: word unexpected (expecting
")")
..because backports needs to compile conf for x86_64, but instead
compiles it for ARM.  Once that step is done, it needs to compile the
rest of the project for ARM, but this error stops it.
I think I could work around the sysroot arm-wrestle because of the way
our project is built, but haven't made it to that point yet.
Here's the bb file I'm using:
---------------------------
include backports.inc
SRCBRANCH = "linux-4.2.y"
LOCALVERSION = "v4.2.6-1-0-g90118c7"
SRCREV = "90118c7656bb55243620c9dc9cc3f12582b1807f"
DEPENDS += "linux-myproject"do_configure_prepend() {
	export CROSS_COMPILE=${TARGET_PREFIX}
	export ARCH=${TARGET_ARCH}
	export KLIB_BUILD=${STAGING_KERNEL_DIR}
	export KLIB=${STAGING_DIR_TARGET}
	make
}
-----------------------------------
On Wed, 2017-10-18 at 22:53 +0000, Darcy Watkins wrote:
> I tried building backports under Yocto a few years back using Yocto
> daisy branch with kernel 3.4 for x86 and kernel 3.12 for ARM.  After
> a fair amount of pain I was able to get it to sort of work.  The
> problem was mainly a sysroot arm-wrestle between kernel and backports
> because they both generate the same kernel module packages.  It was a
> last-one-wins arm-wrestle.  It sort of worked OK with daisy branch,
> but newer yocto versions have stricter management of sysroots and
> staging areas.
>  
> I think what we need is some sort of virtual provider or alternatives
> scheme to make this work properly.
>  
> You can also run into problems related to exports to other out-of-
> tree modules but IIRC, it would only affect an out-of-tree module
> with an incompatible license.
>  
> I was able to run a few circa kernel 3.18 backports experimentally on
> a kernel 3.4 and a kernel 3.12.  Eventually we just upgraded the
> kernel.  Another project I know of used backports to update their
> kernel source and then created a recipe to build kernel from that
> source.
>  
> The notes/questions I had in the end were:
>  
> was building backports as out-of-tree kernel modules
> was concerned that this wouldn’t provide updated kernel staging
> source, particularly with respect to any updated includes
> wasn’t sure what would be propagated into the sysroot
> should consider the backports use case that patches the kernel source
> and then perhaps use this to generate patchset to be added to kernel
> recipe (bbappend)
> otherwise need to ensure proper handling of sysroot, staging, (as
> well as a notion of providers and/or alternatives like I mentioned
> earlier)
>  
> I haven’t touched this in years, but perhaps it may help a bit.
>  
> I think your best bet for short term is to use it to patch the kernel
> and then capture the changes as a patchset to add to a kernel recipe.
>  
>  
>  
> Regards,
>  
> Darcy
>  
> Darcy Watkins ::  Senior Staff Engineer, Firmware
>  
> SIERRA WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604
> 231 1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P2]
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>  
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproje
> ct.org] On Behalf Of Marlon Smith
> Sent: October-18-17 3:14 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Building kernel backports for ARM with Yocto
>  
> Hi everyone,
>  
> I'm trying to build the Linux backports project to get updated wifi
> drivers on an older kernel.  The problem is that when building
> backports, it first builds several tools that need to be run natively
> before cross-compiling the rest of the project.
>  
> I know how to write a bitbake recipe to compile natively, and how to
> write one to build for the target, but I can't figure out how to
> combine the two.  The backports project has steps for LTIB:
>  
>  %Build
>  export PATH=$UNSPOOF_PATH
>  
>  make menuconfig prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>  
>  export PATH=$SPOOF_PATH
>  
>  make prefix=%{_prefix} \
>    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>  
> I believe what I need is an equivalent to the line export
> PATH=$UNSPOOF_PATH but I can't find anything in the Yocto
> documentation or mailing lists that would be equivalent to that.
>  
> Any help would be much appreciated!
>  
> Thanks
>  
> Marlon

--=-tNSuzgkwgZqoqBIoNQYO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Cantarell;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:472792674;
	mso-list-type:hybrid;
	mso-list-template-ids:-653985490 -331437458 269025283 269025285 269025281 =
269025283 269025285 269025281 269025283 269025285;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.25pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA"><div>Darcy, thanks for the detailed reply!</div><div><=
br></div><div>Do you remember how you were able to get it to compile in the=
 first place? &nbsp;I end up with this error:</div><div><br></div><div>./kc=
onf/conf: 1: ./kconf/conf: Syntax error: word unexpected (expecting ")")</d=
iv><div><br></div><div>..because backports needs to compile conf for x86_64=
, but instead compiles it for ARM. &nbsp;Once that step is done, it needs t=
o compile the rest of the project for ARM, but this error stops it.</div><d=
iv><br></div><div>I think I could work around the sysroot arm-wrestle becau=
se of the way our project is built, but haven't made it to that point yet.<=
/div><div><br></div><div>Here's the bb file I'm using:</div><div><br></div>=
<div>---------------------------</div><div><br></div><div>include backports=
.inc</div><div><br></div><div>SRCBRANCH =3D "linux-4.2.y"</div><div>LOCALVE=
RSION =3D "v4.2.6-1-0-g90118c7"</div><div>SRCREV =3D "90118c7656bb55243620c=
9dc9cc3f12582b1807f"</div><div><br></div><div>DEPENDS +=3D "linux-myproject=
"<br></div><div><br></div><div>do_configure_prepend() {</div><div><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>export CROSS_COMPIL=
E=3D${TARGET_PREFIX}</div><div><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>export ARCH=3D${TARGET_ARCH}</div><div><span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>export KLIB_BUILD=3D${STA=
GING_KERNEL_DIR}</div><div><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>export KLIB=3D${STAGING_DIR_TARGET}</div><div><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>make</div><div>}</div=
><div><br></div><div>-----------------------------------</div><div><br></di=
v><div>On Wed, 2017-10-18 at 22:53 +0000, Darcy Watkins wrote:</div><blockq=
uote type=3D"cite">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I tried b=
uilding backports under Yocto a few years back using Yocto daisy branch wit=
h kernel 3.4 for x86 and kernel 3.12 for ARM.&nbsp; After a fair amount of =
pain I was able to get it to sort of work.&nbsp;
 The problem was mainly a sysroot arm-wrestle between kernel and backports =
because they both generate the same kernel module packages.&nbsp; It was a =
last-one-wins arm-wrestle.&nbsp; It sort of worked OK with daisy branch, bu=
t newer yocto versions have stricter management
 of sysroots and staging areas.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I think w=
hat we need is some sort of virtual provider or alternatives scheme to make=
 this work properly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">You can a=
lso run into problems related to exports to other out-of-tree modules but I=
IRC, it would only affect an out-of-tree module with an incompatible licens=
e.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I was abl=
e to run a few circa kernel 3.18 backports experimentally on a kernel 3.4 a=
nd a kernel 3.12.&nbsp; Eventually we just upgraded the kernel.&nbsp; Anoth=
er project I know of used backports to update
 their kernel source and then created a recipe to build kernel from that so=
urce.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">The notes=
/questions I had in the end were:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:-15.75pt;mso-list:l0 le=
vel1 lfo1">
<span style=3D"mso-fareast-language:EN-US">was building backports as out-of=
-tree kernel modules<o:p></o:p></span></li><li class=3D"MsoListParagraph" s=
tyle=3D"margin-left:-15.75pt;mso-list:l0 level1 lfo1">
<span style=3D"mso-fareast-language:EN-US">was concerned that this wouldn=
=E2=80=99t provide updated kernel staging source, particularly with respect=
 to any updated includes<o:p></o:p></span></li><li class=3D"MsoListParagrap=
h" style=3D"margin-left:-15.75pt;mso-list:l0 level1 lfo1">
<span style=3D"mso-fareast-language:EN-US">wasn=E2=80=99t sure what would b=
e propagated into the sysroot<o:p></o:p></span></li><li class=3D"MsoListPar=
agraph" style=3D"margin-left:-15.75pt;mso-list:l0 level1 lfo1">
<span style=3D"mso-fareast-language:EN-US">should consider the backports us=
e case that patches the kernel source and then perhaps use this to generate=
 patchset to be added to kernel recipe (bbappend)<o:p></o:p></span></li><li=
 class=3D"MsoListParagraph" style=3D"margin-left:-15.75pt;mso-list:l0 level=
1 lfo1">
<span style=3D"mso-fareast-language:EN-US">otherwise need to ensure proper =
handling of sysroot, staging, (as well as a notion of providers and/or alte=
rnatives like I mentioned earlier)<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I haven=
=E2=80=99t touched this in years, but perhaps it may help a bit.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I think y=
our best bet for short term is to use it to patch the kernel and then captu=
re the changes as a patchset to add to a kernel recipe.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565">Regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565">Darcy<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
656565">Darcy Watkins ::&nbsp;&nbsp;Senior Staff Engineer, Firmware<o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F">SIERRA WIRELESS<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E33=
A2F">Direct</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family=
:&quot;Arial&quot;,sans-serif;color:#656565">&nbsp; +1 604 233 7989&nbsp;
 &nbsp;::&nbsp; </span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:#E33A2F">Fax&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#656565">+1 604 231 1109&nbsp; ::&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#C00000">Main</span><span lang=3D"EN-US" style=3D"=
font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">&nbsp;
<span style=3D"color:#656565">+1 604 231 1100</span><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565">13811 Wireless Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565">[P2]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><a href=3D"mailto:dwat=
kins@sierrawireless.com"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font=
-family:&quot;Arial&quot;,sans-serif;color:blue">dwatkins@sierrawireless.co=
m</span></a><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#E43B30">
 :: </span><a href=3D"http://www.sierrawireless.com/"><span lang=3D"EN-US" =
style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:blu=
e">www.sierrawireless.com</span></a><span lang=3D"EN-US" style=3D"font-size=
:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E43B30"><o:p></o:p><=
/span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproje=
ct.org]
<b>On Behalf Of </b>Marlon Smith<br>
<b>Sent:</b> October-18-17 3:14 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Building kernel backports for ARM with Yocto<o:p></=
o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm trying to build the Linux backports project to g=
et updated wifi drivers on an older kernel. &nbsp;The problem is that when =
building backports, it first builds several tools that need to be run nativ=
ely before cross-compiling the rest of
 the project.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I know how to write a bitbake recipe to compile nati=
vely, and how to write one to build for the target, but I can't figure out =
how to combine the two. &nbsp;The backports project has steps for LTIB:<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<pre> %Build<o:p></o:p></pre>
<pre> export PATH=3D$UNSPOOF_PATH<o:p></o:p></pre>
<pre> <o:p></o:p></pre>
<pre>&nbsp;make menuconfig prefix=3D%{_prefix} \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; CROSS_COMPILE=3D${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}=
 \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; ARCH=3D$LINTARCH KLIB=3D${TOP}/rootfs/lib/modules/%{kvers=
ion} \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; KLIB_BUILD=3D${TOP}/rpm/BUILD/linux<o:p></o:p></pre>
<pre> <o:p></o:p></pre>
<pre>&nbsp;export PATH=3D$SPOOF_PATH<o:p></o:p></pre>
<pre> <o:p></o:p></pre>
<pre>&nbsp;make prefix=3D%{_prefix} \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; CROSS_COMPILE=3D${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX}=
 \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; ARCH=3D$LINTARCH KLIB=3D${TOP}/rootfs/lib/modules/%{kvers=
ion} \<o:p></o:p></pre>
<pre>&nbsp;&nbsp; KLIB_BUILD=3D${TOP}/rpm/BUILD/linux<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><span style=3D"font-size:11.5pt;font-family:&quot;Cantarell&quot;,seri=
f">I believe what I need is an equivalent to the line&nbsp;</span>export PA=
TH=3D$UNSPOOF_PATH<span style=3D"font-size:11.5pt;font-family:&quot;Cantare=
ll&quot;,serif">&nbsp;but I can't find anything in the Yocto documentation =
or mailing lists that would be equivalent to that.</span><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><span style=3D"font-size:11.5pt;font-family:&quot;Cantarell&quot;,seri=
f">Any help would be much appreciated!</span><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><span style=3D"font-size:11.5pt;font-family:&quot;Cantarell&quot;,seri=
f">Thanks</span><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><span style=3D"font-size:11.5pt;font-family:&quot;Cantarell&quot;,seri=
f">Marlon</span><o:p></o:p></pre>
</div>
</div>


</blockquote></body></html>

--=-tNSuzgkwgZqoqBIoNQYO--
