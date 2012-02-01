Return-Path: <wjn740@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5997DE00598
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 22:20:20 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so1404909obb.35
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 22:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Oyd+0Thdsqq3upfxMPko5c+IMCEWGPNkFXyLSRuhZHE=;
	b=YTXVggsNWqquym7mo2kbQQqgtCuYfCtNMKER7peHsf/x0SfHpdpYN8MDsz33UwJnHy
	LlIs/rS1iJpT2Aao5tgmw3KtNih7CJQXsC+xlfiBCYC2+ZAOamUBQz6aULg/je9vBsMV
	1bt9M1YadfNd9hA/w3UlqCWDn2ehu3rBvFeqE=
MIME-Version: 1.0
Received: by 10.182.15.105 with SMTP id w9mr38173394obc.18.1328077219708; Tue,
	31 Jan 2012 22:20:19 -0800 (PST)
Received: by 10.182.47.105 with HTTP; Tue, 31 Jan 2012 22:20:19 -0800 (PST)
Date: Wed, 1 Feb 2012 14:20:19 +0800
Message-ID: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
From: "James W." <wjn740@gmail.com>
To: yocto@yoctoproject.org
Subject: Build Error
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
X-List-Received-Date: Wed, 01 Feb 2012 06:20:20 -0000
Content-Type: multipart/alternative; boundary=f46d0447f2d8ea3d7304b7e11236

--f46d0447f2d8ea3d7304b7e11236
Content-Type: text/plain; charset=UTF-8

hi all:
i am new comer.
i meet  a error:

NOTE: package pciutils-3.1.9-r0: task do_configure: Started
ERROR: Function failed: do_configure (see
/home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
for further information)
ERROR: Logfile of failure stored in:
/home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
Log data follows:
| ERROR: Function failed: do_configure (see
/home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
for further information)
| Configuring libpci for your system..../configure: 1: Syntax error:
Unterminated quoted string
NOTE: package pciutils-3.1.9-r0: task do_configure: Failed
ERROR: Task 1041 (/home/jwang5/poky/meta/recipes-bsp/pciutils/
pciutils_3.1.9.bb, do_configure) failed with exit code '1'

Waiting for 3 active tasks to finish:
0:
linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3
do_compile (pid 7078)
1: openssl-1.0.0f-r15.0 do_compile (pid 3215)
2: db-5.1.19-r4 do_package (pid 7485)
Waiting for 2 active tasks to finish:
0:
linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3
do_compile (pid 7078)
1: openssl-1.0.0f-r15.0 do_compile (pid 3215)
NOTE: package db-5.1.19-r4: task do_package: Succeeded
Waiting for 1 active tasks to finish:
0:
linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3
do_compile (pid 7078)
NOTE: package openssl-1.0.0f-r15.0: task do_compile: Succeeded
NOTE: package
linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3:
task do_compile: Succeeded
NOTE: Tasks Summary: Attempted 902 tasks of which 518 didn't need to be
rerun and 1 failed.


command line:
*bitbake core-image-minimal*


Who can help me?

--f46d0447f2d8ea3d7304b7e11236
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

hi all:<div>i am new comer.</div><div>i meet =C2=A0a error:</div><div><div>=
<br></div></div><div><div>NOTE: package pciutils-3.1.9-r0: task do_configur=
e: Started</div><div>ERROR: Function failed: do_configure (see /home/jwang5=
/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configur=
e.9978 for further information)</div>
<div>ERROR: Logfile of failure stored in: /home/jwang5/poky-build/tmp/work/=
i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978</div><div>Log =
data follows:</div><div>| ERROR: Function failed: do_configure (see /home/j=
wang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_con=
figure.9978 for further information)</div>
<div>| Configuring libpci for your system..../configure: 1: Syntax error: U=
nterminated quoted string</div><div>NOTE: package pciutils-3.1.9-r0: task d=
o_configure: Failed</div><div>ERROR: Task 1041 (/home/jwang5/poky/meta/reci=
pes-bsp/pciutils/<a href=3D"http://pciutils_3.1.9.bb">pciutils_3.1.9.bb</a>=
, do_configure) failed with exit code &#39;1&#39;</div>
</div><div><br></div><div><div>Waiting for 3 active tasks to finish:</div><=
div>0: linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9=
e73573b6b227ab2c62e66e63470866d136f8d76-r3 do_compile (pid 7078)</div><div>
1: openssl-1.0.0f-r15.0 do_compile (pid 3215)</div><div>2: db-5.1.19-r4 do_=
package (pid 7485)</div><div>Waiting for 2 active tasks to finish:</div><di=
v>0: linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d611f1a_1+9e7=
3573b6b227ab2c62e66e63470866d136f8d76-r3 do_compile (pid 7078)</div>
<div>1: openssl-1.0.0f-r15.0 do_compile (pid 3215)</div><div>NOTE: package =
db-5.1.19-r4: task do_package: Succeeded</div><div>Waiting for 1 active tas=
ks to finish:</div><div>0: linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a4=
6a9f2c138d611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3 do_compile (=
pid 7078)</div>
<div>NOTE: package openssl-1.0.0f-r15.0: task do_compile: Succeeded</div><d=
iv>NOTE: package linux-yocto-3.0.14+git1+665fea1c249b4f335cb1c9a46a9f2c138d=
611f1a_1+9e73573b6b227ab2c62e66e63470866d136f8d76-r3: task do_compile: Succ=
eeded</div>
<div>NOTE: Tasks Summary: Attempted 902 tasks of which 518 didn&#39;t need =
to be rerun and 1 failed.</div></div><div><br></div><div><br></div><div><di=
v><div>command line:</div><div><i>bitbake core-image-minimal</i></div></div=
>
</div><div><br></div><div><br></div><div>Who can help me?</div>

--f46d0447f2d8ea3d7304b7e11236--
