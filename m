Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76CAAE006B5; Sun, 22 Feb 2015 13:21:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-02.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4F10E003AB
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 13:21:04 -0800 (PST)
X-Halon-ID: b0e92622-bad8-11e4-891e-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 22:20:57 +0100 (CET)
MIME-Version: 1.0
Date: Sun, 22 Feb 2015 22:20:57 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1407931139-4286-1-git-send-email-sujith.h@gmail.com>
References: <1407931139-4286-1-git-send-email-sujith.h@gmail.com>
Message-ID: <b94b4f53e118cc42e827d035d2640560@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [psplash][PATCH] Adding support for systemd and its service files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 22 Feb 2015 21:21:09 -0000
Content-Type: multipart/alternative;
	boundary="=_ab4b607e9ac22e513c0b49b66a939647"

--=_ab4b607e9ac22e513c0b49b66a939647
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

Anyone who knows what happened with this change? Any problem
detected? I was looking into adding support for systemd in psplash and
found this old changeset that is not included in the psplash repo yet.


BR, Petter 

2014-08-13 13:58 skrev Sujith H: 

> From: Sujith H
<Sujith_Haridasan@mentor.com>
> 
> Signed-off-by: Muzaffar Mahmood
<muzaffar_mahmood@mentor.com>
> Signed-off-by: Sujith H
<sujith.h@gmail.com>
> ---
> Makefile.am | 8 +++++++-
> configure.ac |
23 ++++++++++++++++++++++-
> psplash-quit.service.in | 11 +++++++++++
>
psplash-start.service.in | 11 +++++++++++
> 4 files changed, 51
insertions(+), 2 deletions(-)
> create mode 100644
psplash-quit.service.in
> create mode 100644 psplash-start.service.in
>

