Return-Path: <nickdademo@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3135AE00324
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 06:43:53 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id gq1so3217617obb.32
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 06:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=f9CSaNGiLvUQtdrLromzL8rne5qzG65nYxVFvk6RjJU=;
	b=ulSLVaDTJnEPVn6CcvKIlUiK+qhjt+cRjBB8VmunKWxK7WUGOpXRFIFhSKyWr1xZnQ
	PVAfpclXIR8AJf5U6kyEDG6LH+Mmjp2wax802696/JwlZUUrzvVJaWgtWOxy5aSk2CFu
	s818f1yJx+2/R1S1UPPNwp6WfZ3nhfF4+x+oeGs2JrOxhr7QMrjYmJeJFuSYNMY4cRyy
	+HTk1PYD8Z1kMQ7Q0YZL2rHuNXMrblkjWy3fT5g+U072dNUgYGYVlhEyyj2rep+nZh7E
	KP0wUDUad70c4hlvH5odJf1DfYb57+mfT0jfh55JFL3Hzfa+2eZ1/SCKllXYIg6WDFSd
	Q+Ag==
X-Received: by 10.60.42.203 with SMTP id q11mr20898oel.54.1385304232497; Sun,
	24 Nov 2013 06:43:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.133.130 with HTTP; Sun, 24 Nov 2013 06:43:32 -0800 (PST)
In-Reply-To: <CANR6C55TONoWageb9=HEVMLrHbYKpL96zB+x805xgXYGuPw-EQ@mail.gmail.com>
References: <CANR6C56jHhErDpNceMYwCrP6c+LUeck0WOPdX55uAeLr103gTA@mail.gmail.com>
	<CANR6C55TONoWageb9=HEVMLrHbYKpL96zB+x805xgXYGuPw-EQ@mail.gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 25 Nov 2013 01:43:32 +1100
Message-ID: <CANR6C56G+sT0h3iXemO41Yf-knp4X9M96qv-CQK+oPN5VUtyPw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: MULTILIB builds with Yocto: Status?
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
X-List-Received-Date: Sun, 24 Nov 2013 14:43:55 -0000
Content-Type: multipart/alternative; boundary=001a11c207f0af178b04ebed469c

--001a11c207f0af178b04ebed469c
Content-Type: text/plain; charset=ISO-8859-1

Found the fix for these issues:

*The two offending Poky recipes are:*
recipes-multimedia/x264
recipes-multimedia/libav

*Files which need to be modified:*
x264_git.bb -> Add --libdir=${libdir} to EXTRA_OECONF variable
libav.inc -> Add --libdir=${libdir} AND --shlibdir=${libdir} to
EXTRA_OECONF variable

As you can see from the above fixes, the issue was that the configure step
was passing "usr/lib" instead of "usr/lib64" which ultimately caused the
"installed but not shipped" errors.

Are these actually bugs which should be patched in the recipes?

Nick




On Sun, Nov 24, 2013 at 8:53 PM, Nick D'Ademo <nickdademo@gmail.com> wrote:

