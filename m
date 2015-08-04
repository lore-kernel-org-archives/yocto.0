Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A9EE00A7E; Tue,  4 Aug 2015 07:05:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDAFEE009C5
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 07:05:48 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so17692613ioe.3
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 07:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YReDq0T7ojuW+lhdCoWKlZVr//Z2i+APbD95+c3C+H4=;
	b=C+TFUJrvGeyJnyEwFW7a3B1Kvg5q0LjSPv40m40Li4Dc6fSUj964SsgjfnDhznqsE6
	YSp4Rj6KuLliU2QRVe3Zt198uZjZgp+lZClP/+Lh3U6rHcVGV0rD7CVc5FUNT1kjsu4X
	YvFyhgQYo2wgmi78ZLhMjBqwUZa/5JCJfqmH04EwEZEeeZqyWuaLLWA0O+XbtP9a2Zir
	EwXlN0cunqG4bGsKJw1pggXEz39hSTWyfgqHLOh+osm7bVpqWS3baMhrDcFhzrRMVwBB
	5XT3AGTeUtjG3F4zQ/STsNwfqsdpFrqG1+EGaayl/j4RqOeeLnwHlCtS9/wxoCjE6oXs
	3ohw==
X-Gm-Message-State: ALoCoQmeaMr9DAZ9EbevScX2zf/3FG6ciyrVydf+VazTrqiS+t0vrr7cogGo8+zQo6KyxsttRnmj
MIME-Version: 1.0
X-Received: by 10.107.132.19 with SMTP id g19mr3545180iod.3.1438697148278;
	Tue, 04 Aug 2015 07:05:48 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Tue, 4 Aug 2015 07:05:48 -0700 (PDT)
In-Reply-To: <55C0C38F.7020809@mlbassoc.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
	<55C0B5D1.9080009@mlbassoc.com>
	<CAF5S8SOEAvFCw6AiiBEk9CJJSYv7_5uTZ6kSciQNd90YB5iPHA@mail.gmail.com>
	<55C0BDA7.9060507@mlbassoc.com>
	<CAF5S8SMmLYAjJn5cuKcEEeYzKdBpj=mbkC4Do9X7S1yv1GeJeQ@mail.gmail.com>
	<55C0C38F.7020809@mlbassoc.com>
Date: Tue, 4 Aug 2015 19:35:48 +0530
X-Google-Sender-Auth: fpKyWH8jgIl50N7LyGzNoPLcsS4
Message-ID: <CAF5S8SNyEgKCw8dpisvbreg5gczDzEAt1FV1V17Ax75V+AX52A@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Aug 2015 14:05:51 -0000
Content-Type: multipart/alternative; boundary=001a113eca1076b86b051c7cc87a

--001a113eca1076b86b051c7cc87a
Content-Type: text/plain; charset=UTF-8

I see that it is available in my code as well .

[sarayu@localhost QorIQ-SDK-V1.8-20150619-yocto]$ find . -name
gdb-cross_7.6.2.bb
./poky/meta/recipes-devtools/gdb/gdb-cross_7.6.2.bb

But when i try to build just this bb file it still shows the error .
[sarayu@localhost build_ls1021atwr_release]$ bitbake gdb-cross_7.6.2.bb
Loading cache: 100% |####################################################|
ETA:  00:00:00
Loaded 2148 entries from dependency cache.
ERROR: Nothing PROVIDES 'gdb-cross_7.6.2.bb'

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
[sarayu@localhost build_ls1021atwr_release]$

