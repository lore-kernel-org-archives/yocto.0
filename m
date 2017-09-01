Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5BF2E00CE8; Fri,  1 Sep 2017 06:57:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80260E00CD8
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 06:57:55 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id g47so883433uad.0
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 06:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FLoXsvs/DYHaBOmxCSv237ZGq45IfKVAVNK1pBzOMOk=;
	b=rhDeA/imSVasQdcSK7Vdjl69/eHYjezKzMHwRwuIh4uyk3QCKaEzxcXqEOmScIq7eb
	m5iKcw9zAXLdwkHNB3Pe6Fgi7D26TioBAdV3IwvxfAb6RHF0EUlvZoOTso28MA9dyPBU
	Y/SziCkcPMXCAlAiB1FkGMJRq2Nz4+6gHnwlJhpwGAFyhTMGax/1CsKFQMvMsMwE4a2Z
	Ngo+nuatb0HKBUD1U6n1DReT84I5SgF7DEPMd9iw/Opld638tUG0WWUpym7pAJXGwSNW
	GJBdTIIv/u/GlVA6Mf28oKSiO9fVda4Z7tFbRL3Z29HclhWiPuOeQgx+jsRXGwLmRtnk
	svIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FLoXsvs/DYHaBOmxCSv237ZGq45IfKVAVNK1pBzOMOk=;
	b=ITMcA2PqJUYIbrHmtRysQtmeQmPxLJjklcqZV+W9WO37oSVar4iTO+tzD8q8N7qc2d
	HjZqLORi45f3+IWRC30n9cv3Iw4vN7CY3CwKokvvd26Nu1Nfm/5lNNK0ghvKmGkhRnSj
	GCLPLdVhvdq/rC+GgPZmag7JiNhbxtRKCGE+peF5/Wwd1RIjRvGkciX+t0H4QzsYN4Vq
	usfH0kUzpTUWJBC7QBGIqLmdhHF6Pq6meY+XCWsjqhbYg5webj/TeUxwjkrEW9TbW635
	H7Fxn/UkDjWoeePymZIphDgrfH2xAtJXc/fbzB/WX9wV6wbwESPLeFtpREYf9VoPqfub
	Bitw==
X-Gm-Message-State: AHPjjUivfxTtVgtO6TGxmLvi/C6Mhh1A1WLdmFYxWfSK1rOyF+k7tEpS
	qjgE285rUoYpcSr+Cv4hEwvAFVqZ8A==
X-Google-Smtp-Source: ADKCNb75bpoI3WqM9I6eV6cNaDay5JXZzqwwK0MKKcGqY31iiULwpbbd/XNRxjLOS/cNmMkmWhBLsdwfYLarplsUasE=
X-Received: by 10.159.48.80 with SMTP id i16mr1057647uab.191.1504274275415;
	Fri, 01 Sep 2017 06:57:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.15.69 with HTTP; Fri, 1 Sep 2017 06:57:54 -0700 (PDT)
In-Reply-To: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 1 Sep 2017 15:57:54 +0200
Message-ID: <CA+chaQdHfEq=KJ6wp1XYtcSdsZv4A-vP4OMzY0vvwcQ3mdZBGQ@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Fri, 01 Sep 2017 13:57:57 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b0fced4bd5905582125bc"

--94eb2c1b0fced4bd5905582125bc
Content-Type: text/plain; charset="UTF-8"

Why do you use:

";downloadfilename=PATH
<http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=PATH>"

?

