Return-Path: <pwr@iae.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26237E00B23; Mon, 14 Oct 2019 09:21:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.75.39.7 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Oct 2019 09:21:45 PDT
Received: from cpsmtpb-ews04.kpnxchange.com (cpsmtpb-ews04.kpnxchange.com
	[213.75.39.7])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD55CE0053F
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 09:21:45 -0700 (PDT)
Received: from cpsps-ews06.kpnxchange.com ([10.94.84.173]) by
	cpsmtpb-ews04.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Mon, 14 Oct 2019 18:20:43 +0200
X-Brand: +YTO/YbK+g==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.3 cv=IPV89TnG c=1 sm=1 tr=0 cx=a_idp_e
	a=ShNidqeCEQB33TAKUUzslw==:117 a=ShNidqeCEQB33TAKUUzslw==:17
	a=8SZ6bD3cDFYA:10 a=XobE76Q3jBoA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=iGHA9ds3AAAA:8 a=VjKSC4cIP09QOCRXVZIA:9 a=QEXdDO2ut3YA:10
	a=negAFZogEOMA:10 a=dD6BtpIPcVMA:10 a=xAq5Nqkp7Ds6LMrI0foA:9
	a=w7t-VWkuMj3ZSn4C:21 a=_W_S_7VecoQA:10 a=mRL2PqImlv_M08bXSgIA:9
	a=zAjxzcC9aBgA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.11]) by cpsps-ews06.kpnxchange.com
	over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	Mon, 14 Oct 2019 18:20:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:to:subject:from;
	bh=/VOlbE0O0uxlB6NA8rc3FsQq6i5eBYyyEbAyAy3n1rs=;
	b=VEXzll8AuMG4Ma6pBVVum54l4W8bT/3uA0G7pwVjV/zrmexPmzrXdNzJ+WRi2xY74H3ZnwHRrXDK6
	m4+mNwJhDiJ597e8+SwTlZdYfyp0cfhA3CxaFoz+/7obtZO+xmi2gejx3VVGV0IqiDwi1R2zU0ETaQ
	isQDN/+JvGPP/jWE=
X-Originating-IP: 86.89.1.39
Received: from [192.168.2.198] (unknown [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id 91cfe863-ee9e-11e9-a62b-00505699b758;
	Mon, 14 Oct 2019 18:20:43 +0200 (CEST)
From: pwr@iae.nl
To: yocto@yoctoproject.org
Message-ID: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
Date: Mon, 14 Oct 2019 18:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Oct 2019 16:20:43.0089 (UTC)
	FILETIME=[53999410:01D582AB]
X-RcptDomain: yoctoproject.org
Subject: NooB: qemu-native compile error during bitbake core-image-sato
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pwr@iae.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Oct 2019 16:21:48 -0000
X-Groupsio-MsgNum: 46933
Content-Type: multipart/mixed; boundary="------------B1046BF38278C28898B42444"
Content-Language: en-GB

--------------B1046BF38278C28898B42444
Content-Type: multipart/alternative;
 boundary="------------2B78EEE0AAA12AE6C0E7D1E8"

--------------2B78EEE0AAA12AE6C0E7D1E8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello list,

First time here so, hi there :-) I'm new to yocto but not new to linux.

I'm following the Yocto Project Quick Build manual=20
(https://www.yoctoproject.org/docs/2.7.1/brief-yoctoprojectqs/brief-yocto=
projectqs.html)
on an Arch (Manjaro) machine (uname -r: 4.19.79-1-MANJARO). I know=20
Manjaro is not an official supported distribution but I'm hopping on=20
some help nevertheless.

My build stops at:
 >> bitbake core-image-sato

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "1.42.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "manjaro"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "i586-poky-linux"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "qemux86"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "2.7.1"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m32 i586"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 ""
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=20
"my-yocto-2.7.1:38d5c8ea98cfa49825c473eba8984c12edf062be"

WARNING: Your host glibc verson (2.30) is newer than that in uninative=20
(2.29). Disabling uninative so that sstate is not corrupted.

ERROR: qemu-native-3.1.0-r0 do_compile: oe_runmake failed
ERROR: qemu-native-3.1.0-r0 do_compile: Function failed: do_compile (log =

file is located at=20
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile=
=2E1259)
ERROR: Logfile of failure stored in:=20
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile=
=2E1259

One of the errors in the log.do_compile.1259 file (file attached):
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux-us=
er/syscall.c:253:16:=20
error: static declaration of =E2=80=98gettid=E2=80=99 follows non-static =
declaration
 =C2=A0 253 | _syscall0(int, gettid)
OR
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux-us=
er/ioctls.h:223:9:=20
error: =E2=80=98SIOCGSTAMPNS=E2=80=99 undeclared here (not in a function)=
; did you mean=20
=E2=80=98SIOCGSTAMP_OLD=E2=80=99?
 =C2=A0 223 |=C2=A0=C2=A0 IOCTL(SIOCGSTAMPNS, IOC_R, MK_PTR(MK_STRUCT(STR=
UCT_timespec)))


I do not know enough to understand where this error comes from. But I=20
suspect it may have to do with the warning I got just before the failure:=


Is there a way to tell the build system to ignore the newer version=20
glibc? And use the 2.29 version.
Or can someone help me to debug this error?


Thanks,
Robert.


--------------2B78EEE0AAA12AE6C0E7D1E8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Hello list,<br>
    <br>
    First time here so, hi there :-) I'm new to yocto but not new to
    linux.<br>
    <br>
    I'm following the Yocto Project Quick Build manual
