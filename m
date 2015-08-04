Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D23E3E00A92; Tue,  4 Aug 2015 06:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7870DE00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 06:47:49 -0700 (PDT)
Received: by ioea135 with SMTP id a135so17180016ioe.1
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 06:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=M3s1pm1bB9GX+D+cbVHB73YHTDZhMhwY8wnTVC5jNEk=;
	b=QS7HHs4RzaQBOaD+Pyw431JvhWJ07UQWBoX6Xmy+kgfcOxQ9r5lxKGppJiQXVMpw+Z
	WvbIeCUk0rSOF89K9uZZsjV51lO3Vu/slhp9PjaFEZTHAP14Az1foHD/7SDJMBCevrWD
	TPknfD+USAmQbRLt4cRaFR0dL0bJUPuxkC9+LnWUOAUK1lWdNKd+36/K6MeI2Fb/KNkh
	8uyahcB4GtddxqvQxvHxEkg2GAqlHnhyP2MB3BxMr7CivT+ulas+5I+i2Y4kdF0yYLFs
	iTD/4WpXQWEQ82ZIp91tigLAjZ9lao7m9vpXP8JHxmUVEwalHqdvLR/NgDEWm7856J3o
	KJCg==
X-Gm-Message-State: ALoCoQkEnd9PXfReIE0ADiImOjX5i02qFaw5bcciCFnJ0ToWK/6eXxsS1qthKwUGUh3TwM7CvB3e
MIME-Version: 1.0
X-Received: by 10.107.132.15 with SMTP id g15mr3572293iod.134.1438696068208;
	Tue, 04 Aug 2015 06:47:48 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Tue, 4 Aug 2015 06:47:48 -0700 (PDT)
In-Reply-To: <55C0BDA7.9060507@mlbassoc.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
	<55C0B5D1.9080009@mlbassoc.com>
	<CAF5S8SOEAvFCw6AiiBEk9CJJSYv7_5uTZ6kSciQNd90YB5iPHA@mail.gmail.com>
	<55C0BDA7.9060507@mlbassoc.com>
Date: Tue, 4 Aug 2015 19:17:48 +0530
X-Google-Sender-Auth: nExdlm8ncFNFafrbfTM2rDSuIMM
Message-ID: <CAF5S8SMmLYAjJn5cuKcEEeYzKdBpj=mbkC4Do9X7S1yv1GeJeQ@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Tue, 04 Aug 2015 13:47:57 -0000
Content-Type: multipart/alternative; boundary=001a113ec6d015f82b051c7c8815

--001a113ec6d015f82b051c7c8815
Content-Type: text/plain; charset=UTF-8

hi Gary ,

