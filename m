Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25694E00405; Thu, 12 Jan 2017 10:38:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
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
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C17E0034A
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:37:57 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id c206so34255954wme.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WGqvByq5poPaEFiBKV8BNh+na/ybZj1QmBTrhidmWdY=;
	b=C/SmCZlrIdBIJ/xXKy3lxo3Hm+DKpXWpioHnH89dCoXn6z5DI4moA7XyGNWC4sdJHf
	BxAwRO7JPc+KJ/XVnTn+gZfH2HhXrbIueRtNLroNl1RQbaYTEprriBT1Pi6kL0oN4ioX
	1G8ejqpWaHFBBb54HkxAu/mv4o056yXMcWYYJl3AV7pXSYnHJopF4gnbY+KIQ2SFN5D+
	C+ewbGjL51esCMtxuf+3q1OmgRpCB6VdcqKKvC3OvFk5YGavNFtBPmgZRKt9tLRzrPMu
	/wZjXB3h+gUNOwow2futmZhaixRQKWn6j+XNwO49cTzXB7D0EJV7t8VrcdfBEZ3mEq5U
	FTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WGqvByq5poPaEFiBKV8BNh+na/ybZj1QmBTrhidmWdY=;
	b=jlOC4CdMEsXktXtLsYRxPPHZeMcwaC1F3cUCCXHXOX88yPudenMJYXaa4slW8wJL2A
	XCcuiG8ivF7S/8D2XjMaNhWsIv8ReQJoMAOAGOjNAkvEPNEP0T7ZE67NqdtGBDJMGITo
	uOqm0FJtYsUPCIns4OnLNQZEt0n3Qel5Km7/X9W9znMS3klQXC1Jz86HIPlsYaPdr0K8
	8xKOo2LkjxsqEd/1+LNktzHJBbrEUxjCLk3eEbeVHttgbrKKWgPOnBC5ztAaje09BoGE
	e9BFsvUW5llOo7jgDz9CzdcWWJ5oEyGYvZcDYmsmmy3RO8wyyF8CfGXzUyAP0XyEs/gL
	pk7g==
X-Gm-Message-State: AIkVDXJ2nOYgvLPW1daQ4DLafcj2JBP22dKH/21oGL3jaZTcutfVor/8BKMWjqL1b794czQJX7oDINBQwa3LjA==
X-Received: by 10.28.41.70 with SMTP id p67mr7173808wmp.4.1484246276190; Thu,
	12 Jan 2017 10:37:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.217.207 with HTTP; Thu, 12 Jan 2017 10:37:55 -0800 (PST)
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 12 Jan 2017 19:37:55 +0100
Message-ID: <CA+-BmJabGkyK91Uw47pevvvXNKg+Uf8hiCC8xf1gz87mYWAkQg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Override machine conf settings
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
X-List-Received-Date: Thu, 12 Jan 2017 18:38:01 -0000
Content-Type: multipart/alternative; boundary=001a114e30560d373d0545ea0432

--001a114e30560d373d0545ea0432
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to figure out how can I override machine settings, for example
in raspberrypi  I want to change default kernel version from 4.4.x to 4.1.x
for that I created in my layer meta-somelayer/conf/machine/raspberrypi.conf
:

require conf/machine/raspberrypi.conf
PREFERRED_VERSION_linux-raspberrypi = "4.1.%"


when I ran bitbake it gives:

$ MACHINE=raspberrypi bitbake virtual/kernel

NOTE: Tainting hash to force rebuild of task
/home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/
linux-raspberrypi_4.4.bb, do_compile

so it seems that bitbake ignored my override settings !

I'm using morty branch and my layer meta-somelayer has higher priority than
meta-rapberrypi :

$ bitbake-layers show-layers
layer                 path                                      priority
==========================================================================
meta                  /home/zak/Projects/yocto/meta        5
meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
meta-poky             /home/zak/Projects/yocto/meta-poky   5
meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
meta-raspberrypi      /home/zak/Projects/yocto/meta-raspberrypi  9
meta-somelayer        /home/zak/Projects/yocto/meta-somelayer  5


