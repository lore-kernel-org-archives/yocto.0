Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D246E00BF7; Thu,  8 Jun 2017 07:34:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3191E00C2B
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 07:33:54 -0700 (PDT)
X-Halon-ID: 7d143574-4c57-11e7-b75a-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Thu,  8 Jun 2017 16:33:49 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 08 Jun 2017 16:33:49 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAK18fxEz5c5Ez7Jf20qBGhaQFYqC=Q=9gNRXiLFTAUwSiCk1rw@mail.gmail.com>
References: <1496870111-31944-1-git-send-email-petter@technux.se>
	<CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
	<ffceb998c88c266713c0acf1fa633a96@technux.se>
	<CAMKF1srzDzfH7UbWoFOT4eCDfCmzm=8qzRx7mrfZhhYy61sv3w@mail.gmail.com>
	<CAK18fxEz5c5Ez7Jf20qBGhaQFYqC=Q=9gNRXiLFTAUwSiCk1rw@mail.gmail.com>
Message-ID: <81912b53688991e9d8aaaf7ae8c4a7ac@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] pi-blaster: update to include proper rpi3 support
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
X-List-Received-Date: Thu, 08 Jun 2017 14:34:04 -0000
Content-Type: multipart/alternative;
	boundary="=_6d1843649bb8a89a2465da1106e8ee00"

--=_6d1843649bb8a89a2465da1106e8ee00
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2017-06-08 11:53 skrev Andrei Gherzan: 

