Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B67C4E00D75; Wed, 17 Jan 2018 04:53:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C7FE008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:53:37 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id f89so12674258ioj.4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CVAguHTrWMDSkpl3pSOAsi7NUHm/mtN0cUU/DQGbIq0=;
	b=I6h+xVOhTIqNUDuDfSdKFBvTHbPc6AatU9UpdIhqzUvfduGUePrsPw8oBZg3Xtc17K
	SfCvfW1EmEwWdpdMcb4TQvDNZ2FEQZkx8q9KZu3r72fOuLhZAKbtv0Z46aLYpByZkZmY
	i6EC/vBuWUamu+DvNiXTNwWUacoMlbnuAOSXfpJA+JTIWq8biY5Ut8RMpxDkGZjEQNgb
	YvFkZKN96xOtTARLGqhV6f2kMCovGa+lHvTUENBvkcgApgJmelvOD1rOn8viB5t/Ykpx
	FWfXPkT/gUwMc8iamA23FUbUV00idEh5KgDTx+HfrLU+sDSWksaSzxLr9xu29jlCpQTG
	jsgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CVAguHTrWMDSkpl3pSOAsi7NUHm/mtN0cUU/DQGbIq0=;
	b=EkWbK/jiOqnWnX0GxKZTm8Z/vVWto0it1ZoQ1370qxjuJChhab/3h0ZGcmOxknfhtQ
	HsgezXPDFsiuhWH1uMC/XU3T3NNox+1lTZBkRESRECmEdCXYGZ57FDw9fiV66ysahqRS
	x+AWedWzcMQnnPyNSzUXtT4mK053p+PbVMvv6UaI1l2dnZi3Yoo/F6Q7XC8zdWkF2cp1
	trW46cdDsiXCQvoKocbRX+kgDHvb/By506dojfFycVkz6ehu8nNaSx6kzxuNyCXrqQPy
	ssCK5DYTLwiNk9Cy/QoM5Ggt5l7084LpiUvSA1lVgEFkyIPFQlan9CeOxP+sDouZImhL
	x0ng==
X-Gm-Message-State: AKwxyteaX8Lw7lCKM6xZhq2zj5v92E2aDFbyheQTH60bRtvGKX032R/B
	2x/mUnnizHmZz8lBUcMNhzhCTdUhzJCPpjoPRymhcQ==
X-Google-Smtp-Source: ACJfBotcGPxzgk2BJb4X3StF5BdXq/i56hkEXSUWfDrOSNI+cpA1o9OQYv5tywRy8qX/62AVx8PbLe8hUTqA1iKN8qI=
X-Received: by 10.107.133.75 with SMTP id h72mr10682846iod.227.1516193616727; 
	Wed, 17 Jan 2018 04:53:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.157.202 with HTTP; Wed, 17 Jan 2018 04:53:16 -0800 (PST)
In-Reply-To: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Jan 2018 12:53:16 +0000
Message-ID: <CAJTo0LbMJL+2-K03MRhPDjRfC8oBJ1fc1D+-w+HCQgB4UJrFeQ@mail.gmail.com>
To: Mathias Rudnik <rudnik.mathias@googlemail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Wed, 17 Jan 2018 12:53:38 -0000
Content-Type: multipart/alternative; boundary="001a113ec5e4efbbf60562f8559d"

--001a113ec5e4efbbf60562f8559d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suggest you ask the upstream maintainers of libepoxy.

Ross

On 17 January 2018 at 12:46, Mathias Rudnik <rudnik.mathias@googlemail.com>
wrote:

