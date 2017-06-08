Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 661DBE00BD2; Thu,  8 Jun 2017 02:54:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAF7E00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 02:54:24 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id i93so3034521iod.3
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 02:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+AlAWJbWE59ZSKWW5/XTnq4sIwe2hi7XcadIPN13OQQ=;
	b=Nt4ut2cUXIXdP2CnTIZ6JDrRymN7T2691ofeKr2SzNDnDtX/3pmzTVuqpDbiPYkbNv
	VAzlP617D2/4u4N9zaoC6RmMqtmnjeW2+RSrJ3Ylin16cUDLtoB7tDrzs82DHTLuzZ3K
	gAUmJiEZ/JOs/qqXbSiJzCDL52DE7jRe7sQKPSB90tgiaN5bf5csfZOoSLWB6gpB5Jlo
	gA9EBzOQPT1LHrdWbz5z3adHh1YDJH15lOeFP3MDl2BGppljHOwPL6txTd7aKLqXOKxG
	VlTvlEQ69F7VDLw0a6OJjN+/NA/i6qJvCnUJHHpf8HANLatYt47RKPgssccbBhrHbiOF
	V6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+AlAWJbWE59ZSKWW5/XTnq4sIwe2hi7XcadIPN13OQQ=;
	b=SJfH5WMsqadeiMXyRKcEdLBj/0qFQuus/ezkvT23qiTLKB0Km7HOv/kmjFqzE2mJk7
	2PcRqxToTpX4jjUZXZI5NTmZz0mHKlhU7fHicirA66kH45rf1j7FxvHUjSiEPJslzx2q
	sDy90od8bgMTRyODJjrZoalA+MAl/6b9+l84MNd7/l/J6F3snA8EN8JvP9/0PeaUSclV
	c6cKb6Bu0iKCBy4xrp2u6toLkw6qMNsWnAuxbRx32pmNuqSwIg+tihR/b8cGC+Urr0YG
	pxRAgfu8etvLxCpughV/gE10L6lH+Tk/DWjWE4WuSoNwtkZeB2BKuFTPcahrhJioCXUa
	ioEw==
X-Gm-Message-State: AODbwcBj6tnS6rRM8JeXzK2xbksiD8vQkf0sQG/eLDvIdZOHS3XyShS3
	aemUi/1j2C1Az6rz2dSEguSgNx2WHBzH5kk=
X-Received: by 10.107.134.197 with SMTP id q66mr30724964ioi.127.1496915663486; 
	Thu, 08 Jun 2017 02:54:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.33.129 with HTTP; Thu, 8 Jun 2017 02:53:42 -0700 (PDT)
X-Originating-IP: [86.186.204.183]
In-Reply-To: <CAMKF1srzDzfH7UbWoFOT4eCDfCmzm=8qzRx7mrfZhhYy61sv3w@mail.gmail.com>
References: <1496870111-31944-1-git-send-email-petter@technux.se>
	<CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
	<ffceb998c88c266713c0acf1fa633a96@technux.se>
	<CAMKF1srzDzfH7UbWoFOT4eCDfCmzm=8qzRx7mrfZhhYy61sv3w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 8 Jun 2017 10:53:42 +0100
Message-ID: <CAK18fxEz5c5Ez7Jf20qBGhaQFYqC=Q=9gNRXiLFTAUwSiCk1rw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 08 Jun 2017 09:54:28 -0000
Content-Type: multipart/alternative; boundary="001a113f8ffe6197a805516fd615"

