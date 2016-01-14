Return-Path: <stefboerrigter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4BEE00BB9; Wed, 13 Jan 2016 23:45:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefboerrigter[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A2EEE00B9E
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 23:45:08 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id g73so250238147ioe.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 23:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5zmstlpDWXX+LMfk8i7lBSPL+pe0399xmsvFfuonkRo=;
	b=bjuWYKyxzypEFHDE20qnecR/PGx/Huqujs+9X2LQn1ppwnWtJ7ORr4C6jnS5HJ9cvr
	wBGM7oEFwZZI+dXZJKGUByTOIvw8isA8y6ieobI2ArY2V+YzKq4z+1+huffFpAEKUaKF
	W01mkGwENw5gwZnPk2nyDCl2YHxNX2+pHNWS3FUiOb1ES4btBGbioR0A2jm7nA/OBnje
	drZhwfScTR+uTih6cr8Q1agAC9zfxafV+2GIupveA1PQSkyYas7ZJOFik5mX/k7WXXaZ
	Xl3xTQwHEnT9W9C7CKjTcCWqrJ5JD1k7ocuSSVnemLFBfY6NGgnI3Ht/qZ8LxWdja0UL
	3vkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=5zmstlpDWXX+LMfk8i7lBSPL+pe0399xmsvFfuonkRo=;
	b=iHjK/ff+kE/ioPU1Vtq7QOU95VeSF+jofb1EzTh6umDoLzY+6EpiOmub0ufHdCOvCt
	jM4KPsmIviIEmt4kqL7phRhPOd/hy0PUmzMYbzBzxjv2teImNANtTySVBylvLwC0lLnT
	Us0hNVsDPWgkNDz2mUm7vaHTxIZhoe8fxtES811Xbnmo6D7/1qjJ6AZ19xd5HkOdcF0k
	BYg69mVWF7dM/Ke1nh0vjP1dhmZXSHkht/kp7t0K54kCdJp9HVLEYIHGO9NK2OGlQDit
	Zvs15tGS/krN4ftG45gzJeID1AeVSGzhYgxbTCc1tju7zoEEGwtAJOKR9tf0BIQnt1jt
	omIw==
X-Gm-Message-State: ALoCoQm9oMZg0WCByLHHZizuZfvbhGu2uyw+ndH4fKOBCViNlCtcmKfcEZ5LLJLJXF8XVUiC3BH3AeKPJyvs69KFQMeOv4Of7Q==
MIME-Version: 1.0
X-Received: by 10.107.169.225 with SMTP id f94mr3324772ioj.154.1452757507685; 
	Wed, 13 Jan 2016 23:45:07 -0800 (PST)
Received: by 10.36.80.79 with HTTP; Wed, 13 Jan 2016 23:45:07 -0800 (PST)
In-Reply-To: <CA+KKcbnmiB4FUT3e+TaYG2jWvGUs_yAmJ-dYOFSfDqHd0Hztow@mail.gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<loom.20151219T103721-415@post.gmane.org>
	<CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
	<CA+KKcbnmiB4FUT3e+TaYG2jWvGUs_yAmJ-dYOFSfDqHd0Hztow@mail.gmail.com>
Date: Thu, 14 Jan 2016 08:45:07 +0100
Message-ID: <CAO0FEwWdVrJO2znEQwm3NvvQN1JONiWy4nv38soKijfynANk9A@mail.gmail.com>
From: Stef Boerrigter <stefboerrigter@gmail.com>
To: Federico Pietro Briata <federico@briata.org>
X-Mailman-Approved-At: Thu, 14 Jan 2016 09:27:53 -0800
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
X-List-Received-Date: Thu, 14 Jan 2016 07:45:10 -0000
Content-Type: multipart/alternative; boundary=001a11427b8430c1ab052946779c

--001a11427b8430c1ab052946779c
Content-Type: text/plain; charset=UTF-8

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

--001a11427b8430c1ab052946779c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>What version of Yocto are you=
 using?=C2=A0</div><div>I&#39;m using 1.7.1 version with only the patch i d=
escribed in my previous answer.</div><div>When using it on the master of me=
ta-java i got it working without any issues.. You mentioned you use another=
 patch as well?</div><div><br></div><div>Regards</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2016-01-13 18:46 GMT+01:00 Feder=
ico Pietro Briata <span dir=3D"ltr">&lt;<a href=3D"mailto:federico@briata.o=
rg" target=3D"_blank">federico@briata.org</a>&gt;</span>:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>Hi again,</div><div>looking to the a=
bove error on=C2=A0Makefile, seems there is still something wrong with auto=
tools</div><div>=C2=A0</div><div>=C2=A0</div><div>cat /home/federico/yocto/=
imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-=
8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile</div><div># This Makefile was=
 generated by configure Tue Jan 12 22:44:00 CET 2016<br># GENERATED FILE, D=
O NOT EDIT<br>SPEC:=3D/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx=
6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed149=
6ff2/build/linux-x86_64-normal-server-release/spec.gmk<br>include /home/fed=
erico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-li=
nux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile</div><div>=C2=A0<=
/div><div>so the build stuck here in this loop I think.</div><div>=C2=A0</d=
iv><div>regards</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>Fe=
derico</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-01-12 17:41 GMT=
+01:00 Federico Pietro Briata <span dir=3D"ltr">&lt;<a href=3D"mailto:feder=
ico@briata.org" target=3D"_blank">federico@briata.org</a>&gt;</span>:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hi Stef,<=
br></div>Thanks, I&#39;ve tried to apply that patch and also<br><a href=3D"=
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D527b28c10955daf03875=
97020d69593ce24bcaa4" target=3D"_blank">http://git.yoctoproject.org/cgit.cg=
i/poky/commit/?id=3D527b28c10955daf0387597020d69593ce24bcaa4</a><br><br></d=
iv>and now I&#39;m getting this:<br><br>ERROR: Function failed: do_compile =
(log file is located at /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-=
mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_=
compile.15889)<br>ERROR: Logfile of failure stored in: /home/federico/yocto=
/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk=
-8-native/72b05-r0/temp/log.do_compile.15889<br>Log data follows:<br>| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39;, &#39;common=
-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]<br=
>| DEBUG: Executing shell function do_compile<br>| NOTE: make OE_CFLAGS=3D-=
isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglib=
c/sysroots/x86_64-linux/usr/include -O2 -pipe -DHEADLESS=3Dtrue OE_CPPFLAGS=
=3D-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-e=
glibc/sysroots/x86_64-linux/usr/include -DHEADLESS=3Dtrue OE_CXXFLAGS=3D-is=
ystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/=
sysroots/x86_64-linux/usr/include -O2 -pipe -DHEADLESS=3Dtrue OE_LDFLAGS=3D=
-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sys=
roots/x86_64-linux/usr/lib -L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-=
imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/fed=
erico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_6=
4-linux/usr/lib -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJD=
K8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath,/home/feder=
ico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-=
linux/usr/lib -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6=
-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-O1 BUILD_HEADLESS_ONLY=
=3D1 BUILD_HEADLESS=3Dtrue BUILD_SOUNDLESS_ONLY=3D1 X11_NOT_NEEDED=3D1 CUPS=
_NOT_NEEDED=3D1 ALSA_NOT_NEEDED=3D1 PULSE_NOT_NEEDED=3D1 MAKE_VERBOSE=3Dy V=
ERBOSE=3D-s LOG_LEVEL=3Dtrace QUIETLY=3D images<br>| /home/federico/yocto/i=
mx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8=
-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27: *** Too many open files.=
=C2=A0 Stop.<br>| ERROR: oe_runmake failed<span><br>| WARNING: exit code 1 =
from a shell command.<br></span>| ERROR: Function failed: do_compile (log f=
ile is located at /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6qua=
d/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compil=
e.15889)<br>ERROR: Task 207 (/home/federico/yocto/imx6/R6.0/sources/meta-ja=
va/recipes-core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb" target=
=3D"_blank">openjdk-8-native_72b05.bb</a>, do_compile) failed with exit cod=
e &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 di=
dn&#39;t need to be rerun and 1 failed.<br>No currently running tasks (1469=
 of 1483)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/federico/yocto/imx=
6/R6.0/sources/meta-java/recipes-core/openjdk/<a href=3D"http://openjdk-8-n=
ative_72b05.bb" target=3D"_blank">openjdk-8-native_72b05.bb</a>, do_compile=
<br>Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.<br><br></div>thanks and regards<span><font color=3D"#888888"><br></font>=
</span></div><span><font color=3D"#888888">federico<br></font></span></div>=
<div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-12=
-19 10:38 GMT+01:00 Stef <span dir=3D"ltr">&lt;<a href=3D"mailto:Stefboerri=
gter@gmail.com" target=3D"_blank">Stefboerrigter@gmail.com</a>&gt;</span>:<=
br><blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-le=
ft-color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" cl=
ass=3D"gmail_quote"><span>Federico Pietro Briata &lt;federicobriata@...&gt;=
 writes:<br>
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

--001a11427b8430c1ab052946779c--
