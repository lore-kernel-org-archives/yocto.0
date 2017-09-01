Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CE00E00CB7; Fri,  1 Sep 2017 07:05:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF20E007EF
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 07:05:06 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id y50so875135uay.4
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 07:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Jc51Tqr/cGqEdZPvSkm3mJBA1I1qQ3ladiaPTBOg2gM=;
	b=nXZNt8bXQqrYtTfak36LQzYtBhHbV2G4m5NSOOx3+Ft0qmXeeOEXOZtWzYXTipfIk8
	VcmwruB3U13OVTq6kbJRhfr7jBhQdIOEMBkol4Z2PGHaFNxjg9KXb+1dn39z1N1ANH9+
	gtOfMmNkFlGnhjaclHNmRFSb1+S8aZKiXdUdUiPLRNakinosY8qWDKsCwm9b1HDC/DAw
	taWAkDU+B10iBa0n0Rdiqvt83o/5qa+nz4SFknBknxHuhWPNvd2YCmOxQRhOD7ov/KHI
	+kyZAeVzNbZu1k36gApdGOSTeX5TiHIDt8i4vG7vj+Iee/3sUnF08TiSWdoy2v9Mvx7L
	u34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Jc51Tqr/cGqEdZPvSkm3mJBA1I1qQ3ladiaPTBOg2gM=;
	b=Mi5gBIi8urSunRaAtO574+NxVRgzZdhAymCFG+OtkIovjfXRXoKsKOugEPAL0dd7pk
	Tpcq7cyNq0SI2/gGyGzImjUw7+I3UMsRZF7e5rmcvt1J2KxuIXtGyw/ierqBUbFQ4Guu
	JpXImoaostYSrBRgHcfMFug0Ci6PCu/aaMaF4Go2bYl78XohklZiyJzeXWLEWlN+s/26
	nCjGXN39cMxInDnJuwU2FiQjYZUdCSLpDvKP048A+OLnowwJOixEX56Z+LAvERfuBJSi
	/oDtidefOkjInXR0uP+yBh6YKuTGQwZ1y8gUhGjrn3hBmIK8Yv9LcZ4H0cWzU6uCuQHi
	MLGg==
X-Gm-Message-State: AHPjjUjI3YGAtqrJ/hSj5DLudvKDtQFdU+NKQVzxuqHlnkzw47jhBlPv
	YP6Tw1p3pyWy3cWFuKXxDyYHtvNTmA==
X-Google-Smtp-Source: ADKCNb7BlEgJcMI5tAuY0bCgjHhTsuHTkgffkfugDQB7W/iR3i39mq0Uq7BRlOFXKA502aa8ZL/j26eT5kfrlDtAK4k=
X-Received: by 10.159.59.68 with SMTP id j4mr1191854uah.60.1504274705984; Fri,
	01 Sep 2017 07:05:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.93.42 with HTTP; Fri, 1 Sep 2017 07:05:05 -0700 (PDT)
In-Reply-To: <CA+chaQdHfEq=KJ6wp1XYtcSdsZv4A-vP4OMzY0vvwcQ3mdZBGQ@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CA+chaQdHfEq=KJ6wp1XYtcSdsZv4A-vP4OMzY0vvwcQ3mdZBGQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 1 Sep 2017 16:05:05 +0200
Message-ID: <CAC+thW34FPFZ=7fcKSN4eAXPk+yeh04my2K3ExUmtYi51EnSYQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Fri, 01 Sep 2017 14:05:07 -0000
Content-Type: multipart/alternative; boundary="f403043edc987eb5520558213f4b"

--f403043edc987eb5520558213f4b
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 1, 2017 at 3:57 PM, Martin Jansa <martin.jansa@gmail.com> wrote:

> Why do you use:
>
> ";downloadfilename=PATH
> <http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=PATH>"
>
> ?
>

Most likely because I copy/pasted from local.conf comments. I see the same
syntax on both "morty" [1] and "current" documentation. Shouldn't this be
part of the "keep the same two-character subdirectories layout of the
mirror" thing?

