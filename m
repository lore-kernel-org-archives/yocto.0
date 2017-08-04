Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9409E00BA2; Fri,  4 Aug 2017 08:52:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
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
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8E4E00B67
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 08:52:49 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id u133so7398743vke.3
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 08:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=16ZBjHK3v7V8x4nn/EW4MM1eGKbHPjc2eIJxoZQIGCk=;
	b=C2gpGnexTpi1wrowqXxeSJU7EN0kUr+M5e7Q6ijxrZsExLEZlzkZhmDhXcsMNEjQbK
	VUEOtGOr0bGAUmyNoem5Q4WM9Y77ks8N9tovLPhLKuJped/K9i6muOXQl1ithBvObB2j
	KhGPwmXuRkVeEgj3u+QhnZDcmKMTIEuiqK+bqOfscprfHg8Y49wNeln86NrXqo7JBRXv
	qLPyVuuEhzhhvUG8GNtI9ek16tC1+CUE/j9XizKkB+tydqS8qClfo+KqaZ4Dc8corv2d
	wMNfraygY7OaPCPh5pfeNCYEgS+ZJjtzolpzrcuDbmLAzHs0W5/NQMHETvDNkylrv9i3
	+qbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=16ZBjHK3v7V8x4nn/EW4MM1eGKbHPjc2eIJxoZQIGCk=;
	b=Fp6ou6jYBCCJKdkHRvrxd9lcDGajzQc94PahZzMLI8h0lEFkuHowTzd9bAO1wYnzsA
	hLeD5ISUw9qq8SXZtEJ7w70hNa86OixxFUzw7T4dgvzRbWsJZ7L6Fvpy7kc9gw1aS5XP
	PcYlibtb+rPxkFbwnY8js7vExI6J3QjvYAYmlhCdXa0sckSUqWofAk/JeXY/IbPjQHQ6
	sEkG+Jj28G72qfYnCbEqLAgmXnc+RwDdpgsBPZT2/rlYgwvZC8EExecVi/zYZOuv0P95
	H0i0u32Cr+BDe88RLS4n0BKCKp9/Xoqda0Krd5/7sszlvCZjPQmm/FKfZ9zLtutp++X/
	L1ew==
X-Gm-Message-State: AHYfb5gQ53+OZ8TOWd8QrmwavA35CpJUPQc8NKVfgcJblII2iJiIPnGL
	cSslEs/yMfxY6+EDywJqL7xFWvvchQ==
X-Received: by 10.31.180.80 with SMTP id d77mr1777344vkf.110.1501861968290;
	Fri, 04 Aug 2017 08:52:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.74.94 with HTTP; Fri, 4 Aug 2017 08:52:47 -0700 (PDT)
In-Reply-To: <1944952060.249322.1501698853728@connect.xfinity.com>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
	<1928283135.524860.1501624351743@connect.xfinity.com>
	<33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
	<1944952060.249322.1501698853728@connect.xfinity.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 4 Aug 2017 17:52:47 +0200
Message-ID: <CAC+thW3Dth8CuHTjT6aLstbS_b=dRJKLeV7NEFurjW6t44chjg@mail.gmail.com>
To: RUSSELL PETERSON <bluehills7@comcast.net>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Fri, 04 Aug 2017 15:52:52 -0000
Content-Type: multipart/alternative; boundary="001a114381101f26e10555ef7d8b"

--001a114381101f26e10555ef7d8b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 2, 2017 at 8:34 PM, RUSSELL PETERSON <bluehills7@comcast.net>
wrote:

> Frustrating in that I can't get the eSDK to fully build. I'm past the iss=
ue
> with kernel-devsrc and harfbuzz... but now I see hundreds of messages lik=
e
> below. Anyone seen this before? From what I can tell these tasks are bein=
g
> executed out of the run queue.  Not all the messages are from cve-check
> but most.
>
> Anyone seen this?
>
Are you using devtool to work on recipes/sources? If so, try to run
'devtool reset -a' before building the eSDK.

