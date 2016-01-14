Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D049E00B99; Thu, 14 Jan 2016 04:37:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA528E0090A
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 04:37:26 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id y67so30622543qkc.2
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 04:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=IFUldym162FmDE+80r+If+AQ2PpXKke+i30GyG882zE=;
	b=tLTeQDLy26LX3hvWHezAno3jECrCkN06u2yAXHghxd9vZmVUoq0PGtwC9wsTHeOZk5
	0YjC9JHewTG7qz/yPG5YrTyEiHnykbtGNXrjcrpI1v86TlrQf/12ZWAJsvhR+ndpproq
	UlgLzCTPWYh+J+XO39t3XJjFNiTEJc61ex/IhBatm3uusWAVgYhdefNQDzKbC2Odcf+u
	K2Hx64AYc0azndTRPltmIOX9olhuqJNydhyJs5ueCsn49ZS4MdJ5ohD2Tx+Ccxk4b78y
	I1at1GN3Rl3miwSs1rk8rvw+4mUP1KXjdlmSHQps3oyElIFTDURTODBOC+Mw13gZ29xf
	bNdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=briata-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=IFUldym162FmDE+80r+If+AQ2PpXKke+i30GyG882zE=;
	b=thwhH40btDk2SrLObSMjFJqjBECTNrKNeb21nfTDcVD4DgoPrBJJhtpJnfDWHO1r08
	bRn1gucaMpcXIKqJlggWXi+Fs1yQAZxHOC8MTaTPA4g5NnvafdXIM6PXAMQz4BcQUlFK
	bwWphcUaPL6r8BrN7ZdrcV/Kz8SBqSklk/YmZkiHZK3Z9QIy/xnLBoWrZh+MV7f9MWa4
	b2EOwXwYUiU8u/PWz1WUELtE0TwDnVuPHJeXzbxnKED6O+RB2O1RTSysSLgemzyg0TWU
	LnJa0p+Fxb4c0cwspYkxNzA5vHSlSGR1Bl7A4NlM0FbfN1VFIa2otoTgJM9t+3kANLSe
	iddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IFUldym162FmDE+80r+If+AQ2PpXKke+i30GyG882zE=;
	b=MdemdWB7Sh7x7QAcEaqyNI9ZbOdbjL/gjzDphMlcw3IRSEVhbnhois2PEZPy7P9iDz
	MlZaY4dBOxoR9FmsmwX/5aynE6zLWYtAhhyrQyQMsm0rM0y8xjK4zPrDC5npmgbE/7nO
	G1MhCi/7JAWGRRlS6f2xi3BakT5HVgPcnjftP027PmsWODVZ6IXgSJlM0DurBz8cCDQC
	4XBmJ17wVZF/Hrf6BGjvob59TUuio62yz8FZoTZoVKIZDJCMDl+FOPMDRCP7C27gyBa7
	ZTy+3wdDAShys2J5JN1dx5kQ5j0fjhXWtOTqLfQ2uvNwLZMuaaC8rbySUizOq04RB0+n
	0nDg==
X-Gm-Message-State: ALoCoQmAd4mxo59/f3N/H+VKWka31SlqXzM/JGp2vc8DT35dMTHz/gXKb7lalkmrfbO0KUooyxBZ4sYqk8/jWtGRvT6iX4lmWg==
MIME-Version: 1.0
X-Received: by 10.25.19.154 with SMTP id 26mr1029928lft.127.1452775045285;
	Thu, 14 Jan 2016 04:37:25 -0800 (PST)
Sender: federicobriata@gmail.com
Received: by 10.112.9.200 with HTTP; Thu, 14 Jan 2016 04:37:25 -0800 (PST)
Received: by 10.112.9.200 with HTTP; Thu, 14 Jan 2016 04:37:25 -0800 (PST)
In-Reply-To: <CAO0FEwWdVrJO2znEQwm3NvvQN1JONiWy4nv38soKijfynANk9A@mail.gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<loom.20151219T103721-415@post.gmane.org>
	<CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
	<CA+KKcbnmiB4FUT3e+TaYG2jWvGUs_yAmJ-dYOFSfDqHd0Hztow@mail.gmail.com>
	<CAO0FEwWdVrJO2znEQwm3NvvQN1JONiWy4nv38soKijfynANk9A@mail.gmail.com>
