Return-Path: <javier.fileiv@gmail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 364D8E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:10:24 -0700 (PDT)
Received: by mail-oa0-f42.google.com with SMTP id j10so676880oah.1
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=08RoDhM3IbGJG2CxSwTyL4h7W/lqGOWK+xbCq2bgxV0=;
	b=HwVRZQL+lUaq3xli7IyGFnuTX/xCN6Jtaz04qZisdIjR7314UloQnWD8pABkgucOV9
	eeZ8oy/VqIA4nIdW8plp+IBqaqaV+njTs/9MkuofTX/QFDWIyEb0Lqf7aoEXNWUxvo/M
	hQn3tfNjFN04WResEHQxpiO2kiiodLYVdIzn5JBICkuFXtHXA90lthkI4800+lIhuWIx
	JZV9QNlItWPnuCXE1+7Fw2GJKqHTYhPSqmOaR/vZWidmepnW9OdTSaTJzZLbi2FTsbxp
	UpUaZkx+cHuxXO/UibPQa4+5OrEhkffq1YdJIUi1Sy4s5K5AWPUQfkMCWd0NWcLHovcJ
	DmCA==
MIME-Version: 1.0
X-Received: by 10.182.227.136 with SMTP id sa8mr12743872obc.39.1377709824189; 
	Wed, 28 Aug 2013 10:10:24 -0700 (PDT)
Received: by 10.182.28.193 with HTTP; Wed, 28 Aug 2013 10:10:24 -0700 (PDT)
Date: Wed, 28 Aug 2013 19:10:24 +0200
Message-ID: <CABvwO2BKvsLhQ_6kH_OtmLB=ipa8YLBrmzp0nMeRXkv85R8qMw@mail.gmail.com>
From: Javier Fileiv <javier.fileiv@gmail.com>
To: yocto@yoctoproject.org
Subject: IMAGE SATO BOOTARGS
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
X-List-Received-Date: Wed, 28 Aug 2013 17:10:28 -0000
Content-Type: multipart/alternative; boundary=001a11c30350acadc104e50510a3

--001a11c30350acadc104e50510a3
Content-Type: text/plain; charset=ISO-8859-1

Hello all, Im newbi with linux embedded. I bought a mini2440 boards and I
downloaded the yocto project. I found some recipes for the same board from
this guy.
https://github.com/sakhnik/meta-mini2440

I have a kernel built for mini2440, and the
core-image-sato-mini2440.rootfs.tar.bz2

I have some question, I hope someone can help me.

-If the kernel was not build with HOB, would it work anyway?
-Which are the bootargs to pass to the kernel so it will start with the
graphical mode?

Thank you very much

Javier (Bs As, Argentina)

--001a11c30350acadc104e50510a3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all, Im newbi with linux embedded. I bought a mini24=
40 boards and I downloaded the yocto project. I found some recipes for the =
same board from this guy.<div><a href=3D"https://github.com/sakhnik/meta-mi=
ni2440">https://github.com/sakhnik/meta-mini2440</a><br>
</div><div><br></div><div>I have a kernel built for mini2440, and the core-=
image-sato-mini2440.rootfs.tar.bz2</div><div><br></div><div>I have some que=
stion, I hope someone can help me.</div><div><br></div><div>-If the kernel =
was not build with HOB, would it work anyway?</div>
<div>-Which are the bootargs to pass to the kernel so it will start with th=
e graphical mode?</div><div><br></div><div>Thank you very much</div><div><b=
r></div><div>Javier (Bs As, Argentina)</div><div><br></div></div>

--001a11c30350acadc104e50510a3--
