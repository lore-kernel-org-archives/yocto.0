Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88A6DE0073D; Fri,  6 Jun 2014 23:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A34E0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 23:19:17 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id s7so2014841lbd.36
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 23:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fH3sooTWgSyT8aQVdqBy8kjnqC91/TbuSl08VhJkf5g=;
	b=i9iEH51+LNzYOMtIDB2IkZzJEpmvJr9v56lsssOfL8ZIyrDtNGusw7L5HB7Q64dY3W
	FuT1+N9C7pW2lmNHICzWqUH3Dz8SxFTsYir//juKDLFVwywD3FNd6agwxaxel+JMBmR4
	PsjtpaN0lJmn31MV0NsMrkBFFRuExDHwdBjgY9CvVHEeV4FtuOE49R8z9z4A8Zxwv5U8
	6Nu0vs40OTOMCUQIou8aH+dUM5LblCwL67GC01tS0JutuNj7O2I7MRa2L+YV9QGNlVjq
	KjbG0eUFI1f1U56/s1svwXozZlW/8+N+mMRwVkscOzqGMKMT/QySWRYcJ4z7ki/VHe2Z
	F7pA==
MIME-Version: 1.0
X-Received: by 10.152.37.229 with SMTP id b5mr7295597lak.40.1402121956800;
	Fri, 06 Jun 2014 23:19:16 -0700 (PDT)
Received: by 10.114.29.132 with HTTP; Fri, 6 Jun 2014 23:19:16 -0700 (PDT)
Date: Sat, 7 Jun 2014 11:49:16 +0530
Message-ID: <CANJXcUZuFFfUKY=6inswjM_Jdor0e7CU6e+KX+LguH-m=yniHw@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: do_compile failed
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
X-List-Received-Date: Sat, 07 Jun 2014 06:19:33 -0000
Content-Type: multipart/alternative; boundary=089e0141a74e2abda304fb38f54d

--089e0141a74e2abda304fb38f54d
Content-Type: text/plain; charset=UTF-8

Hello

While bitbake was running my pc froze. I did a restart and then started
bitbake command again. After that getting following error

ERROR: Function failed: do_compile (log file is located at
/home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745)
ERROR: Logfile of failure stored in:
/home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
|   LINK  ppc-linux-user/qemu-ppc
|   LINK  x86_64-linux-user/qemu-x86_64
|   LINK  ppc-softmmu/qemu-system-ppc
| target-ppc/translate.o: file not recognized: File truncated
| collect2: error: ld returned 1 exit status
| make[1]: *** [qemu-ppc] Error 1
| make: *** [subdir-ppc-linux-user] Error 2
| make: *** Waiting for unfinished jobs....
| target-i386/translate.o: file not recognized: File truncated
| collect2: error: ld returned 1 exit status
| make[1]: *** [qemu-x86_64] Error 1
| make: *** [subdir-x86_64-linux-user] Error 2
|   LINK  x86_64-softmmu/qemu-system-x86_64
| target-ppc/translate.o: file not recognized: File truncated
| collect2: error: ld returned 1 exit status
| make[1]: *** [qemu-system-ppc] Error 1
| make: *** [subdir-ppc-softmmu] Error 2
| target-i386/translate.o: file not recognized: File truncated
| collect2: error: ld returned 1 exit status
| make[1]: *** [qemu-system-x86_64] Error 1
| make: *** [subdir-x86_64-softmmu] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745)
ERROR: Task 96
(virtual:native:/home/kashyap/kashyap/yocto/poky/meta/recipes-devtools/qemu/
qemu_1.7.0.bb, do_compile) failed with exit code '1'


Please Help

--089e0141a74e2abda304fb38f54d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>While bitbake was running my pc f=
roze. I did a restart and then started bitbake command again. After that ge=
tting following error</div><div><br></div><div><div>ERROR: Function failed:=
 do_compile (log file is located at /home/kashyap/kashyap/yocto/poky/minima=
l/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745)</div=
>
<div>ERROR: Logfile of failure stored in: /home/kashyap/kashyap/yocto/poky/=
minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745=
</div><div>Log data follows:</div><div>| DEBUG: Executing shell function do=
_compile</div>
<div>| NOTE: make -j 4</div><div>| =C2=A0 LINK =C2=A0ppc-linux-user/qemu-pp=
c</div><div>| =C2=A0 LINK =C2=A0x86_64-linux-user/qemu-x86_64</div><div>| =
=C2=A0 LINK =C2=A0ppc-softmmu/qemu-system-ppc</div><div>| target-ppc/transl=
ate.o: file not recognized: File truncated</div>
<div>| collect2: error: ld returned 1 exit status</div><div>| make[1]: *** =
[qemu-ppc] Error 1</div><div>| make: *** [subdir-ppc-linux-user] Error 2</d=
iv><div>| make: *** Waiting for unfinished jobs....</div><div>| target-i386=
/translate.o: file not recognized: File truncated</div>
<div>| collect2: error: ld returned 1 exit status</div><div>| make[1]: *** =
[qemu-x86_64] Error 1</div><div>| make: *** [subdir-x86_64-linux-user] Erro=
r 2</div><div>| =C2=A0 LINK =C2=A0x86_64-softmmu/qemu-system-x86_64</div><d=
iv>| target-ppc/translate.o: file not recognized: File truncated</div>
<div>| collect2: error: ld returned 1 exit status</div><div>| make[1]: *** =
[qemu-system-ppc] Error 1</div><div>| make: *** [subdir-ppc-softmmu] Error =
2</div><div>| target-i386/translate.o: file not recognized: File truncated<=
/div>
<div>| collect2: error: ld returned 1 exit status</div><div>| make[1]: *** =
[qemu-system-x86_64] Error 1</div><div>| make: *** [subdir-x86_64-softmmu] =
Error 2</div><div>| ERROR: oe_runmake failed</div><div>| WARNING: exit code=
 1 from a shell command.</div>
<div>| ERROR: Function failed: do_compile (log file is located at /home/kas=
hyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/=
temp/log.do_compile.4745)</div><div>ERROR: Task 96 (virtual:native:/home/ka=
shyap/kashyap/yocto/poky/meta/recipes-devtools/qemu/<a href=3D"http://qemu_=
1.7.0.bb">qemu_1.7.0.bb</a>, do_compile) failed with exit code &#39;1&#39;<=
/div>
</div><div><br></div><div><br></div><div>Please Help</div></div>

--089e0141a74e2abda304fb38f54d--
