Return-Path: <robert.l.terrell.ihi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54863E00DCE; Wed, 13 Jul 2016 08:55:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (robert.l.terrell.ihi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B412E00D55
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 08:55:54 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id j126so17241585vkg.3
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 08:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=/Gg1uQSIGA7zLQ1yC+fz7Ue6hDQ4BU6eKA2IVuj1vzQ=;
	b=z75LyFPo3EVJtrXrT+kn+2NaC1+uLSeaGkFh9OORcb7YI2IJAoIvKNaqYLzaq7iH6O
	+RD99fH2az3m2pydyOYi24TqAMxTr7fXWwb+PnUoVDI/lGGS8sktH6kQ1iI4Qm3SM7pL
	HU7uKJTq0BlVBfthz8v4EY4KYe8HhoihtulJTL9q+30+T5XIrG7HuC9iJHgPlg1QQIFp
	gnSwbQvBKeV8PsIndwL0OBma/tWJBKV/+S5RtQSDJEWqZGAeqC7rTQMF2P3usPoWu44C
	q7T8sKCzlLCzSrZcIDosGOcPg35q9inm/kdgJ9x8Pj6/zTDDZhvF50tNi0MCgpAz1gqC
	nwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=/Gg1uQSIGA7zLQ1yC+fz7Ue6hDQ4BU6eKA2IVuj1vzQ=;
	b=TrbnZKyZ158aAeR+QhvNKpf/j+HEopdKPzLU98UlEPs5NWzh6kddaG33LeNx+FVfPF
	hyJIxBSKxrcyAAhPcE/ItDLcujl0WpeMu64g/+M1GsQ5ebEQWiGZFj5+zFkPhf6HGibI
	WglvBGnVxHD2b+gxKO0xbkmn8wMsuB88yFHs93gykF6op9h2BUYTU65NhAGcivAiazFR
	mMovF77VtlwGO0SYX9OvlOinz3i1e4Z/DCqlnVH1kA0sVmffK/fRgiy/WC6sCpDNOHRz
	Aa5xC18lg94oTREuStGMSwqpPm6fjuZjrhfVvJdWI5IOryfz2ot7GzV8FPN8EfYaIzdq
	uBXA==
X-Gm-Message-State: ALyK8tJ0/VmCwNv6Tqprtmra8gouZpDCOSyXuy2vP33srpPcz4Z90wQZWEx7gRwXC8yO04Pty6BzW4p/MztHFQ==
X-Received: by 10.176.2.202 with SMTP id 68mr4415091uah.7.1468425353280; Wed,
	13 Jul 2016 08:55:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.64.103 with HTTP; Wed, 13 Jul 2016 08:55:52 -0700 (PDT)
From: robert terrell <robert.l.terrell.ihi@gmail.com>
Date: Wed, 13 Jul 2016 10:55:52 -0500
Message-ID: <CAKKsEznOCQW1UbKf=jPujSxxBELch1m+T3nKvoXc5iKWZAUD6w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 14 Jul 2016 14:31:47 -0700
Cc: j.carpenter.ihi@gmail.com
Subject: yocto krogoth can't get apache2 with php to build
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
X-List-Received-Date: Wed, 13 Jul 2016 15:55:55 -0000
Content-Type: multipart/alternative; boundary=001a113b18a08fc3dd0537866b83

--001a113b18a08fc3dd0537866b83
Content-Type: text/plain; charset=UTF-8

Thank you in advance.  Could really use the help.

I have to get php5 working in apache2.

yocto@yocto-H8SGL:~/poky/build$ bitbake core-image-lsb
Loading cache: 100%
|#########################################################################################################|
ETA:  00:00:00
Loaded 2379 entries from dependency cache.
Parsing recipes: 100%
|#######################################################################################################|
Time: 00:00:01
Parsing of 1829 .bb files complete (1828 cached, 1 parsed). 2379 targets,
116 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "intel-corei7-64"
DISTRO            = "poky-lsb"
DISTRO_VERSION    = "2.1.1"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "krogoth:98c57bb512ea6790db8604fcf0b88c81651d2ab4"
meta-intel        = "krogoth:b8c199201ffe026485a14e1fcfc398e2b3551512"
meta-oe
meta-python
meta-networking
meta-webserver    = "master:303d9ea960e2d88281079a4e71abe2cf8c815184"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: php-5.6.18-r0 do_compile: oe_runmake failed
ERROR: php-5.6.18-r0 do_compile: Function failed: do_compile (log file is
located at
/home/yocto/poky/build/tmp/work/corei7-64-poky-linux/php/5.6.18-r0/temp/log.do_compile.11301)
ERROR: Logfile of failure stored in:
/home/yocto/poky/build/tmp/work/corei7-64-poky-linux/php/5.6.18-r0/temp/log.do_compile.11301

Here is where it fails

 -lmcrypt -lltdl -lbz2 -lz -lm -lxml2 -lxml2 -lxml2 -lcrypt -lxml2 -lxml2
-lxml2 -lxml2 -lcrypt  -o sapi/cgi/php-cgi
|
/home/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ld:
TSRM/.libs/TSRM.o: undefined reference to symbol 'pthread_sigmask@
@GLIBC_2.2.5'
| /home/yocto/poky/build/tmp/sysroots/intel-corei7-64/lib/libpthread.so.0:
error adding symbols: DSO missing from command line
| collect2: error: ld returned 1 exit status
| make: *** [sapi/fpm/php-fpm] Error 1


Again thanks for any help.

bobt

--001a113b18a08fc3dd0537866b83
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Thank you in advance.=C2=A0 Could really use the help.<=
br>
</p>
<p>I have to get php5 working in apache2.=C2=A0 <br>
</p>
<p>yocto@yocto-H8SGL:~/poky/build$ bitbake core-image-lsb<br>
Loading cache: 100%=20
|##########################################################################=
###############################|
 ETA:=C2=A0 00:00:00<br>
Loaded 2379 entries from dependency cache.<br>
Parsing recipes: 100%=20
|##########################################################################=
#############################|
 Time: 00:00:01<br>
Parsing of 1829 .bb files complete (1828 cached, 1 parsed). 2379 targets, 1=
16 skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
  <br>
Build Configuration:<br>
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.30.0&quot;=
<br>
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-poky-=
linux&quot;<br>
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;intel-corei7-64&quot;<br>
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;poky-lsb&quot;<br>
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.1.1&quot;<br>
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 corei7&quot;<br>
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>
meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;krogoth:98c57bb512ea6790db8604fc=
f0b88c81651d2ab4&quot;<br>
meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;krogoth:b8c1=
99201ffe026485a14e1fcfc398e2b3551512&quot;<br>
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
meta-networking=C2=A0=C2=A0 <br>
meta-webserver=C2=A0=C2=A0=C2=A0 =3D &quot;master:303d9ea960e2d88281079a4e7=
1abe2cf8c815184&quot;<br>
  <br>
NOTE: Preparing RunQueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: php-5.6.18-r0 do_compile: oe_runmake failed<br>
ERROR: php-5.6.18-r0 do_compile: Function failed: do_compile (log file=20
is located at=20
/home/yocto/poky/build/tmp/work/corei7-64-poky-linux/php/5.6.18-r0/temp/log=
.do_compile.11301)<br>
ERROR: Logfile of failure stored in:=20
/home/yocto/poky/build/tmp/work/corei7-64-poky-linux/php/5.6.18-r0/temp/log=
.do_compile.11301</p><p>Here is where it fails</p><p>=C2=A0-lmcrypt -lltdl =
-lbz2 -lz -lm -lxml2 -lxml2 -lxml2 -lcrypt -lxml2 -lxml2 -lxml2 -lxml2 -lcr=
ypt=C2=A0 -o sapi/cgi/php-cgi<br>| /home/yocto/poky/build/tmp/sysroots/x86_=
64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ld: TSRM=
/.libs/TSRM.o: undefined reference to symbol &#39;pthread_sigmask@@GLIBC_2.=
2.5&#39;<br>| /home/yocto/poky/build/tmp/sysroots/intel-corei7-64/lib/libpt=
hread.so.0: error adding symbols: DSO missing from command line<br>| collec=
t2: error: ld returned 1 exit status<br>| make: *** [sapi/fpm/php-fpm] Erro=
r 1<br><br></p><p><br></p><p>Again thanks for any help.<br>
</p>
<p>bobt</p></div>

--001a113b18a08fc3dd0537866b83--