> On Thu, Jun 8, 2017 at
5:22 AM, Khem Raj <raj.khem@gmail.com> wrote:
> 
>> On Wed, Jun 7, 2017
at 9:09 PM, Petter Mabäcker <petter@technux.se> wrote:
>> > 2017-06-08
00:54 skrev Khem Raj:
>> >
>> >
>> > On Wed, Jun 7, 2017 at 2:17 PM
Petter Mabäcker <petter@technux.se> wrote:
>> >>
>> >> Update to latest
available revision, in order to include proper rpi3
>> >> support as
well as latest fixes.
>> >>
>> >> Signed-off-by: Petter Mabäcker
<petter@technux.se>
>> >> ---
>> >>
.../files/remove-initscript-lsb-dependency.patch | 37
>> >>
++++++++++++++++------
>> >> recipes-devtools/pi-blaster/pi-blaster.inc
| 2 +-
>> >> recipes-devtools/pi-blaster/pi-blaster_git.bb [1] | 2 +-
>>
>> 3 files changed, 30 insertions(+), 11 deletions(-)
>> >>
>> >> diff
--git
>> >>
a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
>>
b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
>> index 7ea9a3b..c8afe60 100644
>> >> ---
>> >>
a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
>> +++
>> >>
b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
>> @@ -1,13 +1,28 @@
>> >> -Remove dependencies on LSB functions
>> >>
+From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00
2001
>> >> +From: =?UTF-8?q?Petter=20Mab=C3=A4cker?=
<petter@technux.se>
>> >> +Date: Sun, 4 Jun 2017 12:22:40 +0200
>> >>
+Subject: [PATCH] Remove dependencies on LSB functions
>> >>
+MIME-Version: 1.0
>> >> +Content-Type: text/plain; charset=UTF-8
>> >>
+Content-Transfer-Encoding: 8bit
>> >> +
>> >> +See this as a rebase of
the previous 'Remove dependencies on LSB
>> >> +functions patch' with
only minor modifications from the original version,
>> >> +based on the
work done by Alex Lennon <ajlennon@dynamicdevices.co.uk> in
>> >>
+'25fd817 pi-blaster: Added recipe'.
>> >>
>> >> Upstream-Status:
Inappropriate [configuration]
>> >>
>> >> -Signed-off-by: Alex Lennon
<ajlennon@dynamicdevices.co.uk>
>> >> +Signed-off-by: Petter Mabäcker
<petter@technux.se>
>> >> +---
>> >> + debian/pi-blaster.init | 38
+++++++-------------------------------
>> >> + 1 file changed, 7
insertions(+), 31 deletions(-)
>> >>
>> >> -diff -ur
git.org/pi-blaster.boot.sh [2] git/pi-blaster.boot.sh [3]
>> >> ----
git.org/pi-blaster.boot.sh [2] 2014-05-20 14:49:44.378582168 +0100
>> >>
-+++ git/pi-blaster.boot.sh [3] 2014-05-20 14:51:08.330582386 +0100
>>
>> -@@ -28,12 +28,12 @@
>> >> +diff --git a/debian/pi-blaster.init
b/debian/pi-blaster.init
>> >> +index b142d70..01a686c 100644
>> >> +---
a/debian/pi-blaster.init
>> >> ++++ b/debian/pi-blaster.init
>> >> +@@
-28,12 +28,12 @@ SCRIPTNAME=/etc/init.d/$NAME
>> >> [ -r
/etc/default/$NAME ] && . /etc/default/$NAME
>> >>
>> >> # Load the
VERBOSE setting and other rcS variables
>> >> @@ -22,7 +37,7 @@ diff -ur
git.org/pi-blaster.boot.sh [2]
>> >> git/pi-blaster.boot.sh [3]
>> >>
>>
>> #
>> >> # Function that starts the daemon/service
>> >> -@@ -77,48
+77,23 @@
>> >> +@@ -77,48 +77,24 @@ do_stop()
>> >>
>> >> case "$1"
in
>> >> start)
>> >> @@ -52,6 +67,7 @@ diff -ur
git.org/pi-blaster.boot.sh [2]
>> >> git/pi-blaster.boot.sh [3]
>> >> #
'force-reload' alias
>> >> #
>> >> - log_daemon_msg "Restarting $DESC"
"$NAME"
>> >> ++ echo "Restarting $DESC" "$NAME"
>> >> do_stop
>> >> -
case "$?" in
>> >> - 0|1)
>> >> @@ -67,11 +83,14 @@ diff -ur
git.org/pi-blaster.boot.sh [2]
>> >> git/pi-blaster.boot.sh [3]
>> >> -
log_end_msg 1
>> >> - ;;
>> >> - esac
>> >> -+ do_start
>> >> ++
do_start
>> >> ;;
>> >> *)
>> >> - echo "Usage: $SCRIPTNAME
{start|stop|status|restart|force-reload}"
>> >> >&2
>> >> -+ echo
"Usage: $SCRIPTNAME {start|stop|restart}" >&2
>> >> ++ echo "Usage:
$SCRIPTNAME {start|stop|restart|force-reload}" >&2
>> >> exit 3
>> >>
;;
>> >> esac
>> >> +--
>> >> +1.9.1
>> >> +
>> >> diff --git
a/recipes-devtools/pi-blaster/pi-blaster.inc
>> >>
b/recipes-devtools/pi-blaster/pi-blaster.inc
>> >> index
a3beccc..a548957 100644
>> >> ---
a/recipes-devtools/pi-blaster/pi-blaster.inc
>> >> +++
b/recipes-devtools/pi-blaster/pi-blaster.inc
>> >> @@ -2,7 +2,7 @@
DESCRIPTION = "This project enables PWM on the GPIO pins
>> >> you
request of a Raspbe
>> >> HOMEPAGE =
"https://github.com/sarfata/pi-blaster/ [4]"
>> >> SECTION =
"devel/libs"
>> >> LICENSE = "MIT"
>> >> -LIC_FILES_CHKSUM =
>> >>
"file://README.md;beginline=157;endline=170;md5=f20832f31126609af5a7bf2340014540"
>>
>> +LIC_FILES_CHKSUM =
>> >>
"file://README.md;beginline=212;endline=239;md5=a012868ef5f83b9f257af253d7cb07a3"
>>
>
>> >
>> > What changed here ?
>> >
>> > The license is added in the
end of the README.md so in this case some
>> > additional description +
modifications earlier in the README.md caused the
>> > license text to
move place. When it comes to the license text I could only
>> > find
changes in whitespace and newlines. They seems to have been caused by
>>
> the pi-blaster commit: '0e1a1df Cleaning up the README'
>> >
>> > BR
Petter
>> >
>> > $ diff -Naur ec5e1b4c.README.md [5] README.md | tail -n
38
>> >
>> 
>> perfect add few lines to the commit message about this
>

