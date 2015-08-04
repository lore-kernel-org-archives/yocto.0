Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 703F5E00A92; Tue,  4 Aug 2015 06:01:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B96AE00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 06:01:30 -0700 (PDT)
Received: by iodd187 with SMTP id d187so15713445iod.2
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 06:01:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=qUZEnKPqmsKGh8NlrUwl2L9iUh/b/VRghtB80XD9qS4=;
	b=ca8qLiM+WMT8ucyj5Na9IyXXs8wuyPoPRMD6GZUJ86dQeOf6QoxdiZ4QowK2nRiWJV
	UViYLVEZ+pCl+QQdWmm1umqRZUGdbmViXWYFY4OLBlLGbxHG8vo3O+Cr7DE7EV0IOBHR
	BMTkFjKDaU6H7joFByxQPL6iDu1Jvdsk5KN9at8+d7EfwQzCCV+yRAZ2PYF0dPUfhDCW
	8U2+0gWBg8u+IM8QLhDaeW5FRaTVhoO7bgDluy8PJQLDzXH7rj+n9pkeY1NOWuy3LS9c
	pTTLkPEtlphq8wCXOCOu3IaArqheNKicU0CX8Bfmyy2wE8+SShfmjQ2uuTT1ecNl1Gyn
	quFg==
X-Gm-Message-State: ALoCoQlXAaOsoGrdtiDex11b0CVWJfmss4YoV8JDYa3eNKmVvbT7uGxEgJAgDiSEStbRizx51IlZ
MIME-Version: 1.0
X-Received: by 10.107.132.15 with SMTP id g15mr3301979iod.134.1438693290228;
	Tue, 04 Aug 2015 06:01:30 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Tue, 4 Aug 2015 06:01:30 -0700 (PDT)
In-Reply-To: <55C0B5D1.9080009@mlbassoc.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
	<55C0B5D1.9080009@mlbassoc.com>
Date: Tue, 4 Aug 2015 18:31:30 +0530
X-Google-Sender-Auth: eStg9xa8TmzSGJwNnrz8F89Ux88
Message-ID: <CAF5S8SOEAvFCw6AiiBEk9CJJSYv7_5uTZ6kSciQNd90YB5iPHA@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Aug 2015 13:01:33 -0000
Content-Type: multipart/alternative; boundary=001a113ec6d0815717051c7be2ed

--001a113ec6d0815717051c7be2ed
Content-Type: text/plain; charset=UTF-8

Hi Gary ,

Pls find below my configuration details .

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "CentOS-7.1.1503"
TARGET_SYS        = "arm-fsl-linux-gnueabi"
MACHINE           = "ls1021atwr"
DISTRO            = "fsl-networking"
DISTRO_VERSION    = "QorIQ-SDK-V1.8"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "daisy:18837ea4cdd4fdab608e0a032a11a2dfb6b1ee1a"
meta-fsl-arm      = "daisy:b529ac5ba06a0d69d7e6e295776a4d684c6e1c56"
meta-fsl-networking = "daisy:6eb28ed659bbadfa470237dfce98bcbf53c18fe1"
meta-fsl-toolchain = "daisy:a253b3594d8d9e0a4ed869d1fb502c395c4438ac"
meta-virtualization = "daisy:df44ec7a68c8e4b713a458a5b93e903103dea85c"
meta-oe
meta-networking
meta-perl
toolchain-layer   = "daisy:4a44c4107899363b22c01eb5621b0c86db1c659c"
meta-java         = "daisy:65c89b93fa9d4c89e1dfb5b795075cbadb541009"
meta-linaro-toolchain = "daisy:9e742fbb8cbb6d2087fb41429a77fcf0ce50dbb8"
meta-security     = "daisy:9f4c3849521465b459845dcc1a7a885bacaae9d9"


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:
>
>> hi Gary ,
>>
>> Thanks for the quick response. I still see the below error .
>>
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'gdb-cross-arm'
>> NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['gdb-cross-arm']
>> ERROR: Required build target 'fsl-toolchain' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['fsl-toolchain',
>> 'gdb-cross-arm']
>> -----
>>
>> Below is how the change ,
>> TOOLCHAIN_TARGET_TASK += " \
>>      glib-2.0 \
>>      glib-2.0-dev \
>>      dtc-staticdev \
>>      libgomp \
>>      libgomp-dev \
>>      libgomp-staticdev \
>>      libstdc++-staticdev \
>>      ${TCLIBC}-staticdev \
>>      util-linux-dev \
>>      gdb-cross-arm \
>> "
>>
>
> It works fine for me using the latest master git.
>
> What branch/release are you using?  I'm using:
> meta              = "master:a8b723498c9a7106210db140452886894494b4d6"
> meta-fsl-arm      = "master:48d7e70398f0f9f337b9edaeb29901c9bd895282"
> meta-fsl-arm-extra = "master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c0"
>
> What is your target machine?
>
>
>> On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
>>
>>         Hi all ,
>>
>>         I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation
>> for my ARM board .  I wanted to build gdb along with the toolchain . I got
>> some ideas from google to add the
>>         gdb-cross in the fsl-toolchain.bb <http://fsl-toolchain.bb> <
>> http://fsl-toolchain.bb> but on doing the same it gave me some errors
>> when trying to build .
>>
>>         Can you please let me know the right method to add gdb in the
>> toolchain ?
>>
>>         Below is the error i got ,
>>         *ERROR: gdb-cross not found in the base feeds (ls1021atwr
>> cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
>> armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any
>>         all).*
>>
>>
>>     Use gdb-cross-arm
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

