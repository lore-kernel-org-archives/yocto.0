Return-Path: <joaohf@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C03DE00304
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2011 17:05:51 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkar19 with SMTP id r19so8137849bka.35
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2011 17:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mPSeEBEPYTuAjZDATIs8zXEN1Gv5D1dU+ZQ5srJndHE=;
	b=PAthxuq8H6vkaNc9tSd9D8MVl+0TJIMMOWCDkR53hwfS86u66a62eIAPHwK8CUqN5K
	ZyXf00h7iOSeJHfIVkifLvOu5J8PzAUH6euDUPlnahMRGNb1jWOlnqZhYTyi0vUqzwxu
	5eprWv5RxfhEOqQWpjSQxlSVcAxNdrh8M/lPA=
MIME-Version: 1.0
Received: by 10.205.132.68 with SMTP id ht4mr5784710bkc.133.1321146350714;
	Sat, 12 Nov 2011 17:05:50 -0800 (PST)
Received: by 10.204.36.139 with HTTP; Sat, 12 Nov 2011 17:05:50 -0800 (PST)
In-Reply-To: <20110722123240.GA25142@localhost.localdomain>
References: <20110722083745.GA13064@localhost.localdomain>
	<1311325191.2344.101.camel@rex>
	<20110722093722.GA8668@localhost.localdomain>
	<1311328132.2344.106.camel@rex>
	<20110722123240.GA25142@localhost.localdomain>
Date: Sat, 12 Nov 2011 23:05:50 -0200
Message-ID: <CANFVK7-NbBJ4wH90JgS3LKSH92r6riOr+y0ZCxZ1S140bQvQQA@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Andre Haupt <andre@bitwigglers.org>
Cc: yocto@yoctoproject.org
Subject: Re: Bitbaking python fails
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 13 Nov 2011 01:05:52 -0000
Content-Type: multipart/alternative; boundary=000e0ce03d5eee413004b1935add

--000e0ce03d5eee413004b1935add
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

To fix it in Yocto 1.1.0 I tryed this:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D23d2eaf9d283cae=
47e52d1151f0d4ad53bbbe8a0

Works, my build host is Ubuntu 11.10 x86.

Thanks


PS: this paths works for me.

diff --git
a/meta/recipes-devtools/python/python/setup_py_skip_cross_import_check.patc=
h
b/meta/recipes-devtools/python/python/setup_py_skip_cross_import_check.patc=
h
new file mode 100644
index 0000000..aeef78f
--- /dev/null
+++
b/meta/recipes-devtools/python/python/setup_py_skip_cross_import_check.patc=
h
@@ -0,0 +1,19 @@
+Index: Python-2.6.6/setup.py
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- Python-2.6.6.orig/setup.py    2011-11-12 22:54:14.257053822 -0200
++++ Python-2.6.6/setup.py    2011-11-12 22:54:19.701053981 -0200
+@@ -287,6 +287,14 @@
+                           (ext.name, sys.exc_info()[1]))
+             self.failed.append(ext.name)
+             return
++        # If we're cross-compiling, we want to skip the import check
++        # i.e. we shouldn't be dynamically loading target shared libs
++        if os.environ.get('CROSS_COMPILE') is not None:
++            self.announce(
++                 'WARNING: skipping import check for cross-compiled "%s"'
%
++                 ext.name)
++            return
++
+         # Workaround for Mac OS X: The Carbon-based modules cannot be
+         # reliably imported into a command-line Python
+         if 'Carbon' in ext.extra_link_args:
diff --git a/meta/recipes-devtools/python/python_2.6.6.bbb/meta/recipes-dev=
tools/python/
python_2.6.6.bb
index aa7ec3c..3f12576 100644
--- a/meta/recipes-devtools/python/python_2.6.6.bb
+++ b/meta/recipes-devtools/python/python_2.6.6.bb
@@ -21,6 +21,7 @@ SRC_URI =3D "\
   file://multilib.patch \
   file://security_issue_2254_fix.patch \
   file://cgi_py.patch \
+  file://setup_py_skip_cross_import_check.patch \
 "

 SRC_URI[md5sum] =3D "cf4e6881bb84a7ce6089e4a307f71f14"