--001a113f8ffe6197a805516fd615
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 8, 2017 at 5:22 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jun 7, 2017 at 9:09 PM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
> > 2017-06-08 00:54 skrev Khem Raj:
> >
> >
> > On Wed, Jun 7, 2017 at 2:17 PM Petter Mab=C3=A4cker <petter@technux.se>
> wrote:
> >>
> >> Update to latest available revision, in order to include proper rpi3
> >> support as well as latest fixes.
> >>
> >> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> >> ---
> >>  .../files/remove-initscript-lsb-dependency.patch   | 37
> >> ++++++++++++++++------
> >>  recipes-devtools/pi-blaster/pi-blaster.inc         |  2 +-
> >>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
> >>  3 files changed, 30 insertions(+), 11 deletions(-)
> >>
> >> diff --git
> >> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-
> dependency.patch
> >> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-
> dependency.patch
> >> index 7ea9a3b..c8afe60 100644
> >> ---
> >> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-
> dependency.patch
> >> +++
> >> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-
> dependency.patch
> >> @@ -1,13 +1,28 @@
> >> -Remove dependencies on LSB functions
> >> +From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 200=
1
> >> +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se=
>
> >> +Date: Sun, 4 Jun 2017 12:22:40 +0200
> >> +Subject: [PATCH] Remove dependencies on LSB functions
> >> +MIME-Version: 1.0
> >> +Content-Type: text/plain; charset=3DUTF-8
> >> +Content-Transfer-Encoding: 8bit
> >> +
> >> +See this as a rebase of the previous 'Remove dependencies on LSB
> >> +functions patch' with only minor modifications from the original
> version,
> >> +based on the work done by Alex Lennon <ajlennon@dynamicdevices.co.uk>
> in
> >> +'25fd817 pi-blaster: Added recipe'.
> >>
> >>  Upstream-Status: Inappropriate [configuration]
> >>
> >> -Signed-off-by: Alex Lennon <ajlennon@dynamicdevices.co.uk>
> >> +Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> >> +---
> >> + debian/pi-blaster.init | 38 +++++++-------------------------------
> >> + 1 file changed, 7 insertions(+), 31 deletions(-)
> >>
> >> -diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
> >> ---- git.org/pi-blaster.boot.sh 2014-05-20 14:49:44.378582168 +0100
> >> -+++ git/pi-blaster.boot.sh     2014-05-20 14:51:08.330582386 +0100
> >> -@@ -28,12 +28,12 @@
> >> +diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init
> >> +index b142d70..01a686c 100644
> >> +--- a/debian/pi-blaster.init
> >> ++++ b/debian/pi-blaster.init
> >> +@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/init.d/$NAME
> >>   [ -r /etc/default/$NAME ] && . /etc/default/$NAME
> >>
> >>   # Load the VERBOSE setting and other rcS variables
> >> @@ -22,7 +37,7 @@ diff -ur git.org/pi-blaster.boot.sh
> >> git/pi-blaster.boot.sh
> >>
> >>   #
> >>   # Function that starts the daemon/service
> >> -@@ -77,48 +77,23 @@
> >> +@@ -77,48 +77,24 @@ do_stop()
> >>
> >>   case "$1" in
> >>     start)
> >> @@ -52,6 +67,7 @@ diff -ur git.org/pi-blaster.boot.sh
> >> git/pi-blaster.boot.sh
> >>         # 'force-reload' alias
> >>         #
> >>  -      log_daemon_msg "Restarting $DESC" "$NAME"
> >> ++      echo "Restarting $DESC" "$NAME"
> >>         do_stop
> >>  -      case "$?" in
> >>  -        0|1)
> >> @@ -67,11 +83,14 @@ diff -ur git.org/pi-blaster.boot.sh
> >> git/pi-blaster.boot.sh
> >>  -              log_end_msg 1
> >>  -              ;;
> >>  -      esac
> >> -+      do_start
> >> ++    do_start
> >>         ;;
> >>     *)
> >>  -      echo "Usage: $SCRIPTNAME {start|stop|status|restart|
> force-reload}"
> >> >&2
> >> -+      echo "Usage: $SCRIPTNAME {start|stop|restart}" >&2
> >> ++      echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&=
2
> >>         exit 3
> >>         ;;
> >>   esac
> >> +--
> >> +1.9.1
> >> +
> >> diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc
> >> b/recipes-devtools/pi-blaster/pi-blaster.inc
> >> index a3beccc..a548957 100644
> >> --- a/recipes-devtools/pi-blaster/pi-blaster.inc
> >> +++ b/recipes-devtools/pi-blaster/pi-blaster.inc
> >> @@ -2,7 +2,7 @@ DESCRIPTION =3D "This project enables PWM on the GPIO =
pins
> >> you request of a Raspbe
> >>  HOMEPAGE =3D "https://github.com/sarfata/pi-blaster/"
> >>  SECTION =3D "devel/libs"
> >>  LICENSE =3D "MIT"
> >> -LIC_FILES_CHKSUM =3D
> >> "file://README.md;beginline=3D157;endline=3D170;md5=3D
> f20832f31126609af5a7bf2340014540"
> >> +LIC_FILES_CHKSUM =3D
> >> "file://README.md;beginline=3D212;endline=3D239;md5=3D
> a012868ef5f83b9f257af253d7cb07a3"
> >
> >
> > What changed here ?
> >
> > The license is added in the end of the README.md so in this case some
> > additional description + modifications earlier in the README.md caused
> the
> > license text to move place. When it comes to the license text I could
> only
> > find changes in whitespace and newlines. They seems to have been caused
> by
> > the pi-blaster commit: '0e1a1df Cleaning up the README'
> >
> > BR Petter
> >
> > $ diff -Naur ec5e1b4c.README.md README.md | tail -n 38
> >
>
> perfect add few lines to the commit message about this


