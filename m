Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1699.1589318846743763357
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 14:27:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOB8+7zw;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 384B4E01B4C; Tue, 12 May 2020 14:27:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 525E5E01B4A
	for <yocto@yoctoproject.org>; Tue, 12 May 2020 14:27:23 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id h10so1644716iob.10
        for <yocto@yoctoproject.org>; Tue, 12 May 2020 14:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Virha3bSeYkbTVG4qqJmG4PW5E5Qx9oUPSTpDJLa8zQ=;
        b=eOB8+7zwQzQxjYRD7Qn/7pGuP2qo9jeXnDXSAUJzHQefdx557Wt5cSRrsQeJqdvh0m
         TsWx6n7DzlwxBGWIm4RyVnEu43XU6CiSA1OqDkAp9d5aEI6zwKm9JZRvgvmDfzqqaWg8
         CUhwBrUvIIRh/pf85rch+4ngOAfrG47Z7pRNs4Feg+UxC5faH6nO+lPWgtpjIffIXgiL
         JP061MkCxPwGb1NPqIFDHVYYHlTTxdghrMqARYMRNM0nri6gJMGDZdRthfSe3EURNT78
         9KTJXUY+inQcuabrwEzWjfmKBaMA+bDIk+Lxrd9ODpBGGFCS0Bj930blT65wSCxwqXCO
         dBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Virha3bSeYkbTVG4qqJmG4PW5E5Qx9oUPSTpDJLa8zQ=;
        b=ucOs+mwJGpJpHqWwzaFzYu4GgVDVMGZ/cfhhKfY+26tryuSpkiEjAuG0yLIwrVD55W
         6u/Q96vaID27U2xy0cotjJtMqYcX2pG5Yap2cNeq1Deqmtmdffk3Bg1C+pulpCioEsUP
         o/LSsXfh1yvTRj12Y1zjvtnU7f3WAPxcUrxolCRnbwOmI2VkC8yoQnj41z03T9oI2IC0
         8xRwLsSugZZ157yM46coBjFOHfP2nWQAeWHYx2GxhlCM5FIvWb6Gy6tuNIEif8Xt/ZRS
         Y/cAz7H6GWMoNYKcEXjFnUVTAyJqYFudLdBHgD4HUOFsJ2j+XggJ9sscpA86ywA7THhM
         5oCw==
X-Gm-Message-State: AGi0PuZDf2Q64J9OviWvQc7su1AdJjEq0rR8HPhqiXbaGE17PvhImmho
	K9cPYYja3h1mbKzW58XOM6d8vVJosJOOSTkxe9s=
X-Google-Smtp-Source: APiQypL/bckKG4iQsK3vL1b8hkklDKEXNqW+358KpaL140TdHVRwywdtokxym5/OvCj/VKy/pLBsiIq4eC67T4orgzk=
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr22724435iob.10.1589318843086;
 Tue, 12 May 2020 14:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM32EDpoiMKQ_pfcVH=PPht9OmJ0qA+QeufNnMM_cr0vhw@mail.gmail.com>
In-Reply-To: <CAAV2bM32EDpoiMKQ_pfcVH=PPht9OmJ0qA+QeufNnMM_cr0vhw@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Tue, 12 May 2020 14:27:12 -0700
Message-ID: <CANx9H-CkvnQ-aEadgH=pC81xkD+sBRtLYygeQs1gkm=L3Owd0g@mail.gmail.com>
Subject: Re: [yocto] python3 path different from python2
To: Emily <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000013bb0605a57a217d"

--00000000000013bb0605a57a217d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does your recipe inherit pythonnative? If so, you could try switching to
=E2=80=98python3native=E2=80=99.

For example:
http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dblob;f=3Dmeta-arago-e=
xtras/recipes-connectivity/open62541/open62541_git.bb;hb=3Drocko

On Tue, May 12, 2020 at 12:13 PM Emily <easmith5555@gmail.com> wrote:

