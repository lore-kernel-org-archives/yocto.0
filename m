Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAB33E00B2C; Fri, 11 Dec 2015 09:16:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC54FE007D5
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 09:16:04 -0800 (PST)
Received: by lbbcs9 with SMTP id cs9so74066593lbb.1
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 09:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=gZH/8Ejl+HtAiMc8Jx9S+iJFBrCtkXRYcUXC5ePltRI=;
	b=v9T+nJwkZpufwARE5vGk0nym6FCvMmBC4E6uTtOwYaixP6c1x4fcESCc7NiGvafksM
	SIgo/ejGbivGWdyn4hZSem4FCPfWDwpar8TiUWYhPf1nAwIWWpKmbH1cYPEQ1TdBYSib
	VoDX86wh/Tewfk070549nid4PEuBJLU7FI5sRaHXBcC/AtDL6GZRDqUS7G/p3bdxBSjU
	vjtG1+UBoB4czNzZBGr0h+gxAJ5xCSil16wrn2v3Kfge9vsPjjB6WjpfQlyGtew0qCcI
	tgBPldMBetfAncW7TRXTapoOp6H2cBOrpwzr/jMOdkMNNFjPfWN0LeOyP0prevQ0ZoVM
	5UlA==
MIME-Version: 1.0
X-Received: by 10.112.202.168 with SMTP id kj8mr8181037lbc.12.1449854163389;
	Fri, 11 Dec 2015 09:16:03 -0800 (PST)
Received: by 10.112.151.42 with HTTP; Fri, 11 Dec 2015 09:16:03 -0800 (PST)
Date: Fri, 11 Dec 2015 18:16:03 +0100
Message-ID: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Fri, 11 Dec 2015 17:16:06 -0000
Content-Type: multipart/alternative; boundary=001a11c37aa46299950526a27a8f

--001a11c37aa46299950526a27a8f
Content-Type: text/plain; charset=UTF-8

Hi All,
I'm trying to build openjdk-8 but I'm stuck.

my current setup does not define anything for:

#PREFERRED_PROVIDER_virtual/java-native
#PREFERRED_PROVIDER_virtual/javac-native

follow the log error

ERROR: Function failed: do_configure (log file is located at
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)
ERROR: Logfile of failure stored in:
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| ERROR: no configure script found at
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/configure
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)
ERROR: Task 146
(/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
openjdk-8-native_72b05.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn't need to be
rerun and 1 failed.
No currently running tasks (1139 of 1150)

Summary: 1 task failed:
  /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/
openjdk-8-native_72b05.bb, do_configure

thanks and regards
Federico

--001a11c37aa46299950526a27a8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi All,<br></div>I&#39;m trying to build openjdk=
-8 but I&#39;m stuck.<br><br>my current setup does not define anything for:=
<br><br>#PREFERRED_PROVIDER_virtual/java-native<br>#PREFERRED_PROVIDER_virt=
ual/javac-native<br><br></div><div>follow the log error<br></div><div><div>=
<div><br>ERROR: Function failed: do_configure (log file is located at /home=
/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-=
8-native/72b05-r0/temp/log.do_configure.27024)<br>ERROR: Logfile of failure=
 stored in: /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_=
64-linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024<br>Log data =
follows:<br>| DEBUG: Executing python function sysroot_cleansstate<br>| DEB=
UG: Python function sysroot_cleansstate finished<br>| DEBUG: SITE files [&#=
39;endian-little&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39=
;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]<br>| DEBUG: Executi=
ng shell function autotools_preconfigure<br>| DEBUG: Shell function autotoo=
ls_preconfigure finished<br>| DEBUG: Executing python function autotools_co=
py_aclocals<br>| DEBUG: Python function autotools_copy_aclocals finished<br=
>| DEBUG: Executing shell function do_configure<br>| ERROR: no configure sc=
ript found at /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x8=
6_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/configure<br>| WARN=
ING: exit code 1 from a shell command.<br>| ERROR: Function failed: do_conf=
igure (log file is located at /home/federico/yocto/imx6/R6.0/build-imx6-mx6=
quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_configure.=
27024)<br>ERROR: Task 146 (/home/federico/yocto/imx6/R6.0/sources/meta-java=
/recipes-core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb">openjdk-=
8-native_72b05.bb</a>, do_configure) failed with exit code &#39;1&#39;<br>N=
OTE: Tasks Summary: Attempted 1139 tasks of which 15 didn&#39;t need to be =
rerun and 1 failed.<br>No currently running tasks (1139 of 1150)<br><br>Sum=
mary: 1 task failed:<br>=C2=A0 /home/federico/yocto/imx6/R6.0/sources/meta-=
java/recipes-core/openjdk/<a href=3D"http://openjdk-8-native_72b05.bb">open=
jdk-8-native_72b05.bb</a>, do_configure<br><br></div><div>thanks and regard=
s<br></div><div>Federico<br></div><div><br></div></div></div></div>

--001a11c37aa46299950526a27a8f--