@@ -61,6 +62,8 @@ do_compile() {
     # then call do_install twice we get Makefile.orig =3D=3D Makefile.sysr=
oot
     install -m 0644 Makefile Makefile.sysroot

+        export CROSS_COMPILE=3D"${TARGET_PREFIX}"
+
     oe_runmake HOSTPGEN=3D${STAGING_BINDIR_NATIVE}/pgen \
         HOSTPYTHON=3D${STAGING_BINDIR_NATIVE}/python \
         STAGING_LIBDIR=3D${STAGING_LIBDIR} \
@@ -82,6 +85,8 @@ do_install() {
     # make install needs the original Makefile, or otherwise the inclues
would
     # go to ${D}${STAGING...}/...
     install -m 0644 Makefile.orig Makefile
+
+        export CROSS_COMPILE=3D"${TARGET_PREFIX}"

     oe_runmake HOSTPGEN=3D${STAGING_BINDIR_NATIVE}/pgen \
         HOSTPYTHON=3D${STAGING_BINDIR_NATIVE}/python \


--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--000e0ce03d5eee413004b1935add
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>To fix it in Yocto 1.1.0 I tryed this: <a href=3D"http://git.yoc=
toproject.org/cgit/cgit.cgi/poky/commit/?id=3D23d2eaf9d283cae47e52d1151f0d4=
ad53bbbe8a0">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D23=
d2eaf9d283cae47e52d1151f0d4ad53bbbe8a0</a><br>
<br>Works, my build host is Ubuntu 11.10 x86.<br><br>Thanks<br><br><br>PS: =
this paths works for me.<br><br>diff --git a/meta/recipes-devtools/python/p=
ython/setup_py_skip_cross_import_check.patch b/meta/recipes-devtools/python=
/python/setup_py_skip_cross_import_check.patch<br>
new file mode 100644<br>index 0000000..aeef78f<br>--- /dev/null<br>+++ b/me=
ta/recipes-devtools/python/python/setup_py_skip_cross_import_check.patch<br=
>@@ -0,0 +1,19 @@<br>+Index: Python-2.6.6/setup.py<br>+=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+--- Python-2.6.6.orig/setup.py=C2=A0=C2=A0=C2=A0 2011-11-12 22:54:14.25705=
3822 -0200<br>++++ Python-2.6.6/setup.py=C2=A0=C2=A0=C2=A0 2011-11-12 22:54=
:19.701053981 -0200<br>+@@ -287,6 +287,14 @@<br>+=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (<a href=3D"http:=
//ext.name">ext.name</a>, sys.exc_info()[1]))<br>
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 s=
elf.failed.append(<a href=3D"http://ext.name">ext.name</a>)<br>+=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return<br>+=
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # If we&#39;re cross-compiling,=
 we want to skip the import check<br>++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 # i.e. we shouldn&#39;t be dynamically loading target shared libs<br=
>
++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.environ.get(&#39;CROSS_C=
OMPILE&#39;) is not None:<br>++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 self.announce(<br>++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &#39;WAR=
NING: skipping import check for cross-compiled &quot;%s&quot;&#39; %<br>++=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <a href=3D"http://ext.name">ext.name</a>)<br>
++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return=
<br>++<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Workaround fo=
r Mac OS X: The Carbon-based modules cannot be<br>+=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 # reliably imported into a command-line Python<br>=
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if &#39;Carbon&#39; in ex=
t.extra_link_args:<br>
diff --git a/meta/recipes-devtools/python/<a href=3D"http://python_2.6.6.bb=
">python_2.6.6.bb</a> b/meta/recipes-devtools/python/<a href=3D"http://pyth=
on_2.6.6.bb">python_2.6.6.bb</a><br>index aa7ec3c..3f12576 100644<br>--- a/=
meta/recipes-devtools/python/<a href=3D"http://python_2.6.6.bb">python_2.6.=
6.bb</a><br>
+++ b/meta/recipes-devtools/python/<a href=3D"http://python_2.6.6.bb">pytho=
n_2.6.6.bb</a><br>@@ -21,6 +21,7 @@ SRC_URI =3D &quot;\<br>=C2=A0=C2=A0 fil=
e://multilib.patch \<br>=C2=A0=C2=A0 file://security_issue_2254_fix.patch \=
<br>=C2=A0=C2=A0 file://cgi_py.patch \<br>
+=C2=A0 file://setup_py_skip_cross_import_check.patch \<br>=C2=A0&quot;<br>=
=C2=A0<br>=C2=A0SRC_URI[md5sum] =3D &quot;cf4e6881bb84a7ce6089e4a307f71f14&=
quot;<br>@@ -61,6 +62,8 @@ do_compile() {<br>=C2=A0=C2=A0=C2=A0=C2=A0 # the=
n call do_install twice we get Makefile.orig =3D=3D Makefile.sysroot<br>
=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 Makefile Makefile.sysroot<br>=C2=
=A0<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 export CROSS_COMPILE=3D&=
quot;${TARGET_PREFIX}&quot;<br>+<br>=C2=A0=C2=A0=C2=A0=C2=A0 oe_runmake HOS=
TPGEN=3D${STAGING_BINDIR_NATIVE}/pgen \<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 HOSTPYTHON=3D${STAGING_BINDIR_NATIVE}/python \<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 STAGING_LIBDIR=3D${STAGING_LIBD=
IR} \<br>@@ -82,6 +85,8 @@ do_install() {<br>=C2=A0=C2=A0=C2=A0=C2=A0 # mak=
e install needs the original Makefile, or otherwise the inclues would<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 # go to ${D}${STAGING...}/...<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 install -m 0644 Makefile.orig Makefile<br>
+<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 export CROSS_COMPILE=3D&qu=
ot;${TARGET_PREFIX}&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=
=A0=C2=A0 oe_runmake HOSTPGEN=3D${STAGING_BINDIR_NATIVE}/pgen \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 HOSTPYTHON=3D${STAGING_BINDIR_NATIVE}=
/python \<br><br><br>-- <br>-----------------------------------------------=
------------<br>
Jo=C3=A3o Henrique Freitas - <a href=3D"http://joaohf_at_gmail.com">joaohf_=
at_gmail.com</a><br>Campinas-SP-Brasil<br>BSD051283<br>LPI 1<br><a href=3D"=
http://www.joaohfreitas.eti.br">http://www.joaohfreitas.eti.br</a><br>

--000e0ce03d5eee413004b1935add--