> Hi all -
>
> I'm working with rocko trying to build a recipe with python3 that used t=
o
> be build with python2 using cmake. After changing things in the build
> files, when I run the devshell for the recipe, I see two different inclu=
de
> paths for python2 and python3. I have tried switching to zeus but I had =
a
> few issues with a xilinx bsp for the machine I wanted to build with.
>
> For python2 (correct):
>
> *root@dc:/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-po=
ky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/git#*
> python-config --cflags
> -I/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/includ=
e/python2.7
> -I/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/includ=
e/python2.7
> -fno-strict-aliasing -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/wor=
k/aarch64-poky-linux/python/2.7.14-r1=3D/usr/src/debug/python/2.7.14-r1
> -fdebug-prefix-map=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/wor=
k/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe=
-sysroot-native=3D
> -fdebug-prefix-map=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/wor=
k/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe=
-sysroot=3D
> -DNDEBUG -g -O3 -Wall -Wstrict-prototypes
>
> For python3 (incorrect):
>
> *root@dc:/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-po=
ky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/git#*
> python3-config --cflags
> -I/usr/include/python3.5m -I/usr/include/python3.5m  -Wno-unused-result
> -Wsign-compare -g -fstack-protector-strong -Wformat -Werror=3Dformat-sec=
urity
>  -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes
>
> The python3 one is obviously incorrect, is there a way to tell where thi=
s
> path is coming from? Even if I manually include the proper path in the
> CMakeLists.txt it doesn't seem to work. Does yocto overwrite this path
> somewhere?
>
> Thanks!
> Emily Smith
>
>=20
>

--00000000000013bb0605a57a217d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Does your recipe inherit pythonnative? If so, you co=
uld try switching to =E2=80=98python3native=E2=80=99.</div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">For example:=C2=A0<div><a href=3D"ht=
tp://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dblob;f=3Dmeta-arago-extr=
as/recipes-connectivity/open62541/open62541_git.bb;hb=3Drocko">http://arago=
-project.org/git/?p=3Dmeta-arago.git;a=3Dblob;f=3Dmeta-arago-extras/recipes=
-connectivity/open62541/open62541_git.bb;hb=3Drocko</a></div></div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, M=
ay 12, 2020 at 12:13 PM Emily &lt;<a href=3D"mailto:easmith5555@gmail.com">=
easmith5555@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I&#39;m working with r=
ocko trying to build a recipe with python3 that used to be build with pytho=
n2 using cmake. After changing things in the build files, when I run the de=
vshell for the recipe, I see two different include paths for python2 and py=
thon3. I have tried switching to zeus but I had a few issues with a xilinx =
bsp for the machine I wanted to build with.=C2=A0</div><div><br></div><div>=
For python2 (correct):</div><div><b>root@dc:/local/d6/easmith5/rocko_bitbak=
e/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+=
921c563309-r0/git#</b> python-config --cflags<br>-I/local/d6/easmith5/rocko=
_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitA=
UTOINC+921c563309-r0/recipe-sysroot/usr/include/python2.7 -I/local/d6/easmi=
th5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex=
/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python2.7 -fno-str=
ict-aliasing -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=
=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux=
/python/2.7.14-r1=3D/usr/src/debug/python/2.7.14-r1 -fdebug-prefix-map=3D/l=
ocal/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-u=
a-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native=3D -fdebug=
-prefix-map=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-=
poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot=
=3D -DNDEBUG -g -O3 -Wall -Wstrict-prototypes<br></div><div><br></div><div=
>For python3 (incorrect):</div><div><b>root@dc:/local/d6/easmith5/rocko_bit=
bake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOI=
NC+921c563309-r0/git#</b> python3-config --cflags<br>-I/usr/include/python3=
.5m -I/usr/include/python3.5m =C2=A0-Wno-unused-result -Wsign-compare -g -f=
stack-protector-strong -Wformat -Werror=3Dformat-security =C2=A0-DNDEBUG -g=
 -fwrapv -O3 -Wall -Wstrict-prototypes<br></div><div><br></div><div>The pyt=
hon3 one is obviously incorrect, is there a way to tell where this path is =
coming from? Even if I manually include the proper path in the CMakeLists.t=
xt it doesn&#39;t seem to work. Does yocto overwrite this path somewhere?=
=C2=A0</div><div><br></div><div>Thanks!</div><div>Emily Smith</div><div><b=
r></div></div>
<br>
</blockquote></div></div>

--00000000000013bb0605a57a217d--