> That would be nice.

Agree, I will send a v2 with updated commit msg.


Links:
------
[1] http://pi-blaster_git.bb
[2]
http://git.org/pi-blaster.boot.sh
[3] http://pi-blaster.boot.sh
[4]
https://github.com/sarfata/pi-blaster/
[5] http://ec5e1b4c.README.md

--=_6d1843649bb8a89a2465da1106e8ee00
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2017-06-08 11:53 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr">
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">On Thu, Jun 8, 2017 at 5:22 AM, Khem Raj <span>&=
lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br />
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;">
<div class=3D"HOEnZb">
<div class=3D"h5">On Wed, Jun 7, 2017 at 9:09 PM, Petter Mab&auml;cker &lt;=
<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:<br />=
 &gt; 2017-06-08 00:54 skrev Khem Raj:<br /> &gt;<br /> &gt;<br /> &gt; On =
Wed, Jun 7, 2017 at 2:17 PM Petter Mab&auml;cker &lt;<a href=3D"mailto:pett=
er@technux.se">petter@technux.se</a>&gt; wrote:<br /> &gt;&gt;<br /> &gt;&g=
t; Update to latest available revision, in order to include proper rpi3<br =
/> &gt;&gt; support as well as latest fixes.<br /> &gt;&gt;<br /> &gt;&gt; =
Signed-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;<br /> &gt;&gt; ---<br /> &gt;&gt;&nbsp; .../fil=
es/remove-initscript-lsb-dependency.patch&nbsp; &nbsp;| 37<br /> &gt;&gt; +=
+++++++++++++++------<br /> &gt;&gt;&nbsp; recipes-devtools/pi-blaster/pi-b=
laster.inc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; 2 +-<br /> &gt;&gt;&nbs=
p; recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb">pi-blas=
ter_git.bb</a>&nbsp; &nbsp; &nbsp; |&nbsp; 2 +-<br /> &gt;&gt;&nbsp; 3 file=
s changed, 30 insertions(+), 11 deletions(-)<br /> &gt;&gt;<br /> &gt;&gt; =
diff --git<br /> &gt;&gt; a/recipes-devtools/pi-blaster/files/remove-initsc=
ript-lsb-dependency.patch<br /> &gt;&gt; b/recipes-devtools/pi-blaster/file=
s/remove-initscript-lsb-dependency.patch<br /> &gt;&gt; index 7ea9a3b..c8af=
e60 100644<br /> &gt;&gt; ---<br /> &gt;&gt; a/recipes-devtools/pi-blaster/=
files/remove-initscript-lsb-dependency.patch<br /> &gt;&gt; +++<br /> &gt;&=
gt; b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pa=
tch<br /> &gt;&gt; @@ -1,13 +1,28 @@<br /> &gt;&gt; -Remove dependencies on=
 LSB functions<br /> &gt;&gt; +From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d=
6 Mon Sep 17 00:00:00 2001<br /> &gt;&gt; +From: =3D?UTF-8?q?Petter=3D20Mab=
=3DC3=3DA4cker?=3D &lt;<a href=3D"mailto:petter@technux.se">petter@technux=
=2Ese</a>&gt;<br /> &gt;&gt; +Date: Sun, 4 Jun 2017 12:22:40 +0200<br /> &g=
t;&gt; +Subject: [PATCH] Remove dependencies on LSB functions<br /> &gt;&gt=
; +MIME-Version: 1.0<br /> &gt;&gt; +Content-Type: text/plain; charset=3DUT=
F-8<br /> &gt;&gt; +Content-Transfer-Encoding: 8bit<br /> &gt;&gt; +<br /> =
&gt;&gt; +See this as a rebase of the previous 'Remove dependencies on LSB<=
br /> &gt;&gt; +functions patch' with only minor modifications from the ori=
ginal version,<br /> &gt;&gt; +based on the work done by Alex Lennon &lt;<a=
 href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co=