On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> Hi!
>
> I was trying to share sstate between different hosts, but the consumer
> build system seems to be unable to use re-use any sstate object. My
> scenario is setup as follows:
>
> * The cache was populated by a pristine qemux86 core-image-minimal build
> of morty. This was done in a crops/poky container (running in docker on Mac)
> * The cache was then served via HTTP
> * The second host is a VM running Ubuntu 16.04 where I set SSTATE_MIRRORS
> to point to the hosted sstate cache like this:
>
> SSTATE_MIRRORS ?= "\
> file://.* http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=PATH
> "
>
> * I checked with curl that the VM can successfully get sstate objects from
> the server.
> * Then I start a new build (same metadata revisions, default configuration
> for core-image-minimal) and each and every task run from scratch with no
> sstate cache re-use.
>
> Here are the two configurations from bitbake and /etc/lsb-release files:
>
> On the container used to seed sstate cache:
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>
> $ cat /etc/lsb-release
> DISTRIB_ID=Ubuntu
> DISTRIB_RELEASE=16.04
> DISTRIB_CODENAME=xenial
> DISTRIB_DESCRIPTION="Ubuntu 16.04.2 LTS"
>
> On the VM that should consume the cache:
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-16.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>
> $ cat /etc/lsb-release
> DISTRIB_ID=Ubuntu
> DISTRIB_RELEASE=16.04
> DISTRIB_CODENAME=xenial
> DISTRIB_DESCRIPTION="Ubuntu 16.04.3 LTS"
>
>
> To me, the only differing bit that in my understanding can lead to sstate
> cache objects invalidation is the value of NATIVELSBSTRING which is
> "universal" inside the container and "Ubuntu-16.04". This sounds strange to
> me, since both underlying systems are Ubuntu 16.04 (although not exactly
> the same dot release) as confirmed by /etc/lsb-release contents.
>
> Is the different NATIVELSBSTRING the root cause for everything being
> re-built? If so, what's causing them being different in the end and what
> does "universal" exactly mean (to me it looks like a more generic and
> incluse term than any distro label, so I'm confused...)?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c1b0fced4bd5905582125bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why do you use:<div><br></div><div>&quot;<a href=3D"http:/=
/192.168.33.1:8000/sstate-cache/PATH;downloadfilename=3DPATH" target=3D"_bl=
ank" style=3D"font-size:12.8px">;<wbr>downloadfilename=3DPATH</a><span styl=
e=3D"font-size:12.8px">&quot;</span><br></div><div><span style=3D"font-size=
:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">?</span></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, =
Sep 1, 2017 at 3:54 PM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi!<div><br></div>=
<div>I was trying to share sstate between different hosts, but the consumer=
 build system seems to be unable to use re-use any sstate object. My scenar=
io is setup as follows:</div><div><br></div><div>* The cache was populated =
by a pristine qemux86 core-image-minimal build of morty. This was done in a=
 crops/poky container (running in docker on Mac)</div><div>* The cache was =
then served via HTTP</div><div>* The second host is a VM running Ubuntu 16.=
04 where I set SSTATE_MIRRORS to point to the hosted sstate cache like this=
:</div><div><br></div><div><div>SSTATE_MIRRORS ?=3D &quot;\</div><div>file:=
//.* <a href=3D"http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=
=3DPATH" target=3D"_blank">http://192.168.33.1:8000/<wbr>sstate-cache/PATH;=
<wbr>downloadfilename=3DPATH</a>&quot;</div></div><div><br></div><div>* I c=
hecked with curl that the VM can successfully get sstate objects from the s=
erver.</div><div>* Then I start a new build (same metadata revisions, defau=
lt configuration for core-image-minimal) and each and every task run from s=
cratch with no sstate cache re-use.</div><div><br></div><div>Here are the t=
wo configurations from bitbake and /etc/lsb-release files:</div><div><br></=
div><div>On the container used to seed sstate cache:</div><div><br></div><d=
iv><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &quot;uni=
versal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586=
-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D =
&quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.2=
.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;</di=
v><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>met=
a</div><div>meta-poky</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;morty=
:<wbr>2a70e84643381eca0e7bf7928d4a3d<wbr>56f9651128&quot;</div></div><div><=
br></div><div><div>$ cat /etc/lsb-release</div><div>DISTRIB_ID=3DUbuntu</di=
v><div>DISTRIB_RELEASE=3D16.04</div><div>DISTRIB_CODENAME=3Dxenial</div><di=
v>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.2 LTS&quot;</div></div><div><br>=
</div><div>On the VM that should consume the cache:</div><div><br></div><di=
v><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =3D &quot;Ubu=
ntu-16.04&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i=
586-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot=
;2.2.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;=
</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div=
>meta</div><div>meta-poky</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;m=
orty:<wbr>2a70e84643381eca0e7bf7928d4a3d<wbr>56f9651128&quot;</div></div><d=
iv><br></div><div>$ cat /etc/lsb-release<br></div><div><div>DISTRIB_ID=3DUb=
untu</div><div>DISTRIB_RELEASE=3D16.04</div><div>DISTRIB_CODENAME=3Dxenial<=
/div><div>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.3 LTS&quot;</div></div><=
div><br></div><div><br></div><div>To me, the only differing bit that in my =
understanding can lead to sstate cache objects invalidation is the value of=
 NATIVELSBSTRING which is &quot;universal&quot; inside the container and &q=
uot;Ubuntu-16.04&quot;. This sounds strange to me, since both underlying sy=
stems are Ubuntu 16.04 (although not exactly the same dot release) as confi=
rmed by /etc/lsb-release contents.</div><div><br></div><div>Is the differen=
t NATIVELSBSTRING the root cause for everything being re-built? If so, what=
&#39;s causing them being different in the end and what does &quot;universa=
l&quot; exactly mean (to me it looks like a more generic and incluse term t=
han any distro label, so I&#39;m confused...)?</div><div><br></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c1b0fced4bd5905582125bc--
