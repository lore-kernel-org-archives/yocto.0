Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D714E00982; Wed, 10 Jun 2015 14:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94281E0086D
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 14:41:50 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t5ALffMl014337;
	Wed, 10 Jun 2015 23:41:46 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Wed, 10 Jun 2015 23:41:41 +0200
From: Peter Bergin <peter.bergin@tritech.se>
To: "Burton, Ross" <ross.burton@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Python3 failure using ctypes
Thread-Index: AdCijjC84rVA5NwYQ8OM32IUS6li8g==
Date: Wed, 10 Jun 2015 21:41:40 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C824192@post>
References: <43F0718C449F6A46B393DA2BEC8E01280C822E98@post>
	<CAJTo0LYTmkFvjXsevSc22VOyr1jtcrErO-vm=gh5NqaAVpuh-Q@mail.gmail.com>
	<43F0718C449F6A46B393DA2BEC8E01280C82309D@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [84.219.204.119]
MIME-Version: 1.0
Subject: Re: Python3 failure using ctypes
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
X-List-Received-Date: Wed, 10 Jun 2015 21:41:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_43F0718C449F6A46B393DA2BEC8E01280C824192post_"

--_000_43F0718C449F6A46B393DA2BEC8E01280C824192post_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi again,


On 06/09/2015 12:21 PM, Peter Bergin wrote:
Hi,

On 06/09/2015 11:28 AM, Burton, Ross wrote:

On 9 June 2015 at 09:27, Peter Bergin <peter.bergin@tritech.se<mailto:peter=
.bergin@tritech.se>> wrote:
The root cause of this is an error during the build of Python3. From tmp/wo=
rk/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r1.0/temp/log.do_co=
nfigure:

DEBUG: Executing shell function do_configure
autoreconf: 'configure.ac<http://configure.ac>' or 'configure.in<http://con=
figure.in>' is required
NOTE: _ctypes failed to autoreconf

The targeted machine for us is i.Mx6 built with the Freescale community BSP=
 but I have also been able to reproduce the same thing with just building c=
ore-image-base for qemux86 only appending python3-ctypes.

That's odd.  My local builds of python3 appear to be working fine, there's =
a python3-ctypes package with a _ctype.so inside, and configure works:


It seems that you are building Python 3.4.3. Recipes included in fido is ve=
rsion 3.3.3.

autoreconf: Entering directory `../Python-3.4.3/Modules/_ctypes/libffi'
autoreconf: configure.ac<http://configure.ac>: not using Gettext
autoreconf: running: aclocal --force -I m4
autoreconf: configure.ac<http://configure.ac>: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in '.'.
libtoolize: copying file './ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
libtoolize: copying file 'm4/libtool.m4'
libtoolize: copying file 'm4/ltoptions.m4'
libtoolize: copying file 'm4/ltsugar.m4'
libtoolize: copying file 'm4/ltversion.m4'
libtoolize: copying file 'm4/lt~obsolete.m4'
autoreconf: running: /data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/au=
toconf --force
autoreconf: running: /data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/au=
toheader --force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:34<http://configure.ac:34>: installing './compile'
configure.ac:22<http://configure.ac:22>: installing './missing'
Makefile.am: installing './depcomp'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `../Python-3.4.3/Modules/_ctypes/libffi'

Can you share the full do_configure log?

Ross

I attach the log.do_configure files from a build. See if you can find somet=
hing odd in it.

Thanks,
/Peter

I still have serious with this issue. I think it is not possible to cross-c=
ompile python3-ctypes in fido. I filed a bug https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D7873 and hope that I can get some help to sort this o=
ut.

My previous mail showed an error in the configure step. I have fixed that i=
ssue with the following patch to poky:

diff --git a/meta/recipes-devtools/python/python3_3.3.3.bb b/meta/recipes-d=
evtools/python/python3_3.3.3.bb
index 6147408..9162ad7 100644
--- a/meta/recipes-devtools/python/python3_3.3.3.bb
+++ b/meta/recipes-devtools/python/python3_3.3.3.bb
@@ -75,9 +75,9 @@ export _PYTHON_PROJECT_SRC =3D "${S}"
 # No ctypes option for python 3
 PYTHONLSBOPTS =3D ""

