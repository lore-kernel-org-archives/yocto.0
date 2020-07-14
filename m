Subject: Re: Linker error undefined reference to `_rtld_global_ro'
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Jul 2020 00:53:12 -0700
References: <e123353d-7215-94eb-176e-049ab759defc@gmail.com>
In-Reply-To: <e123353d-7215-94eb-176e-049ab759defc@gmail.com>
Message-ID: <15607.1594713192924490761@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cWlPTRcMirKqgniHK97W"

--cWlPTRcMirKqgniHK97W
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your response.

>=20
> it seems static apps with glibc compiled with PIE related.
>=20

I'm afraid I didn't understand (as I am new to yocto and try to understand=
 it). Did you mean, the following statement in my-image.bb file generates t=
he static apps which is not a good approach?
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"

I introduced this statement because I got linking errors when compiling/li=
nking using the SDK complaining about missing libs just like ...
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lpthread
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -ldl
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lstdc++
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lm
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lc
collect2: error: ld returned 1 exit status
makefile:128: recipe for target 'arm' failed
make: *** [arm] Error 1

When using this statement (SDKIMAGE_FEATURES_append =3D " staticdev-pkgs")=
 I can see in /opt/mydistro/1.0.0/sysroots/usr/lib many *.a files which are=
 not present without this statement. But I am not sure if this statement is=
 correct? Maybe there is another approach for including the missing libs?

And what do you mean with "PIE related"? Are you thinking of an Raspberri =
PI?

>=20
> Can you verfiy if you get same issue with aarch64 or mips ?

Also I would like to verify, but do not know how to setup for aarch64 or m=
ips. Can you provide a short example?

Thank you for your support.

--

Rob

--cWlPTRcMirKqgniHK97W
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"white-space: pre-wrap;">Thank you very much for your respons=
e.<br /></span><br />
<blockquote><span style=3D"white-space: pre-wrap;">it seems static apps wi=
th glibc compiled with PIE related.<br /></span></blockquote>
I'm afraid I didn't understand (as I am new to yocto and try to understand=
 it). Did you mean, the following statement in my-image.bb file generates t=
he static apps which is not a good approach?<br />SDKIMAGE_FEATURES_append =
=
=3D " staticdev-pkgs"<br /><br />I introduced this statement because I got=
 linking errors when compiling/linking using the SDK complaining about miss=
ing libs just like ...<br />
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lpth=
read</div>
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -ldl<=
/div>
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lstd=
c++</div>
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lm</=
div>
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: cannot find -lc</=
div>
<div>collect2: error: ld returned 1 exit status</div>
<div>makefile:128: recipe for target 'arm' failed</div>
<div>make: *** [arm] Error 1</div>
<div><br />When using this statement (SDKIMAGE_FEATURES_append =3D " stati=
cdev-pkgs") I can see in /opt/mydistro/1.0.0/sysroots/usr/lib many *.a file=
s which are not present without this statement. But I am not sure if this s=
tatement is correct? Maybe there is another approach for including the miss=
ing libs?</div>
<br />And what do you mean with "PIE related"? Are you thinking of an Rasp=
berri PI?<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">Can you verfiy if you g=
et same issue with aarch64 or mips ?</span></blockquote>
Also I would like to verify, but do not know how to setup for aarch64 or m=
ips. Can you provide a short example?<br /><br />Thank you for your support=
.<br /><br />-- <br /><br />Rob

--cWlPTRcMirKqgniHK97W--
