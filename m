Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0240AE00BD2; Wed,  7 Jun 2017 21:09:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F4CE00B3D
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 21:09:28 -0700 (PDT)
X-Halon-ID: 41535270-4c00-11e7-b75a-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Thu,  8 Jun 2017 06:09:23 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 08 Jun 2017 06:09:47 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Khem Raj <raj.khem@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
References: <1496870111-31944-1-git-send-email-petter@technux.se>
	<CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
Message-ID: <ffceb998c88c266713c0acf1fa633a96@technux.se>
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
X-List-Received-Date: Thu, 08 Jun 2017 04:09:33 -0000
Content-Type: multipart/alternative;
	boundary="=_9ec10f1b322c811adf57db4f00e719be"

--=_9ec10f1b322c811adf57db4f00e719be
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2017-06-08 00:54 skrev Khem Raj: 

> On Wed, Jun 7, 2017 at 2:17 PM
Petter Mabäcker <petter@technux.se> wrote: 
> 
>> Update to latest
available revision, in order to include proper rpi3
>> support as well
as latest fixes.
>> 
>> Signed-off-by: Petter Mabäcker
<petter@technux.se>
>> ---
>>
.../files/remove-initscript-lsb-dependency.patch | 37
++++++++++++++++------
>> recipes-devtools/pi-blaster/pi-blaster.inc | 2
+-
>> recipes-devtools/pi-blaster/pi-blaster_git.bb [1] | 2 +-
>> 3
files changed, 30 insertions(+), 11 deletions(-)
>> 
>> diff --git
a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
index 7ea9a3b..c8afe60 100644
>> ---
a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
+++
b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
>>
@@ -1,13 +1,28 @@
>> -Remove dependencies on LSB functions
>> +From
1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 2001
>>
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
>> +Date:
Sun, 4 Jun 2017 12:22:40 +0200
>> +Subject: [PATCH] Remove dependencies
on LSB functions
>> +MIME-Version: 1.0
>> +Content-Type: text/plain;
charset=UTF-8
>> +Content-Transfer-Encoding: 8bit
>> +
>> +See this as a
rebase of the previous 'Remove dependencies on LSB
>> +functions patch'
with only minor modifications from the original version,
>> +based on
the work done by Alex Lennon <ajlennon@dynamicdevices.co.uk> in
>>
+'25fd817 pi-blaster: Added recipe'.
>> 
>> Upstream-Status:
Inappropriate [configuration]
>> 
>> -Signed-off-by: Alex Lennon
<ajlennon@dynamicdevices.co.uk>
>> +Signed-off-by: Petter Mabäcker
<petter@technux.se>
>> +---
>> + debian/pi-blaster.init | 38
+++++++-------------------------------
>> + 1 file changed, 7
insertions(+), 31 deletions(-)
>> 
>> -diff -ur
git.org/pi-blaster.boot.sh [2] git/pi-blaster.boot.sh [3]
>> ----
git.org/pi-blaster.boot.sh [2] 2014-05-20 14:49:44.378582168 +0100
>>
-+++ git/pi-blaster.boot.sh [3] 2014-05-20 14:51:08.330582386 +0100
>>
-@@ -28,12 +28,12 @@
>> +diff --git a/debian/pi-blaster.init
b/debian/pi-blaster.init
>> +index b142d70..01a686c 100644
>> +---
a/debian/pi-blaster.init
>> ++++ b/debian/pi-blaster.init
>> +@@ -28,12
+28,12 @@ SCRIPTNAME=/etc/init.d/$NAME
>> [ -r /etc/default/$NAME ] && .
/etc/default/$NAME
>> 
>> # Load the VERBOSE setting and other rcS
variables
>> @@ -22,7 +37,7 @@ diff -ur git.org/pi-blaster.boot.sh [2]
git/pi-blaster.boot.sh [3]
>> 
>> #
>> # Function that starts the
daemon/service
>> -@@ -77,48 +77,23 @@
>> +@@ -77,48 +77,24 @@
do_stop()
>> 
>> case "$1" in
>> start)
>> @@ -52,6 +67,7 @@ diff -ur
git.org/pi-blaster.boot.sh [2] git/pi-blaster.boot.sh [3]
>> #
'force-reload' alias
>> #
>> - log_daemon_msg "Restarting $DESC"
"$NAME"
>> ++ echo "Restarting $DESC" "$NAME"
>> do_stop
>> - case "$?"
in
>> - 0|1)
>> @@ -67,11 +83,14 @@ diff -ur git.org/pi-blaster.boot.sh
[2] git/pi-blaster.boot.sh [3]
>> - log_end_msg 1
>> - ;;
>> - esac
>>
-+ do_start
>> ++ do_start
>> ;;
>> *)
>> - echo "Usage: $SCRIPTNAME
{start|stop|status|restart|force-reload}" >&2
>> -+ echo "Usage:
$SCRIPTNAME {start|stop|restart}" >&2
>> ++ echo "Usage: $SCRIPTNAME
{start|stop|restart|force-reload}" >&2
>> exit 3
>> ;;
>> esac
>> +--
>>
+1.9.1
>> +
>> diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc
b/recipes-devtools/pi-blaster/pi-blaster.inc
>> index a3beccc..a548957
100644
>> --- a/recipes-devtools/pi-blaster/pi-blaster.inc
>> +++
b/recipes-devtools/pi-blaster/pi-blaster.inc
>> @@ -2,7 +2,7 @@
DESCRIPTION = "This project enables PWM on the GPIO pins you request of
a Raspbe
>> HOMEPAGE = "https://github.com/sarfata/pi-blaster/ [4]"
>>
SECTION = "devel/libs"
>> LICENSE = "MIT"
>> -LIC_FILES_CHKSUM =
"file://README.md;beginline=157;endline=170;md5=f20832f31126609af5a7bf2340014540"
>>
+LIC_FILES_CHKSUM =
"file://README.md;beginline=212;endline=239;md5=a012868ef5f83b9f257af253d7cb07a3"
>

