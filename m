Subject: Re: [meta-security] Clamav libclammspack.so missing from image
To: yocto@lists.yoctoproject.org
From: "yoc" <yoc.dev@whitetree.xyz>
X-Originating-Location: GB (92.40.168.144)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Jul 2020 14:58:28 -0700
References: <1ed8c27b-8532-d574-adbc-223b056fe36a@mvista.com>
In-Reply-To: <1ed8c27b-8532-d574-adbc-223b056fe36a@mvista.com>
Message-ID: <22223.1596146308757509890@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1z1TCXR5tHxnkQi7BhDC"

--1z1TCXR5tHxnkQi7BhDC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Armin,

So I found libmspack where you said it would be. I have done some more dig=
ging and talked to the Clamav developers.

This line in the recipe (--with-system-libmspack=3D${CLAMAV_USR_DIR}) mean=
s that libmspack installed on the system is used and the output produced is=
 libclamav.so* and libmspack.so*

When I built clamav outside of Yocto I didnt specify the --with-system-lib=
mspack option and the output was libclamav.so* and libclammspack.so* i.e. t=
he internal library bundled with Clamav was used.

Having spoken to the Clamav developers I want to use the internal as it gi=
ves additional capabilities and security protections:

https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D233763

"Upgrade from libmspack 0.5alpha to libmspack 0.7.1alpha. As a reminder, w=
e support system-installed versions of libmspack. However, at this time the=
 ClamAV-provided version of libmspack provides additional abilities to pars=
e broken or non-standard CAB files beyond what the stock libmspack 0.7.1alp=
ha provides. We are working with the upstream project to incorporate our mo=
difications, and hopefully these changes will appear in a future release of=
 libmspack."

So I went about trying to get the Yocto recipe to compile against the inte=
rnal libclammspack bundled with Clamav and did not have any success:

tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysroot-native/usr/bi=
n/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linu=
x/9.3.0/ld: warning: libclammspack.so.0, needed by ../libclamav/.libs/libcl=
amav.so, not found (try using -rpath or -rpath-link)

Firstly, would you be able to give me a pointer on how to solve this issue=
 - I think it requires a patch to the Clamav build process? I saw some hist=
oric commits mentioning rpath but was unsuccessful with getting anything to=
 build.

Secondly, I would propose the following and am happy to implement the patc=
hes if these ideas are agreeable to you:

1) Use the PACKAGECONFIG mechanism to allow a switch between using the sys=
tem and internal libmspack with the default being to use the internal versi=
on
2) Update the version of Clamav to the latest stable version - it was note=
d by the Clamav developers that the current version in the recipe is outdat=
ed
3) Fix the bug on line 92 of the recipe. I believe that this line should b=
e surrounded by the same if statement as lines 75-79. I am behind a company=
 proxy so need the INSTALL_CLAMAV_CVD option switched off

Thank you for your time with this.

Kind Regards,

Charlie

--1z1TCXR5tHxnkQi7BhDC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Armin,</div>
<div>&nbsp;</div>
<div>So I found libmspack where you said it would be. I have done some mor=
e digging and talked to the Clamav developers.</div>
<div>&nbsp;</div>
<div>This line in the recipe (--with-system-libmspack=3D${CLAMAV_USR_DIR})=
 means that libmspack installed on the system is used and the output produc=
ed is libclamav.so* and libmspack.so*</div>
<div>&nbsp;</div>
<div>When I built clamav outside of Yocto I didnt specify the --with-syste=
m-libmspack option and the output was libclamav.so* and libclammspack.so* i=
.e. the internal library bundled with Clamav was used.</div>
<div>&nbsp;</div>
<div>Having spoken to the Clamav developers I want to use the internal as =
it gives additional capabilities and security protections:</div>
<div><br /><a href=3D"https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D=
233763" target=3D"_blank" rel=3D"noopener">https://bugs.freebsd.org/bugzill=
a/show_bug.cgi?id=3D233763</a></div>
<div>&nbsp;</div>
<div>"Upgrade from libmspack 0.5alpha to libmspack 0.7.1alpha. As a remind=
er, we support system-installed versions of libmspack. However, at this tim=
e the ClamAV-provided version of libmspack provides additional abilities to=
 parse broken or non-standard CAB files beyond what the stock libmspack 0.7=
.1alpha provides. We are working with the upstream project to incorporate o=
ur modifications, and hopefully these changes will appear in a future relea=
se of libmspack."</div>
<div>&nbsp;</div>
<div>So I went about trying to get the Yocto recipe to compile against the=
 internal libclammspack bundled with Clamav and did not have any success:</=
div>
<div>&nbsp;</div>
<div>tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysroot-native/u=
sr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky=
-linux/9.3.0/ld: warning: libclammspack.so.0, needed by ../libclamav/.libs/=
libclamav.so, not found (try using -rpath or -rpath-link)</div>
<div>&nbsp;</div>
<div>Firstly, would you be able to give me a pointer on how to solve this =
issue - I think it requires a patch to the Clamav build process? I saw some=
 historic commits mentioning rpath but was unsuccessful with getting anythi=
ng to build.</div>
<div>&nbsp;</div>
<div>Secondly, I would propose the following and am happy to implement the=
 patches if these ideas are agreeable to you:</div>
<div>&nbsp;</div>
<div>1) Use the PACKAGECONFIG mechanism to allow a switch between using th=
e system and internal libmspack with the default being to use the internal =
version</div>
<div>2) Update the version of Clamav to the latest stable version - it was=
 noted by the Clamav developers that the current version in the recipe is o=
utdated</div>
<div>3) Fix the bug on line 92 of the recipe. I believe that this line sho=
uld be surrounded by the same if statement as lines 75-79. I am behind a co=
mpany proxy so need the INSTALL_CLAMAV_CVD option switched off</div>
<div>&nbsp;</div>
<div>Thank you for your time with this.</div>
<div>&nbsp;</div>
<div>Kind Regards,</div>
<div>&nbsp;</div>
<div>Charlie</div>

--1z1TCXR5tHxnkQi7BhDC--
