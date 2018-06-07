Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8934E009CA; Thu,  7 Jun 2018 06:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f54.google.com (mail-pl0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 996E5E009CA
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 06:32:38 -0700 (PDT)
Received: by mail-pl0-f54.google.com with SMTP id c23-v6so6149088plz.12
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wMFcwYBxqFjx+VA9BU18g8+XP0YRFlJ+skfYDZYbF7c=;
	b=TyNE5q0wo5oeUa7qCoPYKjGzlcPXoDYAcLnTVykPmG0Y5tsLST537Kfnj4aVE31PTO
	tY1+giXhrDwoZQSTpaCk/oydyCinI+aaFf/wSS1NDz4tjITOTR+iek0wXKR11ZpmQVAj
	FNhnA2l6ZREPbw/+eMRCTH6/WVOV2eCZ2G369QIAUSZHVYv2FL/F7JNYHsn7ACCGpQZe
	ErsRbftBg4sk9BEpb8BumZneweB/ckeJ3rPPtph6Kths4elawAH6gEdzYD/bCX0Kk8bL
	CL75OeFd5V++i23fZFTZp7+IMVYCQtHq6HXh3xyYyTXVeX3T1vi3soyboDtlycgLTQab
	PVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wMFcwYBxqFjx+VA9BU18g8+XP0YRFlJ+skfYDZYbF7c=;
	b=AGIYyKi5k9rOUaBd6lgkMdPjKWA1OljTTE1Rbx8PDKdd1yt7fPpj+A+23ibRBHnmp+
	ye8jHyU49kyHVIM1UwD4ziJOnxKderIfBIWhFtcMuLMalPI7OUynUcOlsNVrZdu/MrzW
	vLGQ1LVZQ2pTpangIW5lkOQiptzXwrPuIiSRQ1vc7bVNlqi2EKMBak74z450cYd+gv5O
	qoRp6vNqboMYBpRdTUz3gwq7rzC6w5Ss6SkCn1iNHu7C6q3G3ryF7xBHrYKRovsNqRc7
	1d2PmxEVx1vBBRuwuTHRZeR9cFRNTmlm2lJTBPTtFvGdSYstr4FelvGkI8zxtQ2BYE/S
	PfHQ==
X-Gm-Message-State: APt69E3vv9S1R1KOZuvI+QxSxGR7lxNKO9CnlClMfEV5OhmxbR14mHuZ
	rvTnIh/HhSDYLPWeN6Pg/0Cm96oc0F8y1MOGpXWGcA==
X-Google-Smtp-Source: ADUXVKLDaQ/H4QZO63C96Ct3NOVyulhsO4vt3Ghmkvloz52ZNazodznavlnDCwvnqvqj/l2YW4Ecw/OXxFex1cH8B50=
X-Received: by 2002:a17:902:274a:: with SMTP id
	j10-v6mr2106415plg.393.1528378357961; 
	Thu, 07 Jun 2018 06:32:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:bb88:0:0:0:0 with HTTP; Thu, 7 Jun 2018 06:32:37
	-0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 7 Jun 2018 15:32:37 +0200
Message-ID: <CAFq4t4gDPdOHyqiFcuxs52Sxeq-x-UFmWZjxy06gsjSasL+=MA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Run QEMU from within Eclipse
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
X-List-Received-Date: Thu, 07 Jun 2018 13:32:39 -0000
Content-Type: multipart/alternative; boundary="0000000000001bd6f7056e0d5115"

--0000000000001bd6f7056e0d5115
Content-Type: text/plain; charset="UTF-8"

Hello All,

I'd like to ask since I am setting uo the Eclipse IDE for Yocot app
development and I got stuck to start the QEMU from within Eclipse.

I got working QEMU image and seems running OK.

*ubuntu@ubuntu:~/work/community/build-x11$ runqemu qemuarm
tmp/deploy/images/qemuarm/zImage-qemuarm.bin
tmp/deploy/images/qemuarm/fsl-image-multimedia-full-qemuarm.ext4 *

Within the Eclipse I follow

https://www.yoctoproject.org/docs/2.5/sdk-manual/sdk-manual.html#oxygen-starting-qemu-in-user-space-nfs-mode

But by configuring "External Tools" and tru to run QEMU I got following

*runqemu - INFO - Running MACHINE=qemuarm bitbake -e...*
*ERROR: Unable to find conf/bblayers.conf or conf/bitbake.conf. BBAPTH is
unset and/or not in a build directory?*
*runqemu - WARNING - Couldn't run 'bitbake -e' to gather environment
information:*

*runqemu - WARNING - Can't find qemuboot conf file, DEPLOY_DIR_IMAGE is
NULL!*
*runqemu - INFO - Running MACHINE=qemuarm bitbake -e...*
*ERROR: Unable to find conf/bblayers.conf or conf/bitbake.conf. BBAPTH is
unset and/or not in a build directory?*
*runqemu - WARNING - Couldn't run 'bitbake -e' to gather environment
information:*

*runqemu - INFO - Setting STAGING_DIR_NATIVE to OECORE_NATIVE_SYSROOT
(/home/ubuntu/work/community/build-x11/tmp/work/armv5e-fslc-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native)*
*runqemu - INFO - Setting STAGING_BINDIR_NATIVE to
/home/ubuntu/work/community/build-x11/tmp/work/armv5e-fslc-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native/usr/bin*
*runqemu - INFO - QB_MEM is not set, use 512M by default*
*runqemu - INFO - Continuing with the following parameters:*

*KERNEL:
[/home/ubuntu/work/community/build-x11/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]*
*MACHINE: [qemuarm]*
*FSTYPE: [nfs]*
*NFS_DIR: [/home/ubuntu/work/community/build-x11/MY_QEMU_ROOTFS]*
*CONFFILE: []*

*/bin/sh: 1: stty: not found*
*Traceback (most recent call last):*
*  File "/home/ubuntu/work/community/sources/poky/scripts/runqemu", line
1270, in main*
*    config.setup_network()*
*  File "/home/ubuntu/work/community/sources/poky/scripts/runqemu", line
997, in setup_network*
*    self.saved_stty = subprocess.check_output("stty -g",
shell=True).decode('utf-8')*
*  File "/usr/lib/python3.5/subprocess.py", line 626, in check_output*
*    **kwargs).stdout*
*  File "/usr/lib/python3.5/subprocess.py", line 708, in run*
*    output=stdout, stderr=stderr)*
*subprocess.CalledProcessError: Command 'stty -g' returned non-zero exit
status 127*
*Cleanup*
*Command 'lesspipe' is available in the following places*
* * /bin/lesspipe*
* * /usr/bin/lesspipe*
*The command could not be located because '/bin:/usr/bin' is not included
in the PATH environment variable.*
*lesspipe: command not found*
*Command 'dircolors' is available in '/usr/bin/dircolors'*
*The command could not be located because '/usr/bin' is not included in the
PATH environment variable.*
*dircolors: command not found*
*ubuntu@ubuntu:~/eclipse/cpp-oxygen/eclipse$ *