> What changed here ?

The license is added in the end of the
README.md so in this case some additional description + modifications
earlier in the README.md caused the license text to move place. When it
comes to the license text I could only find changes in whitespace and
newlines. They seems to have been caused by the pi-blaster commit:
'0e1a1df Cleaning up the README' 

BR Petter 

$ diff -Naur
ec5e1b4c.README.md README.md | tail -n 38

 ## License

 Released under
The MIT License.

-Note: This project was initially released by Richard
Hist under the GPL v3 License. Richard gave me explicit permission to
distribute this derivative work under the MIT License.
+Note: This
project was initially released by Richard Hist under the GPL
v3
+License. Richard gave me explicit permission to distribute this
derivative work
+under the MIT License.

 Copyright (c) 2013 Thomas
Sarlandie - Richard Hirst

- Permission is hereby granted, free of
charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to
do so, subject to the following conditions:
-
- The above copyright
notice and this permission notice shall be included in all copies or
substantial portions of the Software.
-
- THE SOFTWARE IS PROVIDED "AS
IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
+ Permission is hereby granted, free of charge, to any person
obtaining a copy
+ of this software and associated documentation files
(the "Software"), to
+ deal in the Software without restriction,
including without limitation the
+ rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or
+ sell copies of the Software,
and to permit persons to whom the Software is
+ furnished to do so,
subject to the following conditions:
+
+ The above copyright notice and
this permission notice shall be included in
+ all copies or substantial
portions of the Software.
+
+ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT
WARRANTY OF ANY KIND, EXPRESS OR
+ IMPLIED, INCLUDING BUT NOT LIMITED TO
THE WARRANTIES OF MERCHANTABILITY,
+ FITNESS FOR A PARTICULAR PURPOSE
AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+ AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ FROM, OUT OF OR
IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ IN THE
SOFTWARE.

-[blog]:
http://www.tbideas.com/blog/2013/02/controling-a-high-power-rgb-led-with-a-raspberry-pi/
+[blog]:
+http://www.tbideas.com/blog/2013/02/controling-a-high-power-rgb-led-with-a-raspberry-pi/


>> SRC_URI = "git://github.com/sarfata/pi-blaster [5] 
>>
file://remove-initscript-lsb-dependency.patch 
>> diff --git
a/recipes-devtools/pi-blaster/pi-blaster_git.bb [1]
b/recipes-devtools/pi-blaster/pi-blaster_git.bb [1]
>> index
263852b..ac812ab 100644
>> ---
a/recipes-devtools/pi-blaster/pi-blaster_git.bb [1]
>> +++
b/recipes-devtools/pi-blaster/pi-blaster_git.bb [1]
>> @@ -1,3 +1,3
@@
>> require pi-blaster.inc
>> 
>> -SRCREV =
"ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"
>> +SRCREV =
"9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"
>> --
>> 1.9.1
>> 
>> --
>>
_______________________________________________
>> yocto mailing list
>>
yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
[6]
 

Links:
------
[1] http://pi-blaster_git.bb
[2]
http://git.org/pi-blaster.boot.sh
[3] http://pi-blaster.boot.sh
[4]
https://github.com/sarfata/pi-blaster/
[5]
http://github.com/sarfata/pi-blaster
[6]
https://lists.yoctoproject.org/listinfo/yocto

