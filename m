Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7E1FE00BE6; Wed,  7 Jun 2017 15:54:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D343E00B27
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 15:54:42 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id 7so127242978wmo.1
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 15:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=pFKGs18cLJThWIJDWUHNx+HJs4vEs3/AgT4N/jGwM44=;
	b=Mjmva1rEUYbLDq2uT26IHg6rPsa2i/VJ84T0GiytmxNhQhuO3HGNTfZdAgVA36qQuS
	+RZ+1s3Xza3hPGFEcL22phDTcbmyuP/IgyYDPMOxbXiLAwEgqHCMsKPiC/ogytN6Zynd
	J3wkofMn+C2SR6uQyWQ5DRkRKxUT16Notth35o2tn1JGXtobquEJE/MITgk28U7TeqLy
	FmxrhLrlHIkrQtikcjNW05jrnzEizAdmhABTbx6mNoebGzFS/TInLorT1YMFwhoESz5N
	zEdvCAQJv3aADvvgG1kUXMB4mTivh0PSUqBFNfBv5YCe4ciOtg7dJ02v73HvuKVZ3CKx
	m0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pFKGs18cLJThWIJDWUHNx+HJs4vEs3/AgT4N/jGwM44=;
	b=SxXLQN237lgI1mJjdGxqvk2mXBAecKUyDeApoJiwPr31km17oy2+bCVdmlSq4ny1ZV
	6yB4dY8KQRwIrO6hiMAUrzSWPlrGrZv4mhrO1f8+BigVUYG5/SH4wruJ+4ivN74GJjI5
	KAv0oOqn3EibXB+QwoEA3mkhIc98vVDCU3HDJuUkPcOazw9Z4RfzDQnvUBUr6S56hfEt
	pgtjXEugl1aWqIn1IyZNgOxALhaM1hZQ/D6jQ9+QTHorPEhXs7PtHeobKjdib0KSWXSO
	aDM0cDCwx7yp2rp8gOg5qKuR93CJ+kBNUa/tU+IBjxQ7D8rICjlstBY2D0Jry4cBgOUT
	csbA==
X-Gm-Message-State: AODbwcCB6NZaMlWbg9TVpv7LFRNpY2D/zrrsi2+hIJY1ATWUnTGAMWLY
	iyb1nXbgpWtVNXXG4nHSYfrUqgfE8Q==
X-Received: by 10.80.151.37 with SMTP id c34mr17146558edb.30.1496876082043;
	Wed, 07 Jun 2017 15:54:42 -0700 (PDT)
MIME-Version: 1.0
References: <1496870111-31944-1-git-send-email-petter@technux.se>
In-Reply-To: <1496870111-31944-1-git-send-email-petter@technux.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 07 Jun 2017 22:54:31 +0000
Message-ID: <CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>, 
	yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] pi-blaster: update to include proper rpi3 support
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
X-List-Received-Date: Wed, 07 Jun 2017 22:54:44 -0000
Content-Type: multipart/alternative; boundary="f403045c5564249fad0551669f93"

--f403045c5564249fad0551669f93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 7, 2017 at 2:17 PM Petter Mab=C3=A4cker <petter@technux.se> wro=
te:

