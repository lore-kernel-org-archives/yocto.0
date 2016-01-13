Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42198E00B5A; Wed, 13 Jan 2016 09:46:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8A1E008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:46:13 -0800 (PST)
Received: by mail-lb0-f169.google.com with SMTP id oh2so295576841lbb.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=TxBo50rvwIn17hp4HFIX6LElC1O2E5Ij3u/tPmHwVBU=;
	b=D0FcGfai+HBRH1xKeFEZBA4r2XAQobxEFumpKdFguSGKBGhK4nhUdutEgviHcTqPJ3
	OSE+nY5oVwtwo0SMQU8aj02zsRxFAI9xZcnGKhlzmSoPky9B3ra+IEIeVBKOAIQXI4t6
	I8WIhLWAbh7xphHbkasLwJNlnzmUyk7jWyret7u2bBGKRgZgx9MAP4VNhZnW46jiZtjS
	ECy7EX7O8mLK96pUGwH12jVJjUEZ1JRTYCYeSO1r90QYgeldq0b4lSsb+KHt0LjH5pUC
	+dC8ogYvMSGxogkNIe5QazZyyF9JE8PLkSV+sjEFEVHPnYHkurLvIGxuj+uX1mL4ssxs
	C1gA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=briata-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=TxBo50rvwIn17hp4HFIX6LElC1O2E5Ij3u/tPmHwVBU=;
	b=ANCudyDMu7e0jgI7qWtvOPhbatLH51ipMXFkbKvytkDgGOmq7eoJ2JcTI2BWiH89XQ
	eJF+ieLcPv6MMy76fEhvk3TyZg85gr7viOsbINl2JG6vIsTX+bAxRZs1/Icb6r4Popxj
	WklJIZKIS4TUxdU0eyDWWs2oi6sYwOyouFGZweYo2KeSyv6L/VAbczmIFCADwEAmSk9Z
	TrPTi7aLwLCp+zXM5nGYeioI9n1G7mc2cfSQFEVUT6AdqjfJ8zwSrVyNpBPZwzdHOvRO
	g2vpVwt8z8rZ666HuaF0axMgoe4n1pXhEvmDUoKK4ms+FWKkVRy2M0eULvzb+s/lGUBy
	OtaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=TxBo50rvwIn17hp4HFIX6LElC1O2E5Ij3u/tPmHwVBU=;
	b=ODfXJnAbJ8xtERQ7ApHAHZXfXI5nb4rKElzcUI1NhPv/GLtUTHTfr/dmgY8HLrxbFf
	G/CRFusEOfwUkm5V2wgzZaXS7sOrk5HytiMbJNpvWA/SVuP5Y4mRv1ZuB26CJi6yx+KJ
	We0KAvl+UgoROgxX6Ni5jVdtZkRYeBAL+UIcLp6SyCJWIBsKFMAO7UprCPtwIBk8ttbW
	A37HJP0EmkxSTVY3OSwiah1fLUda9GhVmDEUWBSfQ9h0TlnxvCAot8yIHOXeFgTM+8kl
	858eUw8qYmaaUEIivBKHh/wbkpbKGpheIheRXR3akPnXAI8F9a5sx1oN74qP8P7/SZdA
	pjGQ==
X-Gm-Message-State: ALoCoQlSuD3xpecCsqIguTiWkGXELMGzzUciIoIGsT94C5OKTS9fqsqIKHLSemcjemvOxSwoCSgSKcmqXWTf5juaB3H+TYax0g==
MIME-Version: 1.0
X-Received: by 10.112.149.202 with SMTP id uc10mr7746111lbb.57.1452707172040; 
	Wed, 13 Jan 2016 09:46:12 -0800 (PST)
Sender: federicobriata@gmail.com
Received: by 10.112.9.200 with HTTP; Wed, 13 Jan 2016 09:46:11 -0800 (PST)
In-Reply-To: <CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<loom.20151219T103721-415@post.gmane.org>
	<CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