--=_9ec10f1b322c811adf57db4f00e719be
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2017-06-08 00:54 skrev Khem Raj:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div><br />
<div class=3D"gmail_quote">
<div>On Wed, Jun 7, 2017 at 2:17 PM Petter Mab&auml;cker &lt;<a href=3D"mai=
lto:petter@technux.se">petter@technux.se</a>&gt; wrote:</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;">Update to latest available revisi=
on, in order to include proper rpi3<br /> support as well as latest fixes=
=2E<br /><br /> Signed-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:p=
etter@technux.se">petter@technux.se</a>&gt;<br /> ---<br /> &nbsp;.../files=
/remove-initscript-lsb-dependency.patch&nbsp; &nbsp;| 37 ++++++++++++++++--=
----<br /> &nbsp;recipes-devtools/pi-blaster/pi-blaster.inc&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;|&nbsp; 2 +-<br /> &nbsp;recipes-devtools/pi-blaster/<a h=
ref=3D"http://pi-blaster_git.bb">pi-blaster_git.bb</a>&nbsp; &nbsp; &nbsp; =
|&nbsp; 2 +-<br /> &nbsp;3 files changed, 30 insertions(+), 11 deletions(-)=
<br /><br /> diff --git a/recipes-devtools/pi-blaster/files/remove-initscri=
pt-lsb-dependency.patch b/recipes-devtools/pi-blaster/files/remove-initscri=
pt-lsb-dependency.patch<br /> index 7ea9a3b..c8afe60 100644<br /> --- a/rec=
ipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch<br />=
 +++ b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency=
=2Epatch<br /> @@ -1,13 +1,28 @@<br /> -Remove dependencies on LSB function=
s<br /> +From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 =
2001<br /> +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D &lt;<a href=
=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;<br /> +Date: Sun, 4=
 Jun 2017 12:22:40 +0200<br /> +Subject: [PATCH] Remove dependencies on LSB=
 functions<br /> +MIME-Version: 1.0<br /> +Content-Type: text/plain; charse=
t=3DUTF-8<br /> +Content-Transfer-Encoding: 8bit<br /> +<br /> +See this as=
 a rebase of the previous 'Remove dependencies on LSB<br /> +functions patc=
h' with only minor modifications from the original version,<br /> +based on=
 the work done by Alex Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices=
=2Eco.uk">ajlennon@dynamicdevices.co.uk</a>&gt; in<br /> +'25fd817 pi-blast=
er: Added recipe'.<br /><br /> &nbsp;Upstream-Status: Inappropriate [config=
uration]<br /><br /> -Signed-off-by: Alex Lennon &lt;<a href=3D"mailto:ajle=
nnon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br /> +Sig=
ned-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se">p=
etter@technux.se</a>&gt;<br /> +---<br /> + debian/pi-blaster.init | 38 +++=
++++-------------------------------<br /> + 1 file changed, 7 insertions(+)=
, 31 deletions(-)<br /><br /> -diff -ur <a href=3D"http://git.org/pi-blaste=
r.boot.sh">git.org/pi-blaster.boot.sh</a> git/<a href=3D"http://pi-blaster=
=2Eboot.sh">pi-blaster.boot.sh</a><br /> ---- <a href=3D"http://git.org/pi-=
blaster.boot.sh">git.org/pi-blaster.boot.sh</a> 2014-05-20 14:49:44.3785821=
68 +0100<br /> -+++ git/<a href=3D"http://pi-blaster.boot.sh">pi-blaster.bo=
ot.sh</a>&nbsp; &nbsp; &nbsp;2014-05-20 14:51:08.330582386 +0100<br /> -@@ =
-28,12 +28,12 @@<br /> +diff --git a/debian/pi-blaster.init b/debian/pi-bla=
ster.init<br /> +index b142d70..01a686c 100644<br /> +--- a/debian/pi-blast=
er.init<br /> ++++ b/debian/pi-blaster.init<br /> +@@ -28,12 +28,12 @@ SCRI=
PTNAME=3D/etc/init.d/$NAME<br /> &nbsp; [ -r /etc/default/$NAME ] &amp;&amp=
; . /etc/default/$NAME<br /><br /> &nbsp; # Load the VERBOSE setting and ot=
her rcS variables<br /> @@ -22,7 +37,7 @@ diff -ur <a href=3D"http://git.or=
g/pi-blaster.boot.sh">git.org/pi-blaster.boot.sh</a> git/<a href=3D"http://=
pi-blaster.boot.sh">pi-blaster.boot.sh</a><br /><br /> &nbsp; #<br /> &nbsp=
; # Function that starts the daemon/service<br /> -@@ -77,48 +77,23 @@<br /=
> +@@ -77,48 +77,24 @@ do_stop()<br /><br /> &nbsp; case "$1" in<br /> &nbs=
p; &nbsp; start)<br /> @@ -52,6 +67,7 @@ diff -ur <a href=3D"http://git.org=
/pi-blaster.boot.sh">git.org/pi-blaster.boot.sh</a> git/<a href=3D"http://p=
i-blaster.boot.sh">pi-blaster.boot.sh</a><br /> &nbsp; &nbsp; &nbsp; &nbsp;=
 # 'force-reload' alias<br /> &nbsp; &nbsp; &nbsp; &nbsp; #<br /> &nbsp;-&n=
