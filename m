Return-Path: <jingzhe.yu@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6EE5E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 22:46:18 -0800 (PST)
Received: by lagw12 with SMTP id w12so4012845lag.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 22:46:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jingzhe.yu@gmail.com designates
	10.152.114.133 as permitted sender) client-ip=10.152.114.133; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jingzhe.yu@gmail.com
	designates 10.152.114.133 as permitted sender)
	smtp.mail=jingzhe.yu@gmail.com;
	dkim=pass header.i=jingzhe.yu@gmail.com
Received: from mr.google.com ([10.152.114.133])
	by 10.152.114.133 with SMTP id jg5mr4479589lab.37.1330152377678
	(num_hops = 1); Fri, 24 Feb 2012 22:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fsp6nj5chf+kGsnVtBNW6Y1GlLVYf7CWQ3Ds8j+E+/A=;
	b=bxDIE1S3g9v0J8+OdS45+l6iAaDPQUirmcWS7fQjNMplKxWK0HqggaNHyw6Ee4sqnI
	8pePDcc1mlXugUHikyAXO6sg7XoptY4fz6OBdKyjyeTs1pNNnPEpdZcd0ynW24O9BGB+
	zof8GPF+1BI7DGXc8FKdyBIyelJyfMQQUhGug=
MIME-Version: 1.0
Received: by 10.152.114.133 with SMTP id jg5mr3673063lab.37.1330152377592;
	Fri, 24 Feb 2012 22:46:17 -0800 (PST)
Received: by 10.112.58.52 with HTTP; Fri, 24 Feb 2012 22:46:17 -0800 (PST)
Date: Sat, 25 Feb 2012 08:46:17 +0200
Message-ID: <CA+mikA8JgrtBFKJ0uTaAtpEWbdru59z_FbXDV=YvTk=+ahtacQ@mail.gmail.com>
From: JINGZHE YU <jingzhe.yu@gmail.com>
To: yocto@yoctoproject.org
Subject: apt-native_0.7.14.bb failed
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
X-List-Received-Date: Sat, 25 Feb 2012 06:46:19 -0000
Content-Type: multipart/alternative; boundary=f46d040839b3f6aa0d04b9c43b1b

--f46d040839b3f6aa0d04b9c43b1b
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I tried to build image with: bitbake -k core-image-sato, with
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2

but it failed, here is error message:

-------------------------------------------------------------------------------------------
NOTE: Running task 5229 of 5288 (ID: 82,
/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
apt-native_0.7.14.bb, do_install)
NOTE: package apt-native-0.7.14-r5: task do_install: Started
ERROR: Function 'do_install_base' failed (see
/home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
for further information)
ERROR: Logfile of failure stored in:
/home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
Log data follows:
| oe_libinstall: cd bin
| oe_libinstall: install -d
/home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/image/home/jingzhe/yocto/edison-6.0-build/tmp/sysroots/i686-linux/usr/lib//
| ERROR: oe_libinstall: unable to locate shared library
| ERROR: Function 'do_install_base' failed (see
/home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
for further information)
NOTE: package apt-native-0.7.14-r5: task do_install: Failed
ERROR: Task 82
(/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
apt-native_0.7.14.bb, do_install) failed with exit code '1'
ERROR: '/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
apt-native_0.7.14.bb' failed
--------------------------------------------------------------------------------------------------------------------------

does anybody know how to solve it?

br,

Jingzhe

--f46d040839b3f6aa0d04b9c43b1b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I tried to build image with:=A0<span style=3D"backgr=
ound-color:rgb(255,255,255);color:rgb(51,51,51)">bitbake -k core-image-sato=
, with=A0</span><span style=3D"background-color:rgb(255,255,255);color:rgb(=
51,51,51)"><a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoct=
o-1.1/poky-edison-6.0.tar.bz2">http://downloads.yoctoproject.org/releases/y=
octo/yocto-1.1/poky-edison-6.0.tar.bz2</a></span></div>
<div><span style=3D"background-color:rgb(255,255,255);color:rgb(51,51,51)">=
<br></span></div><div><span style=3D"background-color:rgb(255,255,255);colo=
r:rgb(51,51,51)">but it failed, here is error message:</span></div><div><sp=
an style=3D"background-color:rgb(255,255,255);color:rgb(51,51,51)"><br>
</span></div><div><span style=3D"background-color:rgb(255,255,255);color:rg=
b(51,51,51)">--------------------------------------------------------------=
-----------------------------</span></div><div><span style=3D"background-co=
lor:rgb(255,255,255);color:rgb(51,51,51)"><div>
NOTE: Running task 5229 of 5288 (ID: 82, /home/jingzhe/yocto/poky-edison-6.=
0/meta/recipes-devtools/apt/<a href=3D"http://apt-native_0.7.14.bb">apt-nat=
ive_0.7.14.bb</a>, do_install)</div><div>NOTE: package apt-native-0.7.14-r5=
: task do_install: Started</div>
<div>ERROR: Function &#39;do_install_base&#39; failed (see /home/jingzhe/yo=
cto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_i=
nstall.28773 for further information)</div><div>ERROR: Logfile of failure s=
tored in: /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-nati=
ve-0.7.14-r5/temp/log.do_install.28773</div>
<div>Log data follows:</div><div>| oe_libinstall: cd bin</div><div>| oe_lib=
install: install -d /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linu=
x/apt-native-0.7.14-r5/image/home/jingzhe/yocto/edison-6.0-build/tmp/sysroo=
ts/i686-linux/usr/lib//</div>
<div>| ERROR: oe_libinstall: unable to locate shared library</div><div>| ER=
ROR: Function &#39;do_install_base&#39; failed (see /home/jingzhe/yocto/edi=
son-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.=
28773 for further information)</div>
<div>NOTE: package apt-native-0.7.14-r5: task do_install: Failed</div><div>=
ERROR: Task 82 (/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/a=
pt/<a href=3D"http://apt-native_0.7.14.bb">apt-native_0.7.14.bb</a>, do_ins=
tall) failed with exit code &#39;1&#39;</div>
<div>ERROR: &#39;/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/=
apt/<a href=3D"http://apt-native_0.7.14.bb">apt-native_0.7.14.bb</a>&#39; f=
ailed</div><div>-----------------------------------------------------------=
---------------------------------------------------------------</div>
<div><br></div><div>does anybody know how to solve it?</div><div><br></div>=
<div>br,</div><div><br></div><div>Jingzhe</div></span></div>

--f46d040839b3f6aa0d04b9c43b1b--
