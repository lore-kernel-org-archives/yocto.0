Return-Path: <ashishpandey@huawei.com>
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [58.251.152.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65888E0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 03:51:19 -0700 (PDT)
Received: from huawei.com (szxga03-in [172.24.2.9])
	by szxga03-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1800J7HDYQYH@szxga03-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 21 Mar 2012 18:47:14 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga03-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1800NUXDYQ0C@szxga03-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 21 Mar 2012 18:47:14 +0800 (CST)
Received: from szxeml201-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AHP18002; Wed,
	21 Mar 2012 18:47:14 +0800
Received: from SZXEML424-HUB.china.huawei.com (10.82.67.163)
	by szxeml201-edg.china.huawei.com (172.24.2.39) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Wed, 21 Mar 2012 18:47:07 +0800
Received: from SZXEML532-MBX.china.huawei.com ([fe80::79c7:7b0b:cec1:322c])
	by szxeml424-hub.china.huawei.com ([10.82.67.163])
	with mapi id 14.01.0323.003; Wed, 21 Mar 2012 18:47:13 +0800
Date: Wed, 21 Mar 2012 10:47:13 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
In-reply-to: <4F699923.5040901@communistcode.co.uk>
X-Originating-IP: [10.18.96.98]
To: Jack Mitchell <ml@communistcode.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E138A6AC0@szxeml532-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: [yocto] Build failure because of do_fectch in Yocto-1.1
Thread-index: AQHNBx9RdTEx3W5vdk2uffuV+HR2JZZ0MHHx//+94YCAAKMxgQ==
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <OFEA4B568B.582F38D7-ON652579C8.001AA88F-652579C8.001B875F@notesmail.huawei.com.cn>
	<F3906846C0EDD246B5CF75E8EDA3C47E138A620D@szxeml532-mbx.china.huawei.com>
	<4F699923.5040901@communistcode.co.uk>
Subject: Re: Build failure because of do_fectch in Yocto-1.1
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
X-List-Received-Date: Wed, 21 Mar 2012 10:51:20 -0000
Content-type: multipart/alternative;
	boundary="Boundary_(ID_4lP+O8lK88y+DYBuapZJTg)"
Content-language: en-IN

--Boundary_(ID_4lP+O8lK88y+DYBuapZJTg)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: quoted-printable

Hi Jack ,

  Thanks for you kind response, I tried changing content of local.conf but =
it did not work , Here is the change.

SOURCE_MIRROR_URL ?=3D "file://home/yocto/RPMs/"

INHERIT +=3D "own-mirrors"

BB_GENERATE_MIRROR_TARBALLS =3D "1"


CONF_VERSION =3D "1"

BB_GENERATE_MIRROR_TARBALLS =3D "1"

BB_NO_NETWORK =3D "1"

I am still getting the same error , following is the error . Please help.

| WARNING: Fetcher failure for URL: 'None'. Fetch command export HOME=3D"/h=
ome/Yocto"; export GIT_CONFIG=3D"/home/yocto/poky-edison-6.0/build/tmp/sysr=
oots/i686-linux/usr/etc/gitconfig"; export PATH=3D"/home/yocto/poky-edison-=
6.0/build/tmp/sysroots/i686-linux/usr/bin/i586-poky-linux:/home/yocto/poky-=
edison-6.0/build/tmp/sysroots/qemux86/usr/bin/crossscripts:/home/yocto/poky=
-edison-6.0/build/tmp/sysroots/i686-linux/usr/sbin:/home/yocto/poky-edison-=
6.0/build/tmp/sysroots/i686-linux/usr/bin:/home/yocto/poky-edison-6.0/build=
/tmp/sysroots/i686-linux/sbin:/home/yocto/poky-edison-6.0/build/tmp/sysroot=
s/i686-linux//bin:/home/yocto/poky-edison-6.0/scripts:/home/yocto/poky-edis=
on-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/poky-ed=
ison-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/poky-=
edison-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/pok=
y-edison-6.0/bitbake/bin/:/usr/lib/mpi/gcc/openmpi/bin:/home/Yocto/bin:/usr=
/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/usr/lib/mi=
t/bin:/usr/lib/mit/sbin:/home/yocto/poky-edison-6.0/scripts"; git remote ad=
d --mirror=3Dfetch origin git://git.yoctoproject.org/linux-yocto-3.0 failed=
 with signal 128, output:
| fatal: remote origin already exists.
|
| DEBUG: Trying MIRRORS
| ERROR: Function 'Fetcher failure for URL: 'git://git.yoctoproject.org/lin=
ux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-p=
c/base,meta;name=3Dmachine,meta'. Unable to fetch URL git://git.yoctoprojec=
t.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard=
/common-pc/base,meta;name=3Dmachine,meta from any source.' failed
|
NOTE: package linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f=
52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed
ERROR: Task 495 (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linu=
x-yocto_3.0.bb, do_fetch) failed with exit code '1'
ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3=
.0.bb' failed


Kindly help me to resolve this.




Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWE=
I, which is intended only for the person or entity whose address is listed =
above. Any use of the information contained herein in any way (including, b=
ut not limited to, total or partial disclosure, reproduction, or disseminat=
ion) by persons other than the intended recipient(s) is prohibited. If you =
receive this e-mail in error, please notify the sender by phone or email im=
mediately and delete it!

________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Jack Mitchell [ml@communistcode.co.uk]
Sent: 21 March 2012 14:32:27
To: yocto@yoctoproject.org
Subject: Re: [yocto] Build failure because of do_fectch in Yocto-1.1

On 21/03/12 05:01, Ashish Pandey wrote:
Hi All ,

  I am new to Yocto and I am trying to build linux image using Yocto-1.1 . =
I am not able to build completely , It is giving following error.

NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Started
NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Succeede=
d
ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3=
.0.bb' failed


I think it is not able to fetch linux-yocto_3.0 from git://git.yoctoproject=
.org/linux-yocto-3.0.

I do not have internet setup in my build machine, I have downloaded all the=
 packages from a different machine and i have copied it to the build machin=
e.

Following are the Build Machine ,Yocto setup and Error details:

1) Build machine:
Yocto@linux-todd:/home/yocto/poky-edison-6.0<mailto:Yocto@linux-todd:/home/=
yocto/poky-edison-6.0>> uname -a
Linux linux-todd 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 20=
11 (187dde0) i686 i686 i386 GNU/Linux

