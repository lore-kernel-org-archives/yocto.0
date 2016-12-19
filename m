Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1335E00D25; Mon, 19 Dec 2016 04:42:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f170.google.com (mail-wj0-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CA3E00D0C
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 04:42:35 -0800 (PST)
Received: by mail-wj0-f170.google.com with SMTP id tg4so149604494wjb.1
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 04:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=BEW4q7zw1Co3UBHLyABJm5WfnNpacxjlu4tNSh0efxU=;
	b=E+8LmAGNpaD2b2SLvwndwx/qxEFaR9eo/p6VAFlD5YT6Vkr8hH0k0ncJ5VkQU6aru0
	I0ABVj1xQiO7Gy7RCd+jlx9a47YYezWZrrH+trRuYOjYcGdtM8pGQ36u1M/5pdcofGQA
	o6aocpmUTMWG15tlIyfMS2uhAL/w7SvqUPKAO3oVON9wU/bg8OsRcweULLWHrRIspk3Z
	8VGELniXemEos6Us3EIKxXeMh3mV90sZ6Ep1safTcweu2zSmXJUTGXcmcOI/zS8A8Suy
	nEAaM2Ic9+6Y0VXGgJzvAy69937Hiai767AcGS2ZQfSoh98o3fTpDWq+tHdRykxASWf7
	qAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=BEW4q7zw1Co3UBHLyABJm5WfnNpacxjlu4tNSh0efxU=;
	b=qwH/FZTSGeEYbqmJxFFK9KEXzHZKi9kf9shAuo3gXphUi05EOFsHGasj+GeSTdIW+f
	Eu1IF3p8WM2oVz/UsweQbvI/FdNlLGhnyfHGlojHo5A8Izoc8S6eXBV+AZZnZIwznD6G
	rubZuQnLwCKjXLdQzBoqgcAruluwshKVjopk9U2xKULoc5hoEAmFYugQjU2ljZik8laE
	ZnlMn+u5E0/zAXmyFKhERwET1XHDJOJ4vDd/eEBvPcfqIikhBnLraSLIFQk0aMoMpfrs
	CVwYoLqrLcA4VhD8TBHYTVq7dlYq8o2Qx29gLOnuHCBzYf6+Iqr13NDDNnp6Tx9fD9PJ
	5Slg==
X-Gm-Message-State: AKaTC01KEzeAE83UzdG54lGahcdtiRzy8BlAMVQj7EJh+MCpV7Vkt/Yjo4B8Gd+k/0Wu50jdxAbCTAtfwBKyjw==
X-Received: by 10.194.112.170 with SMTP id ir10mr13068550wjb.190.1482151354739;
	Mon, 19 Dec 2016 04:42:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Mon, 19 Dec 2016 04:42:34 -0800 (PST)
In-Reply-To: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
References: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 19 Dec 2016 18:12:34 +0530
Message-ID: <CA+pXca0yBs9h93QTPtrszpRonj9hwvfNruMn1uk6EvXcwqZ5OA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: error while compiling hello_2.7.bb
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
X-List-Received-Date: Mon, 19 Dec 2016 12:42:39 -0000
Content-Type: multipart/alternative; boundary=001a1130d41e00b3c30544024197

--001a1130d41e00b3c30544024197
Content-Type: text/plain; charset=UTF-8

Hi All,
I have hello_2.7.bb file which contains as below
vim hello_2.7.bb
DESCRIPTION = "GNU Helloworld application"
SECTION = "test"
LICENSE = "BSD"

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/BSD;md5=
3775480a712fc46a69647678acb234cb"
SRC_DIR ?= "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/
hello/hello_2.7"
SRC_URI = "file://${SRC_DIR}"

S = "${SRC_DIR}"

do_compile (){
        make prog
}

do_install(){
        install -d ${D}${bindir}
        install -m 0755 ${S}/hello  ${D}${bindir}
}

in hello_2.7 folder i have two files hello.c and Makefile
vim hello.c
#include<stdio.h>
int main()
{
        printf("hello YOCTO POKY\n");
        return 0;
}

Vim Makefile
prog:
        gcc -o hello hello.c

Now when i am building "bitbake hello", I am  getting below error in
poky-krogoth-15.0.2.
The same hello_2.7.bb  is compiling fine without any error in
"poky-dora-10.0.0".
The strange thing i observe in poky-krogoth-15.0.2. is that hello.c and
Makefile are getting erased in hello_2.7 dir.
Am i missing some thing in poky-krogoth-15.0.2? Please help.

Error msg:
ERROR: hello-2.7-r0 do_compile: Function failed: do_compile (log file is
located at /home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-
neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)
ERROR: Logfile of failure stored in: /home/rajesh/poky-krogoth-15.
0.2/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/hello/
2.7-r0/temp/log.do_compile.13763
Log data follows:
| DEBUG: Executing shell function do_compile
| make: *** No rule to make target 'prog'.  Stop.
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/rajesh/poky-krogoth-15.0.2/build/tmp/work/cortexa8hf-
neon-poky-linux-gnueabi/hello/2.7-r0/temp/log.do_compile.13763)
ERROR: Task 6 (/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/
hello_2.7.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 351 tasks of which 345 didn't need to be
rerun and 1 failed.
No currently running tasks (351 of 358)

Summary: 1 task failed:
  /home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7.bb,
do_compile

--001a1130d41e00b3c30544024197
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><br><div dir=3D"ltr"><div><=
div><div><div><div><div><div><div>Hi All,<br></div>I have <a href=3D"http:/=
/hello_2.7.bb" target=3D"_blank">hello_2.7.bb</a> file which contains as be=
low<br>vim <a href=3D"http://hello_2.7.bb" target=3D"_blank">hello_2.7.bb</=
a><br>DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>SECTION =3D=
 &quot;test&quot;<br>LICENSE =3D &quot;BSD&quot;<br><br>LIC_FILES_CHKSUM =
=3D &quot;file://${COMMON_LICENSE_DIR}/<wbr>BSD;md5=3D<wbr>3775480a712fc46a=
69647678acb234<wbr>cb&quot;<br>SRC_DIR ?=3D &quot;/home/rajesh/poky-krogoth=
-15.<wbr>0.2/meta/recipes-support/<wbr>hello/hello_2.7&quot;<br>SRC_URI =3D=
 &quot;file://${SRC_DIR}&quot;<br><br>S =3D &quot;${SRC_DIR}&quot;<br><br>d=
o_compile (){<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 make prog<br>}<=
br><br>do_install(){<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install =
-d ${D}${bindir}<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0=
755 ${S}/hello=C2=A0 ${D}${bindir}<br>}<br><br></div>in hello_2.7 folder i =
have two files hello.c and Makefile <br></div>vim hello.c<br>#include&lt;st=
dio.h&gt;<br>int main()<br>{<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
printf(&quot;hello YOCTO POKY\n&quot;);<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return 0;<br>}<br><br></div>Vim Makefile<br>prog:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gcc -o hello hello.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><=
br></div>Now when i am building &quot;bitbake hello&quot;, I am=C2=A0 getti=
ng below error in poky-krogoth-15.0.2. <br></div>The same <a href=3D"http:/=
/hello_2.7.bb" target=3D"_blank">hello_2.7.bb</a>=C2=A0 is compiling fine w=
ithout any error in &quot;poky-dora-10.0.0&quot;.<br></div>The strange thin=
g i observe in poky-krogoth-15.0.2. is that hello.c and Makefile are gettin=
g erased in hello_2.7 dir.<br></div>Am i missing some thing in poky-krogoth=
-15.0.2? Please help.<br><div><div><div><div><br>Error msg:<br>ERROR: hello=
-2.7-r0 do_compile: Function failed: do_compile (log file is located at /ho=
me/rajesh/poky-krogoth-15.<wbr>0.2/build/tmp/work/cortexa8hf-<wbr>neon-poky=
-linux-gnueabi/hello/<wbr>2.7-r0/temp/log.do_compile.<wbr>13763)<br>ERROR: =
Logfile of failure stored in: /home/rajesh/poky-krogoth-15.<wbr>0.2/build/t=
mp/work/cortexa8hf-<wbr>neon-poky-linux-gnueabi/hello/<wbr>2.7-r0/temp/log.=
do_compile.<wbr>13763<br>Log data follows:<br>| DEBUG: Executing shell func=
tion do_compile<br>| <span style=3D"background-color:rgb(255,0,0)">make: **=
* No rule to make target &#39;prog&#39;.=C2=A0 Stop</span>.<br>| WARNING: e=
xit code 2 from a shell command.<br>| ERROR: Function failed: do_compile (l=
og file is located at /home/rajesh/poky-krogoth-15.<wbr>0.2/build/tmp/work/=
cortexa8hf-<wbr>neon-poky-linux-gnueabi/hello/<wbr>2.7-r0/temp/log.do_compi=
le.<wbr>13763)<br>ERROR: Task 6 (/home/rajesh/poky-krogoth-15.<wbr>0.2/meta=
/recipes-support/<wbr>hello/<a href=3D"http://hello_2.7.bb" target=3D"_blan=
k">hello_2.7.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE:=
 Tasks Summary: Attempted 351 tasks of which 345 didn&#39;t need to be reru=
n and 1 failed.<br>No currently running tasks (351 of 358)<br><br>Summary: =
1 task failed:<br>=C2=A0 /home/rajesh/poky-krogoth-15.<wbr>0.2/meta/recipes=
-support/<wbr>hello/<a href=3D"http://hello_2.7.bb" target=3D"_blank">hello=
_2.7.bb</a>, do_compile<br></div></div></div></div></div>
</div><br></div>

--001a1130d41e00b3c30544024197--