--001a113ec6d0815717051c7be2ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Hi Gary ,=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">Pls find below my conf=
iguration details .=C2=A0</div><div class=3D"gmail_default" style=3D"font-f=
amily:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default"><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Build Con=
figuration:</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.22.0&q=
uot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&qu=
ot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">NATIVELSBSTRING =C2=A0 =3D &quot;CentOS-7.1.1503&quot;</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">TA=
RGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-fsl-linux-gnueabi&quot;</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ls1021atwr&quot;=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fsl-netwo=
rking&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;QorIQ-SDK-V1.8&quo=
t;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;armv7a vfp neon callconvent=
ion-hard cortexa7&quot;</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;vfp-neon&quot;</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-yocto-bsp =
=C2=A0 =C2=A0=3D &quot;daisy:18837ea4cdd4fdab608e0a032a11a2dfb6b1ee1a&quot;=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">meta-fsl-arm =C2=A0 =C2=A0 =C2=A0=3D &quot;daisy:b529ac5ba06a0d69d7=
e6e295776a4d684c6e1c56&quot;</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">meta-fsl-networking =3D &quot;daisy:6eb=
28ed659bbadfa470237dfce98bcbf53c18fe1&quot;</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">meta-fsl-toolchain =3D &=
quot;daisy:a253b3594d8d9e0a4ed869d1fb502c395c4438ac&quot;</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-virtu=
alization =3D &quot;daisy:df44ec7a68c8e4b713a458a5b93e903103dea85c&quot;</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-networkin=
g =C2=A0=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">meta-perl =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">to=
olchain-layer =C2=A0 =3D &quot;daisy:4a44c4107899363b22c01eb5621b0c86db1c65=
9c&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">meta-java =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;daisy:65c89=
b93fa9d4c89e1dfb5b795075cbadb541009&quot;</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">meta-linaro-toolchain =3D =
&quot;daisy:9e742fbb8cbb6d2087fb41429a77fcf0ce50dbb8&quot;</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-secu=
rity =C2=A0 =C2=A0 =3D &quot;daisy:9f4c3849521465b459845dcc1a7a885bacaae9d9=
&quot;</font></div><div class=3D"gmail_default" style=3D"font-family:&#39;c=
omic sans ms&#39;,sans-serif"><br></div></div></div><div class=3D"gmail_ext=
ra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and R=
egards,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=
=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=
=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn Techn=
ologies</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Aug 4, 2015 at 6:23 PM, Gary Thomas =
<span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank=
">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
hi Gary ,<br>
<br>
Thanks for the quick response. I still see the below error .<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
ERROR: Nothing RPROVIDES &#39;gdb-cross-arm&#39;<br>
NOTE: Runtime target &#39;gdb-cross-arm&#39; is unbuildable, removing...<br=
>
Missing or unbuildable dependency chain was: [&#39;gdb-cross-arm&#39;]<br>
ERROR: Required build target &#39;fsl-toolchain&#39; has no buildable provi=
ders.<br>
Missing or unbuildable dependency chain was: [&#39;fsl-toolchain&#39;, &#39=
;gdb-cross-arm&#39;]<br>
-----<br>
<br>
Below is how the change ,<br>
TOOLCHAIN_TARGET_TASK +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0glib-2.0 \<br>
=C2=A0 =C2=A0 =C2=A0glib-2.0-dev \<br>
=C2=A0 =C2=A0 =C2=A0dtc-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0libgomp \<br>
=C2=A0 =C2=A0 =C2=A0libgomp-dev \<br>
=C2=A0 =C2=A0 =C2=A0libgomp-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0libstdc++-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0${TCLIBC}-staticdev \<br>
=C2=A0 =C2=A0 =C2=A0util-linux-dev \<br>
=C2=A0 =C2=A0 =C2=A0gdb-cross-arm \<br>
&quot;<br>
</blockquote>
<br></span>
It works fine for me using the latest master git.<br>
<br>
What branch/release are you using?=C2=A0 I&#39;m using:<br>
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:a8b72=
3498c9a7106210db140452886894494b4d6&quot;<br>
meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;master:48d7e70398f0f9f337b9edaeb=
29901c9bd895282&quot;<br>
meta-fsl-arm-extra =3D &quot;master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c=
0&quot;<br>
<br>
What is your target machine?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
<br>
On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>
<br>
=C2=A0 =C2=A0 On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi all ,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am using the QorIQ-SDK-V1.8 SDK for the toolc=
hain generation for my ARM board .=C2=A0 I wanted to build gdb along with t=
he toolchain . I got some ideas from google to add the<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 gdb-cross in the <a href=3D"http://fsl-toolchai=
n.bb" rel=3D"noreferrer" target=3D"_blank">fsl-toolchain.bb</a> &lt;<a href=
=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" target=3D"_blank">http://fs=
l-toolchain.bb</a>&gt; &lt;<a href=3D"http://fsl-toolchain.bb" rel=3D"noref=
errer" target=3D"_blank">http://fsl-toolchain.bb</a>&gt; but on doing the s=
ame it gave me some errors when trying to build .<span class=3D""><br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Can you please let me know the right method to =
add gdb in the toolchain ?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Below is the error i got ,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *ERROR: gdb-cross not found in the base feeds (=
ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vf=
p armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 all).*<br>
<br>
<br>
=C2=A0 =C2=A0 Use gdb-cross-arm<br>
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
=C2=A0 =C2=A0 yocto mailing list<br></span>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
<br>
<br>
</blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--001a113ec6d0815717051c7be2ed--