=2Euk</a>&gt; in<br /> &gt;&gt; +'25fd817 pi-blaster: Added recipe'.<br /> =
&gt;&gt;<br /> &gt;&gt;&nbsp; Upstream-Status: Inappropriate [configuration=
]<br /> &gt;&gt;<br /> &gt;&gt; -Signed-off-by: Alex Lennon &lt;<a href=3D"=
mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;=
<br /> &gt;&gt; +Signed-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:=
petter@technux.se">petter@technux.se</a>&gt;<br /> &gt;&gt; +---<br /> &gt;=
&gt; + debian/pi-blaster.init | 38 +++++++-------------------------------<b=
r /> &gt;&gt; + 1 file changed, 7 insertions(+), 31 deletions(-)<br /> &gt;=
&gt;<br /> &gt;&gt; -diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh"=
>git.org/pi-blaster.boot.sh</a> git/<a href=3D"http://pi-blaster.boot.sh">p=
i-blaster.boot.sh</a><br /> &gt;&gt; ---- <a href=3D"http://git.org/pi-blas=
ter.boot.sh">git.org/pi-blaster.boot.sh</a> 2014-05-20 14:49:44.378582168 +=
0100<br /> &gt;&gt; -+++ git/<a href=3D"http://pi-blaster.boot.sh">pi-blast=
er.boot.sh</a>&nbsp; &nbsp; &nbsp;2014-05-20 14:51:08.330582386 +0100<br />=
 &gt;&gt; -@@ -28,12 +28,12 @@<br /> &gt;&gt; +diff --git a/debian/pi-blast=
er.init b/debian/pi-blaster.init<br /> &gt;&gt; +index b142d70..01a686c 100=
644<br /> &gt;&gt; +--- a/debian/pi-blaster.init<br /> &gt;&gt; ++++ b/debi=
an/pi-blaster.init<br /> &gt;&gt; +@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/in=
it.d/$NAME<br /> &gt;&gt;&nbsp; &nbsp;[ -r /etc/default/$NAME ] &amp;&amp; =
=2E /etc/default/$NAME<br /> &gt;&gt;<br /> &gt;&gt;&nbsp; &nbsp;# Load the=
 VERBOSE setting and other rcS variables<br /> &gt;&gt; @@ -22,7 +37,7 @@ d=
iff -ur <a href=3D"http://git.org/pi-blaster.boot.sh">git.org/pi-blaster.bo=
ot.sh</a><br /> &gt;&gt; git/<a href=3D"http://pi-blaster.boot.sh">pi-blast=
er.boot.sh</a><br /> &gt;&gt;<br /> &gt;&gt;&nbsp; &nbsp;#<br /> &gt;&gt;&n=
bsp; &nbsp;# Function that starts the daemon/service<br /> &gt;&gt; -@@ -77=
,48 +77,23 @@<br /> &gt;&gt; +@@ -77,48 +77,24 @@ do_stop()<br /> &gt;&gt;<=
br /> &gt;&gt;&nbsp; &nbsp;case "$1" in<br /> &gt;&gt;&nbsp; &nbsp; &nbsp;s=
tart)<br /> &gt;&gt; @@ -52,6 +67,7 @@ diff -ur <a href=3D"http://git.org/p=
i-blaster.boot.sh">git.org/pi-blaster.boot.sh</a><br /> &gt;&gt; git/<a hre=
f=3D"http://pi-blaster.boot.sh">pi-blaster.boot.sh</a><br /> &gt;&gt;&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;# 'force-reload' alias<br /> &gt;&gt;&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;#<br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp; log_da=
emon_msg "Restarting $DESC" "$NAME"<br /> &gt;&gt; ++&nbsp; &nbsp; &nbsp; e=
cho "Restarting $DESC" "$NAME"<br /> &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;do_stop<br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp; case "$?" in<br /> &=
gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp; &nbsp; 0|1)<br /> &gt;&gt; @@ -67,11 +8=
3,14 @@ diff -ur <a href=3D"http://git.org/pi-blaster.boot.sh">git.org/pi-b=
laster.boot.sh</a><br /> &gt;&gt; git/<a href=3D"http://pi-blaster.boot.sh"=
>pi-blaster.boot.sh</a><br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; log_end_msg 1<br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; ;;<br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp;=
 esac<br /> &gt;&gt; -+&nbsp; &nbsp; &nbsp; do_start<br /> &gt;&gt; ++&nbsp=