when I tried to override the setting in rpi.conf instead of
raspberrypi.conf in meta-somelayer/conf/machine/rpi.conf:

MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
require conf/machine/raspberrypi.conf

PREFERRED_VERSION_linux-raspberrypi = "4.1.%"

and running bitbake with :


$ MACHINE=rpi bitbake virtual/kernel
NOTE: Tainting hash to force rebuild of task
/home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/
linux-raspberrypi_4.1.bb, do_compile

it worked !

My objective however is to override the machine settings and keep the same
MACHINE name.

Any Ideas?


Regards,

--001a114e30560d373d0545ea0432
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div>I&#39;m trying to figure o=
ut how can I override machine settings, for example in raspberrypi =C2=A0I =
want to change default kernel version from 4.4.x to 4.1.x for that I create=
d in my layer meta-somelayer/conf/machine/raspberrypi.conf :<div><br></div>=
<div><div>require conf/machine/raspberrypi.conf</div><div>PREFERRED_VERSION=
_linux-raspberrypi =3D &quot;4.1.%&quot;<br></div></div><div><br></div><div=
><br></div><div>when I ran bitbake it gives:</div><div><br></div><div>$ MAC=
HINE=3Draspberrypi bitbake virtual/kernel=C2=A0</div><div><br></div><div>NO=
TE: Tainting hash to force rebuild of task /home/zak/Projects/yocto/meta-so=
melayer/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb">li=
nux-raspberrypi_4.4.bb</a>, do_compile<br></div><div><br></div><div>so it s=
eems that bitbake ignored my override settings !</div><div><br></div><div>I=
&#39;m using morty branch and my layer meta-somelayer has higher priority t=
han meta-rapberrypi :</div><div><br></div><div><div>$ bitbake-layers show-l=
ayers</div><div>layer =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 path =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priority<=
/div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/home/zak/Projects/yocto/meta =C2=A0 =C2=A0 =C2=A0 =C2=A05</di=
v><div>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/zak/Projects/yocto/m=
eta-yocto-bsp =C2=A05</div><div>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /home/zak/Projects/yocto/meta-poky =C2=A0 5</div><div>meta-yocto=
-bsp =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/zak/Projects/yocto/meta-yocto-bsp =C2=
=A05</div><div>meta-raspberrypi =C2=A0 =C2=A0 =C2=A0/home/zak/Projects/yoct=
o/meta-raspberrypi =C2=A09</div><div>meta-somelayer =C2=A0 =C2=A0 =C2=A0 =
=C2=A0/home/zak/Projects/yocto/meta-somelayer =C2=A05</div></div><div><br><=
/div><div><br></div><div>when I tried to override the setting in rpi.conf i=
nstead of raspberrypi.conf in meta-somelayer/conf/machine/rpi.conf:</div><d=
iv><br></div><div><div>MACHINEOVERRIDES =3D &quot;raspberrypi:${MACHINE}&qu=
ot;</div><div>require conf/machine/raspberrypi.conf</div><div><br></div><di=
v>PREFERRED_VERSION_linux-raspberrypi =3D &quot;4.1.%&quot;</div></div><div=
><br></div><div>and running bitbake with :</div><div><br></div><div><br cla=
ss=3D"gmail-Apple-interchange-newline">$ MACHINE=3Drpi bitbake virtual/kern=
el=C2=A0<br></div><div>NOTE: Tainting hash to force rebuild of task /home/z=
ak/Projects/yocto/meta-somelayer/recipes-kernel/linux/<a href=3D"http://lin=
ux-raspberrypi_4.1.bb">linux-raspberrypi_4.1.bb</a>, do_compile<br></div><d=
iv><br></div><div>it worked !</div><div><br></div><div>My objective however=
 is to override the machine settings and keep the same MACHINE name.</div><=
div><br></div><div><span style=3D"font-size:12.8px">Any Ideas?</span><br></=
div><div><br></div><div><br></div><div>Regards,</div><div><br></div><div><b=
r></div><div><br></div><div><br></div></div>

--001a114e30560d373d0545ea0432--