-do_configure_prepend() {
+do_configure_append() {
     rm -f ${S}/Makefile.orig
-    autoreconf -Wcross --verbose --install --force --exclude=3Dautopoint M=
odules/_ctypes/libffi || bbnote "_ctypes failed to autoreconf"
+    autoreconf -Wcross --verbose --install --force --exclude=3Dautopoint .=
./Python-${PV}/Modules/_ctypes/libffi
 }

 do_compile() {


The next and more serious issue is now in the compile step. When compiling =
the switch --with-system-ffi that is passed to configure is not taken care =
of by the build system and setup.py. When building _ctypes the file setup.p=
y is looking for information in the python lib sysconfig but the sysconfig =
used is the one for the host. More specific information is located in the v=
ariable CONFIG_ARGS.

Regards,
/Peter



--_000_43F0718C449F6A46B393DA2BEC8E01280C824192post_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000">
<div class=3D"moz-cite-prefix">Hi again,<br>
<br>
<br>
On 06/09/2015 12:21 PM, Peter Bergin wrote:<br>
</div>
<blockquote cite=3D"mid:43F0718C449F6A46B393DA2BEC8E01280C82309D@post" type=
=3D"cite">
<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 06/09/2015 11:28 AM, Burton, Ross wrote:<br>
</div>
<blockquote cite=3D"mid:CAJTo0LYTmkFvjXsevSc22VOyr1jtcrErO-vm=3Dgh5NqaAVpuh=
-Q@mail.gmail.com" type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 9 June 2015 at 09:27, Peter Bergin <span dir=
=3D"ltr">&lt;<a moz-do-not-send=3D"true" href=3D"mailto:peter.bergin@tritec=
h.se" target=3D"_blank">peter.bergin@tritech.se</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=0A=
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">
<div id=3D":us" class=3D"" style=3D"overflow:hidden">The root cause of this=
 is an error during the build of Python3. From tmp/work/cortexa9hf-vfp-neon=
-poky-linux-gnueabi/python3/3.3.3-r1.0/temp/log.do_configure:<br>
<br>
DEBUG: Executing shell function do_configure<br>
autoreconf: '<a moz-do-not-send=3D"true" href=3D"http://configure.ac" targe=
t=3D"_blank">configure.ac</a>' or '<a moz-do-not-send=3D"true" href=3D"http=
://configure.in" target=3D"_blank">configure.in</a>' is required<br>
NOTE: _ctypes failed to autoreconf<br>
<br>
The targeted machine for us is i.Mx6 built with the Freescale community BSP=
 but I have also been able to reproduce the same thing with just building c=
ore-image-base for qemux86 only appending python3-ctypes.</div>
</blockquote>
</div>
<br>
That's odd.&nbsp; My local builds of python3 appear to be working fine, the=
re's a python3-ctypes package with a _ctype.so inside, and configure works:=
</div>
<div class=3D"gmail_extra"><br>
</div>
</div>
</blockquote>
<br>
It seems that you are building Python 3.4.3. Recipes included in fido is ve=
rsion 3.3.3.<br>
<br>
<blockquote cite=3D"mid:CAJTo0LYTmkFvjXsevSc22VOyr1jtcrErO-vm=3Dgh5NqaAVpuh=
-Q@mail.gmail.com" type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail_extra">
<div class=3D"gmail_extra">autoreconf: Entering directory `../Python-3.4.3/=
Modules/_ctypes/libffi'</div>
<div class=3D"gmail_extra">autoreconf: <a moz-do-not-send=3D"true" href=3D"=
http://configure.ac">
configure.ac</a>: not using Gettext</div>
<div class=3D"gmail_extra">autoreconf: running: aclocal --force -I m4</div>
<div class=3D"gmail_extra">autoreconf: <a moz-do-not-send=3D"true" href=3D"=
http://configure.ac">
configure.ac</a>: tracing</div>
<div class=3D"gmail_extra">autoreconf: running: libtoolize --copy --force</=
div>
<div class=3D"gmail_extra">libtoolize: putting auxiliary files in '.'.</div=
>
<div class=3D"gmail_extra">libtoolize: copying file './ltmain.sh'</div>
<div class=3D"gmail_extra">libtoolize: putting macros in AC_CONFIG_MACRO_DI=
RS, 'm4'.</div>
<div class=3D"gmail_extra">libtoolize: copying file 'm4/libtool.m4'</div>
<div class=3D"gmail_extra">libtoolize: copying file 'm4/ltoptions.m4'</div>
<div class=3D"gmail_extra">libtoolize: copying file 'm4/ltsugar.m4'</div>
<div class=3D"gmail_extra">libtoolize: copying file 'm4/ltversion.m4'</div>
<div class=3D"gmail_extra">libtoolize: copying file 'm4/lt~obsolete.m4'</di=
v>
<div class=3D"gmail_extra">autoreconf: running: /data/poky-master/tmp/sysro=
ots/x86_64-linux/usr/bin/autoconf --force</div>
<div class=3D"gmail_extra">autoreconf: running: /data/poky-master/tmp/sysro=
ots/x86_64-linux/usr/bin/autoheader --force</div>
<div class=3D"gmail_extra">autoreconf: running: automake --add-missing --co=
py --force-missing</div>
<div class=3D"gmail_extra"><a moz-do-not-send=3D"true" href=3D"http://confi=
gure.ac:34">configure.ac:34</a>: installing './compile'</div>
<div class=3D"gmail_extra"><a moz-do-not-send=3D"true" href=3D"http://confi=
gure.ac:22">configure.ac:22</a>: installing './missing'</div>
<div class=3D"gmail_extra">Makefile.am: installing './depcomp'</div>
<div class=3D"gmail_extra">autoreconf: running: gnu-configize</div>
<div class=3D"gmail_extra">autoreconf: Leaving directory `../Python-3.4.3/M=
odules/_ctypes/libffi'</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Can you share the full do_configure log?</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</blockquote>
<br>
I attach the log.do_configure files from a build. See if you can find somet=
hing odd in it.<br>
<br>
Thanks,<br>
/Peter<br>
<br>
</blockquote>
I still have serious with this issue. I think it is not possible to cross-c=
ompile python3-ctypes in fido. I filed a bug
<a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D7873">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7873</a> and hope that =
I can get some help to sort this out.<br>
<br>
My previous mail showed an error in the configure step. I have fixed that i=
ssue with the following patch to poky:<br>
<br>
diff --git a/meta/recipes-devtools/python/python3_3.3.3.bb b/meta/recipes-d=
evtools/python/python3_3.3.3.bb<br>
index 6147408..9162ad7 100644<br>
--- a/meta/recipes-devtools/python/python3_3.3.3.bb<br>
&#43;&#43;&#43; b/meta/recipes-devtools/python/python3_3.3.3.bb<br>
@@ -75,9 &#43;75,9 @@ export _PYTHON_PROJECT_SRC =3D &quot;${S}&quot;<br>
&nbsp;# No ctypes option for python 3<br>
&nbsp;PYTHONLSBOPTS =3D &quot;&quot;<br>
&nbsp;<br>
-do_configure_prepend() {<br>
&#43;do_configure_append() {<br>
&nbsp;&nbsp;&nbsp;&nbsp; rm -f ${S}/Makefile.orig<br>
-&nbsp;&nbsp;&nbsp; autoreconf -Wcross --verbose --install --force --exclud=
e=3Dautopoint Modules/_ctypes/libffi || bbnote &quot;_ctypes failed to auto=
reconf&quot;<br>
&#43;&nbsp;&nbsp;&nbsp; autoreconf -Wcross --verbose --install --force --ex=
clude=3Dautopoint ../Python-${PV}/Modules/_ctypes/libffi<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;do_compile() {<br>
<br>
<br>
The next and more serious issue is now in the compile step. When compiling =
the switch --with-system-ffi that is passed to configure is not taken care =
of by the build system and setup.py. When building _ctypes the file setup.p=
y is looking for information in
 the python lib sysconfig but the sysconfig used is the one for the host. M=
ore specific information is located in the variable CONFIG_ARGS.<br>
<br>
Regards,<br>
/Peter<br>
<br>
<br>
</body>
</html>

--_000_43F0718C449F6A46B393DA2BEC8E01280C824192post_--