It is Open Suse 12.1.

2) Yocto Setup :
Yocto@linux-todd:/home/yocto/poky-edison-6.0/build<mailto:Yocto@linux-todd:=
/home/yocto/poky-edison-6.0/build>> bitbake -k core-image-minimal
Loading cache: 100% |######################################################=
###########################################################################=
######| ETA:  00:00:00
Loaded 1036 entries from dependency cache.

OE Build Configuration:
BB_VERSION        =3D "1.13.3"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-yocto        =3D "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue

3) Error :

NOTE: package linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f=
52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed
ERROR: Task 495 (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linu=
x-yocto_3.0.bb, do_fetch) failed with exit code '1'
ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3=
.0.bb' failed

Is there anyway to build yocto on a machine which does not have internet an=
d git ?
Please help me to fix this issue.








Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWE=
I, which is intended only for the person or entity whose address is listed =
above. Any use of the information contained herein in any way (including, b=
ut not limited to, total or partial disclosure, reproduction, or disseminat=
ion) by persons other than the intended recipient(s) is prohibited. If you =
receive this e-mail in error, please notify the sender by phone or email im=
mediately and delete it!






_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


HI Ashish,

There is a short paragraph on the wiki[1] which gives a brief explanation o=
n how to go about creating your own mirror of the downloaded files.

[1] https://wiki.yoctoproject.org/wiki/How_do_I

Regards,

--

  Jack Mitchell (jack@embed.me.uk<mailto:jack@embed.me.uk>)
  Embedded Systems Engineer
  http://www.embed.me.uk