(<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/=
docs/2.7.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html">https://www.yo=
ctoproject.org/docs/2.7.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html<=
/a>)<br>
    on an Arch (Manjaro) machine (uname -r: 4.19.79-1-MANJARO). I know
    Manjaro is not an official supported distribution but I'm hopping on
    some help nevertheless.<br>
    <br>
    My build stops at:<br>
    &gt;&gt; bitbake core-image-sato<br>
    <br>
    Build Configuration:<br>
    BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "1.42.0"<br>
    BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D "x86_64-linux"<br>
    NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "manjaro"<br>
    TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "i586-poky-linux"<br>
    MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "qemux86"<br>
    DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D "poky"<br>
    DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "2.7.1"<br>
    TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m32 i586=
"<br>
    TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D ""<br>
    meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
    meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>
    meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D
    "my-yocto-2.7.1:38d5c8ea98cfa49825c473eba8984c12edf062be"<br>
    <br>
    WARNING: Your host glibc verson (2.30) is newer than that in
    uninative (2.29). Disabling uninative so that sstate is not
    corrupted.<br>
    <br>
    ERROR: qemu-native-3.1.0-r0 do_compile: oe_runmake failed<br>
    ERROR: qemu-native-3.1.0-r0 do_compile: Function failed: do_compile
    (log file is located at
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile=
=2E1259)<br>
    ERROR: Logfile of failure stored in:
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile=
=2E1259<br>
    <br>
    One of the errors in the log.do_compile.1259 file (file attached):<br=
>
    <font size=3D"+1">poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-=
r0/qemu-3.1.0/linux-user/syscall.c:253:16:
      error: static declaration of =E2=80=98gettid=E2=80=99 follows non-s=
tatic
      declaration<br>
      =C2=A0 253 | _syscall0(int, gettid)</font><br>
    OR<br>
poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux-us=
er/ioctls.h:223:9:
    error: =E2=80=98SIOCGSTAMPNS=E2=80=99 undeclared here (not in a funct=
ion); did you
    mean =E2=80=98SIOCGSTAMP_OLD=E2=80=99?<br>
    =C2=A0 223 |=C2=A0=C2=A0 IOCTL(SIOCGSTAMPNS, IOC_R,
    MK_PTR(MK_STRUCT(STRUCT_timespec)))<br>
    <br>
    <br>
    I do not know enough to understand where this error comes from. But
    I suspect it may have to do with the warning I got just before the
    failure:<br>
    =C2=A0<br>
    Is there a way to tell the build system to ignore the newer version
    glibc? And use the 2.29 version.<br>
    Or can someone help me to debug this error?<br>
    <br>
    <br>
    Thanks,<br>
    Robert.=C2=A0 <br>
    <br>
  </body>
</html>

--------------2B78EEE0AAA12AE6C0E7D1E8--