>
>
> ERROR: Task attr-native.do_cve_check attempted to execute unexpectedly
> ERROR: Task binutils-native.do_cve_check attempted to execute unexpectedl=
y
> ERROR: Task dbus-glib.do_cve_check attempted to execute unexpectedly
> ERROR: Task libtool-native.do_cve_check attempted to execute unexpectedly
> ERROR: Task fixesproto.do_cve_check attempted to execute unexpectedly
> ERROR: Task bc.do_cve_check attempted to execute unexpectedly
> ERROR: Task lsof.do_cve_check attempted to execute unexpectedly
> ERROR: Task python-setuptools-native.do_cve_check attempted to execute
> unexpectedly
> ERROR: Task libxrandr-native.do_cve_check attempted to execute unexpected=
ly
> ERROR: Task libpciaccess.do_cve_check attempted to execute unexpectedly
> ERROR: Task xf86driproto.do_cve_check attempted to execute unexpectedly
> ERROR: Task ncurses-native.do_cve_check attempted to execute unexpectedly
>
> On August 1, 2017 at 8:55 PM Russell Peterson <bluehills7@comcast.net>
> wrote:
>
> FYI: For those interested=E2=80=A6
>
> Just as a test/workaround I added a harfbuzz_%.bbappend file to my meta
> layer
> and directly set the acpaths variable to the STAGING native directory and
> that
> seems to work fine. Works for now but I will try to come up with a cleane=
r,
> more generic fix.
>
> acpaths =3D =E2=80=9C-I ${STAGING_DATADIR_NATIVE}/aclocal/=E2=80=9C
>
> Regards,
>
> Russell
>
> On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON <bluehills7@comcast.net>
> wrote:
>
> Thank you for the response, Paul. You were correct that I had the
> TOOLCHAIN_*_TASK variables set in my machine.conf file. I put it into my
> image bb file and things seem far more sane... although I must admit I am
> not 100% sure why it works but I will study it a bit and figure it out.
> Thanks for your help.
>
> I have run into another issue while trying to generate the eSDK in that
> there appears to be an issue with building harfbuzz. From what I can tell=
,
> this appears to be an issue with the search paths for the autoreconf call=
.
> The autoreconf tool is finding the pkg.m4 file in the harfbuzz m4 directo=
ry
> FIRST and therefore not getting the one in
> harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal which indeed ha=
s
> the correct m4_pattern_allow.
>
> Do you think that's a bug or something with my recipe? Seems like I just
> want to reverse the -I options... but I don't know how, exactly.
>
> /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0=
/
> recipe-sysroot-native/usr/bin/autoconf
> --include=3D/scratch/russell/yocto-00dc025f/work/aarch64-
> poky-linux/harfbuzz/1.4.1-r0/harfbuzz-1.4.1/m4/
> --include=3D/scratch/russell/yocto-00dc025f/work/aarch64-
> poky-linux/harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal/
> --force
>
> ../../../autoconf-2.69/lib/autoconf/specific.m4:368:
> AC_USE_SYSTEM_EXTENSIONS is expanded from...
> | configure.ac:22: the top level
> | configure:18902: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DI=
R
> | If this token and others are legitimate, please use m4_pattern_allow.
> | See the Autoconf documentation.
> | autoreconf:
> /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0=
/
> recipe-sysroot-native/usr/bin/autoconf
> failed with exit status: 1
> | ERROR: Function failed: do_configure (log file is located at
> /scratch/russell/yocto-00dc025f/work/aarch64-poky-
> linux/harfbuzz/1.4.1-r0/temp/log.do_configure.14956)
>
> On July 31, 2017 at 9:50 AM Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
>
> Hi Russell,
>
> It looks to me like you have added kernel-devsrc to the TOOLCHAIN_*_TASK
> variable at the global level, which you really don't want to do if you're
> going to be building buildtools-tarball (which eSDK will build as a
> dependency). I'd suggest moving that setting to your image recipe.
>
> Cheers,
> Paul
>
> On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
>
> Hello, all.
>
> I=E2=80=99m trying to build the eSDK for my platform and I just can=E2=80=
=99t figure out
> why dnf can=E2=80=99t find kernel-devsrc. It=E2=80=99s there, I added it.=
 The =E2=80=9Cnormal
