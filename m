Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A82EBE00D84; Fri, 18 Sep 2015 07:00:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.96.64 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm39.bullet.mail.ir2.yahoo.com (nm39.bullet.mail.ir2.yahoo.com
	[212.82.96.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF208E00B66
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 07:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1442584826; bh=DXbXdRtRe2uLVXA2f+o/6DyfYJ9qu1zdiwIarkMvJn8=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=rHvGRQKH1PdI4Gyem98yqkITUUGuj3T8gqm1yvYR8uIzJty+N00hWkF6Erhg2ZM9Ouxrie7ZSLCw9uDZyUvLSbiqHhTEb6zofzv9YaeAL+xtwfvyXzJrfxXMHg9b1zd5wpGKAxmkTYcBJUIh0VJFGAKALRhx1pblOl3JJTGXG4hJ5AWIdc2/alyAdqOhEdg2qkBVT4CBOLgN0+Zd/7QrF5twB9XbpNGmW5NALw5LI7GDXLrf1cMYcz8X1pbDpQYqOKx+J9+fnedn9g40Y47+D9D0zCKBisAwp2yungKtR6LXUn21Y3RMzyzeCRnozjyofGB0Sm1a5MBW/GcfCH20ww==
Received: from [212.82.98.54] by nm39.bullet.mail.ir2.yahoo.com with NNFMP;
	18 Sep 2015 14:00:26 -0000
Received: from [212.82.98.94] by tm7.bullet.mail.ir2.yahoo.com with NNFMP;
	18 Sep 2015 14:00:26 -0000
Received: from [127.0.0.1] by omp1031.mail.ir2.yahoo.com with NNFMP;
	18 Sep 2015 14:00:26 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 131798.93585.bm@omp1031.mail.ir2.yahoo.com
X-YMail-OSG: UOflLUwVM1nTTdSm._X8VJCPgLAX2H.JSUq_LxQJ55t4RZ1RQIgFXlt4vvZWY4l
	7s51H9Q1l0cM.Ax0KFm2BSZyq5VwOpadRPJMIYfvaLSsVsytqrsHi7ohhgcXztQLhazvI2bENS3X
	rKL.0DL1y_b05wgldVg.yiTHpwXlXc8CLM35xlDy2lNtdQEqn0ZLjY2kd5r3gq2_Pd6EeGOd2g2m
	hOFR9D03jLwyLfyhgJxAlZ2GeMDyu7l6cn_CFd9BfSB.KuQK3NkVLRIeyZ7WqRWYjPUCU.lr1I3m
	tESxm5lwjVbA4HmjUG9hJkDj_d2RtHdAJuEwReR5XIC_BRZBMDmD5dkwJElS75e8kY.tGebbLAnj
	y79rm3oaXpXpvBY_lwahy3HfbCHeXPeKV6nUKGAFyhqVHoTHdtoKGRN6PKKxnOh6JnJuCi69C487
	bTP8f8efNaJiEq4ViaCrADDi5f5tYPHvxYOaf5XmlgfMjEY5baTP0o6oiyta0D_j4ScoNuFhuPAg
	PM7E-
Received: by 217.12.9.10; Fri, 18 Sep 2015 14:00:25 +0000 
Date: Fri, 18 Sep 2015 14:00:25 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <2054346511.2146673.1442584825303.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Kernel config fragments not applied (requiring linux-yocto.inc)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Sep 2015 14:00:29 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2146672_1029965588.1442584825298"

------=_Part_2146672_1029965588.1442584825298
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I have a simple recipe intending to change the configuration of the raspber=
rypi kernel(meta-raspberrypi).By requiring linux-yocto.inc:http://git.yocto=
project.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-kernel/linux/linux.=
inc#n8I understand it will incorporate the fragment kernel features. Which =
might be my first misunderstanding.

My recipe looks like:###FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D "file://rndis.cfg"
###
and the fragment file rndis.cfg:###FILESEXTRAPATHS_prepend :=3D "${THISDIR}=
/${PN}:"
SRC_URI +=3D "file://rndis.cfg"
###
The configuration does not get into any .config.The only log I could get is=
 the following file, it makes me think somehow that at least, it is trying.=
 Recipe & fragment file is recognized.
Note that I have tried the same configuration via menuconfig and it works f=
ine, so the fragment seems to me valid:
~/raspberry/build-rpi-base/tmp/work/raspberrypi-poky-linux-gnueabi/linux-ra=
spberrypi/3.12.26+gitf0[...]/linux/.meta/cfg/standard/raspberrypi/merge_log=
.txt#####
Using .meta/cfg/linux-raspberrypi/defconfig.sanitized as base
Merging .meta/cfg/linux-raspberrypi/rndis.cfg.sanitized
=C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep
=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 /home/oliver/raspberry/build-rpi-base/tm=
p/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.12.26+gitf03cd5e1=
012d3fe8314a944879308cf0f3d9e29b-r0/linux-raspberrypi-standard-build/Makefi=
le
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/conf.o
=C2=A0 SHIPPED scripts/kconfig/zconf.tab.c
=C2=A0 SHIPPED scripts/kconfig/zconf.lex.c
=C2=A0 SHIPPED scripts/kconfig/zconf.hash.c
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o
=C2=A0 HOSTLD=C2=A0 scripts/kconfig/conf
scripts/kconfig/conf --allnoconfig Kconfig
#
# configuration written to .config
#
Value requested for CONFIG_NET_CDCETHER not in final .config
Requested value:=C2=A0 CONFIG_NET_CDCETHER=3Dy
Actual value:=C2=A0=C2=A0=C2=A0=C2=A0=20

Value requested for CONFIG_NET_RNDIS_HOST not in final .config
Requested value:=C2=A0 CONFIG_NET_RNDIS_HOST=3Dy
Actual value:=C2=A0=C2=A0=C2=A0=C2=A0=20
###

Any hint how can I dig more into this problem?


------=_Part_2146672_1029965588.1442584825298
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1442320729520_12600">Hello,</div><div=
 id=3D"yui_3_16_0_1_1442320729520_12818"><br></div><div id=3D"yui_3_16_0_1_=
1442320729520_12687">I have a simple recipe intending to change the configu=
ration of the raspberrypi kernel(meta-raspberrypi).</div><div dir=3D"ltr" i=
d=3D"yui_3_16_0_1_1442320729520_12763">By requiring linux-yocto.inc:</div><=
div dir=3D"ltr" id=3D"yui_3_16_0_1_1442320729520_12800"><a id=3D"yui_3_16_0=
_1_1442320729520_12865" href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/m=
eta-raspberrypi/tree/recipes-kernel/linux/linux.inc#n8">http://git.yoctopro=
ject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-kernel/linux/linux.inc=
#n8</a></div><div id=3D"yui_3_16_0_1_1442320729520_12867" dir=3D"ltr">I und=
erstand it will incorporate the fragment kernel features. Which might be my=
 first misunderstanding.<br></div><div id=3D"yui_3_16_0_1_1442320729520_128=
88" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1442320729520_12889" dir=
=3D"ltr">My recipe looks like:</div><div id=3D"yui_3_16_0_1_1442320729520_1=
3112" dir=3D"ltr">###</div><div id=3D"yui_3_16_0_1_1442320729520_12912" dir=
=3D"ltr">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<br class=3D"">SRC=
_URI +=3D "file://rndis.cfg"<br class=3D""></div><div id=3D"yui_3_16_0_1_14=
42320729520_12915" dir=3D"ltr">###</div><div id=3D"yui_3_16_0_1_14423207295=
20_13215" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1442320729520_12951=
" dir=3D"ltr">and the fragment file rndis.cfg:</div><div id=3D"yui_3_16_0_1=
_1442320729520_12929" dir=3D"ltr">###</div><div id=3D"yui_3_16_0_1_14423207=
29520_12948" dir=3D"ltr">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<b=
r class=3D"">SRC_URI +=3D "file://rndis.cfg"<br class=3D""></div><div id=3D=
"yui_3_16_0_1_1442320729520_12952" dir=3D"ltr">###</div><div id=3D"yui_3_16=
_0_1_1442320729520_13216" dir=3D"ltr"><br></div><div class=3D"" id=3D"yui_3=
_16_0_1_1442320729520_12951" dir=3D"ltr">The configuration does not get int=
o any .config.</div><div id=3D"yui_3_16_0_1_1442320729520_13107" class=3D""=
 dir=3D"ltr">The only log I could get is the following file, it makes me th=
ink somehow that at least, it is trying. Recipe &amp; fragment file is reco=
gnized.<br></div><div id=3D"yui_3_16_0_1_1442320729520_13324" class=3D"" di=
r=3D"ltr">Note that I have=20
tried the same configuration via menuconfig and it works fine, so the=20
fragment seems to me valid:</div><div id=3D"yui_3_16_0_1_1442320729520_1306=
2" class=3D"" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1442320729520_1=
3063" class=3D"" dir=3D"ltr">~/raspberry/build-rpi-base/tmp/work/raspberryp=
i-poky-linux-gnueabi/linux-raspberrypi/3.12.26+gitf0[...]/linux/.meta/cfg/s=
tandard/raspberrypi/merge_log.txt</div>#####<br><div id=3D"yui_3_16_0_1_144=
2320729520_13161" class=3D"" dir=3D"ltr">Using .meta/cfg/linux-raspberrypi/=
defconfig.sanitized as base<br class=3D"">Merging .meta/cfg/linux-raspberry=
pi/rndis.cfg.sanitized<br class=3D"">&nbsp; HOSTCC&nbsp; scripts/basic/fixd=
ep<br class=3D"">&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; /home/oliver/raspberry/=
build-rpi-base/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.=
12.26+gitf03cd5e1012d3fe8314a944879308cf0f3d9e29b-r0/linux-raspberrypi-stan=
dard-build/Makefile<br class=3D"">&nbsp; HOSTCC&nbsp; scripts/kconfig/conf.=
o<br class=3D"">&nbsp; SHIPPED scripts/kconfig/zconf.tab.c<br class=3D"">&n=
bsp; SHIPPED scripts/kconfig/zconf.lex.c<br class=3D"">&nbsp; SHIPPED scrip=
ts/kconfig/zconf.hash.c<br class=3D"">&nbsp; HOSTCC&nbsp; scripts/kconfig/z=
conf.tab.o<br class=3D"">&nbsp; HOSTLD&nbsp; scripts/kconfig/conf<br class=
=3D"">scripts/kconfig/conf --allnoconfig Kconfig<br class=3D"">#<br class=
=3D""># configuration written to .config<br class=3D"">#<br class=3D"">Valu=
e requested for CONFIG_NET_CDCETHER not in final .config<br class=3D"">Requ=
ested value:&nbsp; CONFIG_NET_CDCETHER=3Dy<br class=3D"">Actual value:&nbsp=
;&nbsp;&nbsp;&nbsp; <br class=3D""><br class=3D"">Value requested for CONFI=
G_NET_RNDIS_HOST not in final .config<br class=3D"">Requested value:&nbsp; =
CONFIG_NET_RNDIS_HOST=3Dy<br class=3D"">Actual value:&nbsp;&nbsp;&nbsp;&nbs=
p; <br class=3D"">###<br></div><div id=3D"yui_3_16_0_1_1442320729520_13109"=
 class=3D"" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1442320729520_131=
10" class=3D"" dir=3D"ltr">Any hint how can I dig more into this problem?<b=
r></div><div id=3D"yui_3_16_0_1_1442320729520_12911"><br></div></div></body=
></html>

------=_Part_2146672_1029965588.1442584825298--
