Return-Path: <rkocisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7021CE00DA0; Tue, 15 Sep 2015 08:58:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rkocisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C863E00B5C
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 08:58:13 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so17423479igb.0
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 08:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=31v8XvjduJXNlVwrqUMAB3BXpmX+9Fr1T8lTu7j6MbA=;
	b=qE74O2Upz6gnoLIdkIEcbIWNsS1gFs1VLCOXV+15mrm3kNNV851du3B60BDAQCICdr
	9EQHBSSu0uLsSbGGLsUw1yMIT4l9Ex/VyEu/jlyOpth4BZyf5oX1kingxT/tkZNI06HH
	STsODj777W10zeaRGFYYpzP41vOycyN6uQ3vaSU/YV0CtJaVsy2jqf3R4F8cJZ4rAzlz
	FYW9YwsFjoeMZWZwYTjf/ch8sYpkrHXphhbwYggGrjkwvzJeBG9aTDe2PHymqppG/IS/
	+8Yiif5LsEb8VcPGapeNybr33a7Hf4FTF43IElaJnRpwCWxWdDqUv8GPBZo+uRq/tIWU
	Q9pQ==
X-Received: by 10.50.6.16 with SMTP id w16mr7204493igw.74.1442332692966; Tue,
	15 Sep 2015 08:58:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.150 with HTTP; Tue, 15 Sep 2015 08:57:53 -0700 (PDT)
From: Robert D Kocisko <rkocisko@gmail.com>
Date: Tue, 15 Sep 2015 11:57:53 -0400
Message-ID: <CAGF=AeTb4fve9dNPije6+1m1FzapsYrTEpfJ1H6fY-w+FKySMg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Trouble installing from usb
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
X-List-Received-Date: Tue, 15 Sep 2015 15:58:17 -0000
Content-Type: multipart/alternative; boundary=047d7ba97972cff2c7051fcb3f08

--047d7ba97972cff2c7051fcb3f08
Content-Type: text/plain; charset=UTF-8

Hello,

I am attempting to create an image for a fitlet-x computer (AMD A4
Micro-6400T SoC). I followed the instructions for creating a minimal image
and then used Hob to customize the minimal image as follows:

machine: genericx86-64
image recipe: core-image-minimal-dev
recipe edits: added xserver-xorg package

I then built and deployed the image to usb (.iso), and booted up the usb.
I got a grub menu with the options "boot" and "install".  If I select boot,
everything appears to be working as expected (believe it's just running the
image directly from usb).

However, when I select install, the screen goes black (does not disconnect)
and nothing happens even if I leave the system running for multiple minutes.

I've started to dive into the world of bootloaders to see if I can debug
this but it would be great to get some guiding tips from you to help guide
me in that process.

Oh I should mention that the first time I built a genericx86-64 image it
generated a warning while building yocto-kernel.  Unfortunately I didn't
record it anywhere and now it appears that that kernel recipe is cached
because subsequent builds haven't shown the same error.

Thanks in advance,
Bob

--047d7ba97972cff2c7051fcb3f08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am attempting to create an ima=
ge for a fitlet-x computer (AMD A4 Micro-6400T SoC). I followed the instruc=
tions for creating a minimal image and then used Hob to customize the minim=
al image as follows:</div><div><br></div><div>machine: genericx86-64</div><=
div>image recipe: core-image-minimal-dev</div><div>recipe edits: added xser=
ver-xorg package</div><div><br></div><div>I then built and deployed the ima=
ge to usb (.iso), and booted up the usb.=C2=A0 I got a grub menu with the o=
ptions &quot;boot&quot; and &quot;install&quot;.=C2=A0 If I select boot, ev=
erything appears to be working as expected (believe it&#39;s just running t=
he image directly from usb).</div><div><br></div><div>However, when I selec=
t install, the screen goes black (does not disconnect) and nothing happens =
even if I leave the system running for multiple minutes.</div><div><br></di=
v><div>I&#39;ve started to dive into the world of bootloaders to see if I c=
an debug this but it would be great to get some guiding tips from you to he=
lp guide me in that process.</div><div><br></div><div>Oh I should mention t=
hat the first time I built a genericx86-64 image it generated a warning whi=
le building yocto-kernel.=C2=A0 Unfortunately I didn&#39;t record it anywhe=
re and now it appears that that kernel recipe is cached because subsequent =
builds haven&#39;t shown the same error.</div><div><br></div><div>Thanks in=
 advance,</div><div>Bob</div></div>

--047d7ba97972cff2c7051fcb3f08--
