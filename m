Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78B63E00ACE; Tue, 12 Jan 2016 08:41:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B7B4E00A9C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 08:41:20 -0800 (PST)
Received: by mail-lf0-f46.google.com with SMTP id h129so42861267lfh.3
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 08:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=yel+7rbUTzeFiK70Xn9PR5z4g4kUxgOc7TOYO/9d6Po=;
	b=I6HhOQrTdqM9827ApKYI/rNcXsPjDr7GE89JwZzheaGDN7Mx5tXhZ4my4MdIKt4KGt
	4cEgMVjEJKIc84qKqpQnvfC6RDdIo+cPihXuaGjDGsT5ODc7QJZT8640JqXFDz4uUiOh
	QBLrjIVVTB3EdkYymnI9d4qdr6GnJ9/sOnm4IrLoam7zelFkjQdlgqHSt3TvPTVmAkZn
	HhByiJomIW/YwfM0v3jhzN6W+cn6Dlmxq860TD77FHaluoI3Xl6Y14OfJ6Ewi5V69wsZ
	iVZN4fmWlokNw75YEvihv9kQv25do0aXWGAOhgtyaosKi9CkedUrqbYijzGcM0xpLNfC
	TpgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=briata-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=yel+7rbUTzeFiK70Xn9PR5z4g4kUxgOc7TOYO/9d6Po=;
	b=zkY7E3Nn9PgE9nhEsaZElaW9IiBnhOj8lBsRdsc4Zfsv4837NRrfpzeXfchwygTUlW
	vH0kGi59Et8DQICvwYbkxPMcVKTo7NxZMDRKoiAoR9+ZCxuFq2avmUBYxSamNG8PcPqA
	yUlTz6YAaMOXBDKJECKWhGY9k4AYwmTlugnkpswqcHC/A2bWAz5oug64mzDr+/Yu8kpk
	vnQZWeUwlBTisThnxx+fyBHWRxC/5R2ld4qwPRpdWI3xlYHVq1S9WNpf7ymINkNfPHFp
	2ff5FldvEe+oc5NsCIHbB6mGV7Ll297QE4LI5+0A/lvlEsTLw7Dy3Hp5JHE2s2Pt4jUX
	0A6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=yel+7rbUTzeFiK70Xn9PR5z4g4kUxgOc7TOYO/9d6Po=;
	b=C+9Al2j8IQDxGf8wxZWUAQ+MSAwGMTWe4uBLW8Z4GxGGoSwPBUOMMDOZewx/T2cM5x
	rq2taHM/VQucQIdOxNsdSewMBsfscY/MisMNdWA7lZCstZYFZOnHFn1riXHtfMJUuMUt
	6olxs1JfHfDaREEWvPhFxOaJEJPM6RphbFLmY0WhKI4MnMuyIESMaSg1QZi2b+mqWtlO
	qcrF6cu7s+WGxO1Ibs3YNqGMv331u/Zs0neCMJZbk7qtOordMjstfK+sBr5zupJrXGQ5
	wwhr+qIsFlkvv7OWLzvyZKN1qX3Bhq40fMJOngYikH6CmIi9HfvIw+zi+rlBcRbl5zQ0
	TEcg==
X-Gm-Message-State: ALoCoQkDh9iomjol8fAug25rWlYqbnT9enYOu4m5rDv83DJc28kYTkmAZq5AXCWa0ouO5epfGa5WIRACp/6ArlKrLTuCZFewuQ==
MIME-Version: 1.0
X-Received: by 10.25.137.194 with SMTP id l185mr31710368lfd.41.1452616878996; 
	Tue, 12 Jan 2016 08:41:18 -0800 (PST)
Sender: federicobriata@gmail.com
Received: by 10.112.9.200 with HTTP; Tue, 12 Jan 2016 08:41:18 -0800 (PST)
In-Reply-To: <loom.20151219T103721-415@post.gmane.org>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<loom.20151219T103721-415@post.gmane.org>
Date: Tue, 12 Jan 2016 17:41:18 +0100
X-Google-Sender-Auth: hqwugIfoyQwP_CuniTZ2h4GOAVU
Message-ID: <CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
From: Federico Pietro Briata <federico@briata.org>
To: Stef <Stefboerrigter@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Tue, 12 Jan 2016 16:41:25 -0000
Content-Type: multipart/alternative; boundary=001a113fb45c114afe052925b9ba

--001a113fb45c114afe052925b9ba
Content-Type: text/plain; charset=UTF-8