That would be nice.

--001a113f8ffe6197a805516fd615
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jun 8, 2017 at 5:22 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D=
"h5">On Wed, Jun 7, 2017 at 9:09 PM, Petter Mab=C3=A4cker &lt;<a href=3D"ma=
ilto:petter@technux.se">petter@technux.se</a>&gt; wrote:<br>
&gt; 2017-06-08 00:54 skrev Khem Raj:<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jun 7, 2017 at 2:17 PM Petter Mab=C3=A4cker &lt;<a href=3D"mai=
lto:petter@technux.se">petter@technux.se</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Update to latest available revision, in order to include proper rp=
i3<br>
&gt;&gt; support as well as latest fixes.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@t=
echnux.se">petter@technux.se</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 .../files/remove-initscript-<wbr>lsb-dependency.patch=C2=A0 =
=C2=A0| 37<br>
&gt;&gt; ++++++++++++++++------<br>
&gt;&gt;=C2=A0 recipes-devtools/pi-blaster/<wbr>pi-blaster.inc=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;&gt;=C2=A0 recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git=
.bb" rel=3D"noreferrer" target=3D"_blank">pi<wbr>-blaster_git.bb</a>=C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;&gt;=C2=A0 3 files changed, 30 insertions(+), 11 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git<br>
&gt;&gt; a/recipes-devtools/pi-blaster/<wbr>files/remove-initscript-lsb-<wb=
r>dependency.patch<br>
&gt;&gt; b/recipes-devtools/pi-blaster/<wbr>files/remove-initscript-lsb-<wb=
r>dependency.patch<br>
&gt;&gt; index 7ea9a3b..c8afe60 100644<br>
&gt;&gt; ---<br>
&gt;&gt; a/recipes-devtools/pi-blaster/<wbr>files/remove-initscript-lsb-<wb=
r>dependency.patch<br>
&gt;&gt; +++<br>
&gt;&gt; b/recipes-devtools/pi-blaster/<wbr>files/remove-initscript-lsb-<wb=
r>dependency.patch<br>
&gt;&gt; @@ -1,13 +1,28 @@<br>
&gt;&gt; -Remove dependencies on LSB functions<br>
&gt;&gt; +From 1338f98a279616f4e5e9ea30a25d1d<wbr>fa0c7df5d6 Mon Sep 17 00:=
00:00 2001<br>
&gt;&gt; +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3D<wbr>A4cker?=3D &lt;<a hr=
ef=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;<br>
&gt;&gt; +Date: Sun, 4 Jun 2017 12:22:40 +0200<br>
&gt;&gt; +Subject: [PATCH] Remove dependencies on LSB functions<br>
&gt;&gt; +MIME-Version: 1.0<br>
&gt;&gt; +Content-Type: text/plain; charset=3DUTF-8<br>
&gt;&gt; +Content-Transfer-Encoding: 8bit<br>
&gt;&gt; +<br>
&gt;&gt; +See this as a rebase of the previous &#39;Remove dependencies on =
LSB<br>
&gt;&gt; +functions patch&#39; with only minor modifications from the origi=
nal version,<br>
&gt;&gt; +based on the work done by Alex Lennon &lt;<a href=3D"mailto:ajlen=
non@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a><wbr>&gt; in<br>
&gt;&gt; +&#39;25fd817 pi-blaster: Added recipe&#39;.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 Upstream-Status: Inappropriate [configuration]<br>
&gt;&gt;<br>
&gt;&gt; -Signed-off-by: Alex Lennon &lt;<a href=3D"mailto:ajlennon@dynamic=
devices.co.uk">ajlennon@dynamicdevices.co.uk</a><wbr>&gt;<br>
&gt;&gt; +Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@=
technux.se">petter@technux.se</a>&gt;<br>
&gt;&gt; +---<br>
&gt;&gt; + debian/pi-blaster.init | 38 +++++++-----------------------<wbr>-=
-------<br>
&gt;&gt; + 1 file changed, 7 insertions(+), 31 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; -diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh" rel=3D"nor=
eferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a> git/<a href=3D"ht=
tp://pi-blaster.boot.sh" rel=3D"noreferrer" target=3D"_blank">pi-blaster.bo=
ot.sh</a><br>
&gt;&gt; ---- <a href=3D"http://git.org/pi-blaster.boot.sh" rel=3D"noreferr=
er" target=3D"_blank">git.org/pi-blaster.boot.sh</a> 2014-05-20 14:49:44.37=
8582168 +0100<br>
&gt;&gt; -+++ git/<a href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" =
target=3D"_blank">pi-blaster.boot.sh</a>=C2=A0 =C2=A0 =C2=A02014-05-20 14:5=
1:08.330582386 +0100<br>
&gt;&gt; -@@ -28,12 +28,12 @@<br>
&gt;&gt; +diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init<br>
&gt;&gt; +index b142d70..01a686c 100644<br>
&gt;&gt; +--- a/debian/pi-blaster.init<br>
&gt;&gt; ++++ b/debian/pi-blaster.init<br>
&gt;&gt; +@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/init.d/$NAME<br>
&gt;&gt;=C2=A0 =C2=A0[ -r /etc/default/$NAME ] &amp;&amp; . /etc/default/$N=
AME<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0# Load the VERBOSE setting and other rcS variables<br>
&gt;&gt; @@ -22,7 +37,7 @@ diff -ur <a href=3D"http://git.org/pi-blaster.bo=
ot.sh" rel=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a><=
br>
&gt;&gt; git/<a href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" targe=
t=3D"_blank">pi-blaster.boot.sh</a><br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0#<br>
&gt;&gt;=C2=A0 =C2=A0# Function that starts the daemon/service<br>
&gt;&gt; -@@ -77,48 +77,23 @@<br>
&gt;&gt; +@@ -77,48 +77,24 @@ do_stop()<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0case &quot;$1&quot; in<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0start)<br>
&gt;&gt; @@ -52,6 +67,7 @@ diff -ur <a href=3D"http://git.org/pi-blaster.bo=
ot.sh" rel=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a><=
br>
&gt;&gt; git/<a href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" targe=
t=3D"_blank">pi-blaster.boot.sh</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# &#39;force-reload&#39; alias<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 log_daemon_msg &quot;Restarting $DESC&=
quot; &quot;$NAME&quot;<br>
&gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 echo &quot;Restarting $DESC&quot; &quot;$NA=
ME&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_stop<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 case &quot;$?&quot; in<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 0|1)<br>
&gt;&gt; @@ -67,11 +83,14 @@ diff -ur <a href=3D"http://git.org/pi-blaster.=
boot.sh" rel=3D"noreferrer" target=3D"_blank">git.org/pi-blaster.boot.sh</a=
><br>
&gt;&gt; git/<a href=3D"http://pi-blaster.boot.sh" rel=3D"noreferrer" targe=
t=3D"_blank">pi-blaster.boot.sh</a><br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_end_ms=
g 1<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 esac<br>
&gt;&gt; -+=C2=A0 =C2=A0 =C2=A0 do_start<br>
&gt;&gt; ++=C2=A0 =C2=A0 do_start<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0*)<br>
&gt;&gt;=C2=A0 -=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|s=
top|status|restart|<wbr>force-reload}&quot;<br>
&gt;&gt; &gt;&amp;2<br>
&gt;&gt; -+=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|stop|r=
estart}&quot; &gt;&amp;2<br>
&gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: $SCRIPTNAME {start|stop|r=
estart|force-<wbr>reload}&quot; &gt;&amp;2<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit 3<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt;&gt;=C2=A0 =C2=A0esac<br>
&gt;&gt; +--<br>
&gt;&gt; +1.9.1<br>
&gt;&gt; +<br>
&gt;&gt; diff --git a/recipes-devtools/pi-blaster/<wbr>pi-blaster.inc<br>
&gt;&gt; b/recipes-devtools/pi-blaster/<wbr>pi-blaster.inc<br>
&gt;&gt; index a3beccc..a548957 100644<br>
&gt;&gt; --- a/recipes-devtools/pi-blaster/<wbr>pi-blaster.inc<br>
&gt;&gt; +++ b/recipes-devtools/pi-blaster/<wbr>pi-blaster.inc<br>
&gt;&gt; @@ -2,7 +2,7 @@ DESCRIPTION =3D &quot;This project enables PWM on =
the GPIO pins<br>
&gt;&gt; you request of a Raspbe<br>
&gt;&gt;=C2=A0 HOMEPAGE =3D &quot;<a href=3D"https://github.com/sarfata/pi-=
blaster/" rel=3D"noreferrer" target=3D"_blank">https://github.com/sarfata/<=
wbr>pi-blaster/</a>&quot;<br>
&gt;&gt;=C2=A0 SECTION =3D &quot;devel/libs&quot;<br>
&gt;&gt;=C2=A0 LICENSE =3D &quot;MIT&quot;<br>
&gt;&gt; -LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &quot;file://README.md;beginline=3D<wbr>157;endline=3D170;md5=3D<w=
br>f20832f31126609af5a7bf23400145<wbr>40&quot;<br>
&gt;&gt; +LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &quot;file://README.md;beginline=3D<wbr>212;endline=3D239;md5=3D<w=
br>a012868ef5f83b9f257af253d7cb07<wbr>a3&quot;<br>
&gt;<br>
&gt;<br>
&gt; What changed here ?<br>
&gt;<br>
&gt; The license is added in the end of the README.md so in this case some<=
br>
&gt; additional description + modifications earlier in the README.md caused=
 the<br>
&gt; license text to move place. When it comes to the license text I could =
only<br>
&gt; find changes in whitespace and newlines. They seems to have been cause=
d by<br>
&gt; the pi-blaster commit: &#39;0e1a1df Cleaning up the README&#39;<br>
&gt;<br>
&gt; BR Petter<br>
&gt;<br>
&gt; $ diff -Naur <a href=3D"http://ec5e1b4c.README.md" rel=3D"noreferrer" =
target=3D"_blank">ec5e1b4c.README.md</a> README.md | tail -n 38<br>
&gt;<br>
<br>
</div></div>perfect add few lines to the commit message about this</blockqu=
ote><div><br></div><div>That would be nice.=C2=A0</div></div></div></div>

--001a113f8ffe6197a805516fd615--