--


--Boundary_(ID_4lP+O8lK88y+DYBuapZJTg)
Content-type: text/html; charset=iso-8859-1
Content-transfer-encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body bgcolor=3D"#ffffff" fPStyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<p><font face=3D"Arial">Hi Jack ,</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; Thanks for you kind response,&n=
bsp;I tried changing content of local.conf but it did not work , Here is th=
e change.</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">SOURCE_MIRROR_URL ?=3D =
&quot;</font><a href=3D"file://home/yocto/RPMs/" target=3D"_blank"><font co=
lor=3D"blue" size=3D"2" face=3D"sans-serif">file://home/yocto/RPMs/</font><=
/a><font color=3D"blue" size=3D"2" face=3D"sans-serif">&quot;</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">INHERIT &#43;=3D &quot;=
own-mirrors&quot;</font> <br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">BB_GENERATE_MIRROR_TARB=
ALLS =3D &quot;1&quot;</font>
<br>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">CONF_VERSION =3D &quot;=
1&quot;</font> <br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">BB_GENERATE_MIRROR_TARB=
ALLS =3D &quot;1&quot;</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">BB_NO_NETWORK =3D &quot=
;1&quot; </font><br>
<br>
<font size=3D"2" face=3D"sans-serif">I am still getting the same error , fo=
llowing is the error . Please help.</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">| WARNING: Fetcher fail=
ure for URL: 'None'. Fetch command export HOME=3D&quot;/home/Yocto&quot;; e=
xport GIT_CONFIG=3D&quot;/home/yocto/poky-edison-6.0/build/tmp/sysroots/i68=
6-linux/usr/etc/gitconfig&quot;; export PATH=3D&quot;/home/yocto/poky-ediso=
n-6.0/build/tmp/sysroots/i686-linux/usr/bin/i586-poky-linux:/home/yocto/pok=
y-edison-6.0/build/tmp/sysroots/qemux86/usr/bin/crossscripts:/home/yocto/po=
ky-edison-6.0/build/tmp/sysroots/i686-linux/usr/sbin:/home/yocto/poky-ediso=
n-6.0/build/tmp/sysroots/i686-linux/usr/bin:/home/yocto/poky-edison-6.0/bui=
ld/tmp/sysroots/i686-linux/sbin:/home/yocto/poky-edison-6.0/build/tmp/sysro=
ots/i686-linux//bin:/home/yocto/poky-edison-6.0/scripts:/home/yocto/poky-ed=
ison-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/poky-=
edison-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/pok=
y-edison-6.0/bitbake/bin/:/home/yocto/poky-edison-6.0/scripts:/home/yocto/p=
oky-edison-6.0/bitbake/bin/:/usr/lib/mpi/gcc/openmpi/bin:/home/Yocto/bin:/u=
sr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/usr/lib/=
mit/bin:/usr/lib/mit/sbin:/home/yocto/poky-edison-6.0/scripts&quot;;
 git remote add --mirror=3Dfetch origin git://git.yoctoproject.org/linux-yo=
cto-3.0 failed with signal 128, output:</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">| fatal: remote origin =
already exists.</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">|</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">| DEBUG: Trying MIRRORS=
</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">| ERROR: Function 'Fetc=
her failure for URL: 'git://git.yoctoproject.org/linux-yocto-3.0;protocol=
=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-pc/base,meta;name=3Dma=
chine,meta'. Unable to fetch URL git://git.yoctoproject.org/linux-yocto-3.0=
;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-pc/base,meta;=
name=3Dmachine,meta
 from any source.' failed</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">|</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">NOTE: package linux-yoc=
to-3.0.4&#43;git1&#43;d05450e4aef02c1b7137398ab3a9f8f96da74f52_1&#43;726718=
08fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">ERROR: Task 495 (/home/=
yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetc=
h) failed with exit code '1'</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">ERROR: '/home/yocto/pok=
y-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed</font>
<br>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Kindly help me to resolve this.</font>=
 <br>