; &nbsp; do_start<br /> &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;;;<br /> =
&gt;&gt;&nbsp; &nbsp; &nbsp;*)<br /> &gt;&gt;&nbsp; -&nbsp; &nbsp; &nbsp; e=
cho "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}"<br /> &gt=
;&gt; &gt;&amp;2<br /> &gt;&gt; -+&nbsp; &nbsp; &nbsp; echo "Usage: $SCRIPT=
NAME {start|stop|restart}" &gt;&amp;2<br /> &gt;&gt; ++&nbsp; &nbsp; &nbsp;=
 echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" &gt;&amp;2<br =
/> &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;exit 3<br /> &gt;&gt;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;;;<br /> &gt;&gt;&nbsp; &nbsp;esac<br /> &gt;&gt; =
+--<br /> &gt;&gt; +1.9.1<br /> &gt;&gt; +<br /> &gt;&gt; diff --git a/reci=
pes-devtools/pi-blaster/pi-blaster.inc<br /> &gt;&gt; b/recipes-devtools/pi=
-blaster/pi-blaster.inc<br /> &gt;&gt; index a3beccc..a548957 100644<br /> =
&gt;&gt; --- a/recipes-devtools/pi-blaster/pi-blaster.inc<br /> &gt;&gt; ++=
+ b/recipes-devtools/pi-blaster/pi-blaster.inc<br /> &gt;&gt; @@ -2,7 +2,7 =
@@ DESCRIPTION =3D "This project enables PWM on the GPIO pins<br /> &gt;&gt=
; you request of a Raspbe<br /> &gt;&gt;&nbsp; HOMEPAGE =3D "<a href=3D"htt=
ps://github.com/sarfata/pi-blaster/">https://github.com/sarfata/pi-blaster/=
</a>"<br /> &gt;&gt;&nbsp; SECTION =3D "devel/libs"<br /> &gt;&gt;&nbsp; LI=
CENSE =3D "MIT"<br /> &gt;&gt; -LIC_FILES_CHKSUM =3D<br /> &gt;&gt; "file:/=
/README.md;beginline=3D157;endline=3D170;md5=3Df20832f31126609af5a7bf234001=
4540"<br /> &gt;&gt; +LIC_FILES_CHKSUM =3D<br /> &gt;&gt; "file://README.md=
;beginline=3D212;endline=3D239;md5=3Da012868ef5f83b9f257af253d7cb07a3"<br /=
> &gt;<br /> &gt;<br /> &gt; What changed here ?<br /> &gt;<br /> &gt; The =
license is added in the end of the README.md so in this case some<br /> &gt=
; additional description + modifications earlier in the README.md caused th=
e<br /> &gt; license text to move place. When it comes to the license text =
I could only<br /> &gt; find changes in whitespace and newlines. They seems=
 to have been caused by<br /> &gt; the pi-blaster commit: '0e1a1df Cleaning=
 up the README'<br /> &gt;<br /> &gt; BR Petter<br /> &gt;<br /> &gt; $ dif=
f -Naur <a href=3D"http://ec5e1b4c.README.md">ec5e1b4c.README.md</a> README=
=2Emd | tail -n 38<br /> &gt;<br /><br /></div>
</div>
perfect add few lines to the commit message about this</blockquote>
<div>&nbsp;</div>
<div>That would be nice.&nbsp;</div>
</div>
</div>
</div>
</blockquote>
<p>Agree, I will send a v2 with updated commit msg.</p>
</body></html>

--=_6d1843649bb8a89a2465da1106e8ee00--
