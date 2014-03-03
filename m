Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f193.google.com (mail-vc0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5DD2E009BA
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 06:36:48 -0800 (PST)
Received: by mail-vc0-f193.google.com with SMTP id hq11so1413124vcb.8
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 06:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Xfh/knF97KIMXf1XhkfubPuDX4jvrOfPKy4m8VacKA4=;
	b=TfsTL7i11850rFx0YQ5GrYLz/OC9kS1gw6vskLfgwA1qxWMbDd2oxgZu44TH+o7ZKX
	4f0+cVwcyktf/V8X794hB5noIkJWs3GVX7gRYt5legTRW6UrxjGFf6A4Uq8boAZhNGEW
	d2kSHuhhxRQUo3M2IZkrIUaVfm3Q7S4BYWP+H1Q0GUaWjmhv8KwS148StFseuWfPxYdM
	gxoA4H3kmfpWPTib7ir05Rhbntf51pcsN7SumQtvfXi2jtpmYdd1Akv4FIILq0eSI+m9
	3KMyPyM1IuPzgUbKaE7haq/AcIFFF8kXwH4Y3z8RscoOa+/dX+x8GkjhOg90Qjd8XDHp
	qGKg==
MIME-Version: 1.0
X-Received: by 10.52.181.1 with SMTP id ds1mr102741vdc.92.1393857407429; Mon,
	03 Mar 2014 06:36:47 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 06:36:47 -0800 (PST)
Date: Mon, 3 Mar 2014 07:36:47 -0700
Message-ID: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: yocto@yoctoproject.org
Subject: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 14:36:49 -0000
Content-Type: multipart/alternative; boundary=bcaec548a625a331e704f3b4b766

--bcaec548a625a331e704f3b4b766
Content-Type: text/plain; charset=ISO-8859-1

Does anyone know how I can get around this error? There is no such package
on sourceforge "Fetcher failure for URL: '
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'. Unable
to fetch URL from any source."

Build Configuration:
BB_VERSION = "1.18.0"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "Ubuntu-12.04"
TARGET_SYS = "arm-poky-linux-gnueabi"
MACHINE = "overo"
DISTRO = "poky"
DISTRO_VERSION = "1.4.3"
TUNE_FEATURES = "armv7a vfp neon"
TARGET_FPU = "vfp-neon"
meta
meta-yocto = "(nobranch):e2bb4a70a99a057d45316bbac65d6044ea54c484"
meta-gnome
meta-oe
meta-xfce
meta-systemd
meta-networking
meta-multimedia = "(nobranch):cb182019c4f7485713cb50623240c01882448ffd"
meta-gumstix = "(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b26aa"
meta-gumstix-extras = "(nobranch):2b249710f1441841f326e9e8ab6fb2a217e84b73"


WARNING: Failed to fetch URL
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz:
2014-03-03 07:34:57 ERROR 404: Not Found.

ERROR: Function failed: Fetcher failure for URL: '
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'. Unable
to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/infinitezero/yocto001/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.5555
ERROR: Task 1501
(/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1825 tasks of which 1820 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_fetch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--bcaec548a625a331e704f3b4b766
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Does anyone know how I can get around this error?=
 There is no such package on sourceforge &quot;Fetcher failure for URL: &#3=
9;<a href=3D"http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.=
gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>&#3=
9;. Unable to fetch URL from any source.&quot;</div>
<div><br></div><div>Build Configuration:<br>BB_VERSION        =3D &quot;1.1=
8.0&quot;<br>BUILD_SYS         =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTR=
ING   =3D &quot;Ubuntu-12.04&quot;<br>TARGET_SYS        =3D &quot;arm-poky-=
linux-gnueabi&quot;<br>
MACHINE           =3D &quot;overo&quot;<br>DISTRO            =3D &quot;poky=
&quot;<br>DISTRO_VERSION    =3D &quot;1.4.3&quot;<br>TUNE_FEATURES     =3D =
&quot;armv7a vfp neon&quot;<br>TARGET_FPU        =3D &quot;vfp-neon&quot;<b=
r>meta              <br>
meta-yocto        =3D &quot;(nobranch):e2bb4a70a99a057d45316bbac65d6044ea54=
c484&quot;<br>meta-gnome        <br>meta-oe           <br>meta-xfce        =
 <br>meta-systemd      <br>meta-networking   <br>meta-multimedia   =3D &quo=
t;(nobranch):cb182019c4f7485713cb50623240c01882448ffd&quot;<br>
meta-gumstix      =3D &quot;(nobranch):f10408773c2e81cc520c5a022c8bbe232a7b=
26aa&quot;<br>meta-gumstix-extras =3D &quot;(nobranch):2b249710f1441841f326=
e9e8ab6fb2a217e84b73&quot;<br></div><div><br></div><div><br>WARNING: Failed=
 to fetch URL <a href=3D"http://downloads.sourceforge.net/openjade/openjade=
-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/openjade-0.6.14.t=
ar.gz</a>, attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:<br><=
a href=3D"http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz"=
>http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>:<br>
2014-03-03 07:34:57 ERROR 404: Not Found.<br><br>ERROR: Function failed: Fe=
tcher failure for URL: &#39;<a href=3D"http://downloads.sourceforge.net/ope=
njade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/ope=
njade-0.6.14.tar.gz</a>&#39;. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/infinitezero/yocto001/build/tmp/=
work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.5555<br>=
ERROR: Task 1501 (/home/infinitezero/yocto001/poky/meta/recipes-devtools/do=
cbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">docbook-utils=
-native_0.6.14.bb</a>, do_fetch) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 1825 tasks of which 1820 didn&#39;t need to =
be rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Sum=
mary: 1 task failed:<br>  /home/infinitezero/yocto001/poky/meta/recipes-dev=
tools/docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">docbo=
ok-utils-native_0.6.14.bb</a>, do_fetch<br>
Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ERROR =
messages shown, returning a non-zero exit code.<br><br></div><div><br></div=
></div>

--bcaec548a625a331e704f3b4b766--
