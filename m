Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 474AAE00C43; Wed, 25 Jan 2017 07:56:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 373 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Jan 2017 07:56:40 PST
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CBEE00C0A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:56:40 -0800 (PST)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 7F7A7235:81798DE0-C12580B3:004B0F11;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF7F7A7235.81798DE0-ONC12580B3.004B0F11-C12580B3.00570355@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 25 Jan 2017 16:50:25 +0100
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 25.01.2017 16:56:40,
	Serialize complete at 25.01.2017 16:56:40
Subject: How to setup syslog by using an own filterfile and log policy configuration?
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
X-List-Received-Date: Wed, 25 Jan 2017 15:56:44 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00570355C12580B3_="

--=_alternative 00570355C12580B3_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I like to configure syslog. It seems that are more than one way to set up=20
syslog. I am asking for the comon way/steps to do that.

I have several use cases. To simplify I like to ask how to configure=20
syslog to write an infinity long log file in /var/log/.

Following steps:
1.) configure what messages
1.1) create own "syslog.conf" (define /var/log/myLog)
1.2) append it to "recipes-core/busybox"

2.) configure how to log
??

I found two possible places to do that:
@meta-poky
-> "meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig"
#######
#
# System Logging Utilities
#
CONFIG=5FSYSLOGD=3Dy
CONFIG=5FFEATURE=5FROTATE=5FLOGFILE=3Dy
CONFIG=5FFEATURE=5FREMOTE=5FLOG=3Dy
CONFIG=5FFEATURE=5FSYSLOGD=5FDUP=3Dy
CONFIG=5FFEATURE=5FSYSLOGD=5FCFG=3Dy
CONFIG=5FFEATURE=5FSYSLOGD=5FREAD=5FBUFFER=5FSIZE=3D256
CONFIG=5FFEATURE=5FIPC=5FSYSLOG=3Dy
CONFIG=5FFEATURE=5FIPC=5FSYSLOG=5FBUFFER=5FSIZE=3D16
CONFIG=5FLOGREAD=3Dy
CONFIG=5FFEATURE=5FLOGREAD=5FREDUCED=5FLOCKING=3Dy
CONFIG=5FKLOGD=3Dy
CONFIG=5FFEATURE=5FKLOGD=5FKLOGCTL=3Dy
CONFIG=5FLOGGER=3Dy
#######

>> add/change
"CONFIG=5FFEATURE=5FROTATE=5FLOGFILE=3Dn" by adding that line to=20
meta-mylayer/conf/layer.conf"
etc.
???

@ "/etc/syslog-startup.conf"
#######
# This configuration file is used by the busybox syslog init script,
# /etc/init.d/syslog[.busybox] to set syslog configuration at start time.

DESTINATION=3Dfile                # log destinations (buffer file remote)
LOGFILE=3D/var/log/messages       # where to log (file)
REMOTE=3Dloghost:514              # where to log (syslog remote)
REDUCE=3Dno                       # reduce-size logging
DROPDUPLICATES=3Dno               # whether to drop duplicate log entries
#ROTATESIZE=3D0                   # rotate log if grown beyond X [kByte]
#ROTATEGENS=3D3                   # keep X generations of rotated logs
BUFFERSIZE=3D64                   # size of circular buffer [kByte]
FOREGROUND=3Dno                   # run in foreground (don't use!)
#LOGLEVEL=3D5                     # local log level (between 1 and 8)
#######

In the systemV init script "/etc/init.d/syslog.bussybox" the file=20
"/etc/syslog-startup.con" is read and used for configuration.

System behaviour:

When running my system, the log wraps when the logfile reaches 200kBytes.=20
One logfile + one log-rotate file is generated.

Any ideas how to archive that syslog writes an infinite long log-file?=20

I am working on the Yocto krogoth branch + meta-atmel / meta=5Fopenembedded=
=20
(@ krogoth too).

Best regards,

Stefan

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 181
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.