I wonder if any has experience on setting it up or solving similar issue?

Thank you
Peter

--0000000000001bd6f7056e0d5115
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I&#39;d like to ask since I =
am setting uo the Eclipse IDE for Yocot app development and I got stuck to =
start the QEMU from within Eclipse.</div><div><br></div><div>I got working =
QEMU image and seems running OK.</div><div><i><br></i></div><div><i>ubuntu@=
ubuntu:~/work/community/build-x11$ runqemu qemuarm tmp/deploy/images/qemuar=
m/zImage-qemuarm.bin tmp/deploy/images/qemuarm/fsl-image-multimedia-full-qe=
muarm.ext4=C2=A0</i><br></div><div><i><br></i></div><div>Within the Eclipse=
 I follow=C2=A0</div><div><br></div><div><a href=3D"https://www.yoctoprojec=
t.org/docs/2.5/sdk-manual/sdk-manual.html#oxygen-starting-qemu-in-user-spac=
e-nfs-mode">https://www.yoctoproject.org/docs/2.5/sdk-manual/sdk-manual.htm=
l#oxygen-starting-qemu-in-user-space-nfs-mode</a><br></div><div><br></div><=
div>But by configuring &quot;External Tools&quot; and tru to run QEMU I got=
 following</div><div><br></div><div><i>runqemu - INFO - Running MACHINE=3Dq=