bsp; &nbsp; &nbsp; log_daemon_msg "Restarting $DESC" "$NAME"<br /> ++&nbsp;=
 &nbsp; &nbsp; echo "Restarting $DESC" "$NAME"<br /> &nbsp; &nbsp; &nbsp; &=
nbsp; do_stop<br /> &nbsp;-&nbsp; &nbsp; &nbsp; case "$?" in<br /> &nbsp;-&=
nbsp; &nbsp; &nbsp; &nbsp; 0|1)<br /> @@ -67,11 +83,14 @@ diff -ur <a href=
=3D"http://git.org/pi-blaster.boot.sh">git.org/pi-blaster.boot.sh</a> git/<=
a href=3D"http://pi-blaster.boot.sh">pi-blaster.boot.sh</a><br /> &nbsp;-&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; log_end_msg 1<br /> &nbsp;-&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ;;<br /> &nbsp;-&nbsp; &nbs=
p; &nbsp; esac<br /> -+&nbsp; &nbsp; &nbsp; do_start<br /> ++&nbsp; &nbsp; =
do_start<br /> &nbsp; &nbsp; &nbsp; &nbsp; ;;<br /> &nbsp; &nbsp; *)<br /> =
&nbsp;-&nbsp; &nbsp; &nbsp; echo "Usage: $SCRIPTNAME {start|stop|status|res=
tart|force-reload}" &gt;&amp;2<br /> -+&nbsp; &nbsp; &nbsp; echo "Usage: $S=
CRIPTNAME {start|stop|restart}" &gt;&amp;2<br /> ++&nbsp; &nbsp; &nbsp; ech=
o "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" &gt;&amp;2<br /> &=
nbsp; &nbsp; &nbsp; &nbsp; exit 3<br /> &nbsp; &nbsp; &nbsp; &nbsp; ;;<br /=
> &nbsp; esac<br /> +--<br /> +1.9.1<br /> +<br /> diff --git a/recipes-dev=
tools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.in=
c<br /> index a3beccc..a548957 100644<br /> --- a/recipes-devtools/pi-blast=
er/pi-blaster.inc<br /> +++ b/recipes-devtools/pi-blaster/pi-blaster.inc<br=
 /> @@ -2,7 +2,7 @@ DESCRIPTION =3D "This project enables PWM on the GPIO p=
ins you request of a Raspbe<br /> &nbsp;HOMEPAGE =3D "<a href=3D"https://gi=
thub.com/sarfata/pi-blaster/">https://github.com/sarfata/pi-blaster/</a>"<b=
r /> &nbsp;SECTION =3D "devel/libs"<br /> &nbsp;LICENSE =3D "MIT"<br /> -LI=
C_FILES_CHKSUM =3D "file://README.md;beginline=3D157;endline=3D170;md5=3Df2=
0832f31126609af5a7bf2340014540"<br /> +LIC_FILES_CHKSUM =3D "file://README=
=2Emd;beginline=3D212;endline=3D239;md5=3Da012868ef5f83b9f257af253d7cb07a3"=
</blockquote>
<div>&nbsp;</div>
<div>What changed here ?</div>
</div>
</div>
</blockquote>
<div>The license is added in the end of the README.md so in this case some =
additional description + modifications earlier in the README.md caused the =
license text to move place. When it comes to the license text I could only =
find changes in whitespace and newlines. They seems to have been caused by =
the pi-blaster commit: '0e1a1df Cleaning up the README'</div>
<div>&nbsp;</div>
<div>BR Petter</div>
<div>&nbsp;</div>
<div>$ diff -Naur ec5e1b4c.README.md README.md | tail -n 38<br />&nbsp;<br =
/>&nbsp;## License<br />&nbsp;<br />&nbsp;Released under The MIT License.<b=
r />&nbsp;<br />-Note: This project was initially released by Richard Hist =
under the GPL v3 License. Richard gave me explicit permission to distribute=
 this derivative work under the MIT License.<br />+Note: This project was i=