> SDK=E2=80=9D uses it and builds fine. Just no luck with the eSDK.
> Any help out there? Poky is pyro. aarch64 SoC target platform with an
> x86 build host (CentOS 7.3). Basically I just bitbake -c
> do_populate_sdk_ext core-image-full. I do have a linux kernel recipe
> that pulls the kernel from the standard kernel.org <http://kernel.org/>
> repo.
>
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf.
> Command
> '/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/
> buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -y -c
> /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/
> buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/
> none/etc/dnf/dnf.conf
> --setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/
> x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-
> r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/yum.repos.d
> --repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-
> nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo
> --installroot=3D/scratch/russell/yocto-00dc025f/work/
> x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-
> r0/sdk/image/opt/poky/2.3.1/sysroots/none
> --setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/
> x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp
> --nogpgcheck install kernel-devsrc' returned 1:
> Added oe-repo repo from
> file:///scratch/russell/yocto-00dc025f/work/x86_64-
> nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo
> <file:///scratch/russell/yocto-00dc025f/work/x86_64-
> nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo>
> Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017
> UTC.
> No package kernel-devsrc available.
> Error: Unable to find a match
>
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed:
> do_populate_sdk
> ERROR: Logfile of failure stored in:
> /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/
> buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.4836
> ERROR: Task
> (/labhome/russell/src/bf/poky/meta/recipes-core/meta/
> buildtools-tarball.bb:do_populate_sdk)
> failed with exit code '1'
>
> --
>
> Paul Eggleton
>
> Intel Open Source Technology Centre
> --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114381101f26e10555ef7d8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, Aug 2, 2017 at 8:34 PM, RUSSELL PETERSON <span dir=3D"ltr">&=
lt;<a href=3D"mailto:bluehills7@comcast.net" target=3D"_blank">bluehills7@c=
omcast.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u></u>

   =20
<div><p>Frustrating in that I can&#39;t get the eSDK to fully build. I&#39;=
m past the issue<br>with kernel-devsrc and harfbuzz... but now I see hundre=
ds of messages like<br>below. Anyone seen this before? From what I can tell=
 these tasks are being<br>executed out of the run queue.=C2=A0 Not all the =
messages are from cve-check but most.</p><p>Anyone seen this?</p></div></bl=
ockquote><div>Are you using devtool to work on recipes/sources? If so, try =
to run &#39;devtool reset -a&#39; before building the eSDK.=C2=A0<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><p><br></p><p><br></p><p>ERROR: Task at=
tr-native.do_cve_check attempted to execute unexpectedly<br>ERROR: Task bin=
utils-native.do_cve_check attempted to execute unexpectedly<br>ERROR: Task =
dbus-glib.do_cve_check attempted to execute unexpectedly<br>ERROR: Task lib=
tool-native.do_cve_check attempted to execute unexpectedly<br>ERROR: Task f=
ixesproto.do_cve_check attempted to execute unexpectedly<br>ERROR: Task bc.=
do_cve_check attempted to execute unexpectedly<br>ERROR: Task lsof.do_cve_c=
heck attempted to execute unexpectedly<br>ERROR: Task python-setuptools-nat=
ive.do_<wbr>cve_check attempted to execute<br>unexpectedly<br>ERROR: Task l=
ibxrandr-native.do_cve_check attempted to execute unexpectedly<br>ERROR: Ta=
sk libpciaccess.do_cve_check attempted to execute unexpectedly<br>ERROR: Ta=
sk xf86driproto.do_cve_check attempted to execute unexpectedly<br>ERROR: Ta=
sk ncurses-native.do_cve_check attempted to execute unexpectedly</p><div><d=
iv class=3D"h5"><p>On August 1, 2017 at 8:55 PM Russell Peterson &lt;<a hre=
f=3D"mailto:bluehills7@comcast.net" target=3D"_blank">bluehills7@comcast.ne=
t</a>&gt; wrote:</p><p>FYI: For those interested=E2=80=A6</p><p>Just as a t=
est/workaround I added a harfbuzz_%.bbappend file to my meta layer<br>and d=
irectly set the acpaths variable to the STAGING native directory and that<b=
r>seems to work fine. Works for now but I will try to come up with a cleane=
r,<br>more generic fix.</p><p>acpaths =3D =E2=80=9C-I ${STAGING_DATADIR_NAT=
IVE}/<wbr>aclocal/=E2=80=9C</p><p>Regards,</p><p>Russell</p><blockquote><p>=
On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON &lt;<a href=3D"mailto:bluehill=
s7@comcast.net" target=3D"_blank">bluehills7@comcast.net</a>&gt; wrote:</p>=
<p>Thank you for the response, Paul. You were correct that I had the<br>TOO=
LCHAIN_*_TASK variables set in my machine.conf file. I put it into my<br>im=
age bb file and things seem far more sane... although I must admit I am<br>=
not 100% sure why it works but I will study it a bit and figure it out.<br>=
Thanks for your help.</p><p>I have run into another issue while trying to g=
enerate the eSDK in that<br>there appears to be an issue with building harf=
buzz. From what I can tell,<br>this appears to be an issue with the search =
paths for the autoreconf call.<br>The autoreconf tool is finding the pkg.m4=
 file in the harfbuzz m4 directory<br>FIRST and therefore not getting the o=