--------------B1046BF38278C28898B42444
Content-Type: text/plain; charset=UTF-8;
 name="log.do_compile.1259"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="log.do_compile.1259"

REVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb21waWxlCk5PVEU6IG1ha2UgLWog
MiBMRD1sZCAgQVI9YXIgT0JKQ09QWT1vYmpjb3B5IExERkxBR1M9LUxwb2t5L2J1aWxkL3RtcC93
b3JrL3g4Nl82NC1saW51eC9xZW11LW5hdGl2ZS8zLjEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRp
dmUvdXNyL2xpYiAgICAgICAgICAgICAgICAgICAgICAgICAtTHBva3kvYnVpbGQvdG1wL3dvcmsv
eDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9s
aWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC0tZW5hYmxlLW5ldy1kdGFncyAgICAgICAg
ICAgICAgICAgICAgICAgICAtV2wsLXJwYXRoLWxpbmsscG9reS9idWlsZC90bXAvd29yay94ODZf
NjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9s
aWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1ycGF0aC1saW5rLHBva3kvYnVpbGQvdG1w
L3dvcmsveDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3JlY2lwZS1zeXNyb290LW5h
dGl2ZS9saWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1ycGF0aCxwb2t5L2J1aWxkL3Rt
cC93b3JrL3g4Nl82NC1saW51eC9xZW11LW5hdGl2ZS8zLjEuMC1yMC9yZWNpcGUtc3lzcm9vdC1u
YXRpdmUvdXNyL2xpYiAgICAgICAgICAgICAgICAgICAgICAgICAtV2wsLXJwYXRoLHBva3kvYnVp
bGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3JlY2lwZS1zeXNy
b290LW5hdGl2ZS9saWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1PMSAtZnVzZS1sZD1i
ZmQKICBDQyAgICAgIGFhcmNoNjQtbGludXgtdXNlci9saW51eC11c2VyL3N5c2NhbGwubwogIEND
ICAgICAgYXJtLWxpbnV4LXVzZXIvbGludXgtdXNlci9zeXNjYWxsLm8KcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9saW51eC11
c2VyL3N5c2NhbGwuYzoyNTM6MTY6IGVycm9yOiBzdGF0aWMgZGVjbGFyYXRpb24gb2Yg4oCYZ2V0
dGlk4oCZIGZvbGxvd3Mgbm9uLXN0YXRpYyBkZWNsYXJhdGlvbgogIDI1MyB8IF9zeXNjYWxsMChp
bnQsIGdldHRpZCkKICAgICAgfCAgICAgICAgICAgICAgICBefn5+fn4KcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9saW51eC11
c2VyL3N5c2NhbGwuYzoxODQ6MTM6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYX3N5
c2NhbGww4oCZCiAgMTg0IHwgc3RhdGljIHR5cGUgbmFtZSAodm9pZCkgICBcCiAgICAgIHwgICAg
ICAgICAgICAgXn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9pbmNsdWRlL3VuaXN0ZC5o
OjExNzAsCiAgICAgICAgICAgICAgICAgZnJvbSBwb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1s
aW51eC9xZW11LW5hdGl2ZS8zLjEuMC1yMC9xZW11LTMuMS4wL2luY2x1ZGUvcWVtdS9vc2RlcC5o
OjkwLAogICAgICAgICAgICAgICAgIGZyb20gcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGlu
dXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9saW51eC11c2VyL3N5c2NhbGwuYzoy
MDoKL3Vzci9pbmNsdWRlL2JpdHMvdW5pc3RkX2V4dC5oOjM0OjE2OiBub3RlOiBwcmV2aW91cyBk
ZWNsYXJhdGlvbiBvZiDigJhnZXR0aWTigJkgd2FzIGhlcmUKICAgMzQgfCBleHRlcm4gX19waWRf
dCBnZXR0aWQgKHZvaWQpIF9fVEhST1c7CiAgICAgIHwgICAgICAgICAgICAgICAgXn5+fn5+CnBv
a3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3FlbXUt
My4xLjAvbGludXgtdXNlci9zeXNjYWxsLmM6MjUzOjE2OiBlcnJvcjogc3RhdGljIGRlY2xhcmF0
aW9uIG9mIOKAmGdldHRpZOKAmSBmb2xsb3dzIG5vbi1zdGF0aWMgZGVjbGFyYXRpb24KICAyNTMg
fCBfc3lzY2FsbDAoaW50LCBnZXR0aWQpCiAgICAgIHwgICAgICAgICAgICAgICAgXn5+fn5+CnBv
a3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3FlbXUt
My4xLjAvbGludXgtdXNlci9zeXNjYWxsLmM6MTg0OjEzOiBub3RlOiBpbiBkZWZpbml0aW9uIG9m
IG1hY3JvIOKAmF9zeXNjYWxsMOKAmQogIDE4NCB8IHN0YXRpYyB0eXBlIG5hbWUgKHZvaWQpICAg
XAogICAgICB8ICAgICAgICAgICAgIF5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3IvaW5j
bHVkZS91bmlzdGQuaDoxMTcwLAogICAgICAgICAgICAgICAgIGZyb20gcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9pbmNsdWRl
L3FlbXUvb3NkZXAuaDo5MCwKICAgICAgICAgICAgICAgICBmcm9tIHBva3kvYnVpbGQvdG1wL3dv
cmsveDg2XzY0LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3FlbXUtMy4xLjAvbGludXgtdXNl
ci9zeXNjYWxsLmM6MjA6Ci91c3IvaW5jbHVkZS9iaXRzL3VuaXN0ZF9leHQuaDozNDoxNjogbm90
ZTogcHJldmlvdXMgZGVjbGFyYXRpb24gb2Yg4oCYZ2V0dGlk4oCZIHdhcyBoZXJlCiAgIDM0IHwg
ZXh0ZXJuIF9fcGlkX3QgZ2V0dGlkICh2b2lkKSBfX1RIUk9XOwogICAgICB8ICAgICAgICAgICAg
ICAgIF5+fn5+fgpwb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9xZW11LW5hdGl2ZS8z
LjEuMC1yMC9xZW11LTMuMS4wL2xpbnV4LXVzZXIvaW9jdGxzLmg6MjIyOjk6IGVycm9yOiDigJhT
SU9DR1NUQU1Q4oCZIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24pOyBkaWQgeW91
IG1lYW4g4oCYU0lPQ1NSQVJQ4oCZPwogIDIyMiB8ICAgSU9DVEwoU0lPQ0dTVEFNUCwgSU9DX1Is
IE1LX1BUUihNS19TVFJVQ1QoU1RSVUNUX3RpbWV2YWwpKSkKICAgICAgfCAgICAgICAgIF5+fn5+
fn5+fn4KcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAt
cjAvcWVtdS0zLjEuMC9saW51eC11c2VyL3N5c2NhbGwuYzo0NzUwOjIzOiBub3RlOiBpbiBkZWZp
bml0aW9uIG9mIG1hY3JvIOKAmElPQ1RM4oCZCiA0NzUwIHwgICAgIHsgVEFSR0VUXyAjIyBjbWQs
IGNtZCwgI2NtZCwgYWNjZXNzLCAwLCB7ICBfX1ZBX0FSR1NfXyB9IH0sCiAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgIF5+fgpwb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9xZW11
LW5hdGl2ZS8zLjEuMC1yMC9xZW11LTMuMS4wL2xpbnV4LXVzZXIvaW9jdGxzLmg6MjIyOjk6IGVy
cm9yOiDigJhTSU9DR1NUQU1Q4oCZIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24p
OyBkaWQgeW91IG1lYW4g4oCYU0lPQ1NSQVJQ4oCZPwogIDIyMiB8ICAgSU9DVEwoU0lPQ0dTVEFN
UCwgSU9DX1IsIE1LX1BUUihNS19TVFJVQ1QoU1RSVUNUX3RpbWV2YWwpKSkKICAgICAgfCAgICAg
ICAgIF5+fn5+fn5+fn4KcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvcWVtdS1uYXRp
dmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9saW51eC11c2VyL3N5c2NhbGwuYzo0NzUwOjIzOiBub3Rl
OiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmElPQ1RM4oCZCiA0NzUwIHwgICAgIHsgVEFSR0VU
XyAjIyBjbWQsIGNtZCwgI2NtZCwgYWNjZXNzLCAwLCB7ICBfX1ZBX0FSR1NfXyB9IH0sCiAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgIF5+fgpwb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1s
aW51eC9xZW11LW5hdGl2ZS8zLjEuMC1yMC9xZW11LTMuMS4wL2xpbnV4LXVzZXIvaW9jdGxzLmg6
MjIzOjk6IGVycm9yOiDigJhTSU9DR1NUQU1QTlPigJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4g
YSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhTSU9DR1NUQU1QX09MROKAmT8KICAyMjMgfCAg
IElPQ1RMKFNJT0NHU1RBTVBOUywgSU9DX1IsIE1LX1BUUihNS19TVFJVQ1QoU1RSVUNUX3RpbWVz
cGVjKSkpCiAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn4KcG9reS9idWlsZC90bXAvd29yay94
ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9saW51eC11c2VyL3N5
c2NhbGwuYzo0NzUwOjIzOiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmElPQ1RM4oCZ
CiA0NzUwIHwgICAgIHsgVEFSR0VUXyAjIyBjbWQsIGNtZCwgI2NtZCwgYWNjZXNzLCAwLCB7ICBf
X1ZBX0FSR1NfXyB9IH0sCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIF5+fgpwb2t5L2J1
aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9xZW11LW5hdGl2ZS8zLjEuMC1yMC9xZW11LTMuMS4w
L2xpbnV4LXVzZXIvaW9jdGxzLmg6MjIzOjk6IGVycm9yOiDigJhTSU9DR1NUQU1QTlPigJkgdW5k
ZWNsYXJlZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhTSU9DR1NU
QU1QX09MROKAmT8KICAyMjMgfCAgIElPQ1RMKFNJT0NHU1RBTVBOUywgSU9DX1IsIE1LX1BUUihN
S19TVFJVQ1QoU1RSVUNUX3RpbWVzcGVjKSkpCiAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn4K
cG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvcWVtdS1uYXRpdmUvMy4xLjAtcjAvcWVt
dS0zLjEuMC9saW51eC11c2VyL3N5c2NhbGwuYzo0NzUwOjIzOiBub3RlOiBpbiBkZWZpbml0aW9u
IG9mIG1hY3JvIOKAmElPQ1RM4oCZCiA0NzUwIHwgICAgIHsgVEFSR0VUXyAjIyBjbWQsIGNtZCwg
I2NtZCwgYWNjZXNzLCAwLCB7ICBfX1ZBX0FSR1NfXyB9IH0sCiAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgIF5+fgptYWtlWzFdOiAqKiogW3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxp
bnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3FlbXUtMy4xLjAvcnVsZXMubWFrOjY5OiBsaW51eC11
c2VyL3N5c2NhbGwub10gRXJyb3IgMQptYWtlOiAqKiogW01ha2VmaWxlOjQ4Mzogc3ViZGlyLWFy
bS1saW51eC11c2VyXSBFcnJvciAyCm1ha2U6ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpv
YnMuLi4uCm1ha2VbMV06ICoqKiBbcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvcWVt
dS1uYXRpdmUvMy4xLjAtcjAvcWVtdS0zLjEuMC9ydWxlcy5tYWs6Njk6IGxpbnV4LXVzZXIvc3lz
Y2FsbC5vXSBFcnJvciAxCm1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMu
Li4uCiAgQ0MgICAgICBhYXJjaDY0LWxpbnV4LXVzZXIvbGludXgtdXNlci9tbWFwLm8KbWFrZTog
KioqIFtNYWtlZmlsZTo0ODM6IHN1YmRpci1hYXJjaDY0LWxpbnV4LXVzZXJdIEVycm9yIDIKRVJS
T1I6IG9lX3J1bm1ha2UgZmFpbGVkCldBUk5JTkc6IHBva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0
LWxpbnV4L3FlbXUtbmF0aXZlLzMuMS4wLXIwL3RlbXAvcnVuLmRvX2NvbXBpbGUuMTI1OToxIGV4
aXQgMSBmcm9tICdleGl0IDEnCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxv
ZyBmaWxlIGlzIGxvY2F0ZWQgYXQgcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvcWVt
dS1uYXRpdmUvMy4xLjAtcjAvdGVtcC9sb2cuZG9fY29tcGlsZS4xMjU5KQo=

--------------B1046BF38278C28898B42444--