> Hello,
>
> I am trying to build libepoxy but the do_compile tasks breaks.
> I found following error messages in the logs:
>
> arm-poky-linux-gnueabi-gcc -march=3Darmv6 -mfpu=3Dvfp -mfloat-abi=3Dhard =
-mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=3D/hdd_gold1/mathias/git/poky/r=
pi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/re=
cipe-sysroot '-Itest/egl_common at sta <http://lists.openembedded.org/mailm=
an/listinfo/openembedded-core>' '-Itest' '-Iinclude/epoxy' '-I../libepoxy-1=
.4.3/test' '-Iinclude' '-I../libepoxy-1.4.3/include' '-Isrc' '-I../libepoxy=
-1.4.3/src' '-fdiagnostics-color=3Dalways' '-pipe' '-D_FILE_OFFSET_BITS=3D6=
4' '-Wall' '-Winvalid-pch' '-std=3Dgnu99' '-O2' '-g' '-O2' '-g' '-feliminat=
e-unused-debug-types' '-fdebug-prefix-map=3D/hdd_gold1/mathias/git/poky/rpi=
-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0=3D/u=
sr/src/debug/libepoxy/1.4.3-r0' '-fdebug-prefix-map=3D/hdd_gold1/mathias/gi=
t/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4=
.3-r0/recipe-sysroot-native=3D' '-fdebug-prefix-map=3D/hdd_gold1/mathias/gi=
t/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4=
.3-r0/recipe-sysroot=3D' '-lEGL' '-fPIC' '-Wpointer-arith' '-Wmissing-decla=
rations' '-Wformat=3D2' '-Wstrict-prototypes' '-Wmissing-prototypes' '-Wnes=
ted-externs' '-Wbad-function-cast' '-Wold-style-definition' '-Wdeclaration-=
after-statement' '-Wunused' '-Wuninitialized' '-Wshadow' '-Wmissing-noretur=
n' '-Wmissing-format-attribute' '-Wredundant-decls' '-Wlogical-op' '-Werror=
=3Dimplicit' '-Werror=3Dnonnull' '-Werror=3Dinit-self' '-Werror=3Dmain' '-W=
error=3Dmissing-braces' '-Werror=3Dsequence-point' '-Werror=3Dreturn-type' =
'-Werror=3Dtrigraphs' '-Werror=3Darray-bounds' '-Werror=3Dwrite-strings' '-=
Werror=3Daddress' '-Werror=3Dint-to-pointer-cast' '-Werror=3Dpointer-to-int=
-cast' '-fno-strict-aliasing' '-Wno-int-conversion' '-MMD' '-MQ' 'test/egl_=
common at sta <http://lists.openembedded.org/mailman/listinfo/openembedded-=
core>/egl_common.c.o' '-MF' 'test/egl_common at sta <http://lists.openembed=
ded.org/mailman/listinfo/openembedded-core>/egl_common.c.o.d' -o 'test/egl_=
common at sta <http://lists.openembedded.org/mailman/listinfo/openembedded-=
core>/egl_common.c.o' -c ../libepoxy-1.4.3/test/egl_common.c
> ../libepoxy-1.4.3/test/egl_common.c: In function 'get_egl_display_or_skip=
':
> ../libepoxy-1.4.3/test/egl_common.c:36:5: error: unknown type name 'Displ=
ay'; did you mean 'EGLDisplay'?
>      Display *dpy =3D XOpenDisplay(NULL);
>      ^~~~~~~
>      EGLDisplay
> ../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration of=
 function 'XOpenDisplay'; did you mean 'eglGetDisplay'? [-Werror=3Dimplicit=
-function-declaration]
>      Display *dpy =3D XOpenDisplay(NULL);
>                     ^~~~~~~~~~~~
>                     eglGetDisplay
> ../libepoxy-1.4.3/test/egl_common.c:36:20: warning: nested extern declara=
tion of 'XOpenDisplay' [-Wnested-externs]
> cc1: some warnings being treated as errors
>
> Does anybody know what i am doing wrong?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ec5e4efbbf60562f8559d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suggest you ask the upstream maintainers of libepoxy.<di=
v><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 17 January 2018 at 12:46, Mathias Rudnik <span dir=3D"l=
tr">&lt;<a href=3D"mailto:rudnik.mathias@googlemail.com" target=3D"_blank">=
rudnik.mathias@googlemail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div style=3D"word-wrap:break-word"><pre style=3D"white-space:pr=
e-wrap;font-variant-ligatures:normal">Hello,

I am trying to build libepoxy but the do_compile tasks breaks.
I found following error messages in the logs:

arm-poky-linux-gnueabi-gcc -march=3Darmv6 -mfpu=3Dvfp -mfloat-abi=3Dhard -m=
tune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=3D/hdd_gold1/mathias/<wbr>git/pok=
y/rpi-build/tmp/work/<wbr>arm1176jzfshf-vfp-poky-linux-<wbr>gnueabi/libepox=
y/1.4.3-r0/<wbr>recipe-sysroot &#39;-Itest/<a href=3D"http://lists.openembe=
dded.org/mailman/listinfo/openembedded-core" target=3D"_blank">egl_common a=
t sta</a>&#39; &#39;-Itest&#39; &#39;-Iinclude/epoxy&#39; &#39;-I../libepox=
y-1.4.3/test&#39; &#39;-Iinclude&#39; &#39;-I../libepoxy-1.4.3/include&#39;=
 &#39;-Isrc&#39; &#39;-I../libepoxy-1.4.3/src&#39; &#39;-fdiagnostics-color=