Date: Thu, 14 Jan 2016 13:37:25 +0100
X-Google-Sender-Auth: KZQsnvJR-BP20o2hbyEdli0Dx98
Message-ID: <CA+KKcb=1e30j5eRmha5zpa+=Oxvb87QwhPGV9LOk=b+MDem9TA@mail.gmail.com>
From: Federico Pietro Briata <federico@briata.org>
To: Stef Boerrigter <stefboerrigter@gmail.com>
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
X-List-Received-Date: Thu, 14 Jan 2016 12:37:33 -0000
Content-Type: multipart/alternative; boundary=001a113f21668352ac05294a8c2a

--001a113f21668352ac05294a8c2a
Content-Type: text/plain; charset=UTF-8

Hi,

I'm on 1.6.2 (daisy Branch), so probably I've to cherry-pick something more
on poky.

With poky-daisy-11.0.2 (Hash: e3dd621197548b4cf64988e757e9bc926082db73) I
confirm that openjdk 7 was working for sure with this commit
d7d4f64a32d26fc8a92e4c89b47c78956f20a14d

Regards,
Federico
Hi,

What version of Yocto are you using?
I'm using 1.7.1 version with only the patch i described in my previous
answer.
When using it on the master of meta-java i got it working without any
issues.. You mentioned you use another patch as well?

Regards

2016-01-13 18:46 GMT+01:00 Federico Pietro Briata <federico@briata.org>:

