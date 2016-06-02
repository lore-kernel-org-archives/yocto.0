Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04D25E00D36; Thu,  2 Jun 2016 10:41:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (oleksandr.poznyak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA07E00D19
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 10:41:24 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id k6so1405338qta.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 10:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=UYHyhpB0p5Y88now79hDaFf4uCuJuPJhbu33/myI7qY=;
	b=jRi0ziX7EUcVuQmokuurzBj6jirOks+SF/e86kCbIAX4WmVfDJG8wS5CYr2Tj/l+z7
	6kNQOyHa+QmYQpkBXSgCX9YGBrrb2o8ZP7MZ/QfPH1mIJDREMtFSyjgW05Ob/3OADCm2
	3UzT/FhAMzWr1uwGHgAmVt7ooocJf6FStddluJcaceVHninjMl1ZIHhwbaQcOWVoiPw3
	na3Hd05jVQ/Pdt24pmUszFr4QeuOQ1ouxQZHL0hgsKRWUzLcnotO4J4L+m4qmChj2MyJ
	p3OCtCYD5VBov9WoA1VDXC9+u0QdZJiZ65+15WUQ37pytumg5dg5oYr6Bb4c7UROUuEv
	/PGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=UYHyhpB0p5Y88now79hDaFf4uCuJuPJhbu33/myI7qY=;
	b=iT/AaU6A5qxHSHlyQ5lJGoZOAbbEXAnDCS7gKkAirfnpR066BHDNNbc+OEzhZs+oQF
	GCXOYXCOz6XmVgN5vNdHxV8eGgzMIXzlco5/TsKekCAugSkTzbjiKCH32zl0Rx0bOpOd
	uVv76nPgmgPkl+a18rG3uq8QBk5ffK+JR46AgcEpn3IkPnEqTNLabaMJyxcXpHgYSFym
	SPtXovUwn08InA3appQuVSn4FP6joSm2GoeglRxTxtkaHezSTaUcJDpfWtDDie4qVOiC
	esiawlJg2DTtuEHb1HT/JOL4l7kkAm8auV7+aGSmYv1H0PzbJNOO7vWaASkk0Ade5Wan
	3s/g==
X-Gm-Message-State: ALyK8tLcModcv3LqvyKmKZ68MBGmgcBNip9IN1e1sGzIKkO9CztUqRt+Jlx54ILiAmvxLgSKg44iiz/jfALDoQ==
MIME-Version: 1.0
X-Received: by 10.200.50.220 with SMTP id a28mr10556799qtb.13.1464889283920;
	Thu, 02 Jun 2016 10:41:23 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Thu, 2 Jun 2016 10:41:23 -0700 (PDT)
Date: Thu, 2 Jun 2016 20:41:23 +0300
Message-ID: <CAEeWub+K9FSibSUAAapLobUm=S=010koJh3vzwUNt3TZrTnf9w@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: yocto@yoctoproject.org
Subject: Enable chroot for nativesdk
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
X-List-Received-Date: Thu, 02 Jun 2016 17:41:27 -0000
Content-Type: multipart/alternative; boundary=001a11404eac674b4305344f1dd7

--001a11404eac674b4305344f1dd7
Content-Type: text/plain; charset=UTF-8

Hi,

Currently, nativesdk  doesn't support "chroot". It would be great to enable
it for packages support at least.

This will allow us to install packages directly into our sdk, try them and
eventually add to Yocto if needed.

Here might be valid steps to achive this:

1) Add coreutils to nativesdk:

TOOLCHAIN_HOST_TASK += nativesdk-coreutils

2) Fix packagemanager support for chrooted nativesdk

1) Create unique symlink to dynamic loader located in nativesdk:

Add something like this to POPULATE_SDK_POST_HOST_COMMAND
ln -s ld-linux-x86-64.so.2 ld-yocto-nativesdk-x86-64.so.2
and
ln -s /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2
/lib/ld-yocto-nativesdk-x86-64.so.2

2) patch binaries in nativesdk to set new dynamic loader

patchelf --set-interpreter /lib/ld-yocto-nativesdk-x86-64.so.2 <some_binary>

3) patch binaries in nativesdk to add RPATH:

patchelf --set-rpath
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib:/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/lib:/lib:/usr/lib
<some_binary>

Thanks,
Oleksandr Poznyak!

--001a11404eac674b4305344f1dd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br>Currently, nativesdk=C2=A0 doesn&#39;t sup=
port &quot;chroot&quot;. It would be great to enable it for packages suppor=
t at least.<br><br>This will allow us to install packages directly into our=
 sdk, try them and eventually add to Yocto if needed.<br><br>Here might be =
valid steps to achive this:<br><br>1) Add coreutils to nativesdk:<br><br>TO=
OLCHAIN_HOST_TASK +=3D nativesdk-coreutils<br><br>2) Fix packagemanager sup=
port for chrooted nativesdk<br><br>1) Create unique symlink to dynamic load=
er located in nativesdk:<br><br>Add something like this to POPULATE_SDK_POS=
T_HOST_COMMAND<br>ln -s ld-linux-x86-64.so.2 ld-yocto-nativesdk-x86-64.so.2=
<br>and <br>ln -s /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/lib/ld-linux-=
x86-64.so.2 /lib/ld-yocto-nativesdk-x86-64.so.2<br><br>2) patch binaries in=
 nativesdk to set new dynamic loader <br><br>patchelf --set-interpreter /li=
b/ld-yocto-nativesdk-x86-64.so.2 &lt;some_binary&gt;<br><br>3) patch binari=
es in nativesdk to add RPATH:<br><br>patchelf --set-rpath /opt/poky/1.8/sys=
roots/x86_64-pokysdk-linux/usr/lib:/opt/poky/1.8/sysroots/x86_64-pokysdk-li=
nux/lib:/lib:/usr/lib &lt;some_binary&gt;<br><br></div><div>Thanks,<br></di=
v><div>Oleksandr Poznyak!<br></div></div>

--001a11404eac674b4305344f1dd7--