=3Dalways&#39; &#39;-pipe&#39; &#39;-D_FILE_OFFSET_BITS=3D64&#39; &#39;-Wal=
l&#39; &#39;-Winvalid-pch&#39; &#39;-std=3Dgnu99&#39; &#39;-O2&#39; &#39;-g=
&#39; &#39;-O2&#39; &#39;-g&#39; &#39;-feliminate-unused-debug-<wbr>types&#=
39; &#39;-fdebug-prefix-map=3D/hdd_<wbr>gold1/mathias/git/poky/rpi-<wbr>bui=
ld/tmp/work/arm1176jzfshf-<wbr>vfp-poky-linux-gnueabi/<wbr>libepoxy/1.4.3-r=
0=3D/usr/src/<wbr>debug/libepoxy/1.4.3-r0&#39; &#39;-fdebug-prefix-map=3D/h=
dd_<wbr>gold1/mathias/git/poky/rpi-<wbr>build/tmp/work/arm1176jzfshf-<wbr>v=
fp-poky-linux-gnueabi/<wbr>libepoxy/1.4.3-r0/recipe-<wbr>sysroot-native=3D&=
#39; &#39;-fdebug-prefix-map=3D/hdd_<wbr>gold1/mathias/git/poky/rpi-<wbr>bu=
ild/tmp/work/arm1176jzfshf-<wbr>vfp-poky-linux-gnueabi/<wbr>libepoxy/1.4.3-=
r0/recipe-<wbr>sysroot=3D&#39; &#39;-lEGL&#39; &#39;-fPIC&#39; &#39;-Wpoint=
er-arith&#39; &#39;-Wmissing-declarations&#39; &#39;-Wformat=3D2&#39; &#39;=
-Wstrict-prototypes&#39; &#39;-Wmissing-prototypes&#39; &#39;-Wnested-exter=
ns&#39; &#39;-Wbad-function-cast&#39; &#39;-Wold-style-definition&#39; &#39=
;-Wdeclaration-after-<wbr>statement&#39; &#39;-Wunused&#39; &#39;-Wuninitia=
lized&#39; &#39;-Wshadow&#39; &#39;-Wmissing-noreturn&#39; &#39;-Wmissing-f=
ormat-attribute&#39; &#39;-Wredundant-decls&#39; &#39;-Wlogical-op&#39; &#3=
9;-Werror=3Dimplicit&#39; &#39;-Werror=3Dnonnull&#39; &#39;-Werror=3Dinit-s=
elf&#39; &#39;-Werror=3Dmain&#39; &#39;-Werror=3Dmissing-braces&#39; &#39;-=
Werror=3Dsequence-point&#39; &#39;-Werror=3Dreturn-type&#39; &#39;-Werror=
=3Dtrigraphs&#39; &#39;-Werror=3Darray-bounds&#39; &#39;-Werror=3Dwrite-str=
ings&#39; &#39;-Werror=3Daddress&#39; &#39;-Werror=3Dint-to-pointer-cast&#3=
9; &#39;-Werror=3Dpointer-to-int-cast&#39; &#39;-fno-strict-aliasing&#39; &=
#39;-Wno-int-conversion&#39; &#39;-MMD&#39; &#39;-MQ&#39; &#39;test/<a href=
=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core" targe=
t=3D"_blank">egl_common at sta</a>/egl_common.c.o&#39; &#39;-MF&#39; &#39;t=
est/<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-=
core" target=3D"_blank">egl_common at sta</a>/egl_common.c.o.d&#39; -o &#39=
;test/<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedde=
d-core" target=3D"_blank">egl_common at sta</a>/egl_common.c.o&#39; -c ../l=
ibepoxy-1.4.3/test/egl_<wbr>common.c
../libepoxy-1.4.3/test/egl_<wbr>common.c: In function &#39;get_egl_display_=
or_skip&#39;:
../libepoxy-1.4.3/test/egl_<wbr>common.c:36:5: error: unknown type name &#3=
9;Display&#39;; did you mean &#39;EGLDisplay&#39;?
     Display *dpy =3D XOpenDisplay(NULL);
     ^~~~~~~
     EGLDisplay
../libepoxy-1.4.3/test/egl_<wbr>common.c:36:20: error: implicit declaration=
 of function &#39;XOpenDisplay&#39;; did you mean &#39;eglGetDisplay&#39;? =
[-Werror=3Dimplicit-function-<wbr>declaration]
     Display *dpy =3D XOpenDisplay(NULL);
                    ^~~~~~~~~~~~
                    eglGetDisplay
../libepoxy-1.4.3/test/egl_<wbr>common.c:36:20: warning: nested extern decl=
aration of &#39;XOpenDisplay&#39; [-Wnested-externs]
cc1: some warnings being treated as errors

Does anybody know what i am doing wrong?</pre></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113ec5e4efbbf60562f8559d--