Hi Stef,
Thanks, I've tried to apply that patch and also
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=527b28c10955daf0387597020d69593ce24bcaa4

and now I'm getting this:

ERROR: Function failed: do_compile (log file is located at
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
ERROR: Logfile of failure stored in:
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889
Log data follows:
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make
OE_CFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
-O2 -pipe -DHEADLESS=true
OE_CPPFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
-DHEADLESS=true
OE_CXXFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
-O2 -pipe -DHEADLESS=true
OE_LDFLAGS=-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
-Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
-Wl,-O1 BUILD_HEADLESS_ONLY=1 BUILD_HEADLESS=true BUILD_SOUNDLESS_ONLY=1
X11_NOT_NEEDED=1 CUPS_NOT_NEEDED=1 ALSA_NOT_NEEDED=1 PULSE_NOT_NEEDED=1
MAKE_VERBOSE=y VERBOSE=-s LOG_LEVEL=trace QUIETLY= images
|
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27:
*** Too many open files.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
ERROR: Task 207
(/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
openjdk-8-native_72b05.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 didn't need to be
rerun and 1 failed.
No currently running tasks (1469 of 1483)

Summary: 1 task failed:
  /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
openjdk-8-native_72b05.bb, do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

thanks and regards
federico

2015-12-19 10:38 GMT+01:00 Stef <Stefboerrigter@gmail.com>:

> Federico Pietro Briata <federicobriata@...> writes:
>
> >
> >
> >
> > Hi All,
> > I'm trying to build openjdk-8 but I'm stuck.my current setup does not
> define anything for:#PREFERRED_PROVIDER_virtual/java-
> native#PREFERRED_PROVIDER_virtual/javac-native
> >
> > follow the log error
> >
> >
> >
> > ERROR: Function failed: do_configure (log file is located at
> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:
> Logfile of failure stored in: /home/federico/yocto/imx6/R6.0/build-imx6-
> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-
> r0/temp/log.do_configure.27024Log data follows:| DEBUG: Executing python
> function sysroot_cleansstate| DEBUG: Python function sysroot_cleansstate
> finished| DEBUG: SITE files ['endian-little', 'common-linux', 'common-
> glibc', 'bit-64', 'x86_64-linux', 'common']| DEBUG: Executing shell
> function autotools_preconfigure| DEBUG: Shell function
> autotools_preconfigure finished| DEBUG: Executing python function
> autotools_copy_aclocals| DEBUG: Python function autotools_copy_aclocals
> finished| DEBUG: Executing shell function do_configure| ERROR: no
> configure script found at /home/federico/yocto/imx6/R6.0/build-imx6-
> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-
> e8bed1496ff2/configure| WARNING: exit code 1 from a shell command.|
> ERROR: Function failed: do_configure (log file is located at
> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR: Task
> 146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
> core/openjdk/openjdk-8-native_72b05.bb, do_configure) failed with exit
> code '1'NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn't
> need to be rerun and 1 failed.No currently running tasks (1139 of
> 1150)Summary: 1 task failed:
> /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
> core/openjdk/openjdk-8-native_72b05.bb, do_configure
> >
> > thanks and regards
> >
> > Federico
> >
> >
> >
> >
> >
>
> Try to apply this patch to meta layer:
> https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c
> 1e19a40
>
> It worked for me
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113fb45c114afe052925b9ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Stef,<br></div>Thanks, I&#39;ve tri=
ed to apply that patch and also<br><a href=3D"http://git.yoctoproject.org/c=
git.cgi/poky/commit/?id=3D527b28c10955daf0387597020d69593ce24bcaa4">http://=
git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D527b28c10955daf0387597020d6=
9593ce24bcaa4</a><br><br></div>and now I&#39;m getting this:<br><br>ERROR: =
Function failed: do_compile (log file is located at /home/federico/yocto/im=
x6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-=
native/72b05-r0/temp/log.do_compile.15889)<br>ERROR: Logfile of failure sto=
red in: /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-egli=
bc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889<br=
>Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;co=
mmon-linux&#39;, &#39;common-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linu=
x&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell function do_compile<b=
r>| NOTE: make OE_CFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/build-Ope=
nJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -=
DHEADLESS=3Dtrue OE_CPPFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/build=
-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -DHEADL=
ESS=3Dtrue OE_CXXFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/build-OpenJ=
DK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -DH=
EADLESS=3Dtrue OE_LDFLAGS=3D-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8=
-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib -L/home/federico/yoc=
to/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/l=
ib -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6qu=
ad/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/federico/=
yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linu=
x/lib -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad=
/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/federico/yocto/i=
mx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -=
Wl,-O1 BUILD_HEADLESS_ONLY=3D1 BUILD_HEADLESS=3Dtrue BUILD_SOUNDLESS_ONLY=
=3D1 X11_NOT_NEEDED=3D1 CUPS_NOT_NEEDED=3D1 ALSA_NOT_NEEDED=3D1 PULSE_NOT_N=
EEDED=3D1 MAKE_VERBOSE=3Dy VERBOSE=3D-s LOG_LEVEL=3Dtrace QUIETLY=3D images=
<br>| /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc=
/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27=
: *** Too many open files.=C2=A0 Stop.<br>| ERROR: oe_runmake failed<br>| W=
ARNING: exit code 1 from a shell command.<br>| ERROR: Function failed: do_c=
ompile (log file is located at /home/federico/yocto/imx6/R6.0/build-OpenJDK=
8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/=
log.do_compile.15889)<br>ERROR: Task 207 (/home/federico/yocto/imx6/R6.0/so=
urces/meta-java/recipes-core/openjdk/<a href=3D"http://openjdk-8-native_72b=
05.bb">openjdk-8-native_72b05.bb</a>, do_compile) failed with exit code &#3=
9;1&#39;<br>NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 didn&#3=
9;t need to be rerun and 1 failed.<br>No currently running tasks (1469 of 1=
483)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/federico/yocto/imx6/R6.=
0/sources/meta-java/recipes-core/openjdk/<a href=3D"http://openjdk-8-native=
_72b05.bb">openjdk-8-native_72b05.bb</a>, do_compile<br>Summary: There was =
1 ERROR message shown, returning a non-zero exit code.<br><br></div>thanks =
and regards<br></div>federico<br></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">2015-12-19 10:38 GMT+01:00 Stef <span dir=3D"ltr">&lt=
;<a href=3D"mailto:Stefboerrigter@gmail.com" target=3D"_blank">Stefboerrigt=
er@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">Federico Pietro Briata &lt;federicobriata@...&gt; writes:<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hi All,<br>
</span>&gt; I&#39;m trying to build openjdk-8 but I&#39;m stuck.my current =
setup does not<br>
define anything for:#PREFERRED_PROVIDER_virtual/java-<br>
<span class=3D"">native#PREFERRED_PROVIDER_virtual/javac-native<br>
&gt;<br>
&gt; follow the log error<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Function failed: do_configure (log file is located at<br>
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-<br>
linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:<br>
Logfile of failure stored in: /home/federico/yocto/imx6/R6.0/build-imx6-<br=
>
mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-<br>
</span>r0/temp/log.do_configure.27024Log data follows:| DEBUG: Executing py=
thon<br>
<span class=3D"">function sysroot_cleansstate| DEBUG: Python function sysro=
ot_cleansstate<br>
finished| DEBUG: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39=
;, &#39;common-<br>
glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]| DE=
BUG: Executing shell<br>
function autotools_preconfigure| DEBUG: Shell function<br>
autotools_preconfigure finished| DEBUG: Executing python function<br>
autotools_copy_aclocals| DEBUG: Python function autotools_copy_aclocals<br>
finished| DEBUG: Executing shell function do_configure| ERROR: no<br>
configure script found at /home/federico/yocto/imx6/R6.0/build-imx6-<br>
mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-<br>
</span>e8bed1496ff2/configure| WARNING: exit code 1 from a shell command.|<=
br>
<span class=3D"">ERROR: Function failed: do_configure (log file is located =
at<br>
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-<br>
linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR: Task<br>
146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-<br>
core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" rel=3D"noreferrer=
" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_configure) failed wit=
h exit<br>
code &#39;1&#39;NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn&=
#39;t<br>
</span>need to be rerun and 1 failed.No currently running tasks (1139 of<br=
>
<span class=3D"">1150)Summary: 1 task failed:=C2=A0<br>
/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-<br>
core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" rel=3D"noreferrer=
" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_configure<br>
&gt;<br>
&gt; thanks and regards<br>
&gt;<br>
&gt; Federico<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</span>Try to apply this patch to meta layer:<br>
<a href=3D"https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80=
749cd43c
1e19a40" rel=3D"noreferrer" target=3D"_blank">https://github.com/rehsack/po=
ky/commit/65cdad40f2717b85892e12c80749cd43c<br>
1e19a40</a><br>
<br>
It worked for me<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a113fb45c114afe052925b9ba--