nitially released by Richard Hist under the GPL v3<br />+License. Richard g=
ave me explicit permission to distribute this derivative work<br />+under t=
he MIT License.<br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp; Copyright (c) 201=
3 Thomas Sarlandie - Richard Hirst<br />&nbsp;<br />-&nbsp;&nbsp;&nbsp; Per=
mission is hereby granted, free of charge, to any person obtaining a copy o=
f this software and associated documentation files (the "Software"), to dea=
l in the Software without restriction, including without limitation the rig=
hts to use, copy, modify, merge, publish, distribute, sublicense, and/or se=
ll copies of the Software, and to permit persons to whom the Software is fu=
rnished to do so, subject to the following conditions:<br />-<br />-&nbsp;&=
nbsp;&nbsp; The above copyright notice and this permission notice shall be =
included in all copies or substantial portions of the Software.<br />-<br /=
>-&nbsp;&nbsp;&nbsp; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF =
ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES O=
F MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN=
 NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, D=
AMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERW=
ISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR =
OTHER DEALINGS IN THE SOFTWARE.<br />+&nbsp;&nbsp;&nbsp; Permission is here=
by granted, free of charge, to any person obtaining a copy<br />+&nbsp;&nbs=
p;&nbsp; of this software and associated documentation files (the "Software=
"), to<br />+&nbsp;&nbsp;&nbsp; deal in the Software without restriction, i=
ncluding without limitation the<br />+&nbsp;&nbsp;&nbsp; rights to use, cop=
y, modify, merge, publish, distribute, sublicense, and/or<br />+&nbsp;&nbsp=
;&nbsp; sell copies of the Software, and to permit persons to whom the Soft=
ware is<br />+&nbsp;&nbsp;&nbsp; furnished to do so, subject to the followi=
ng conditions:<br />+<br />+&nbsp;&nbsp;&nbsp; The above copyright notice a=
nd this permission notice shall be included in<br />+&nbsp;&nbsp;&nbsp; all=
 copies or substantial portions of the Software.<br />+<br />+&nbsp;&nbsp;&=
nbsp; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR<br />+&nbsp;&nbsp;&nbsp; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WA=
RRANTIES OF MERCHANTABILITY,<br />+&nbsp;&nbsp;&nbsp; FITNESS FOR A PARTICU=
LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE<br />+&nbsp;&nbsp;&n=
bsp; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER=
<br />+&nbsp;&nbsp;&nbsp; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT=
 OR OTHERWISE, ARISING<br />+&nbsp;&nbsp;&nbsp; FROM, OUT OF OR IN CONNECTI=
ON WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS<br />+&nbsp;&nbsp;&nbsp; =
IN THE SOFTWARE.<br />&nbsp;<br />-[blog]: http://www.tbideas.com/blog/2013=
/02/controling-a-high-power-rgb-led-with-a-raspberry-pi/<br />+[blog]:<br /=
>+http://www.tbideas.com/blog/2013/02/controling-a-high-power-rgb-led-with-=
a-raspberry-pi/</div>
<div>&nbsp; </div>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;"><br /><br /> &nbsp;SRC_URI =3D "g=
it://<a href=3D"http://github.com/sarfata/pi-blaster">github.com/sarfata/pi=
-blaster</a> \<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://remov=
e-initscript-lsb-dependency.patch \<br /> diff --git a/recipes-devtools/pi-=
blaster/<a href=3D"http://pi-blaster_git.bb">pi-blaster_git.bb</a> b/recipe=
s-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb">pi-blaster_git=
=2Ebb</a><br /> index 263852b..ac812ab 100644<br /> --- a/recipes-devtools/=
pi-blaster/<a href=3D"http://pi-blaster_git.bb">pi-blaster_git.bb</a><br />=
 +++ b/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb">pi-=
blaster_git.bb</a><br /> @@ -1,3 +1,3 @@<br /> &nbsp;require pi-blaster.inc=
<br /><br /> -SRCREV =3D "ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"<br /> +=
SRCREV =3D "9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"<br /> --<br /> 1.9.1<=
br /><br /> --<br /> _______________________________________________<br /> =
yocto mailing list<br /><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a><br /><a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo">https://lists.yoctoproject.org/listinfo/yocto</a></blockquote>
</blockquote>
</body></html>

--=_9ec10f1b322c811adf57db4f00e719be--
