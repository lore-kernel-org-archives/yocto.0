Return-Path: <jim.schimpf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16DCFE00B8F; Mon, 26 Oct 2015 03:58:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jim.schimpf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 536A4E00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:58:53 -0700 (PDT)
Received: by ioll68 with SMTP id l68so182646693iol.3
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=ovYPg58CRD2wCNqhEF59TX9PWMNtUX/n35g9uc5A1To=;
	b=NSw6zHgRNVA9G8puecctbjNrHGrjK3Y3UGC1X8kNuq7J37jCnger9FdrhYx31kc5Vq
	S5vP6Ri9zK8rJWvvnivAo8eC8Purk3QcOL9Ffq0nP3ReZAy37YdNAlYJveFw8xb+lhmJ
	3KRJNnWYd/ewamMu63OIR/mt4AUHsRoHW901+hgv9tXf8h1wPTehs8bDTs+zgGjN3MQ7
	DuslMtVlqP9jXQ/r0D/YTNhgKph79YCD5gyUNCDyjeLj3U1JIkg1iNojE0xPrUhjef2s
	+peX3wbLuXjb8KUHenKAL+cgFTCc1LegNBEco5GBPX7TmOKm+rvPmRbrd/GBUFcCYk1e
	CbjQ==
X-Received: by 10.107.130.220 with SMTP id m89mr35188432ioi.35.1445857133382; 
	Mon, 26 Oct 2015 03:58:53 -0700 (PDT)
Received: from [10.1.2.3] (static-72-95-129-76.pitbpa.fios.verizon.net.
	[72.95.129.76]) by smtp.gmail.com with ESMTPSA id
	l80sm12811699iod.34.2015.10.26.03.58.52 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 26 Oct 2015 03:58:52 -0700 (PDT)
From: jim Schimpf <jim.schimpf@gmail.com>
Message-Id: <78B5DEF9-516A-4367-B960-6BAB1EA1DF43@gmail.com>
Date: Mon, 26 Oct 2015 06:58:53 -0400
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: Problem with library recipe
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
X-List-Received-Date: Mon, 26 Oct 2015 10:58:58 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CD8E1588-11A5-465B-A312-568855085A79"

--Apple-Mail=_CD8E1588-11A5-465B-A312-568855085A79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,
	I am attempting to add a recipe to build libmill =
(http://libmill.org <http://libmill.org/>).  So far my recipe does the =
fetch and config but fails the compile.

The recipe is:

# -----------------------------------------------------
# Header Meta data
SUMMARY =3D "Co-routine & Network Library"
DESCRIPTION =3D "Easy network use and co-routine operation"
AUTHOR =3D "Martin Sustrik"
HOMEPAGE =3D "https://libmill.org"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D6d82245bd22227ca739abaf3dcd3b80d"
PR =3D "1.0"

# -----------------------------------------------------
# Source data
SRCREV =3D "cdbd5e24e99964fdf65e701df099155ff484667e"
SRC_URI =3D =
"git://github.com/sustrik/libmill.git;user=3Djschimpf-pandora;protocol=3Dh=
ttp"
inherit autotools gettext=20

S =3D "${WORKDIR}/git=E2=80=9D

The compile failure is:

./doltlibtool  --tag=3DCC   --mode=3Dlink arm-poky-linux-gnueabi-gcc  =
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon =
-mtune=3Dcortex-a8 =
--sysroot=3D/home/jim/yocto/poky/BB1/tmp/sysroots/beaglebone -std=3Dgnu99 =
-fvisibility=3Dhidden -DMILL_EXPORTS -U_FORTIFY_SOURCE =
-D_FORTIFY_SOURCE=3D0 -O2 -pipe -g -feliminate-unused-debug-types =
-no-undefined -version-info 10:1:0 -Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed -o libmill.la -rpath /usr/lib libmill_la-chan.lo =
libmill_la-cr.lo libmill_la-debug.lo libmill_la-ip.lo libmill_la-list.lo =
libmill_la-poller.lo libmill_la-slist.lo libmill_la-stack.lo =
libmill_la-tcp.lo libmill_la-udp.lo libmill_la-unix.lo =
libmill_la-utils.lo  -lanl -lrt=20
./doltlibtool: line 18: =
/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/l=
ibmill/1.0-1.0/git/libtool: No such file or directory
make: *** [libmill.la] Error 127
make: *** Waiting for unfinished jobs....
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at =
/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/l=
ibmill/1.0-1.0/temp/log.do_compile.6506)

The failure of the script ./doitlibtool is that it cannot find the =
script libtool which should be created (it=E2=80=99s not in the =
repository) in the git directory. When i run ./configure on OS X or =
Ubuntu that libtool appears but it does not when Yocto runs it.