> Update to latest available revision, in order to include proper rpi3
> support as well as latest fixes.
>
> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
>  .../files/remove-initscript-lsb-dependency.patch   | 37
> ++++++++++++++++------
>  recipes-devtools/pi-blaster/pi-blaster.inc         |  2 +-
>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
>  3 files changed, 30 insertions(+), 11 deletions(-)
>
> diff --git
> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patc=
h
> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patc=
h
> index 7ea9a3b..c8afe60 100644
> ---
> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patc=
h
> +++
> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patc=
h
> @@ -1,13 +1,28 @@
> -Remove dependencies on LSB functions
> +From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se>
> +Date: Sun, 4 Jun 2017 12:22:40 +0200
> +Subject: [PATCH] Remove dependencies on LSB functions
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +See this as a rebase of the previous 'Remove dependencies on LSB
> +functions patch' with only minor modifications from the original version=
,
> +based on the work done by Alex Lennon <ajlennon@dynamicdevices.co.uk> in
> +'25fd817 pi-blaster: Added recipe'.
>
>  Upstream-Status: Inappropriate [configuration]
>
> -Signed-off-by: Alex Lennon <ajlennon@dynamicdevices.co.uk>
> +Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> +---
> + debian/pi-blaster.init | 38 +++++++-------------------------------
> + 1 file changed, 7 insertions(+), 31 deletions(-)
>
> -diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
> ---- git.org/pi-blaster.boot.sh 2014-05-20 14:49:44.378582168 +0100
> -+++ git/pi-blaster.boot.sh     2014-05-20 14:51:08.330582386 +0100
> -@@ -28,12 +28,12 @@
> +diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init
> +index b142d70..01a686c 100644
> +--- a/debian/pi-blaster.init
> ++++ b/debian/pi-blaster.init
> +@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/init.d/$NAME
>   [ -r /etc/default/$NAME ] && . /etc/default/$NAME
>
>   # Load the VERBOSE setting and other rcS variables
> @@ -22,7 +37,7 @@ diff -ur git.org/pi-blaster.boot.sh git/
> pi-blaster.boot.sh
>
>   #
>   # Function that starts the daemon/service
> -@@ -77,48 +77,23 @@
> +@@ -77,48 +77,24 @@ do_stop()
>
>   case "$1" in
>     start)
> @@ -52,6 +67,7 @@ diff -ur git.org/pi-blaster.boot.sh git/
> pi-blaster.boot.sh
>         # 'force-reload' alias
>         #
>  -      log_daemon_msg "Restarting $DESC" "$NAME"
> ++      echo "Restarting $DESC" "$NAME"
>         do_stop
>  -      case "$?" in
>  -        0|1)
> @@ -67,11 +83,14 @@ diff -ur git.org/pi-blaster.boot.sh git/
> pi-blaster.boot.sh
>  -              log_end_msg 1
>  -              ;;
>  -      esac
> -+      do_start
> ++    do_start
>         ;;
>     *)
>  -      echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}=
"
> >&2
> -+      echo "Usage: $SCRIPTNAME {start|stop|restart}" >&2
> ++      echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
>         exit 3
>         ;;
>   esac
> +--
> +1.9.1
> +
> diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc
> b/recipes-devtools/pi-blaster/pi-blaster.inc
> index a3beccc..a548957 100644
> --- a/recipes-devtools/pi-blaster/pi-blaster.inc
> +++ b/recipes-devtools/pi-blaster/pi-blaster.inc
> @@ -2,7 +2,7 @@ DESCRIPTION =3D "This project enables PWM on the GPIO pin=
s
> you request of a Raspbe
>  HOMEPAGE =3D "https://github.com/sarfata/pi-blaster/"
>  SECTION =3D "devel/libs"
>  LICENSE =3D "MIT"
> -LIC_FILES_CHKSUM =3D
> "file://README.md;beginline=3D157;endline=3D170;md5=3Df20832f31126609af5a=
7bf2340014540"
> +LIC_FILES_CHKSUM =3D
> "file://README.md;beginline=3D212;endline=3D239;md5=3Da012868ef5f83b9f257=
af253d7cb07a3"


What changed here ?

>
>
>  SRC_URI =3D "git://github.com/sarfata/pi-blaster \
>             file://remove-initscript-lsb-dependency.patch \
> diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> index 263852b..ac812ab 100644
> --- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> +++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> @@ -1,3 +1,3 @@
>  require pi-blaster.inc
>
> -SRCREV =3D "ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"
> +SRCREV =3D "9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045c5564249fad0551669f93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Wed, Jun 7, 2017 at 2:17 PM Pet=
ter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.se">petter@technux.s=
e</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Update to latest a=
vailable revision, in order to include proper rpi3<br>
support as well as latest fixes.<br>
<br>
Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.se=
" target=3D"_blank">petter@technux.se</a>&gt;<br>
---<br>
=C2=A0.../files/remove-initscript-lsb-dependency.patch=C2=A0 =C2=A0| 37 +++=
+++++++++++++------<br>
=C2=A0recipes-devtools/pi-blaster/pi-blaster.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 2 +-<br>
=C2=A0recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a>=C2=A0 =C2=A0 =C2=A0=
 |=C2=A0 2 +-<br>