<br>
</p>
<div>
<p>&nbsp;</p>
<div style=3D"FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
<p><font color=3D"#000080">Regards,</font></p>
<p><font color=3D"#000080">Ashish</font></p>
<p><font color=3D"#000080">Huawei Technology</font></p>
<p><font color=3D"#000080"></font>&nbsp;</p>
<p><font color=3D"#666699"><font size=3D"2"><font face=3D"Calibri">This e-m=
ail and its attachments contain confidential information from HUAWEI, which=
 is intended only for the person or entity whose address is listed above. A=
ny use of the information contained herein
 in any way (including, but not limited to, total or partial disclosure, re=
production, or dissemination) by persons other than the intended recipient(=
s) is prohibited. If you receive this e-mail in error, please notify the se=
nder by phone or email immediately
 and delete it! </font></font><br>
</font></p>
</div>
</div>
<div style=3D"FONT-FAMILY: Times New Roman; COLOR: #000000; FONT-SIZE: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"DIRECTION: ltr" id=3D"divRpF157009"><font color=3D"#000000" s=
ize=3D"2" face=3D"Tahoma"><b>From:</b> yocto-bounces@yoctoproject.org [yoct=
o-bounces@yoctoproject.org] on behalf of Jack Mitchell [ml@communistcode.co=
.uk]<br>
<b>Sent:</b> 21 March 2012 14:32:27<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Build failure because of do_fectch in Yocto-1.1=
<br>
</font><br>
</div>
<div></div>
<div>On 21/03/12 05:01, Ashish Pandey wrote:
<blockquote type=3D"cite"><style id=3D"owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
<div style=3D"FONT-FAMILY: Tahoma; DIRECTION: ltr; COLOR: #000000; FONT-SIZ=
E: 10pt">
<div><font size=3D"2" face=3D"sans-serif">Hi All , </font><br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; I am new to Yocto and I am tryi=
ng to build linux image using Yocto-1.1 . I am not able to build completely=
 , It is giving following error.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">NOTE: package core-image-minimal-1.0-r=
0: task do_populate_sysroot: Started</font>
<br>
<font size=3D"2" face=3D"sans-serif">NOTE: package core-image-minimal-1.0-r=
0: task do_populate_sysroot: Succeeded</font>
<br>
<font size=3D"2" face=3D"sans-serif">ERROR: '/home/yocto/poky-edison-6.0/me=
ta/recipes-kernel/linux/linux-yocto_3.0.bb' failed</font>
<br>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">I think it is not able to fetch linux-=
yocto_3.0 from git://git.yoctoproject.org/linux-yocto-3.0.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">I do not have internet setup in my bui=
ld machine, I have downloaded all the packages from a different machine and=
 i have copied it to the build machine.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Following are the Build Machine ,Yocto=
 setup and Error details:</font></div>
<div><br>
<font size=3D"2" face=3D"sans-serif"><b>1) Build machine:</b></font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif"><a class=3D"moz-txt-lin=
k-abbreviated" href=3D"mailto:Yocto@linux-todd:/home/yocto/poky-edison-6.0"=
 target=3D"_blank">Yocto@linux-todd:/home/yocto/poky-edison-6.0</a>&gt; una=
me -a</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">Linux linux-todd 3.1.0-=
1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 =
i386 GNU/Linux</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">It is Open Suse 12.1.</=
font> <br>
<br>
<font size=3D"2" face=3D"sans-serif"><b>2) Yocto Setup :</b></font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif"><a class=3D"moz-txt-lin=
k-abbreviated" href=3D"mailto:Yocto@linux-todd:/home/yocto/poky-edison-6.0/=
build" target=3D"_blank">Yocto@linux-todd:/home/yocto/poky-edison-6.0/build=
</a>&gt; bitbake -k core-image-minimal</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">Loading cache: 100% |##=
###########################################################################=
##########################################################| ETA: &nbsp;00:0=
0:00</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">Loaded 1036 entries fro=
m dependency cache.</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">OE Build Configuration:=
</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">BB_VERSION &nbsp; &nbsp=
; &nbsp; &nbsp;=3D &quot;1.13.3&quot;</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">TARGET_ARCH &nbsp; &nbs=
p; &nbsp; =3D &quot;i586&quot;</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">TARGET_OS &nbsp; &nbsp;=
 &nbsp; &nbsp; =3D &quot;linux&quot;</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">MACHINE &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; =3D &quot;qemux86&quot;</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">DISTRO &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;=3D &quot;poky&quot;</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">DISTRO_VERSION &nbsp; &=