> diff --git a/Makefile.am b/Makefile.am
> index c90ebfa..786b3ce
100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -11,8 +11,14 @@
psplash_write_SOURCES = psplash-write.c psplash.h
> 
> EXTRA_DIST =
make-image-header.sh
> 
> -MAINTAINERCLEANFILES = aclocal.m4 compile
config.guess config.sub configure depcomp install-sh ltmain.sh
Makefile.in missing
> +MAINTAINERCLEANFILES = aclocal.m4 compile
config.guess config.sub configure depcomp install-sh ltmain.sh
Makefile.in missing psplash-quit.service psplash-start.service
> 
>
snapshot:
> $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
> 
>
+if SYSTEMD
> +systemdunitdir = @SYSTEMD_UNITDIR@
> +
>
+systemdunit_DATA = psplash-quit.service psplash-start.service
>
+endif
> +
> diff --git a/configure.ac b/configure.ac
> index
1284833..a44c8d4 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@
-15,6 +15,27 @@ fi
> 
> AC_SUBST(GCC_FLAGS)
> 
> +# Check for pkg-config
manually first, as if its not installed the
> +# PKG_PROG_PKG_CONFIG
macro won't be defined.
> +AC_CHECK_PROG(have_pkg_config, pkg-config,
yes, no)
> +
> +if test x"$have_pkg_config" = "xno"; then
> +
AC_MSG_ERROR(pkg-config is required to install this program)
> +fi
> +
>
+#
> +# systemd
> +#
> +AC_ARG_WITH([systemdunitdir],
AC_HELP_STRING([--with-systemdunitdir=DIR],
> + [path to systemd service
directory]), [path_systemdunit=${withval}],
> +
[path_systemdunit="`$PKG_CONFIG --variable=systemdsystemunitdir
systemd`"])
> +if (test -n "${path_systemdunit}"); then
> +
SYSTEMD_UNITDIR="${path_systemdunit}"
> + AC_SUBST(SYSTEMD_UNITDIR)
>
+fi
> +AM_CONDITIONAL(SYSTEMD, test -n "${path_systemdunit}")
> +
>
AC_OUTPUT([
> -Makefile
> +Makefile psplash-quit.service
psplash-start.service
> ])
> +
> diff --git a/psplash-quit.service.in
b/psplash-quit.service.in
> new file mode 100644
> index
0000000..14bd499
> --- /dev/null
> +++ b/psplash-quit.service.in
> @@
-0,0 +1,11 @@
> +[Unit]
> +Description=Terminate Psplash Boot Screen
>
+After=psplash-start.service
> +
> +[Service]
> +Type=oneshot
>
+ExecStart=/usr/bin/psplash-write QUIT
> +TimeoutSec=20
> +
>
+[Install]
> +WantedBy=multi-user.target
> diff --git
a/psplash-start.service.in b/psplash-start.service.in
> new file mode
100644
> index 0000000..502b150
> --- /dev/null
> +++
b/psplash-start.service.in
> @@ -0,0 +1,11 @@
> +[Unit]
>
+Description=Starts Psplash Boot screen
>
+Wants=systemd-vconsole-setup.service
>
+After=systemd-vconsole-setup.service systemd-udev-trigger.service
systemd-udevd.service
> +DefaultDependencies=no
> +
> +[Service]
>
+ExecStart=/usr/bin/psplash
> +
> +[Install]
>
+WantedBy=sysinit.target
> -- 
> 1.8.4
 

--=_ab4b607e9ac22e513c0b49b66a939647
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Anyone who knows what happened with this change? Any problem detected? I=
 was looking into adding support for systemd in psplash and found this old =
changeset that is not included in the psplash repo yet.</p>
<p>BR, Petter</p>
<p><br />2014-08-13 13:58 skrev Sujith H:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">Suji=
th_Haridasan@mentor.com</a>&gt;

Signed-off-by: Muzaffar Mahmood &lt;<a href=3D"mailto:muzaffar_mahmood@ment=
or.com">muzaffar_mahmood@mentor.com</a>&gt;
Signed-off-by: Sujith H &lt;<a href=3D"mailto:sujith.h@gmail.com">sujith.h@=
gmail.com</a>&gt;
---
 Makefile.am              |  8 +++++++-
 configure.ac             | 23 ++++++++++++++++++++++-
 psplash-quit.service.in  | 11 +++++++++++
 psplash-start.service.in | 11 +++++++++++
 4 files changed, 51 insertions(+), 2 deletions(-)
 create mode 100644 psplash-quit.service.in
 create mode 100644 psplash-start.service.in

diff --git a/Makefile.am b/Makefile.am
index c90ebfa..786b3ce 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -11,8 +11,14 @@ psplash_write_SOURCES =3D psplash-write.c psplash.h
=20
 EXTRA_DIST =3D make-image-header.sh
 =20
-MAINTAINERCLEANFILES =3D aclocal.m4 compile config.guess config.sub config=
ure depcomp install-sh ltmain.sh Makefile.in missing
+MAINTAINERCLEANFILES =3D aclocal.m4 compile config.guess config.sub config=
ure depcomp install-sh ltmain.sh Makefile.in missing psplash-quit.service  =
psplash-start.service
=20
 snapshot:
 	$(MAKE) dist distdir=3D$(PACKAGE)-snap`date +"%Y%m%d"`
=20
+if SYSTEMD
+systemdunitdir =3D @SYSTEMD_UNITDIR@
+
+systemdunit_DATA =3D psplash-quit.service  psplash-start.service
+endif
+
diff --git a/configure.ac b/configure.ac
index 1284833..a44c8d4 100644
--- a/configure.ac
+++ b/configure.ac
@@ -15,6 +15,27 @@ fi
=20
 AC_SUBST(GCC_FLAGS)
=20
+# Check for pkg-config manually first, as if its not installed the
+# PKG_PROG_PKG_CONFIG macro won't be defined.
+AC_CHECK_PROG(have_pkg_config, pkg-config, yes, no)
+
+if test x"$have_pkg_config" =3D "xno"; then
+    AC_MSG_ERROR(pkg-config is required to install this program)
+fi
+
+#
+# systemd
+#
+AC_ARG_WITH([systemdunitdir], AC_HELP_STRING([--with-systemdunitdir=3DDIR]=
,
+        [path to systemd service directory]), [path_systemdunit=3D${withva=
l}],
+                [path_systemdunit=3D"`$PKG_CONFIG --variable=3Dsystemdsyst=
emunitdir systemd`"])
+if (test -n "${path_systemdunit}"); then
+        SYSTEMD_UNITDIR=3D"${path_systemdunit}"
+        AC_SUBST(SYSTEMD_UNITDIR)
+fi
+AM_CONDITIONAL(SYSTEMD, test -n "${path_systemdunit}")
+
 AC_OUTPUT([
-Makefile
+Makefile psplash-quit.service  psplash-start.service
 ])
+
diff --git a/psplash-quit.service.in b/psplash-quit.service.in
new file mode 100644
index 0000000..14bd499
--- /dev/null
+++ b/psplash-quit.service.in
@@ -0,0 +1,11 @@
+[Unit]
+Description=3DTerminate Psplash Boot Screen
+After=3Dpsplash-start.service
+
+[Service]
+Type=3Doneshot
+ExecStart=3D/usr/bin/psplash-write QUIT
+TimeoutSec=3D20
+
+[Install]
+WantedBy=3Dmulti-user.target
diff --git a/psplash-start.service.in b/psplash-start.service.in
new file mode 100644
index 0000000..502b150
--- /dev/null
+++ b/psplash-start.service.in
@@ -0,0 +1,11 @@
+[Unit]
+Description=3DStarts Psplash Boot screen
+Wants=3Dsystemd-vconsole-setup.service
+After=3Dsystemd-vconsole-setup.service systemd-udev-trigger.service system=
d-udevd.service
+DefaultDependencies=3Dno
+
+[Service]
+ExecStart=3D/usr/bin/psplash
+
+[Install]
+WantedBy=3Dsysinit.target
<span class=3D"sig">--=20
1.8.4
</span></pre>
</blockquote>
</body></html>

--=_ab4b607e9ac22e513c0b49b66a939647--