=C2=A03 files changed, 30 insertions(+), 11 deletions(-)<br>
<br>
diff --git a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-depend=
ency.patch b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-depend=
ency.patch<br>
index 7ea9a3b..c8afe60 100644<br>
--- a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pa=
tch<br>
+++ b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pa=
tch<br>
@@ -1,13 +1,28 @@<br>
-Remove dependencies on LSB functions<br>
+From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 2001<br>
+From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D &lt;<a href=3D"mailto:p=
etter@technux.se" target=3D"_blank">petter@technux.se</a>&gt;<br>
+Date: Sun, 4 Jun 2017 12:22:40 +0200<br>
+Subject: [PATCH] Remove dependencies on LSB functions<br>
+MIME-Version: 1.0<br>
+Content-Type: text/plain; charset=3DUTF-8<br>
+Content-Transfer-Encoding: 8bit<br>
+<br>
+See this as a rebase of the previous &#39;Remove dependencies on LSB<br>
+functions patch&#39; with only minor modifications from the original versi=
on,<br>
+based on the work done by Alex Lennon &lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt; in=
<br>
+&#39;25fd817 pi-blaster: Added recipe&#39;.<br>
<br>
=C2=A0Upstream-Status: Inappropriate [configuration]<br>
<br>
-Signed-off-by: Alex Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.c=
o.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
+Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.s=
e" target=3D"_blank">petter@technux.se</a>&gt;<br>
+---<br>
+ debian/pi-blaster.init | 38 +++++++-------------------------------<br>
+ 1 file changed, 7 insertions(+), 31 deletions(-)<br>
<br>
-diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh" rel=3D"noreferrer" =
target=3D"_blank">git.org/pi-blaster.boot.sh</a> git/<a href=3D"http://pi-b=
laster.boot.sh" rel=3D"noreferrer" target=3D"_blank">pi-blaster.boot.sh</a>=
<br>
---- <a href=3D"http://git.org/pi-blaster.boot.sh" rel=3D"noreferrer" targe=
t=3D"_blank">git.org/pi-blaster.boot.sh</a> 2014-05-20 14:49:44.378582168 +=
0100<br>
-+++ git/<a href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" target=3D=
"_blank">pi-blaster.boot.sh</a>=C2=A0 =C2=A0 =C2=A02014-05-20 14:51:08.3305=
82386 +0100<br>
-@@ -28,12 +28,12 @@<br>
+diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init<br>
+index b142d70..01a686c 100644<br>
+--- a/debian/pi-blaster.init<br>
++++ b/debian/pi-blaster.init<br>
+@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/init.d/$NAME<br>
=C2=A0 [ -r /etc/default/$NAME ] &amp;&amp; . /etc/default/$NAME<br>
<br>
=C2=A0 # Load the VERBOSE setting and other rcS variables<br>
@@ -22,7 +37,7 @@ diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh" re=
l=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a> git/<a hr=
ef=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" target=3D"_blank">pi-bl=
aster.boot.sh</a><br>
<br>
=C2=A0 #<br>
=C2=A0 # Function that starts the daemon/service<br>
-@@ -77,48 +77,23 @@<br>
+@@ -77,48 +77,24 @@ do_stop()<br>
<br>
=C2=A0 case &quot;$1&quot; in<br>
=C2=A0 =C2=A0 start)<br>
@@ -52,6 +67,7 @@ diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh" re=
l=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a> git/<a hr=
ef=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" target=3D"_blank">pi-bl=
aster.boot.sh</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # &#39;force-reload&#39; alias<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 log_daemon_msg &quot;Restarting $DESC&quot; &qu=
ot;$NAME&quot;<br>
++=C2=A0 =C2=A0 =C2=A0 echo &quot;Restarting $DESC&quot; &quot;$NAME&quot;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_stop<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 case &quot;$?&quot; in<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 0|1)<br>
@@ -67,11 +83,14 @@ diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh" =
rel=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a> git/<a =
href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" target=3D"_blank">pi-=
blaster.boot.sh</a><br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_end_msg 1<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 esac<br>
-+=C2=A0 =C2=A0 =C2=A0 do_start<br>
++=C2=A0 =C2=A0 do_start<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
=C2=A0 =C2=A0 *)<br>
=C2=A0-=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|stop|statu=
s|restart|force-reload}&quot; &gt;&amp;2<br>
-+=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|stop|restart}&q=
uot; &gt;&amp;2<br>
++=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|stop|restart|fo=
rce-reload}&quot; &gt;&amp;2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 exit 3<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
=C2=A0 esac<br>
+--<br>
+1.9.1<br>
+<br>
diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/=
pi-blaster/pi-blaster.inc<br>
index a3beccc..a548957 100644<br>
--- a/recipes-devtools/pi-blaster/pi-blaster.inc<br>
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc<br>
@@ -2,7 +2,7 @@ DESCRIPTION =3D &quot;This project enables PWM on the GPIO =
pins you request of a Raspbe<br>
=C2=A0HOMEPAGE =3D &quot;<a href=3D"https://github.com/sarfata/pi-blaster/"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/sarfata/pi-blaster=
/</a>&quot;<br>
=C2=A0SECTION =3D &quot;devel/libs&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://README.md;beginline=3D157;endline=3D170;=
md5=3Df20832f31126609af5a7bf2340014540&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://README.md;beginline=3D212;endline=3D239;=
md5=3Da012868ef5f83b9f257af253d7cb07a3&quot;</blockquote><div><br></div><di=
v>What changed here ?</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/sarfata/pi-blast=
er" rel=3D"noreferrer" target=3D"_blank">github.com/sarfata/pi-blaster</a> =
\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://remove-initscript-lsb-depe=
ndency.patch \<br>
diff --git a/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.b=
b" rel=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a> b/recipes-dev=
tools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">pi-blaster_git.bb</a><br>
index 263852b..ac812ab 100644<br>
--- a/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a><br>
+++ b/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a><br>
@@ -1,3 +1,3 @@<br>
=C2=A0require pi-blaster.inc<br>
<br>
-SRCREV =3D &quot;ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016&quot;<br>
+SRCREV =3D &quot;9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c&quot;<br>
--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f403045c5564249fad0551669f93--