emuarm bitbake -e...</i></div><div><i>ERROR: Unable to find conf/bblayers.c=
onf or conf/bitbake.conf. BBAPTH is unset and/or not in a build directory?<=
/i></div><div><i>runqemu - WARNING - Couldn&#39;t run &#39;bitbake -e&#39; =
to gather environment information:</i></div><div><i><br></i></div><div><i>r=
unqemu - WARNING - Can&#39;t find qemuboot conf file, DEPLOY_DIR_IMAGE is N=
ULL!</i></div><div><i>runqemu - INFO - Running MACHINE=3Dqemuarm bitbake -e=
...</i></div><div><i>ERROR: Unable to find conf/bblayers.conf or conf/bitba=
ke.conf. BBAPTH is unset and/or not in a build directory?</i></div><div><i>=
runqemu - WARNING - Couldn&#39;t run &#39;bitbake -e&#39; to gather environ=
ment information:</i></div><div><i><br></i></div><div><i>runqemu - INFO - S=
etting STAGING_DIR_NATIVE to OECORE_NATIVE_SYSROOT (/home/ubuntu/work/commu=
nity/build-x11/tmp/work/armv5e-fslc-linux-gnueabi/meta-ide-support/1.0-r3/r=
ecipe-sysroot-native)</i></div><div><i>runqemu - INFO - Setting STAGING_BIN=
DIR_NATIVE to /home/ubuntu/work/community/build-x11/tmp/work/armv5e-fslc-li=
nux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native/usr/bin</i></div>=
<div><i>runqemu - INFO - QB_MEM is not set, use 512M by default</i></div><d=
iv><i>runqemu - INFO - Continuing with the following parameters:</i></div><=
div><i><br></i></div><div><i>KERNEL: [/home/ubuntu/work/community/build-x11=
/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]</i></div><div><i>MACHINE: [q=
emuarm]</i></div><div><i>FSTYPE: [nfs]</i></div><div><i>NFS_DIR: [/home/ubu=
ntu/work/community/build-x11/MY_QEMU_ROOTFS]</i></div><div><i>CONFFILE: []<=
/i></div><div><i><br></i></div><div><i>/bin/sh: 1: stty: not found</i></div=
><div><i>Traceback (most recent call last):</i></div><div><i>=C2=A0 File &q=
uot;/home/ubuntu/work/community/sources/poky/scripts/runqemu&quot;, line 12=
70, in main</i></div><div><i>=C2=A0 =C2=A0 config.setup_network()</i></div>=
<div><i>=C2=A0 File &quot;/home/ubuntu/work/community/sources/poky/scripts/=
runqemu&quot;, line 997, in setup_network</i></div><div><i>=C2=A0 =C2=A0 se=
lf.saved_stty =3D subprocess.check_output(&quot;stty -g&quot;, shell=3DTrue=
).decode(&#39;utf-8&#39;)</i></div><div><i>=C2=A0 File &quot;/usr/lib/pytho=
n3.5/subprocess.py&quot;, line 626, in check_output</i></div><div><i>=C2=A0=
 =C2=A0 **kwargs).stdout</i></div><div><i>=C2=A0 File &quot;/usr/lib/python=
3.5/subprocess.py&quot;, line 708, in run</i></div><div><i>=C2=A0 =C2=A0 ou=
tput=3Dstdout, stderr=3Dstderr)</i></div><div><i>subprocess.CalledProcessEr=
ror: Command &#39;stty -g&#39; returned non-zero exit status 127</i></div><=
div><i>Cleanup</i></div><div><i>Command &#39;lesspipe&#39; is available in =
the following places</i></div><div><i>=C2=A0* /bin/lesspipe</i></div><div><=
i>=C2=A0* /usr/bin/lesspipe</i></div><div><i>The command could not be locat=
ed because &#39;/bin:/usr/bin&#39; is not included in the PATH environment =
variable.</i></div><div><i>lesspipe: command not found</i></div><div><i>Com=
mand &#39;dircolors&#39; is available in &#39;/usr/bin/dircolors&#39;</i></=
div><div><i>The command could not be located because &#39;/usr/bin&#39; is =
not included in the PATH environment variable.</i></div><div><i>dircolors: =
command not found</i></div><div><i>ubuntu@ubuntu:~/eclipse/cpp-oxygen/eclip=
se$=C2=A0</i></div><div>=C2=A0</div><div><br></div><div>I wonder if any has=
 experience on setting it up or solving similar issue?</div><div><br></div>=
<div>Thank you</div><div>Peter</div></div>

--0000000000001bd6f7056e0d5115--