ne in<br>harfbuzz/1.4.1-r0/recipe-<wbr>sysroot-native/usr/share/<wbr>acloca=
l which indeed has<br>the correct m4_pattern_allow.</p><p>Do you think that=
&#39;s a bug or something with my recipe? Seems like I just<br>want to reve=
rse the -I options... but I don&#39;t know how, exactly.</p><p>/scratch/rus=
sell/yocto-<wbr>00dc025f/work/aarch64-poky-<wbr>linux/harfbuzz/1.4.1-r0/<wb=
r>recipe-sysroot-native/usr/bin/<wbr>autoconf<br>--include=3D/scratch/russe=
ll/<wbr>yocto-00dc025f/work/aarch64-<wbr>poky-linux/harfbuzz/1.4.1-r0/<wbr>=
harfbuzz-1.4.1/m4/<br>--include=3D/scratch/russell/<wbr>yocto-00dc025f/work=
/aarch64-<wbr>poky-linux/harfbuzz/1.4.1-r0/<wbr>recipe-sysroot-native/usr/<=
wbr>share/aclocal/<br>--force</p><p>../../../autoconf-2.69/lib/<wbr>autocon=
f/specific.m4:368:<br>AC_USE_SYSTEM_EXTENSIONS is expanded from...<br>| <a =
href=3D"http://configure.ac:22" target=3D"_blank">configure.ac:22</a>: the =
top level<br>| configure:18902: error: possibly undefined macro: PKG_CONFIG=
_SYSROOT_DIR<br>| If this token and others are legitimate, please use m4_pa=
ttern_allow.<br>| See the Autoconf documentation.<br>| autoreconf:<br>/scra=
tch/russell/yocto-<wbr>00dc025f/work/aarch64-poky-<wbr>linux/harfbuzz/1.4.1=
-r0/<wbr>recipe-sysroot-native/usr/bin/<wbr>autoconf<br>failed with exit st=
atus: 1<br>| ERROR: Function failed: do_configure (log file is located at<b=
r>/scratch/russell/yocto-<wbr>00dc025f/work/aarch64-poky-<wbr>linux/harfbuz=
z/1.4.1-r0/temp/<wbr>log.do_configure.14956)</p><blockquote><p>On July 31, =
2017 at 9:50 AM Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.int=
el.com" target=3D"_blank">paul.eggleton@linux.intel.com</a><wbr>&gt;<br>wro=
te:</p><p>Hi Russell,</p><p>It looks to me like you have added kernel-devsr=
c to the TOOLCHAIN_*_TASK<br>variable at the global level, which you really=
 don&#39;t want to do if you&#39;re<br>going to be building buildtools-tarb=
all (which eSDK will build as a<br>dependency). I&#39;d suggest moving that=
 setting to your image recipe.</p><p>Cheers,<br>Paul</p><p>On Sunday, 30 Ju=
ly 2017 4:22:24 PM CEST Russell Peterson wrote:</p><blockquote><p>Hello, al=
l.</p><p>I=E2=80=99m trying to build the eSDK for my platform and I just ca=
n=E2=80=99t figure out<br>why dnf can=E2=80=99t find kernel-devsrc. It=E2=
=80=99s there, I added it. The =E2=80=9Cnormal<br>SDK=E2=80=9D uses it and =
builds fine. Just no luck with the eSDK.<br>Any help out there? Poky is pyr=
o. aarch64 SoC target platform with an<br>x86 build host (CentOS 7.3). Basi=
cally I just bitbake -c<br>do_populate_sdk_ext core-image-full. I do have a=
 linux kernel recipe<br>that pulls the kernel from the standard <a href=3D"=