> *A follow up to this (after further testing with the Yocto image classes -
> i.e. not my own custom image):*
>
> *After adding the following to local.conf (keeping all other variables to
> their defaults):*
>
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>
> *Using the following Build configuration:*
> BB_VERSION        = "1.21.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "x86_64-poky-linux"
> MACHINE           = "nuc"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5+snapshot-20131124"
> TUNE_FEATURES     = "m64"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:6a8307c35705bf6c9f49c368dd730deef3d2ae15"
> meta-intel
> meta-nuc          = "master:f5c2786e7ca190308523379706130e0c2be793c9"
>
> *The MULTILIB build is successful with the following images:*
> core-image-minimal
> core-image-base
> core-image-sato
>
> As stated in the meta-nuc README, I then also added the following to
> local.conf to enable hardware video acceleration:
> LICENSE_FLAGS_WHITELIST += "commercial"
>
> *Retrying the "core-image-sato" image build now results in errors:*
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *ERROR: QA Issue: x264: Files/directories were installed but not shipped
> /usr/lib  /usr/lib/libx264.so.133  /usr/lib/libx264.so  /usr/lib/libx264.a
> /usr/lib/pkgconfig  /usr/lib/.debug  /usr/lib/pkgconfig/x264.pc
> /usr/lib/.debug/libx264.so.133ERROR: QA run found fatal errors. Please
> consider fixing them. ERROR: Function failed: do_package_qaERROR: Logfile
> of failure stored in:
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/x264/r2265+gitAUTOINC+585324fee3-r0/temp/log.do_package.11458ERROR:
> Task 4913 (/home/nick/poky/meta/recipes-multimedia/x264/x264_git.bb
> <http://x264_git.bb>, do_package) failed with exit code '1' ERROR: Function
> failed: do_configure (log file is located at
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.11457)ERROR:
> Logfile of failure stored in:
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.11457
> Log data follows:| DEBUG: Executing python function sysroot_cleansstate|
> DEBUG: Python function sysroot_cleansstate finished| DEBUG: SITE files
> ['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux',
> 'common'] | DEBUG: Executing shell function autotools_preconfigure| DEBUG:
> Shell function autotools_preconfigure finished| DEBUG: Executing shell
> function do_configure| ERROR: libx264 not found| | If you think configure
> made a mistake, make sure you are using the latest | version from Git.  If
> the latest version fails, report the problem to the| libav-user@libav.org
> <libav-user@libav.org> mailing list or IRC #libav on irc.freenode.net
> <http://irc.freenode.net>. | Include the log file "config.log" produced by
> configure as this will help| solving the problem.| WARNING:
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/run.do_configure.11457:1
> exit 1 from |
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/libav-0.8.8/configure
> --enable-shared --enable-pthreads --enable-gpl --enable-avfilter
> --cross-prefix=x86_64-poky-linux- --prefix=/usr --enable-avserver
> --enable-avplay --enable-libtheora --enable-libvorbis --arch=x86_64
> --target-os="linux" --enable-cross-compile --extra-cflags=" -O2 -pipe -g
> -feliminate-unused-debug-types -m64
> --sysroot=/home/nick/poky/test/tmp/sysroots/nuc" --extra-ldflags="-Wl,-O1
> -Wl,--hash-style=gnu -Wl,--as-needed"
> --sysroot="/home/nick/poky/test/tmp/sysroots/nuc" --enable-hardcoded-tables
> --enable-postproc --enable-bzlib --disable-libfaac --disable-libgsm
> --disable-indev=jack --disable-libmp3lame --disable-libschroedinger
> --disable-libvpx --enable-x11grab --enable-libx264 | ERROR: Function
> failed: do_configure (log file is located at
> /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.11457)ERROR:
> Task 3456 (/home/nick/poky/meta/recipes-multimedia/libav/libav_0.8.8.bb
> <http://libav_0.8.8.bb>, do_configure) failed with exit code '1' NOTE:
> Tasks Summary: Attempted 5748 tasks of which 5744 didn't need to be rerun
> and 2 failed.No currently running tasks (5748 of 5775)Summary: 2 tasks
> failed:  /home/nick/poky/meta/recipes-multimedia/x264/x264_git.bb
> <http://x264_git.bb>, do_package
> /home/nick/poky/meta/recipes-multimedia/libav/libav_0.8.8.bb
> <http://libav_0.8.8.bb>, do_configureSummary: There were 4 ERROR messages
> shown, returning a non-zero exit code.*
>
>  *This appears to be a bug with the libx264 recipe.*
>
> Any thoughts or comments on this?
> Has anyone else tried MULTILIB builds with the NUC hardware (with hardware
> acceleration enabled)?
>
> Thanks,
> Nick
>
>
> On Thu, Nov 21, 2013 at 1:17 AM, Nick D'Ademo <nickdademo@gmail.com>wrote:
>
>> From what I've read so far, by adding the following to the local.conf
>> file (e.g. for a x86_64 build; in my case for the Intel NUC machine), Yocto
>> will build an image which also contains 32-bit compiled system libraries (+
>> any 32-bit packages/recipes you have specified):
>>
>> require conf/multilib.conf
>> MULTILIBS = "multilib:lib32"
>> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>>
>> However, running BitBake with the above added to local.conf results in a
>> large number of build errors. To name a few:
>>
>> grub_2.0.0.bb:
>> ...
>> | checking whether the C compiler works... no
>> | configure: error: in
>> `/home/nick/poky/build/tmp/work/x86_64-poky-linux/grub/2.00-r1/build':
>> | configure: error: C compiler cannot create executables
>> ...
>>
>> ntp_4.2.6p5.bb:
>> ...
>> | configure: exit 77
>> | ERROR: oe_runconf failed
>> ...
>>
>> Is there something I'm missing here? What is the status of MULTILIB
>> support with Yocto? Has anyone attempted it lately?
>>
>> [The following guide seems a little outdated:
>> https://wiki.yoctoproject.org/wiki/Multilib]
>>
>> Thanks,
>> Nick
>>
>
>

--001a11c207f0af178b04ebed469c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Found the fix for these=
 issues:<br><b><br></b></div><b>The two offending Poky recipes are:</b><br>=
</div>recipes-multimedia/x264<br></div>recipes-multimedia/libav<br><br></di=
v>

<b>Files which need to be modified:</b><br>
</div><a href=3D"http://x264_git.bb">x264_git.bb</a> -&gt; Add --libdir=3D$=
{libdir} to EXTRA_OECONF variable<br>
libav.inc -&gt; Add --libdir=3D${libdir} AND --shlibdir=3D${libdir} to EXTR=
A_OECONF variable<br><br></div><div>As you can see from the above fixes, th=
e issue was that the configure step was passing &quot;usr/lib&quot; instead=
 of &quot;usr/lib64&quot; which ultimately caused the &quot;installed but n=
ot shipped&quot; errors.<br>


<br></div><div>Are these actually bugs which should be patched in the recip=
es?<br></div><br></div>Nick<br><div><br><div><div><div><div><div><div><br><=
div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Sun, Nov 24, 2013 at 8:53 PM, Nick D&=
#39;Ademo <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com" tar=
get=3D"_blank">nickdademo@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">



<div dir=3D"ltr"><div><i>A follow up to this (after further testing with th=
e Yocto image classes - i.e. not my own custom image):</i><br><br></div><di=
v><b>After adding the following to local.conf (keeping all other variables =
to their defaults):</b><div>



<br>

require conf/multilib.conf<br>
MULTILIBS =3D &quot;multilib:lib32&quot;<br>DEFAULTTUNE_virtclass-multilib-=
lib32 =3D &quot;x86&quot;<br><br></div></div><div><b>Using the following Bu=
ild configuration:</b><br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.21.0&=
quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;i686-linux&quot;<br>





NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-12.04&quot;<br>TARGET_SYS=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;x86_64-poky-linux&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;nuc&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.5+snapshot-201=
31124&quot;<br>





TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;m64&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>=
meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto-bsp=A0=A0=A0 =3D &quot;maste=
r:6a8307c35705bf6c9f49c368dd730deef3d2ae15&quot;<br>meta-intel=A0=A0=A0=A0=
=A0=A0=A0 <br>





meta-nuc=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:f5c2786e7ca19030852337=
9706130e0c2be793c9&quot;<br><br></div><div><b>The MULTILIB build is success=
ful with the following images:</b><br>
</div><div>core-image-minimal<br></div><div>core-image-base<br></div><div>c=
ore-image-sato<br></div><div><br></div><div>As stated in the meta-nuc READM=
E, I then also added the following to local.conf to enable hardware video a=
cceleration:<br>





LICENSE_FLAGS_WHITELIST +=3D &quot;commercial&quot;<br><br></div><div><b>Re=
trying the &quot;core-image-sato&quot; image build now results in errors:</=
b><br></div><div><i><br>ERROR: QA Issue: x264: Files/directories were insta=
lled but not shipped<br>





=A0 /usr/lib<br>=A0 /usr/lib/libx264.so.133<br>=A0 /usr/lib/libx264.so<br>=
=A0 /usr/lib/libx264.a<br>=A0 /usr/lib/pkgconfig<br>=A0 /usr/lib/.debug<br>=
=A0 /usr/lib/pkgconfig/x264.pc<br>=A0 /usr/lib/.debug/libx264.so.133<br>ERR=
OR: QA run found fatal errors. Please consider fixing them.<br>





ERROR: Function failed: do_package_qa<br>ERROR: Logfile of failure stored i=
n: /home/nick/poky/test/tmp/work/x86_64-poky-linux/x264/r2265+gitAUTOINC+58=
5324fee3-r0/temp/log.do_package.11458<br>ERROR: Task 4913 (/home/nick/poky/=
meta/recipes-multimedia/x264/<a href=3D"http://x264_git.bb" target=3D"_blan=
k">x264_git.bb</a>, do_package) failed with exit code &#39;1&#39;<br>





ERROR: Function failed: do_configure (log file is located at /home/nick/pok=
y/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.1145=
7)<br>ERROR: Logfile of failure stored in: /home/nick/poky/test/tmp/work/x8=
6_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.11457<br>





Log data follows:<br>| DEBUG: Executing python function sysroot_cleansstate=
<br>| DEBUG: Python function sysroot_cleansstate finished<br>| DEBUG: SITE =
files [&#39;endian-little&#39;, &#39;common-linux&#39;, &#39;common-glibc&#=
39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]<br>





| DEBUG: Executing shell function autotools_preconfigure<br>| DEBUG: Shell =
function autotools_preconfigure finished<br>| DEBUG: Executing shell functi=
on do_configure<br>| ERROR: libx264 not found<br>| <br>| If you think confi=
gure made a mistake, make sure you are using the latest<br>





| version from Git.=A0 If the latest version fails, report the problem to t=
he<br>| <a href=3D"mailto:libav-user@libav.org" target=3D"_blank">libav-use=
r@libav.org</a> mailing list or IRC #libav on <a href=3D"http://irc.freenod=
e.net" target=3D"_blank">irc.freenode.net</a>.<br>





| Include the log file &quot;config.log&quot; produced by configure as this=
 will help<br>| solving the problem.<br>| WARNING: /home/nick/poky/test/tmp=
/work/x86_64-poky-linux/libav/0.8.8-r0/temp/run.do_configure.11457:1 exit 1=
 from<br>





|=A0=A0 /home/nick/poky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/liba=
v-0.8.8/configure --enable-shared --enable-pthreads --enable-gpl --enable-a=
vfilter --cross-prefix=3Dx86_64-poky-linux- --prefix=3D/usr --enable-avserv=
er --enable-avplay --enable-libtheora --enable-libvorbis --arch=3Dx86_64 --=
target-os=3D&quot;linux&quot; --enable-cross-compile --extra-cflags=3D&quot=
; -O2 -pipe -g -feliminate-unused-debug-types -m64 --sysroot=3D/home/nick/p=
oky/test/tmp/sysroots/nuc&quot; --extra-ldflags=3D&quot;-Wl,-O1 -Wl,--hash-=
style=3Dgnu -Wl,--as-needed&quot; --sysroot=3D&quot;/home/nick/poky/test/tm=
p/sysroots/nuc&quot; --enable-hardcoded-tables --enable-postproc --enable-b=
zlib --disable-libfaac --disable-libgsm --disable-indev=3Djack --disable-li=
bmp3lame --disable-libschroedinger --disable-libvpx --enable-x11grab --enab=
le-libx264<br>





| ERROR: Function failed: do_configure (log file is located at /home/nick/p=
oky/test/tmp/work/x86_64-poky-linux/libav/0.8.8-r0/temp/log.do_configure.11=
457)<br>ERROR: Task 3456 (/home/nick/poky/meta/recipes-multimedia/libav/<a =
href=3D"http://libav_0.8.8.bb" target=3D"_blank">libav_0.8.8.bb</a>, do_con=
figure) failed with exit code &#39;1&#39;<br>





NOTE: Tasks Summary: Attempted 5748 tasks of which 5744 didn&#39;t need to =
be rerun and 2 failed.<br>No currently running tasks (5748 of 5775)<br><br>=
Summary: 2 tasks failed:<br>=A0 /home/nick/poky/meta/recipes-multimedia/x26=
4/<a href=3D"http://x264_git.bb" target=3D"_blank">x264_git.bb</a>, do_pack=
age<br>





=A0 /home/nick/poky/meta/recipes-multimedia/libav/<a href=3D"http://libav_0=
.8.8.bb" target=3D"_blank">libav_0.8.8.bb</a>, do_configure<br>Summary: The=
re were 4 ERROR messages shown, returning a non-zero exit code.<br></i><b><=
br>




<br></b></div><div>
<b>This appears to be a bug with the libx264 recipe.</b><br><br></div><div>=
Any thoughts or comments on this?<br>Has anyone else tried MULTILIB builds =
with the NUC hardware (with hardware acceleration enabled)?<br></div><div>





<br></div><div class=3D"gmail_extra">Thanks,<br>Nick<br></div><div><div><di=
v class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Nov 21, 2013 at 1:17 AM, Nick D&=
#39;Ademo <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com" tar=
get=3D"_blank">nickdademo@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">





<div dir=3D"ltr"><div><div><div><div>From what I&#39;ve read so far, by add=
ing the following to the local.conf file (e.g. for a x86_64 build; in my ca=
se for the Intel NUC machine), Yocto will build an image which also contain=
s 32-bit compiled system libraries (+ any 32-bit packages/recipes you have =
specified):<br>









<br>require conf/multilib.conf<br>MULTILIBS =3D &quot;multilib:lib32&quot;<=
br>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&quot;<br><br></div>Ho=
wever, running BitBake with the above added to local.conf results in a larg=
e number of build errors. To name a few:<br>









<br></div><a href=3D"http://grub_2.0.0.bb" target=3D"_blank">grub_2.0.0.bb<=
/a>:<br>...<br>| checking whether the C compiler works... no<br>| configure=
: error: in `/home/nick/poky/build/tmp/work/x86_64-poky-linux/grub/2.00-r1/=
build&#39;:<br>








| configure: error: C compiler cannot create executables<br>...<br>
<br><a href=3D"http://ntp_4.2.6p5.bb" target=3D"_blank">ntp_4.2.6p5.bb</a>:=
<br>...<br>| configure: exit 77<br>| ERROR: oe_runconf failed<br>...<br><br=
></div>Is there something I&#39;m missing here? What is the status of MULTI=
LIB support with Yocto? Has anyone attempted it lately?<br>







<br></div>[The following guide seems a little outdated: <a href=3D"https://=
wiki.yoctoproject.org/wiki/Multilib" target=3D"_blank">https://wiki.yoctopr=
oject.org/wiki/Multilib</a>]<br><div><br></div><div>Thanks,<br>Nick<br>
</div></div>
</blockquote></div><br></div></div></div></div>
</blockquote></div><br></div></div></div></div></div></div></div></div></di=
v></div></div>

--001a11c207f0af178b04ebed469c--