I guess the failure is really in the configure state and only errors in =
the compile step.

Thanks for the help.  Any suggestions for things to try would be =
appreciated.

=E2=80=94jim schimpf


--Apple-Mail=_CD8E1588-11A5-465B-A312-568855085A79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>I am attempting to add a recipe =
to build libmill (<a href=3D"http://libmill.org" =
class=3D"">http://libmill.org</a>). &nbsp;So far my recipe does the =
fetch and config but fails the compile.</div><div class=3D""><br =
class=3D""></div><div class=3D"">The recipe is:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D""># =
-----------------------------------------------------</div><div =
class=3D""># Header Meta data</div><div class=3D"">SUMMARY =3D =
"Co-routine &amp; Network Library"</div><div class=3D"">DESCRIPTION =3D =
"Easy network use and co-routine operation"</div><div class=3D"">AUTHOR =
=3D "Martin Sustrik"</div><div class=3D"">HOMEPAGE =3D "<a =
href=3D"https://libmill.org" class=3D"">https://libmill.org</a>"</div><div=
 class=3D"">LICENSE =3D "MIT"</div><div class=3D"">LIC_FILES_CHKSUM =3D =
"<a href=3D"file:///COPYING;md5=3D6d82245bd22227ca739abaf3dcd3b80d" =
class=3D"">file://COPYING;md5=3D6d82245bd22227ca739abaf3dcd3b80d</a>"</div=
><div class=3D"">PR =3D "1.0"</div><div class=3D""><br =
class=3D""></div><div class=3D""># =
-----------------------------------------------------</div><div =
class=3D""># Source data</div><div class=3D"">SRCREV =3D =
"cdbd5e24e99964fdf65e701df099155ff484667e"</div><div class=3D"">SRC_URI =
=3D "<a =
href=3D"git://github.com/sustrik/libmill.git;user=3Djschimpf-pandora;proto=
col=3Dhttp" =
class=3D"">git://github.com/sustrik/libmill.git;user=3Djschimpf-pandora;pr=
otocol=3Dhttp</a>"</div><div class=3D"">inherit autotools =
gettext&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D"">S =
=3D "${WORKDIR}/git=E2=80=9D</div><div class=3D""><br =
class=3D""></div><div class=3D"">The compile failure is:</div><div =
class=3D""><br class=3D""></div><div class=3D"">./doltlibtool =
&nbsp;--tag=3DCC &nbsp; --mode=3Dlink arm-poky-linux-gnueabi-gcc =
&nbsp;-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon =
-mtune=3Dcortex-a8 =
--sysroot=3D/home/jim/yocto/poky/BB1/tmp/sysroots/beaglebone -std=3Dgnu99 =
-fvisibility=3Dhidden -DMILL_EXPORTS -U_FORTIFY_SOURCE =
-D_FORTIFY_SOURCE=3D0 -O2 -pipe -g -feliminate-unused-debug-types =
-no-undefined -version-info 10:1:0 -Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed -o libmill.la -rpath /usr/lib libmill_la-chan.lo =
libmill_la-cr.lo libmill_la-debug.lo libmill_la-ip.lo =
libmill_la-list.lo&nbsp;libmill_la-poller.lo libmill_la-slist.lo =
libmill_la-stack.lo libmill_la-tcp.lo libmill_la-udp.lo =
libmill_la-unix.lo libmill_la-utils.lo &nbsp;-lanl -lrt&nbsp;<br =
class=3D"">./doltlibtool: line 18: =
/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/l=
ibmill/1.0-1.0/git/libtool: No such file or directory<br class=3D"">make: =
*** [libmill.la] Error 127<br class=3D"">make: *** Waiting for =
unfinished jobs....<br class=3D"">ERROR: oe_runmake failed<br =
class=3D"">WARNING: exit code 1 from a shell command.<br class=3D"">ERROR:=
 Function failed: do_compile (log file is located at =
/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/l=
ibmill/1.0-1.0/temp/log.do_compile.6506)</div><div class=3D""><br =
class=3D""></div><div class=3D"">The failure of the script ./doitlibtool =
is that it cannot find the script libtool which should be created =
(it=E2=80=99s not in the repository) in the git directory. When i run =
./configure on OS X or Ubuntu that libtool appears but it does not when =
Yocto runs it.</div><div class=3D""><br class=3D""></div><div class=3D"">I=
 guess the failure is really in the configure state and only errors in =
the compile step.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for the help. &nbsp;Any suggestions for things to try =
would be appreciated.</div><div class=3D""><br class=3D""></div><div =
class=3D"">=E2=80=94jim schimpf</div><div class=3D""><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_CD8E1588-11A5-465B-A312-568855085A79--