Could there be any other issue related to path or anything because i have
been able to build the toolchain without gdb and also have been able to
build the util-linux recipe just form the bb file separately also .
Wondering why it is failing for gdb alone .


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Aug 4, 2015 at 7:22 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-08-04 07:47, Sarayu Krishna Sivanandam wrote:
>
>> hi Gary ,
>>
>> I am working on the 1.8 SDK For the ARM board and followed the
>> instructions from the freescale website link provided below
>> (http://www.freescale.com/infocenter/topic/qfamily-sdk/index.html) for
>> my ARM board ls1021atwr  and hence i got the source ISO from the SDK and
>> then used the same to build the tool
>> chain as the same is currently available on my board.
>>
>> when u use gdb-cross which bb file is executed ? Can you please provide
>> the file name so that i can verify if it is present in my code as well.
>>
>
> I put the daisy checkout in /tmp/poky-daisy:
>   $ find /tmp/poky-daisy/meta -name "gdb-cross*"
>   /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross.inc
>   /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross_7.6.2.bb
>   /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross-canadian_7.6.2.bb
>   /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
>
>
> On Tue, Aug 4, 2015 at 6:57 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2015-08-04 07:01, Sarayu Krishna Sivanandam wrote:
>>
>>         Hi Gary ,
>>
>>         Pls find below my configuration details .
>>
>>         Build Configuration:
>>         BB_VERSION        = "1.22.0"
>>         BUILD_SYS         = "x86_64-linux"
>>         NATIVELSBSTRING   = "CentOS-7.1.1503"
>>         TARGET_SYS        = "arm-fsl-linux-gnueabi"
>>         MACHINE           = "ls1021atwr"
>>         DISTRO            = "fsl-networking"
>>         DISTRO_VERSION    = "QorIQ-SDK-V1.8"
>>         TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"
>>         TARGET_FPU        = "vfp-neon"
>>         meta
>>         meta-yocto
>>         meta-yocto-bsp    =
>> "daisy:18837ea4cdd4fdab608e0a032a11a2dfb6b1ee1a"
>>         meta-fsl-arm      =
>> "daisy:b529ac5ba06a0d69d7e6e295776a4d684c6e1c56"
>>         meta-fsl-networking =
>> "daisy:6eb28ed659bbadfa470237dfce98bcbf53c18fe1"
>>         meta-fsl-toolchain =
>> "daisy:a253b3594d8d9e0a4ed869d1fb502c395c4438ac"
>>         meta-virtualization =
>> "daisy:df44ec7a68c8e4b713a458a5b93e903103dea85c"
>>         meta-oe
>>         meta-networking
>>         meta-perl
>>         toolchain-layer   =
>> "daisy:4a44c4107899363b22c01eb5621b0c86db1c659c"
>>         meta-java         =
>> "daisy:65c89b93fa9d4c89e1dfb5b795075cbadb541009"
>>         meta-linaro-toolchain =
>> "daisy:9e742fbb8cbb6d2087fb41429a77fcf0ce50dbb8"
>>         meta-security     =
>> "daisy:9f4c3849521465b459845dcc1a7a885bacaae9d9"
>>
>>
>>     Firstly, 'daisy' is really old, you should consider 'dizzy' or newer
>>     The git revisions listed above do not match the public trees - where
>> did
>>     you get them?
>>
>>     I tried to build 'gdb-cross' using daisy and it worked with no issues
>> using:
>>     meta              =
>> "(detachedfromorigin/daisy):b9ec9f7425cd11fada2ba104122b0f1ea823ae28"
>>     meta-fsl-arm      =
>> "(detachedfromorigin/daisy):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23"
>>
>>         On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>>> wrote:
>>
>>              On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:
>>
>>                  hi Gary ,
>>
>>                  Thanks for the quick response. I still see the below
>> error .
>>
>>                  NOTE: Resolving any missing task queue dependencies
>>                  ERROR: Nothing RPROVIDES 'gdb-cross-arm'
>>                  NOTE: Runtime target 'gdb-cross-arm' is unbuildable,
>> removing...
>>                  Missing or unbuildable dependency chain was:
>> ['gdb-cross-arm']
>>                  ERROR: Required build target 'fsl-toolchain' has no
>> buildable providers.
>>                  Missing or unbuildable dependency chain was:
>> ['fsl-toolchain', 'gdb-cross-arm']
>>                  -----
>>
>>                  Below is how the change ,
>>                  TOOLCHAIN_TARGET_TASK += " \
>>                        glib-2.0 \
>>                        glib-2.0-dev \
>>                        dtc-staticdev \
>>                        libgomp \
>>                        libgomp-dev \
>>                        libgomp-staticdev \
>>                        libstdc++-staticdev \
>>                        ${TCLIBC}-staticdev \
>>                        util-linux-dev \
>>                        gdb-cross-arm \
>>                  "
>>
>>
>>              It works fine for me using the latest master git.
>>
>>              What branch/release are you using?  I'm using:
>>              meta              =
>> "master:a8b723498c9a7106210db140452886894494b4d6"
>>              meta-fsl-arm      =
>> "master:48d7e70398f0f9f337b9edaeb29901c9bd895282"
>>              meta-fsl-arm-extra =
>> "master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c0"
>>
>>              What is your target machine?
>>
>>
>>                  On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>>
>>         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>>
>>                       On 2015-08-04 03:31, Sarayu Krishna Sivanandam
>> wrote:
>>
>>                           Hi all ,
>>
>>                           I am using the QorIQ-SDK-V1.8 SDK for the
>> toolchain generation for my ARM board .  I wanted to build gdb along with
>> the toolchain . I got some ideas from
>>         google to
>>                  add the
>>                           gdb-cross in the fsl-toolchain.bb <
>> http://fsl-toolchain.bb> <http://fsl-toolchain.bb> <
>> http://fsl-toolchain.bb> <http://fsl-toolchain.bb> but on doing the
>>         same it gave me some errors when
>>                  trying to build .
>>
>>                           Can you please let me know the right method to
>> add gdb in the toolchain ?
>>
>>                           Below is the error i got ,
>>                           *ERROR: gdb-cross not found in the base feeds
>> (ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon
>> armv7ahf-vfp armv6hf-vfp armv5ehf-vfp
>>         armv5hf-vfp
>>                  noarch any
>>                           all).*
>>
>>
>>                       Use gdb-cross-arm
>>
>>                       --
>>
>> ------------------------------------------------------------
>>                       Gary Thomas                 |  Consulting for the
>>                       MLB Associates              |    Embedded world
>>
>> ------------------------------------------------------------
>>                       --
>>                       _______________________________________________
>>                       yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>> <mailto:
>> yocto@yoctoproject.org
>>         <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>> <mailto:yocto@yoctoproject.org>>>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>              --
>>              ------------------------------------------------------------
>>              Gary Thomas                 |  Consulting for the
>>              MLB Associates              |    Embedded world
>>              ------------------------------------------------------------
>>
>>
>>
>>
>>
>>     --
>>     ------------------------------------------------------------
>>     Gary Thomas                 |  Consulting for the
>>     MLB Associates              |    Embedded world
>>     ------------------------------------------------------------
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a113eca1076b86b051c7cc87a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">I see that it is available in my code as well .=C2=A0</di=
v><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-seri=
f"><br></div><div class=3D"gmail_default"><div class=3D"gmail_default" styl=
e=3D"font-family:&#39;comic sans ms&#39;,sans-serif">[sarayu@localhost QorI=
Q-SDK-V1.8-20150619-yocto]$ find . -name <a href=3D"http://gdb-cross_7.6.2.=
bb">gdb-cross_7.6.2.bb</a></div><div class=3D"gmail_default" style=3D"font-=
family:&#39;comic sans ms&#39;,sans-serif">./poky/meta/recipes-devtools/gdb=
/<a href=3D"http://gdb-cross_7.6.2.bb">gdb-cross_7.6.2.bb</a></div><div sty=
le=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div style=
=3D"font-family:&#39;comic sans ms&#39;,sans-serif">But when i try to build=
 just this bb file it still shows the error .=C2=A0</div><div><div><font fa=
ce=3D"comic sans ms, sans-serif">[sarayu@localhost build_ls1021atwr_release=
]$ bitbake <a href=3D"http://gdb-cross_7.6.2.bb">gdb-cross_7.6.2.bb</a></fo=
nt></div><div><font face=3D"comic sans ms, sans-serif">Loading cache: 100% =
|####################################################| ETA: =C2=A000:00:00<=
/font></div><div><font face=3D"comic sans ms, sans-serif">Loaded 2148 entri=
es from dependency cache.</font></div><div><font face=3D"comic sans ms, san=
s-serif">ERROR: Nothing PROVIDES &#39;<a href=3D"http://gdb-cross_7.6.2.bb"=
>gdb-cross_7.6.2.bb</a>&#39;</font></div><div><font face=3D"comic sans ms, =
sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif">=
Summary: There was 1 ERROR message shown, returning a non-zero exit code.</=
font></div><div><font face=3D"comic sans ms, sans-serif">[sarayu@localhost =
build_ls1021atwr_release]$=C2=A0</font></div></div><div style=3D"font-famil=
y:&#39;comic sans ms&#39;,sans-serif"><br></div><div style=3D"font-family:&=
#39;comic sans ms&#39;,sans-serif">Could there be any other issue related t=
o path or anything because i have been able to build the toolchain without =
gdb and also have been able to build the util-linux recipe just form the bb=
 file separately also .</div><div style=3D"font-family:&#39;comic sans ms&#=
39;,sans-serif">Wondering why it is failing for gdb alone .</div><div style=
=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div></div></div><=
div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"comic sans ms, sa=
ns-serif">Thanks and Regards,</font><div><font face=3D"comic sans ms, sans-=
serif">Sarayu K S=C2=A0</font></div><div><font face=3D"comic sans ms, sans-=
serif">Tech Lead=C2=A0</font></div><div><font face=3D"comic sans ms, sans-s=
erif">Zaikenn Technologies</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Aug 4, 2015 at 7:22 PM, Gary Thomas =
<span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank=
">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On 2015-08-04 07:47, Sarayu Krishna Sivanandam wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
hi Gary ,<br>
<br><span class=3D"">
I am working on the 1.8 SDK For the ARM board and followed the instructions=
 from the freescale website link provided below<br>
(<a href=3D"http://www.freescale.com/infocenter/topic/qfamily-sdk/index.htm=
l" rel=3D"noreferrer" target=3D"_blank">http://www.freescale.com/infocenter=
/topic/qfamily-sdk/index.html</a>) for my ARM board ls1021atwr=C2=A0 and he=
nce i got the source ISO from the SDK and then used the same to build the t=
ool<br>
chain as the same is currently available on my board.<br>
<br>
when u use gdb-cross which bb file is executed ? Can you please provide the=
 file name so that i can verify if it is present in my code as well.<br>
</span></blockquote>
<br>
I put the daisy checkout in /tmp/poky-daisy:<br>
=C2=A0 $ find /tmp/poky-daisy/meta -name &quot;gdb-cross*&quot;<br>
=C2=A0 /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross.inc<br>
=C2=A0 /tmp/poky-daisy/meta/recipes-devtools/gdb/<a href=3D"http://gdb-cros=
s_7.6.2.bb" rel=3D"noreferrer" target=3D"_blank">gdb-cross_7.6.2.bb</a><br>
=C2=A0 /tmp/poky-daisy/meta/recipes-devtools/gdb/<a href=3D"http://gdb-cros=
s-canadian_7.6.2.bb" rel=3D"noreferrer" target=3D"_blank">gdb-cross-canadia=
n_7.6.2.bb</a><br>
=C2=A0 /tmp/poky-daisy/meta/recipes-devtools/gdb/gdb-cross-canadian.inc<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
On Tue, Aug 4, 2015 at 6:57 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>
<br>
=C2=A0 =C2=A0 On 2015-08-04 07:01, Sarayu Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi Gary ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pls find below my configuration details .<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Build Configuration:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;1.22.0&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
&quot;x86_64-linux&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;CentOS-7.=
1.1503&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;arm-fsl-linux-gnueabi&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;ls1021atwr&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D &quot;fsl-networking&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;QorIQ-SDK=
-V1.8&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;armv=
7a vfp neon callconvention-hard cortexa7&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;vfp-neon&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-yocto<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;daisy:188=
37ea4cdd4fdab608e0a032a11a2dfb6b1ee1a&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;dais=
y:b529ac5ba06a0d69d7e6e295776a4d684c6e1c56&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-fsl-networking =3D &quot;daisy:6eb28ed659b=
badfa470237dfce98bcbf53c18fe1&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-fsl-toolchain =3D &quot;daisy:a253b3594d8d=
9e0a4ed869d1fb502c395c4438ac&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-virtualization =3D &quot;daisy:df44ec7a68c=
8e4b713a458a5b93e903103dea85c&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-oe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-networking<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-perl<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 toolchain-layer=C2=A0 =C2=A0=3D &quot;daisy:4a4=
4c4107899363b22c01eb5621b0c86db1c659c&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-java=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
&quot;daisy:65c89b93fa9d4c89e1dfb5b795075cbadb541009&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-linaro-toolchain =3D &quot;daisy:9e742fbb8=
cbb6d2087fb41429a77fcf0ce50dbb8&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-security=C2=A0 =C2=A0 =C2=A0=3D &quot;dais=
y:9f4c3849521465b459845dcc1a7a885bacaae9d9&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 Firstly, &#39;daisy&#39; is really old, you should consider &=
#39;dizzy&#39; or newer<br>
=C2=A0 =C2=A0 The git revisions listed above do not match the public trees =
- where did<br>
=C2=A0 =C2=A0 you get them?<br>
<br>
=C2=A0 =C2=A0 I tried to build &#39;gdb-cross&#39; using daisy and it worke=
d with no issues using:<br>
=C2=A0 =C2=A0 meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;(detachedfromorigin/daisy):b9ec9f7425cd11fada2ba104122b0f1ea823ae28&quot;=
<br>
=C2=A0 =C2=A0 meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;(detachedfromorigi=
n/daisy):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23&quot;<br>
<br></div></div><div><div class=3D"h5">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas &lt=
;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</=
a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@m=
lbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 2015-08-04 06:42, Sarayu=
 Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hi Gary ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thanks for th=
e quick response. I still see the below error .<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Resolvi=
ng any missing task queue dependencies<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ERROR: Nothin=
g RPROVIDES &#39;gdb-cross-arm&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Runtime=
 target &#39;gdb-cross-arm&#39; is unbuildable, removing...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Missing or un=
buildable dependency chain was: [&#39;gdb-cross-arm&#39;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ERROR: Requir=
ed build target &#39;fsl-toolchain&#39; has no buildable providers.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Missing or un=
buildable dependency chain was: [&#39;fsl-toolchain&#39;, &#39;gdb-cross-ar=
m&#39;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-----<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Below is how =
the change ,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TOOLCHAIN_TAR=
GET_TASK +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0glib-2.0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0glib-2.0-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0dtc-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0libgomp \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0libgomp-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0libgomp-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0libstdc++-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0${TCLIBC}-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0util-linux-dev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gdb-cross-arm \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0It works fine for me using =
the latest master git.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0What branch/release are you=
 using?=C2=A0 I&#39;m using:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:a8b723498c9a7106210db140452886=
894494b4d6&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-fsl-arm=C2=A0 =C2=A0 =
=C2=A0 =3D &quot;master:48d7e70398f0f9f337b9edaeb29901c9bd895282&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-fsl-arm-extra =3D &quo=
t;master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c0&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0What is your target machine=
?<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Aug 4=
, 2015 at 5:21 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" tar=
get=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D=
"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com=
</a>&gt;&gt;<br></div></div><span class=3D"">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com"=
 target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt; &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;=
mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc=
.com</a>&gt;&gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Hi all ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 I am using the QorIQ-SDK-V1.8 SDK for the toolchain gener=
ation for my ARM board .=C2=A0 I wanted to build gdb along with the toolcha=
in . I got some ideas from<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 google to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0add the<br></=
span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 gdb-cross in the <a href=3D"http://fsl-toolchain.bb" rel=
=3D"noreferrer" target=3D"_blank">fsl-toolchain.bb</a> &lt;<a href=3D"http:=
//fsl-toolchain.bb" rel=3D"noreferrer" target=3D"_blank">http://fsl-toolcha=
in.bb</a>&gt; &lt;<a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">http://fsl-toolchain.bb</a>&gt; &lt;<a href=3D"http://fsl-t=
oolchain.bb" rel=3D"noreferrer" target=3D"_blank">http://fsl-toolchain.bb</=
a>&gt; &lt;<a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" target=3D=
"_blank">http://fsl-toolchain.bb</a>&gt; but on doing the<span class=3D""><=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 same it gave me some errors when<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0trying to bui=
ld .<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Can you please let me know the right method to add gdb in=
 the toolchain ?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Below is the error i got ,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 *ERROR: gdb-cross not found in the base feeds (ls1021atwr=
 cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp armv6hf-=
vfp armv5ehf-vfp<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 armv5hf-vfp<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0noarch any<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 all).*<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Use gdb-cross-arm<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ------------------------------------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 Consulting for the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A0 Embedded world<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ------------------------------------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 _______________________________________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 yocto mailing list<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt; &lt;mail=
to:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctop=
roject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a>&gt;&gt; &lt;mailto:<a href=3D"mailto=
:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><span =
class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt; &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a>&gt;&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
<br>
<br>
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
<br>
<br>
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
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 _______________________________________________<br>
=C2=A0 =C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
<br>
<br>
</span></blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--001a113eca1076b86b051c7cc87a--