nbsp;=3D &quot;1.1&quot;</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">TUNE_FEATURES &nbsp; &n=
bsp; =3D &quot;m32 i586&quot;</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">TARGET_FPU &nbsp; &nbsp=
; &nbsp; &nbsp;=3D &quot;&quot;</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">meta</font> <br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">meta-yocto &nbsp; &nbsp=
; &nbsp; &nbsp;=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</font>
<br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">NOTE: Resolving any mis=
sing task queue dependencies</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">NOTE: Preparing runqueu=
e</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif"><b>3) Error :</b></font> <br>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">NOTE: package linux-yoc=
to-3.0.4&#43;git1&#43;d05450e4aef02c1b7137398ab3a9f8f96da74f52_1&#43;726718=
08fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">ERROR: Task 495 (/home/=
yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetc=
h) failed with exit code '1'</font>
<br>
<font color=3D"blue" size=3D"2" face=3D"sans-serif">ERROR: '/home/yocto/pok=
y-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Is there anyway to build yocto on a ma=
chine which does not have internet and git ?</font>
<br>
<font size=3D"2" face=3D"sans-serif">Please help me to fix this issue.</fon=
t> <br>
<br>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
<p>&nbsp;</p>
<div style=3D"FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
<p><font color=3D"#000080">Regards,</font></p>
<p><font color=3D"#000080">Ashish</font></p>
<p><font color=3D"#000080">Huawei Technology</font></p>
<p>&nbsp;</p>
<p><font color=3D"#666699"><font size=3D"2"><font face=3D"Calibri">This e-m=
ail and its attachments contain confidential information from HUAWEI, which=
 is intended only for the person or entity whose address is listed above. A=
ny use of the information contained herein
 in any way (including, but not limited to, total or partial disclosure, re=
production, or dissemination) by persons other than the intended recipient(=
s) is prohibited. If you receive this e-mail in error, please notify the se=
nder by phone or email immediately
 and delete it! </font></font><br>
</font></p>
</div>
</div>
<div style=3D"FONT-FAMILY: Times New Roman; COLOR: #000000; FONT-SIZE: 16px=
">
<div style=3D"DIRECTION: ltr" id=3D"divRpF799243">&nbsp;</div>
<div>&nbsp;</div>
</div>
</div>
<br>
<fieldset class=3D"mimeAttachmentHeader" target=3D"_blank"></fieldset> <br>
<pre>_______________________________________________
yocto mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank">yocto@yoctoproject.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yo=
cto</a>
</pre>
</blockquote>
<tt><br>
HI Ashish,<br>
<br>
There is a short paragraph on the wiki[1] which gives a brief explanation o=
n how to go about creating your own mirror of the downloaded files.<br>
</tt><tt><br>
[1] <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoctoproject.or=
g/wiki/How_do_I" target=3D"_blank">
https://wiki.yoctoproject.org/wiki/How_do_I</a><br>
<br>
Regards,</tt><br>
<pre class=3D"moz-signature" cols=3D"72">--=20

  Jack Mitchell (<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jack@=
embed.me.uk" target=3D"_blank">jack@embed.me.uk</a>)            =20
  Embedded Systems Engineer
  <a class=3D"moz-txt-link-freetext" href=3D"http://www.embed.me.uk" target=
=3D"_blank">http://www.embed.me.uk</a>

--
</pre>
</div>
</div>
</div>
</body>
</html>

--Boundary_(ID_4lP+O8lK88y+DYBuapZJTg)--
