Return-Path: <yannick.lanz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE7B8E00D85; Sat,  1 Oct 2016 06:02:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yannick.lanz[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.171 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AEB7E00C43
	for <yocto@yoctoproject.org>; Sat,  1 Oct 2016 06:02:46 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id t193so4964499ywc.2
	for <yocto@yoctoproject.org>; Sat, 01 Oct 2016 06:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=Eq/AkPa/oM4BVaXNeq1mG2VUypOStIxzGg7njh+J+j8=;
	b=O1kz4RgaDWhXaBYmmpbuQk0VXtzQQsJWw7SKzzvJERw5dTGR+c/+ESCsrQZNcdU6ub
	iTKHT0zsT1bjET8tu9PwHSKMduYA4yVYszBCh3AFERSqHS2zkFVpYFGvgoivhOHKX2fU
	ZZ0gVeZXHtG3pwpmi0zZ81WSw8JB7WS+opztbAEF6h5cb+xiH1YM0Tam39k9GLORXP6A
	FiewNBAQ2LcodFipJRmOpPFNXx168RqkygT39mHyIKLJJaE7hsYrocFZc1GJqys/TEcB
	DB3m1BrnE1v1v3JdbDt+8bQpjDobUWO4Yh42tSLKUcXdlHm9bdRsqGF6jOU1MsiGOgxw
	Hl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Eq/AkPa/oM4BVaXNeq1mG2VUypOStIxzGg7njh+J+j8=;
	b=Fps9kVg1Ho+UaV/H5drpwJ87KLs4mC8HqZh99EhwWlb/ByalB9kpMRRYHCEZ1Y74kU
	AaRBI3IPkl7lzywqfEfrv3o/q12heKpdPBtDuxDmirSKnnJhyKwGjvdiDYnypUKThVOv
	HsEa7kYkP8tVtkFhqs8woAFPmDG2S6+I3lZDZpnVfH/dWsfFge1WIRqzq99w7fEf/oqH
	9zZRkmhlrdje32JR+PgRSK9qhPO+XAWgTYzGpBDP1oalOHp3nigpQE7h34MLYNbk/yr3
	/N81LoQN1BrHbxmhqLcLTI4U8M6tcqIvaNFczVpbduyqnfpf6FXcBuZTe0BmAm4VSOS3
	yqJw==
X-Gm-Message-State: AA6/9RmWGVcCzCEhDapLycfWkR4MPYOUExtQixVYi4aq/QQ2pTy/qo0uXjg/1yYxImtT5g6lzwowtbHAPeZ1cQ==
X-Received: by 10.129.83.193 with SMTP id h184mr8452376ywb.52.1475326966285;
	Sat, 01 Oct 2016 06:02:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.215.83 with HTTP; Sat, 1 Oct 2016 06:02:26 -0700 (PDT)
From: Yannick Lanz <yannick.lanz@gmail.com>
Date: Sat, 1 Oct 2016 15:02:26 +0200
Message-ID: <CAMh4vrGtAeHL3CUcjTQd5iFyy7BrkaUzD+QQgNkg1Dvtu5ypig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Source file recipe dependencies
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
X-List-Received-Date: Sat, 01 Oct 2016 13:02:49 -0000
Content-Type: multipart/alternative; boundary=001a114d6f1cc0eed9053dcd533f

--001a114d6f1cc0eed9053dcd533f
Content-Type: text/plain; charset=UTF-8

Hi all,

I need to create the recipes for two executables which are both using git
and makefile.

The first binary can be compiled in a standalone way and doesn't need any
other library. I made the do_compile and do_install to respectively compile
and install the produced files in the output target directories.

My problem now is that the second executable need a configuration file and
source (*.c) from the first one during the compilation and I don't know
really the best way to do that. I precise that the two applications are not
mine and then I have to deal with that.

My first idea was to install the conf and *.c files into the staging
dir (${STAGING_DIR_NATIVE}/...)
and to provide may be the packet <app1>-dev. The second application could
depends with DEPENDS on <app1>-dev and the app2 makefile need just to know
where the files are located (with a variable) but I'm not sure if this is
the best solution.

Have you some idea/advice or better solution to propose ?

--001a114d6f1cc0eed9053dcd533f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I need to create the recipes fo=
r two executables which are both using git and makefile.=C2=A0</div><div><b=
r></div><div>The first binary can be compiled in a standalone way and doesn=
&#39;t need any other library. I made the do_compile and do_install to resp=
ectively compile and install the produced files in the output target direct=
ories.=C2=A0</div><div><br></div><div>My problem now is that the second exe=
cutable need a configuration file and source (*.c) from the first one durin=
g the compilation and I don&#39;t know really the best way to do that. I pr=
ecise that the two applications are not mine and then I have to deal with t=
hat.=C2=A0</div><div><br></div><div>My first idea was to install the conf a=
nd *.c files into the staging dir (<span style=3D"color:rgb(0,0,0);white-sp=
ace:pre-wrap">${STAGING_DIR_NATIVE}/...) and to provide may be the packet &=
lt;app1&gt;-dev. The second application could depends with DEPENDS on &lt;a=
pp1&gt;-dev and the app2 makefile need just to know where the files are loc=
ated (with a variable) but I&#39;m not sure if this is the best solution. <=
/span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br>=
</span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">Hav=
e you some idea/advice or better solution to propose ?</span></div><div><br=
></div></div>

--001a114d6f1cc0eed9053dcd533f--