> Hi again,
> looking to the above error on Makefile, seems there is still something
> wrong with autotools
>
>
> cat
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile
> # This Makefile was generated by configure Tue Jan 12 22:44:00 CET 2016
> # GENERATED FILE, DO NOT EDIT
>
> SPEC:=/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/build/linux-x86_64-normal-server-release/spec.gmk
> include
> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile
>
> so the build stuck here in this loop I think.
>
> regards
> Federico
>
> 2016-01-12 17:41 GMT+01:00 Federico Pietro Briata <federico@briata.org>:
>
>> Hi Stef,
>> Thanks, I've tried to apply that patch and also
>>
>> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=527b28c10955daf0387597020d69593ce24bcaa4
>>
>> and now I'm getting this:
>>
>> ERROR: Function failed: do_compile (log file is located at
>> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
>> ERROR: Logfile of failure stored in:
>> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
>> 'bit-64', 'x86_64-linux', 'common']
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make
>> OE_CFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>> -O2 -pipe -DHEADLESS=true
>> OE_CPPFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>> -DHEADLESS=true
>> OE_CXXFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>> -O2 -pipe -DHEADLESS=true
>> OE_LDFLAGS=-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>> -L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>> -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>> -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>> -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>> -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>> -Wl,-O1 BUILD_HEADLESS_ONLY=1 BUILD_HEADLESS=true BUILD_SOUNDLESS_ONLY=1
>> X11_NOT_NEEDED=1 CUPS_NOT_NEEDED=1 ALSA_NOT_NEEDED=1 PULSE_NOT_NEEDED=1
>> MAKE_VERBOSE=y VERBOSE=-s LOG_LEVEL=trace QUIETLY= images
>> |
>> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27:
>> *** Too many open files.  Stop.
>> | ERROR: oe_runmake failed
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_compile (log file is located at
>> /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
>> ERROR: Task 207
>> (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
>> openjdk-8-native_72b05.bb, do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 didn't need to be
>> rerun and 1 failed.
>> No currently running tasks (1469 of 1483)
>>
>> Summary: 1 task failed:
>>   /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
>> openjdk-8-native_72b05.bb, do_compile
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>> thanks and regards
>> federico
>>
>> 2015-12-19 10:38 GMT+01:00 Stef <Stefboerrigter@gmail.com>:
>>
>>> Federico Pietro Briata <federicobriata@...> writes:
>>>
>>> >
>>> >
>>> >
>>> > Hi All,
>>> > I'm trying to build openjdk-8 but I'm stuck.my current setup does not
>>> define anything for:#PREFERRED_PROVIDER_virtual/java-
>>> native#PREFERRED_PROVIDER_virtual/javac-native
>>> >
>>> > follow the log error
>>> >
>>> >
>>> >
>>> > ERROR: Function failed: do_configure (log file is located at
>>> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>>> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:
>>> Logfile of failure stored in: /home/federico/yocto/imx6/R6.0/build-imx6-
>>> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-
>>> r0/temp/log.do_configure.27024Log data follows:| DEBUG: Executing python
>>> function sysroot_cleansstate| DEBUG: Python function sysroot_cleansstate
>>> finished| DEBUG: SITE files ['endian-little', 'common-linux', 'common-
>>> glibc', 'bit-64', 'x86_64-linux', 'common']| DEBUG: Executing shell
>>> function autotools_preconfigure| DEBUG: Shell function
>>> autotools_preconfigure finished| DEBUG: Executing python function
>>> autotools_copy_aclocals| DEBUG: Python function autotools_copy_aclocals
>>> finished| DEBUG: Executing shell function do_configure| ERROR: no
>>> configure script found at /home/federico/yocto/imx6/R6.0/build-imx6-
>>> mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-
>>> e8bed1496ff2/configure| WARNING: exit code 1 from a shell command.|
>>> ERROR: Function failed: do_configure (log file is located at
>>> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>>> linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR: Task
>>> 146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>>> core/openjdk/openjdk-8-native_72b05.bb, do_configure) failed with exit
>>> code '1'NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn't
>>> need to be rerun and 1 failed.No currently running tasks (1139 of
>>> 1150)Summary: 1 task failed:
>>> /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>>> core/openjdk/openjdk-8-native_72b05.bb, do_configure
>>> >
>>> > thanks and regards
>>> >
>>> > Federico
>>> >
>>> >
>>> >
>>> >
>>> >
>>>
>>> Try to apply this patch to meta layer:
>>> https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c
>>> 1e19a40
>>> <https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c1e19a40>
>>>
>>> It worked for me
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>

--001a113f21668352ac05294a8c2a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,<br>
=C2=A0<br>
I&#39;m on 1.6.2 (daisy Branch), so probably I&#39;ve to cherry-pick someth=
ing more on poky.</p>
<p dir=3D"ltr">With poky-daisy-11.0.2 (Hash: e3dd621197548b4cf64988e757e9bc=
926082db73) I confirm that openjdk 7 was working for sure with this commit =
d7d4f64a32d26fc8a92e4c89b47c78956f20a14d</p>
<p dir=3D"ltr">Regards,<br>
Federico</p>
<div class=3D"gmail_quot&lt;blockquote class=3D" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<di=
v><br></div><div>What version of Yocto are you using?=C2=A0</div><div>I&#39=
;m using 1.7.1 version with only the patch i described in my previous answe=
r.</div><div>When using it on the master of meta-java i got it working with=
out any issues.. You mentioned you use another patch as well?</div><div><br=
></div><div>Regards</div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2016-01-13 18:46 GMT+01:00 Federico Pietro Briata <span dir=
=3D"ltr">&lt;<a href=3D"mailto:federico@briata.org" target=3D"_blank">feder=
ico@briata.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div>Hi again,</div><div>looking to the above error on=C2=A0Makefi=
le, seems there is still something wrong with autotools</div><div>=C2=A0</d=
iv><div>=C2=A0</div><div>cat /home/federico/yocto/imx6/R6.0/build-OpenJDK8-=
imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e=
8bed1496ff2/Makefile</div><div># This Makefile was generated by configure T=
ue Jan 12 22:44:00 CET 2016<br># GENERATED FILE, DO NOT EDIT<br>SPEC:=3D/ho=
me/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86=
_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/build/linux-x86_64-n=
ormal-server-release/spec.gmk<br>include /home/federico/yocto/imx6/R6.0/bui=
ld-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b0=
5-r0/jdk8u-e8bed1496ff2/Makefile</div><div>=C2=A0</div><div>so the build st=
uck here in this loop I think.</div><div>=C2=A0</div><div>regards</div><spa=
n><font color=3D"#888888"><div>Federico</div></font></span></div><div><div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-01-12 17:41 =
GMT+01:00 Federico Pietro Briata <span dir=3D"ltr">&lt;<a href=3D"mailto:fe=
derico@briata.org" target=3D"_blank">federico@briata.org</a>&gt;</span>:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hi Ste=
f,<br></div>Thanks, I&#39;ve tried to apply that patch and also<br><a href=
=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D527b28c10955daf0=
387597020d69593ce24bcaa4" target=3D"_blank">http://git.yoctoproject.org/cgi=
t.cgi/poky/commit/?id=3D527b28c10955daf0387597020d69593ce24bcaa4</a><br><br=
></div>and now I&#39;m getting this:<br><br>ERROR: Function failed: do_comp=
ile (log file is located at /home/federico/yocto/imx6/R6.0/build-OpenJDK8-i=
mx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log=
.do_compile.15889)<br>ERROR: Logfile of failure stored in: /home/federico/y=
octo/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/ope=
njdk-8-native/72b05-r0/temp/log.do_compile.15889<br>Log data follows:<br>| =
DEBUG: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39;, &#39;co=
mmon-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;=
]<br>| DEBUG: Executing shell function do_compile<br>| NOTE: make OE_CFLAGS=
=3D-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-e=
glibc/sysroots/x86_64-linux/usr/include -O2 -pipe -DHEADLESS=3Dtrue OE_CPPF=
LAGS=3D-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/t=
mp-eglibc/sysroots/x86_64-linux/usr/include -DHEADLESS=3Dtrue OE_CXXFLAGS=
=3D-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-e=
glibc/sysroots/x86_64-linux/usr/include -O2 -pipe -DHEADLESS=3Dtrue OE_LDFL=
AGS=3D-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-egli=
bc/sysroots/x86_64-linux/usr/lib -L/home/federico/yocto/imx6/R6.0/build-Ope=
nJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath-link,/ho=
me/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots=
/x86_64-linux/usr/lib -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-=
OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath,/home=
/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x=
86_64-linux/usr/lib -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK=
8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-O1 BUILD_HEADLESS_=
ONLY=3D1 BUILD_HEADLESS=3Dtrue BUILD_SOUNDLESS_ONLY=3D1 X11_NOT_NEEDED=3D1 =
CUPS_NOT_NEEDED=3D1 ALSA_NOT_NEEDED=3D1 PULSE_NOT_NEEDED=3D1 MAKE_VERBOSE=
=3Dy VERBOSE=3D-s LOG_LEVEL=3Dtrace QUIETLY=3D images<br>| /home/federico/y=
octo/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/ope=
njdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27: *** Too many open fi=
les.=C2=A0 Stop.<br>| ERROR: oe_runmake failed<span><br>| WARNING: exit cod=
e 1 from a shell command.<br></span>| ERROR: Function failed: do_compile (l=
og file is located at /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx=
6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_co=
mpile.15889)<br>ERROR: Task 207 (/home/federico/yocto/imx6/R6.0/sources/met=
a-java/recipes-core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" ta=
rget=3D"_blank">openjdk-8-native_72b05.bb</a>, do_compile) failed with exit=
 code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1469 tasks of which 123=
7 didn&#39;t need to be rerun and 1 failed.<br>No currently running tasks (=
1469 of 1483)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/federico/yocto=
/imx6/R6.0/sources/meta-java/recipes-core/openjdk/<a href=3D"http://openjdk=
-8-native_72b05.bb" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_com=
pile<br>Summary: There was 1 ERROR message shown, returning a non-zero exit=
 code.<br><br></div>thanks and regards<span><font color=3D"#888888"><br></f=
ont></span></div><span><font color=3D"#888888">federico<br></font></span></=
div><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">201=
5-12-19 10:38 GMT+01:00 Stef <span dir=3D"ltr">&lt;<a href=3D"mailto:Stefbo=
errigter@gmail.com" target=3D"_blank">Stefboerrigter@gmail.com</a>&gt;</spa=
n>:<br><blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;borde=
r-left-color:rgb(204,204,204);border-left-width:1px;border-left-style:solid=
" class=3D"gmail_quote"><span>Federico Pietro Briata &lt;federicobriata@...=
&gt; writes:<br>
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
</div></div></blockquote></div><br></div>
</div>

--001a113f21668352ac05294a8c2a--