[1]
http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#var-SSTATE_MIRRORS


> On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com> wrote:
>
>> Hi!
>>
>> I was trying to share sstate between different hosts, but the consumer
>> build system seems to be unable to use re-use any sstate object. My
>> scenario is setup as follows:
>>
>> * The cache was populated by a pristine qemux86 core-image-minimal build
>> of morty. This was done in a crops/poky container (running in docker on Mac)
>> * The cache was then served via HTTP
>> * The second host is a VM running Ubuntu 16.04 where I set SSTATE_MIRRORS
>> to point to the hosted sstate cache like this:
>>
>> SSTATE_MIRRORS ?= "\
>> file://.* http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=
>> PATH"
>>
>> * I checked with curl that the VM can successfully get sstate objects
>> from the server.
>> * Then I start a new build (same metadata revisions, default
>> configuration for core-image-minimal) and each and every task run from
>> scratch with no sstate cache re-use.
>>
>> Here are the two configurations from bitbake and /etc/lsb-release files:
>>
>> On the container used to seed sstate cache:
>>
>> Build Configuration:
>> BB_VERSION        = "1.32.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "universal"
>> TARGET_SYS        = "i586-poky-linux"
>> MACHINE           = "qemux86"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.2.2"
>> TUNE_FEATURES     = "m32 i586"
>> TARGET_FPU        = ""
>> meta
>> meta-poky
>> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>>
>> $ cat /etc/lsb-release
>> DISTRIB_ID=Ubuntu
>> DISTRIB_RELEASE=16.04
>> DISTRIB_CODENAME=xenial
>> DISTRIB_DESCRIPTION="Ubuntu 16.04.2 LTS"
>>
>> On the VM that should consume the cache:
>>
>> Build Configuration:
>> BB_VERSION        = "1.32.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Ubuntu-16.04"
>> TARGET_SYS        = "i586-poky-linux"
>> MACHINE           = "qemux86"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.2.2"
>> TUNE_FEATURES     = "m32 i586"
>> TARGET_FPU        = ""
>> meta
>> meta-poky
>> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>>
>> $ cat /etc/lsb-release
>> DISTRIB_ID=Ubuntu
>> DISTRIB_RELEASE=16.04
>> DISTRIB_CODENAME=xenial
>> DISTRIB_DESCRIPTION="Ubuntu 16.04.3 LTS"
>>
>>
>> To me, the only differing bit that in my understanding can lead to sstate
>> cache objects invalidation is the value of NATIVELSBSTRING which is
>> "universal" inside the container and "Ubuntu-16.04". This sounds strange to
>> me, since both underlying systems are Ubuntu 16.04 (although not exactly
>> the same dot release) as confirmed by /etc/lsb-release contents.
>>
>> Is the different NATIVELSBSTRING the root cause for everything being
>> re-built? If so, what's causing them being different in the end and what
>> does "universal" exactly mean (to me it looks like a more generic and
>> incluse term than any distro label, so I'm confused...)?
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--f403043edc987eb5520558213f4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Sep 1, 2017 at 3:57 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Why do you use:<div><br></div><div>&quot;<a href=3D"http://192=
.168.33.1:8000/sstate-cache/PATH;downloadfilename=3DPATH" style=3D"font-siz=
e:12.8px" target=3D"_blank">;downloadfilename=3DPATH</a><span style=3D"font=
-size:12.8px">&quot;</span><br></div><div><span style=3D"font-size:12.8px">=
<br></span></div><div><span style=3D"font-size:12.8px">?</span></div></div>=
</blockquote><div><br></div><div>Most likely because I copy/pasted from loc=
al.conf comments. I see the same syntax on both &quot;morty&quot; [1] and &=
quot;current&quot; documentation. Shouldn&#39;t this be part of the &quot;k=
eep the same=C2=A0two-character subdirectories layout of the mirror&quot; t=
hing?=C2=A0</div><div>=C2=A0</div><div>[1]=C2=A0<a href=3D"http://www.yocto=
project.org/docs/2.2/mega-manual/mega-manual.html#var-SSTATE_MIRRORS">http:=
//www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#var-SSTATE_MIR=
RORS</a></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div cla=
ss=3D"gmail-h5">On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <span dir=
=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@g=
mail.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div><div class=3D"gmail-h5"><div dir=3D"ltr">Hi!<div>=
<br></div><div>I was trying to share sstate between different hosts, but th=
e consumer build system seems to be unable to use re-use any sstate object.=
 My scenario is setup as follows:</div><div><br></div><div>* The cache was =
populated by a pristine qemux86 core-image-minimal build of morty. This was=
 done in a crops/poky container (running in docker on Mac)</div><div>* The =
cache was then served via HTTP</div><div>* The second host is a VM running =
Ubuntu 16.04 where I set SSTATE_MIRRORS to point to the hosted sstate cache=
 like this:</div><div><br></div><div><div>SSTATE_MIRRORS ?=3D &quot;\</div>=
<div>file://.* <a href=3D"http://192.168.33.1:8000/sstate-cache/PATH;downlo=
adfilename=3DPATH" target=3D"_blank">http://192.168.33.1:8000/sstat<wbr>e-c=
ache/PATH;downloadfilename=3D<wbr>PATH</a>&quot;</div></div><div><br></div>=
<div>* I checked with curl that the VM can successfully get sstate objects =
from the server.</div><div>* Then I start a new build (same metadata revisi=
ons, default configuration for core-image-minimal) and each and every task =
run from scratch with no sstate cache re-use.</div><div><br></div><div>Here=
 are the two configurations from bitbake and /etc/lsb-release files:</div><=
div><br></div><div>On the container used to seed sstate cache:</div><div><b=
r></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =
=3D &quot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;i586-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=A0 =
=C2=A0=3D &quot;2.2.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot=
;m32 i586&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&=
quot;</div><div>meta</div><div>meta-poky</div><div>meta-yocto-bsp =C2=A0 =
=C2=A0=3D &quot;morty:2a70e84643381eca0e7bf79<wbr>28d4a3d56f9651128&quot;</=
div></div><div><br></div><div><div>$ cat /etc/lsb-release</div><div>DISTRIB=
_ID=3DUbuntu</div><div>DISTRIB_RELEASE=3D16.04</div><div>DISTRIB_CODENAME=
=3Dxenial</div><div>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.2 LTS&quot;</d=
iv></div><div><br></div><div>On the VM that should consume the cache:</div>=
<div><br></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;1.32.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =
=C2=A0 =3D &quot;Ubuntu-16.04&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;i586-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&quot;</div><div>DISTRO =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =
=C2=A0 =C2=A0=3D &quot;2.2.2&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =
=3D &quot;m32 i586&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;&quot;</div><div>meta</div><div>meta-poky</div><div>meta-yocto-bs=
p =C2=A0 =C2=A0=3D &quot;morty:2a70e84643381eca0e7bf79<wbr>28d4a3d56f965112=
8&quot;</div></div><div><br></div><div>$ cat /etc/lsb-release<br></div><div=
><div>DISTRIB_ID=3DUbuntu</div><div>DISTRIB_RELEASE=3D16.04</div><div>DISTR=
IB_CODENAME=3Dxenial</div><div>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.3 L=
TS&quot;</div></div><div><br></div><div><br></div><div>To me, the only diff=
ering bit that in my understanding can lead to sstate cache objects invalid=
ation is the value of NATIVELSBSTRING which is &quot;universal&quot; inside=
 the container and &quot;Ubuntu-16.04&quot;. This sounds strange to me, sin=
ce both underlying systems are Ubuntu 16.04 (although not exactly the same =
dot release) as confirmed by /etc/lsb-release contents.</div><div><br></div=
><div>Is the different NATIVELSBSTRING the root cause for everything being =
re-built? If so, what&#39;s causing them being different in the end and wha=
t does &quot;universal&quot; exactly mean (to me it looks like a more gener=
ic and incluse term than any distro label, so I&#39;m confused...)?</div><d=
iv><br></div></div>
<br></div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div></div>

--f403043edc987eb5520558213f4b--