http://kernel.org" target=3D"_blank">kernel.org</a> &lt;<a href=3D"http://k=
ernel.org/" target=3D"_blank">http://kernel.org/</a>&gt;<br>repo.</p><p>ERR=
OR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf.<br>Com=
mand<br>&#39;/scratch/russell/yocto-<wbr>00dc025f/work/x86_64-<wbr>nativesd=
k-pokysdk-linux/<wbr>buildtools-tarball/1.0-r0/<wbr>recipe-sysroot-native/u=
sr/bin/<wbr>dnf<br>-y -c<br>/scratch/russell/yocto-<wbr>00dc025f/work/x86_6=
4-<wbr>nativesdk-pokysdk-linux/<wbr>buildtools-tarball/1.0-r0/sdk/<wbr>imag=
e/opt/poky/2.3.1/sysroots/<wbr>none/etc/dnf/dnf.conf<br>--setopt=3Dreposdir=
=3D/scratch/<wbr>russell/yocto-00dc025f/work/<wbr>x86_64-nativesdk-pokysdk-=
<wbr>linux/buildtools-tarball/1.0-<wbr>r0/sdk/image/opt/poky/2.3.1/<wbr>sys=
roots/none/etc/yum.repos.d<br>--repofrompath=3Doe-repo,/<wbr>scratch/russel=
l/yocto-<wbr>00dc025f/work/x86_64-<wbr>nativesdk-pokysdk-linux/<wbr>buildto=
ols-tarball/1.0-r0/oe-<wbr>rootfs-repo<br>--installroot=3D/scratch/<wbr>rus=
sell/yocto-00dc025f/work/<wbr>x86_64-nativesdk-pokysdk-<wbr>linux/buildtool=
s-tarball/1.0-<wbr>r0/sdk/image/opt/poky/2.3.1/<wbr>sysroots/none<br>--seto=
pt=3Dlogdir=3D/scratch/<wbr>russell/yocto-00dc025f/work/<wbr>x86_64-natives=
dk-pokysdk-<wbr>linux/buildtools-tarball/1.0-<wbr>r0/temp<br>--nogpgcheck i=
nstall kernel-devsrc&#39; returned 1:<br>Added oe-repo repo from<br>file://=
/scratch/russell/yocto-<wbr>00dc025f/work/x86_64-<wbr>nativesdk-pokysdk-lin=
ux/<wbr>buildtools-tarball/1.0-r0/oe-<wbr>rootfs-repo<br>&lt;file:///scratc=
h/russell/<wbr>yocto-00dc025f/work/x86_64-<wbr>nativesdk-pokysdk-linux/<wbr=
>buildtools-tarball/1.0-r0/oe-<wbr>rootfs-repo&gt;<br>Last metadata expirat=
ion check: 0:00:01 ago on Sun Jul 30 01:38:48 2017<br>UTC.<br>No package ke=
rnel-devsrc available.<br>Error: Unable to find a match</p><p>ERROR: buildt=
ools-tarball-1.0-r0 do_populate_sdk: Function failed:<br>do_populate_sdk<br=
>ERROR: Logfile of failure stored in:<br>/scratch/russell/yocto-<wbr>00dc02=
5f/work/x86_64-<wbr>nativesdk-pokysdk-linux/<wbr>buildtools-tarball/1.0-r0/=
<wbr>temp/log.do_populate_sdk.4836<br>ERROR: Task<br>(/labhome/russell/src/=
bf/poky/<wbr>meta/recipes-core/meta/<wbr>buildtools-tarball.bb:do_<wbr>popu=
late_sdk)<br>failed with exit code &#39;1&#39;</p></blockquote><p>--</p><p>=
Paul Eggleton</p><p>Intel Open Source Technology Centre<br>--</p><p>_______=
_______________________<wbr>_________________<br>yocto mailing list<br><a h=
ref=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.=
org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a></p></blo=
ckquote></blockquote></div></div></div>
 <br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a114381101f26e10555ef7d8b--