I am working on the 1.8 SDK For the ARM board and followed the instructions
from the freescale website link provided below (
http://www.freescale.com/infocenter/topic/qfamily-sdk/index.html) for my
ARM board ls1021atwr  and hence i got the source ISO from the SDK and then
used the same to build the tool chain as the same is currently available on
my board.

when u use gdb-cross which bb file is executed ? Can you please provide the
file name so that i can verify if it is present in my code as well.


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Aug 4, 2015 at 6:57 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-08-04 07:01, Sarayu Krishna Sivanandam wrote:
>
>> Hi Gary ,
>>
>> Pls find below my configuration details .
>>
>> Build Configuration:
>> BB_VERSION        = "1.22.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "CentOS-7.1.1503"
>> TARGET_SYS        = "arm-fsl-linux-gnueabi"
>> MACHINE           = "ls1021atwr"
>> DISTRO            = "fsl-networking"
>> DISTRO_VERSION    = "QorIQ-SDK-V1.8"
>> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "daisy:18837ea4cdd4fdab608e0a032a11a2dfb6b1ee1a"
>> meta-fsl-arm      = "daisy:b529ac5ba06a0d69d7e6e295776a4d684c6e1c56"
>> meta-fsl-networking = "daisy:6eb28ed659bbadfa470237dfce98bcbf53c18fe1"
>> meta-fsl-toolchain = "daisy:a253b3594d8d9e0a4ed869d1fb502c395c4438ac"
>> meta-virtualization = "daisy:df44ec7a68c8e4b713a458a5b93e903103dea85c"
>> meta-oe
>> meta-networking
>> meta-perl
>> toolchain-layer   = "daisy:4a44c4107899363b22c01eb5621b0c86db1c659c"
>> meta-java         = "daisy:65c89b93fa9d4c89e1dfb5b795075cbadb541009"
>> meta-linaro-toolchain = "daisy:9e742fbb8cbb6d2087fb41429a77fcf0ce50dbb8"
>> meta-security     = "daisy:9f4c3849521465b459845dcc1a7a885bacaae9d9"
>>
>
> Firstly, 'daisy' is really old, you should consider 'dizzy' or newer
> The git revisions listed above do not match the public trees - where did
> you get them?
>
> I tried to build 'gdb-cross' using daisy and it worked with no issues
> using:
> meta              =
> "(detachedfromorigin/daisy):b9ec9f7425cd11fada2ba104122b0f1ea823ae28"
> meta-fsl-arm      =
> "(detachedfromorigin/daisy):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23"
>
> On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:
>>
>>         hi Gary ,
>>
>>         Thanks for the quick response. I still see the below error .
>>
>>         NOTE: Resolving any missing task queue dependencies
>>         ERROR: Nothing RPROVIDES 'gdb-cross-arm'
>>         NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
>>         Missing or unbuildable dependency chain was: ['gdb-cross-arm']
>>         ERROR: Required build target 'fsl-toolchain' has no buildable
>> providers.
>>         Missing or unbuildable dependency chain was: ['fsl-toolchain',
>> 'gdb-cross-arm']
>>         -----
>>
>>         Below is how the change ,
>>         TOOLCHAIN_TARGET_TASK += " \
>>               glib-2.0 \
>>               glib-2.0-dev \
>>               dtc-staticdev \
>>               libgomp \
>>               libgomp-dev \
>>               libgomp-staticdev \
>>               libstdc++-staticdev \
>>               ${TCLIBC}-staticdev \
>>               util-linux-dev \
>>               gdb-cross-arm \
>>         "
>>
>>
>>     It works fine for me using the latest master git.
>>
>>     What branch/release are you using?  I'm using:
>>     meta              = "master:a8b723498c9a7106210db140452886894494b4d6"
>>     meta-fsl-arm      = "master:48d7e70398f0f9f337b9edaeb29901c9bd895282"
>>     meta-fsl-arm-extra = "master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c0"
>>
>>     What is your target machine?
>>
>>
>>         On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>>> wrote:
>>
>>              On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
>>
>>                  Hi all ,
>>
>>                  I am using the QorIQ-SDK-V1.8 SDK for the toolchain
>> generation for my ARM board .  I wanted to build gdb along with the
>> toolchain . I got some ideas from google to
>>         add the
>>                  gdb-cross in the fsl-toolchain.bb <
>> http://fsl-toolchain.bb> <http://fsl-toolchain.bb> <
>> http://fsl-toolchain.bb> but on doing the same it gave me some errors
>> when
>>         trying to build .
>>
>>                  Can you please let me know the right method to add gdb
>> in the toolchain ?
>>
>>                  Below is the error i got ,
>>                  *ERROR: gdb-cross not found in the base feeds
>> (ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon
>> armv7ahf-vfp armv6hf-vfp armv5ehf-vfp armv5hf-vfp
>>         noarch any
>>                  all).*
>>
>>
>>              Use gdb-cross-arm
>>
>>              --
>>              ------------------------------------------------------------
>>              Gary Thomas                 |  Consulting for the
>>              MLB Associates              |    Embedded world
>>              ------------------------------------------------------------
>>              --
>>              _______________________________________________
>>              yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>     --
>>     ------------------------------------------------------------
>>     Gary Thomas                 |  Consulting for the
>>     MLB Associates              |    Embedded world
>>     ------------------------------------------------------------
>>
>>
>>
>>
>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ec6d015f82b051c7c8815
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">hi Gary ,=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">I am working on the 1.=
8 SDK For the ARM board and followed the instructions from the freescale we=
bsite link provided below (<a href=3D"http://www.freescale.com/infocenter/t=
opic/qfamily-sdk/index.html">http://www.freescale.com/infocenter/topic/qfam=
ily-sdk/index.html</a>) for my ARM board=C2=A0<span style=3D"font-size:12.8=
000001907349px">ls1021atwr =C2=A0and hence i got the source ISO from the SD=
K and then used the same to build the tool chain as the same is currently a=
vailable on my board.</span></div><div class=3D"gmail_default" style=3D"fon=
t-family:comic sans ms,sans-serif"><span style=3D"font-size:12.800000190734=
9px"><br></span></div><div class=3D"gmail_default" style=3D"font-family:com=
ic sans ms,sans-serif"><span style=3D"font-size:12.8000001907349px">when u =
use gdb-cross which bb file is executed ? Can you please provide the file n=
ame so that i can verify if it is present in my code as well.</span></div><=
div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">=
<span style=3D"font-size:12.8000001907349px"><br></span></div></div><div cl=
ass=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><=
div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"comic sans ms, sans-ser=
if">Thanks and Regards,</font><div><font face=3D"comic sans ms, sans-serif"=
>Sarayu K S=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif"=
>Tech Lead=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">=
Zaikenn Technologies</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Aug 4, 2015 at 6:57 PM, Gary Thomas =
<span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank=
">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"HOEnZb"><div class=3D"h5">On 2015-08-04 07:01, Sarayu Krishn=
a Sivanandam wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Gary ,<br>
<br>
Pls find below my configuration details .<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.22.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;CentOS-7.1.1503&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-fsl-linux-gnueabi&quot;=
<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;ls1021atwr&quot;<=
br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fsl-networking&qu=
ot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;QorIQ-SDK-V1.8&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;armv7a vfp neon callconvention-h=
ard cortexa7&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-neon&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;daisy:18837ea4cdd4fdab608e0a032a11a2d=
fb6b1ee1a&quot;<br>
meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;daisy:b529ac5ba06a0d69d7e6e29577=
6a4d684c6e1c56&quot;<br>
meta-fsl-networking =3D &quot;daisy:6eb28ed659bbadfa470237dfce98bcbf53c18fe=
1&quot;<br>
meta-fsl-toolchain =3D &quot;daisy:a253b3594d8d9e0a4ed869d1fb502c395c4438ac=
&quot;<br>
meta-virtualization =3D &quot;daisy:df44ec7a68c8e4b713a458a5b93e903103dea85=
c&quot;<br>
meta-oe<br>
meta-networking<br>
meta-perl<br>
toolchain-layer=C2=A0 =C2=A0=3D &quot;daisy:4a44c4107899363b22c01eb5621b0c8=
6db1c659c&quot;<br>
meta-java=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;daisy:65c89b93fa9d4c89=
e1dfb5b795075cbadb541009&quot;<br>
meta-linaro-toolchain =3D &quot;daisy:9e742fbb8cbb6d2087fb41429a77fcf0ce50d=
bb8&quot;<br>
meta-security=C2=A0 =C2=A0 =C2=A0=3D &quot;daisy:9f4c3849521465b459845dcc1a=
7a885bacaae9d9&quot;<br>
</blockquote>
<br></div></div>
Firstly, &#39;daisy&#39; is really old, you should consider &#39;dizzy&#39;=
 or newer<br>
The git revisions listed above do not match the public trees - where did<br=
>
you get them?<br>
<br>
I tried to build &#39;gdb-cross&#39; using daisy and it worked with no issu=
es using:<br>
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;(detachedfro=
morigin/daisy):b9ec9f7425cd11fada2ba104122b0f1ea823ae28&quot;<br>
meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;(detachedfromorigin/daisy):0c4de=
80867c3ab4e9682dd7802d3fd907d1e1a23&quot;<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>
<br>
=C2=A0 =C2=A0 On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hi Gary ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks for the quick response. I still see the =
below error .<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NOTE: Resolving any missing task queue dependen=
cies<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: Nothing RPROVIDES &#39;gdb-cross-arm&#39=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NOTE: Runtime target &#39;gdb-cross-arm&#39; is=
 unbuildable, removing...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&=
#39;gdb-cross-arm&#39;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: Required build target &#39;fsl-toolchain=
&#39; has no buildable providers.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Missing or unbuildable dependency chain was: [&=
#39;fsl-toolchain&#39;, &#39;gdb-cross-arm&#39;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -----<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Below is how the change ,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TOOLCHAIN_TARGET_TASK +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 glib-2.0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 glib-2.0-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dtc-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgomp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgomp-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgomp-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libstdc++-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${TCLIBC}-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 util-linux-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gdb-cross-arm \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
<br>
=C2=A0 =C2=A0 It works fine for me using the latest master git.<br>
<br>
=C2=A0 =C2=A0 What branch/release are you using?=C2=A0 I&#39;m using:<br>
=C2=A0 =C2=A0 meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;master:a8b723498c9a7106210db140452886894494b4d6&quot;<br>
=C2=A0 =C2=A0 meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;master:48d7e70398f=
0f9f337b9edaeb29901c9bd895282&quot;<br>
=C2=A0 =C2=A0 meta-fsl-arm-extra =3D &quot;master:ffa8db2f33ff08fc618c7e8eb=
47924095f4a06c0&quot;<br>
<br>
=C2=A0 =C2=A0 What is your target machine?<br>
<br>
<br></div></div><span class=3D"">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas &lt=
;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</=
a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@m=
lbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 2015-08-04 03:31, Sarayu=
 Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hi all ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I am using th=
e QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM board .=C2=A0 =
I wanted to build gdb along with the toolchain . I got some ideas from goog=
le to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 add the<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gdb-cross in =
the <a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" target=3D"_blank=
">fsl-toolchain.bb</a> &lt;<a href=3D"http://fsl-toolchain.bb" rel=3D"noref=
errer" target=3D"_blank">http://fsl-toolchain.bb</a>&gt; &lt;<a href=3D"htt=
p://fsl-toolchain.bb" rel=3D"noreferrer" target=3D"_blank">http://fsl-toolc=
hain.bb</a>&gt; &lt;<a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" =
target=3D"_blank">http://fsl-toolchain.bb</a>&gt; but on doing the same it =
gave me some errors when<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 trying to build .<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Can you pleas=
e let me know the right method to add gdb in the toolchain ?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Below is the =
error i got ,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*ERROR: gdb-c=
ross not found in the base feeds (ls1021atwr cortexa7hf-vfp-neon cortexa7hf=
-vfp armv7ahf-vfp-neon armv7ahf-vfp armv6hf-vfp armv5ehf-vfp armv5hf-vfp<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 noarch any<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0all).*<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Use gdb-cross-arm<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------=
---------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Gary Thomas=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 Consulting for the<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MLB Associates=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 Embedded world<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------=
---------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0___________________________=
____________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br></spa=
n>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt; &lt;mail=
to:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctop=
roject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a>&gt;&gt;<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
<br>
<br>
<br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 ------------------------------------------------------------<=
br>
=C2=A0 =C2=A0 Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 Consulting for the<br>
=C2=A0 =C2=A0 MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 Embedded world<br>
=C2=A0 =C2=A0 ------------------------------------------------------------<=
br>
<br>
<br>
<br>
<br>
</span></blockquote><span class=3D"">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a=
><br>
</blockquote></div><br></div>

--001a113ec6d015f82b051c7c8815--