--=_alternative 00570355C12580B3_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I like to configure syslog. It seems
that are more than one way to set up syslog. I am asking for the comon
way/steps to do that.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have several use cases. To simplify
I like to ask how to configure syslog to write an infinity long log file
in /var/log/.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Following steps:</font>
<br><font size=3D2 face=3D"sans-serif">1.) configure what messages</font>
<br><font size=3D2 face=3D"sans-serif">1.1) create own &quot;syslog.conf&qu=
ot;
(define /var/log/myLog)</font>
<br><font size=3D2 face=3D"sans-serif">1.2) append it to &quot;recipes-core=
/busybox&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">2.) configure how to log</font>
<br><font size=3D2 face=3D"sans-serif">??</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I found two possible places to do th=
at:</font>
<br><font size=3D2 face=3D"sans-serif">@meta-poky</font>
<br><font size=3D2 face=3D"sans-serif">-&gt; &quot;meta-poky/recipes-core/b=
usybox/busybox/poky-tiny/defconfig&quot;</font>
<br><font size=3D2 face=3D"sans-serif">#######</font>
<br><font size=3D2 face=3D"sans-serif">#</font>
<br><font size=3D2 face=3D"sans-serif"># System Logging Utilities</font>
<br><font size=3D2 face=3D"sans-serif">#</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FSYSLOGD=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FROTATE=5FLOGFILE=
=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FREMOTE=5FLOG=3Dy<=
/font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FSYSLOGD=5FDUP=3Dy=
</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FSYSLOGD=5FCFG=3Dy=
</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FSYSLOGD=5FREAD=5F=
BUFFER=5FSIZE=3D256</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FIPC=5FSYSLOG=3Dy<=
/font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FIPC=5FSYSLOG=5FBU=
FFER=5FSIZE=3D16</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FLOGREAD=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FLOGREAD=5FREDUCED=
=5FLOCKING=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FKLOGD=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FFEATURE=5FKLOGD=5FKLOGCTL=
=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">CONFIG=5FLOGGER=3Dy</font>
<br><font size=3D2 face=3D"sans-serif">#######</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&gt;&gt; add/change</font>
<br><font size=3D2 face=3D"sans-serif">&quot;CONFIG=5FFEATURE=5FROTATE=5FLO=
GFILE=3Dn&quot;
by adding that line to meta-mylayer/conf/layer.conf&quot;</font>
<br><font size=3D2 face=3D"sans-serif">etc.</font>
<br><font size=3D2 face=3D"sans-serif">???</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@ &quot;/etc/syslog-startup.conf&quo=
t;</font>
<br><font size=3D2 face=3D"sans-serif">#######</font>
<br><font size=3D2 face=3D"sans-serif"># This configuration file is used by
the busybox syslog init script,</font>
<br><font size=3D2 face=3D"sans-serif"># /etc/init.d/syslog[.busybox] to set
syslog configuration at start time.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DESTINATION=3Dfile &nbsp; &nbsp; &nb=
sp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# log destinations (buffer
file remote)</font>
<br><font size=3D2 face=3D"sans-serif">LOGFILE=3D/var/log/messages &nbsp; &=
nbsp;
&nbsp; &nbsp;# where to log (file)</font>
<br><font size=3D2 face=3D"sans-serif">REMOTE=3Dloghost:514 &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# where to log (syslog
remote)</font>
<br><font size=3D2 face=3D"sans-serif">REDUCE=3Dno &nbsp; &nbsp; &nbsp; &nb=
sp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
reduce-size logging</font>
<br><font size=3D2 face=3D"sans-serif">DROPDUPLICATES=3Dno &nbsp; &nbsp; &n=
bsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# whether to drop duplicate
log entries</font>
<br><font size=3D2 face=3D"sans-serif">#ROTATESIZE=3D0 &nbsp; &nbsp; &nbsp;=
 &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
rotate log if grown beyond X [kByte]</font>
<br><font size=3D2 face=3D"sans-serif">#ROTATEGENS=3D3 &nbsp; &nbsp; &nbsp;=
 &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
keep X generations of rotated logs</font>
<br><font size=3D2 face=3D"sans-serif">BUFFERSIZE=3D64 &nbsp; &nbsp; &nbsp;=
 &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
size of circular buffer [kByte]</font>
<br><font size=3D2 face=3D"sans-serif">FOREGROUND=3Dno &nbsp; &nbsp; &nbsp;=
 &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
run in foreground (don't use!)</font>
<br><font size=3D2 face=3D"sans-serif">#LOGLEVEL=3D5 &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#
local log level (between 1 and 8)</font>
<br><font size=3D2 face=3D"sans-serif">#######</font>
<br>
<br><font size=3D2 face=3D"sans-serif">In the systemV init script &quot;/et=
c/init.d/syslog.bussybox&quot;
the file &quot;/etc/syslog-startup.con&quot; is read and used for configura=
tion.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">System behaviour:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">When running my system, the log wraps
when the logfile reaches 200kBytes. One logfile + one log-rotate file is
generated.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas how to archive that syslog
writes an infinite long log-file? </font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am working on the Yocto krogoth br=
anch
+ meta-atmel / meta=5Fopenembedded (@ krogoth too).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Best regards,<br>
<br>
Stefan</font>
<br><font size=3D2 face=3D"sans-serif"><br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 181<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font>

--=_alternative 00570355C12580B3_=--
