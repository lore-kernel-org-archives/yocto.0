Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3DF9E0042B
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 12:34:32 -0700 (PDT)
Received: by mail-qe0-f47.google.com with SMTP id q19so823275qeb.20
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 12:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=wp5rY7UQc+IAcbBa9anPSbMdWX/M+ekLIR7KVUfStPA=;
	b=JPwUsof+1iN3+usqF8O1HzVptaqdrBDO2OGVWgRK5Hkh7iqfcPh/vdpSUTiwc3xDAw
	aK3lNdOpdXJ78VCIboLHMB+p5d0bMVwxKWlKTbqN7wdeLHivHW2hnQyRKgYB2wnHCjH7
	9nifV2N6NJYZwgjViJRsm+onE8RjFN5vr3yYErmIt3zd1mzkKL8AqZwcVCpufTvEs9sy
	m/7fmodqt/QprQfPShKV1GZrSJrjm/VJy6xIszCm7CoUSZ0OUcm6v8OD64kr8BjOVizm
	P6tZWt1LiqdBkhx7KK8lASkMI/thqZBLLQQa0F9kMJiJYvtu3vXgJy2OQ2EoLEtc8NE8
	coCQ==
MIME-Version: 1.0
X-Received: by 10.229.106.203 with SMTP id y11mr5860365qco.47.1363203272276;
	Wed, 13 Mar 2013 12:34:32 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Wed, 13 Mar 2013 12:34:32 -0700 (PDT)
Date: Wed, 13 Mar 2013 20:34:32 +0100
Message-ID: <CAFyqS9pPywJFkh+60oOqse0oUjrp3qJuOqNZ4dXH3cbb40UXbQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem compiling util-linux-native
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
X-List-Received-Date: Wed, 13 Mar 2013 19:34:33 -0000
Content-Type: multipart/alternative; boundary=0023544701dccd071b04d7d37e33

--0023544701dccd071b04d7d37e33
Content-Type: text/plain; charset=ISO-8859-1

Hi. I just moved from a x86 Ubuntu host to SuSE x86_64. Now I have issues
getting my ARM image to build due to compilation errors in util-linux?
It seems it is the util-linux-native that fails even though I get this in
the end:

*  ERROR: Task 432 (virtual:native:/home/poky/meta/recipes-core/util-linux/
util-linux_2.22.2.bb, do_compile) failed with exit code '1'*


Here is the actual error reported from the log:

   | *gcc -std=gnu99 -DHAVE_CONFIG_H -I.  -include config.h -I./include
-DLOCALEDIR=\"/home/poky/build/tmp/sysroots/x86_64-linux/usr/share/locale\"
-D_PATH_LOCALSTATEDIR=\"/home/poky/build/tmp/sysroots/x86_64-linux/var\"
-isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include
-fsigned-char -fno-common -Wall -Werror=sequence-point -Wextra
-Wmissing-declarations -Wmissing-parameter-type -Wmissing-prototypes
-Wno-missing-field-initializers -Wredundant-decls -Wsign-compare
-Wtype-limits -Wuninitialized -Wunused-parameter -Wunused-result
-Wunused-variable
-isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c
-o misc-utils/procs.o misc-utils/procs.c
| In file included from misc-utils/lsblk.c:46:0:
| /usr/include/libudev.h:28:2: error: #error "#define
LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CHANGE is needed to use this
experimental library version"*


I dit not get this error on the Ubuntu host. In fact /usr/include/libudev.h
does not even exist and I dont think util-linux-native is even built.
Why is it built on the SuSE host? Trying to define
LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CHANGE only made be pass the first
error, then I got into issues with unresolved udev symbols instead. Is a
no-go to try to use the Yocto environment on this SuSE host? It does warn
about it :(

*WARNING: Host distribution "SUSE-LINUX-11" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.*

I am currently on branch:master

Hans

--0023544701dccd071b04d7d37e33
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi. I just moved from a x86 Ubuntu host to SuSE x86_64. Now I have issues g=
etting my ARM image to build due to compilation errors in util-linux?<br>It=
 seems it is the util-linux-native that fails even though I get this in the=
 end:<br>
<br><i>=A0 ERROR: Task 432 (virtual:native:/home/poky/meta/recipes-core/uti=
l-linux/<a href=3D"http://util-linux_2.22.2.bb">util-linux_2.22.2.bb</a>, d=
o_compile) failed with exit code &#39;1&#39;</i><br><br><br>Here is the act=
ual error reported from the log:<br>
<br>=A0=A0 | <i>gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.=A0 -include config.h -=
I./include -DLOCALEDIR=3D\&quot;/home/poky/build/tmp/sysroots/x86_64-linux/=
usr/share/locale\&quot; -D_PATH_LOCALSTATEDIR=3D\&quot;/home/poky/build/tmp=
/sysroots/x86_64-linux/var\&quot; -isystem/home/poky/build/tmp/sysroots/x86=
_64-linux/usr/include -fsigned-char -fno-common -Wall -Werror=3Dsequence-po=
int -Wextra -Wmissing-declarations -Wmissing-parameter-type -Wmissing-proto=
types -Wno-missing-field-initializers -Wredundant-decls -Wsign-compare -Wty=
pe-limits -Wuninitialized -Wunused-parameter -Wunused-result -Wunused-varia=
ble -isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pip=
e -c -o misc-utils/procs.o misc-utils/procs.c<br>
| In file included from misc-utils/lsblk.c:46:0:<br>| /usr/include/libudev.=
h:28:2: error: #error &quot;#define LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CH=
ANGE is needed to use this experimental library version&quot;</i><br><br>
<br>I dit not get this error on the Ubuntu host. In fact /usr/include/libud=
ev.h does not even exist and I dont think util-linux-native is even built. =
<br>Why is it built on the SuSE host? Trying to define LIBUDEV_I_KNOW_THE_A=
PI_IS_SUBJECT_TO_CHANGE only made be pass the first error, then I got into =
issues with unresolved udev symbols instead. Is a no-go to try to use the Y=
octo environment on this SuSE host? It does warn about it :(<br>
<br><i>WARNING: Host distribution &quot;SUSE-LINUX-11&quot; has not been va=
lidated with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested distribution.<=
/i><br>
<br>I am currently on branch:master<br><br>Hans<br><br><br>

--0023544701dccd071b04d7d37e33--