Date: Wed, 13 Jan 2016 18:46:11 +0100
X-Google-Sender-Auth: 52sGMNA6Jso6lweeJoN-fA61Lpc
Message-ID: <CA+KKcbnmiB4FUT3e+TaYG2jWvGUs_yAmJ-dYOFSfDqHd0Hztow@mail.gmail.com>
From: Federico Pietro Briata <federico@briata.org>
To: Stef <Stefboerrigter@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Wed, 13 Jan 2016 17:46:18 -0000
Content-Type: multipart/alternative; boundary=047d7b343a26f3c99d05293abea2

--047d7b343a26f3c99d05293abea2
Content-Type: text/plain; charset=UTF-8

Hi again,
looking to the above error on Makefile, seems there is still something
wrong with autotools


cat
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile
# This Makefile was generated by configure Tue Jan 12 22:44:00 CET 2016
# GENERATED FILE, DO NOT EDIT
SPEC:=/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/build/linux-x86_64-normal-server-release/spec.gmk
include
/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile

so the build stuck here in this loop I think.

regards
Federico

2016-01-12 17:41 GMT+01:00 Federico Pietro Briata <federico@briata.org>:

> Hi Stef,
> Thanks, I've tried to apply that patch and also
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=527b28c10955daf0387597020d69593ce24bcaa4
>
> and now I'm getting this:
>
> ERROR: Function failed: do_compile (log file is located at
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
> ERROR: Logfile of failure stored in:
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
> 'bit-64', 'x86_64-linux', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make
> OE_CFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
> -O2 -pipe -DHEADLESS=true
> OE_CPPFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
> -DHEADLESS=true
> OE_CXXFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
> -O2 -pipe -DHEADLESS=true
> OE_LDFLAGS=-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
> -L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
> -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
> -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
> -Wl,-O1 BUILD_HEADLESS_ONLY=1 BUILD_HEADLESS=true BUILD_SOUNDLESS_ONLY=1
> X11_NOT_NEEDED=1 CUPS_NOT_NEEDED=1 ALSA_NOT_NEEDED=1 PULSE_NOT_NEEDED=1
> MAKE_VERBOSE=y VERBOSE=-s LOG_LEVEL=trace QUIETLY= images
> |
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27:
> *** Too many open files.  Stop.
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
> ERROR: Task 207
> (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
> openjdk-8-native_72b05.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1469 of 1483)
>
> Summary: 1 task failed:
>   /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
> openjdk-8-native_72b05.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> thanks and regards
> federico
>
> 2015-12-19 10:38 GMT+01:00 Stef <Stefboerrigter@gmail.com>:
>
>> Federico Pietro Briata <federicobriata@...> writes:
>>
>> >
>> >
>> >
>> > Hi All,
>> > I'm trying to build openjdk-8 but I'm stuck.my current setup does not
>> define anything for:#PREFERRED_PROVIDER_virtual/java-
>> native#PREFERRED_PROVIDER_virtual/javac-native
>> >
>> > follow the log error
>> >
>> >
>> >
>> > ERROR: Function failed: do_configure (log file is located at
>> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:
>> Logfile of failure stored in: /home/federico/yocto/imx6/R6.0/build-imx6-
>> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-
>> r0/temp/log.do_configure.27024Log data follows:| DEBUG: Executing python
>> function sysroot_cleansstate| DEBUG: Python function sysroot_cleansstate
>> finished| DEBUG: SITE files ['endian-little', 'common-linux', 'common-
>> glibc', 'bit-64', 'x86_64-linux', 'common']| DEBUG: Executing shell
>> function autotools_preconfigure| DEBUG: Shell function
>> autotools_preconfigure finished| DEBUG: Executing python function
>> autotools_copy_aclocals| DEBUG: Python function autotools_copy_aclocals
>> finished| DEBUG: Executing shell function do_configure| ERROR: no
>> configure script found at /home/federico/yocto/imx6/R6.0/build-imx6-
>> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-
>> e8bed1496ff2/configure| WARNING: exit code 1 from a shell command.|
>> ERROR: Function failed: do_configure (log file is located at
>> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR: Task
>> 146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>> core/openjdk/openjdk-8-native_72b05.bb, do_configure) failed with exit
>> code '1'NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn't
>> need to be rerun and 1 failed.No currently running tasks (1139 of
>> 1150)Summary: 1 task failed:
>> /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>> core/openjdk/openjdk-8-native_72b05.bb, do_configure
>> >
>> > thanks and regards
>> >
>> > Federico
>> >
>> >
>> >
>> >
>> >
>>
>> Try to apply this patch to meta layer:
>> https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c
>> 1e19a40
>> <https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c1e19a40>
>>
>> It worked for me
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--047d7b343a26f3c99d05293abea2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi again,</div><div>looking to the above error on=C2=
=A0Makefile, seems there is still something wrong with autotools</div><div>=
=C2=A0</div><div>=C2=A0</div><div>cat /home/federico/yocto/imx6/R6.0/build-=
OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r=
0/jdk8u-e8bed1496ff2/Makefile</div><div># This Makefile was generated by co=
nfigure Tue Jan 12 22:44:00 CET 2016<br># GENERATED FILE, DO NOT EDIT<br>SP=
EC:=3D/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc=
/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/build/linux=
-x86_64-normal-server-release/spec.gmk<br>include /home/federico/yocto/imx6=
/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-na=
tive/72b05-r0/jdk8u-e8bed1496ff2/Makefile</div><div>=C2=A0</div><div>so the=
 build stuck here in this loop I think.</div><div>=C2=A0</div><div>regards<=
/div><div>Federico</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">2016-01-12 17:41 GMT+01:00 Federico Pietro Briata <span dir=3D=
"ltr">&lt;<a href=3D"mailto:federico@briata.org" target=3D"_blank">federico=
@briata.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div><div><div><div>Hi Stef,<br></div>Thanks, I&#39;ve tried to apply t=
hat patch and also<br><a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/=
commit/?id=3D527b28c10955daf0387597020d69593ce24bcaa4" target=3D"_blank">ht=
tp://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D527b28c10955daf0387597=
020d69593ce24bcaa4</a><br><br></div>and now I&#39;m getting this:<br><br>ER=
ROR: Function failed: do_compile (log file is located at /home/federico/yoc=
to/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openj=
dk-8-native/72b05-r0/temp/log.do_compile.15889)<br>ERROR: Logfile of failur=
e stored in: /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp=
-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.158=
89<br>Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#=
39;common-linux&#39;, &#39;common-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64=
-linux&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell function do_comp=
ile<br>| NOTE: make OE_CFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/buil=
d-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -p=
ipe -DHEADLESS=3Dtrue OE_CPPFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/=
build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -D=
HEADLESS=3Dtrue OE_CXXFLAGS=3D-isystem/home/federico/yocto/imx6/R6.0/build-=
OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pip=
e -DHEADLESS=3Dtrue OE_LDFLAGS=3D-L/home/federico/yocto/imx6/R6.0/build-Ope=
nJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib -L/home/federic=
o/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-li=
nux/lib -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-=
mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/fede=
rico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64=
-linux/lib -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx=
6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/federico/yo=
cto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/=
lib -Wl,-O1 BUILD_HEADLESS_ONLY=3D1 BUILD_HEADLESS=3Dtrue BUILD_SOUNDLESS_O=
NLY=3D1 X11_NOT_NEEDED=3D1 CUPS_NOT_NEEDED=3D1 ALSA_NOT_NEEDED=3D1 PULSE_NO=
T_NEEDED=3D1 MAKE_VERBOSE=3Dy VERBOSE=3D-s LOG_LEVEL=3Dtrace QUIETLY=3D ima=
ges<br>| /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-egl=
ibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile=
:27: *** Too many open files.=C2=A0 Stop.<br>| ERROR: oe_runmake failed<spa=
n><br>| WARNING: exit code 1 from a shell command.<br></span>| ERROR: Funct=
ion failed: do_compile (log file is located at /home/federico/yocto/imx6/R6=
.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-nativ=
e/72b05-r0/temp/log.do_compile.15889)<br>ERROR: Task 207 (/home/federico/yo=
cto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/<a href=3D"http://open=
jdk-8-native_72b05.bb" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_=
compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempte=
d 1469 tasks of which 1237 didn&#39;t need to be rerun and 1 failed.<br>No =
currently running tasks (1469 of 1483)<br><br>Summary: 1 task failed:<br>=
=C2=A0 /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjd=
k/<a href=3D"http://openjdk-8-native_72b05.bb" target=3D"_blank">openjdk-8-=
native_72b05.bb</a>, do_compile<br>Summary: There was 1 ERROR message shown=
, returning a non-zero exit code.<br><br></div>thanks and regards<span clas=
s=3D"HOEnZb"><font color=3D"#888888"><br></font></span></div><span class=3D=
"HOEnZb"><font color=3D"#888888">federico<br></font></span></div><div class=
=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">2015-12-19 10:38 GMT+01:00 Stef <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Stefboerrigter@gmail.com" target=3D"_blank">Stefboerrigter@gmail=
.com</a>&gt;</span>:<br><blockquote style=3D"margin:0px 0px 0px 0.8ex;paddi=
ng-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px;border=
-left-style:solid" class=3D"gmail_quote"><span>Federico Pietro Briata &lt;f=
edericobriata@...&gt; writes:<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hi All,<br>
</span>&gt; I&#39;m trying to build openjdk-8 but I&#39;m stuck.my current =
setup does not<br>
define anything for:#PREFERRED_PROVIDER_virtual/java-<br>
<span>native#PREFERRED_PROVIDER_virtual/javac-native<br>
&gt;<br>
&gt; follow the log error<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Function failed: do_configure (log file is located at<br>
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-<br>
linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:<br>
Logfile of failure stored in: /home/federico/yocto/imx6/R6.0/build-imx6-<br=
>
mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-<br>
</span>r0/temp/log.do_configure.27024Log data follows:| DEBUG: Executing py=
thon<br>
<span>function sysroot_cleansstate| DEBUG: Python function sysroot_cleansst=
ate<br>
finished| DEBUG: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39=
;, &#39;common-<br>
glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]| DE=
BUG: Executing shell<br>
function autotools_preconfigure| DEBUG: Shell function<br>
autotools_preconfigure finished| DEBUG: Executing python function<br>
autotools_copy_aclocals| DEBUG: Python function autotools_copy_aclocals<br>
finished| DEBUG: Executing shell function do_configure| ERROR: no<br>
configure script found at /home/federico/yocto/imx6/R6.0/build-imx6-<br>
mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-<br>
</span>e8bed1496ff2/configure| WARNING: exit code 1 from a shell command.|<=
br>
<span>ERROR: Function failed: do_configure (log file is located at<br>
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-<br>
linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR: Task<br>
146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-<br>
core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" rel=3D"noreferrer=
" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_configure) failed wit=
h exit<br>
code &#39;1&#39;NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn&=
#39;t<br>
</span>need to be rerun and 1 failed.No currently running tasks (1139 of<br=
>
<span>1150)Summary: 1 task failed:=C2=A0<br>
/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-<br>
core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" rel=3D"noreferrer=
" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_configure<br>
&gt;<br>
&gt; thanks and regards<br>
&gt;<br>
&gt; Federico<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</span>Try to apply this patch to meta layer:<br>
<a href=3D"https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80=
749cd43c1e19a40" rel=3D"noreferrer" target=3D"_blank">https://github.com/re=
hsack/poky/commit/65cdad40f2717b85892e12c80749cd43c<br>
1e19a40</a><br>
<br>
It worked for me<br>
<span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b343a26f3c99d05293abea2--
