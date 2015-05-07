Return-Path: <daryl.kuchay@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816C5E004F6; Thu,  7 May 2015 10:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daryl.kuchay[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C201E00306
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 10:17:10 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so28891854igb.1
	for <yocto@yoctoproject.org>; Thu, 07 May 2015 10:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AIUgC1+x4W8NPubxnq7UX2mu8VFDsEG+PyAIx3TxX9U=;
	b=mZB+UT7cxGdsjpTMW08MAHn+XEoJNCoCzeISGm2voqLTfdZacwes7XOcz7/CBi8RDE
	usdexO+kMcHFvoS69cMuCl+W2IIjzGUCm8/O8iM5Mb/jS048wGQ3a257Up9JoSYOsFjN
	nV7jASRhHTUdWfvFCBCyERcAYWTxGjSpl9KYe9zSAOdXAvTUAbQYds9hv6GThvBANJkR
	oG0qxMFGRNZWcVPQU6291sL3iVSpYf/dpoyUtNAxd5aR8xK8vLnqH3kHnl8DExNDB+gb
	4dold4xMHm7D9lc5qItkyP1xXrZ9gRyN/3OHnnYtCmYEw5g26IbtSw39QFwrnCR/4mvn
	W5yg==
MIME-Version: 1.0
X-Received: by 10.50.117.35 with SMTP id kb3mr1571528igb.13.1431019030244;
	Thu, 07 May 2015 10:17:10 -0700 (PDT)
Received: by 10.64.169.68 with HTTP; Thu, 7 May 2015 10:17:10 -0700 (PDT)
Date: Thu, 7 May 2015 11:17:10 -0600
Message-ID: <CAE5gGPCz=u+XGGi0DkZLhi+NX7X21crzt0NcYDp_UFdpoN=tKg@mail.gmail.com>
From: daryl kuchay <daryl.kuchay@gmail.com>
To: yocto@yoctoproject.org
Subject: Newb looking for where to start on unsupported hardware?
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
X-List-Received-Date: Thu, 07 May 2015 17:17:12 -0000
Content-Type: multipart/alternative; boundary=089e01183c9ef6f2010515811412

--089e01183c9ef6f2010515811412
Content-Type: text/plain; charset=UTF-8

Hello,

I'm about 3 weeks in to light reading in documentation on Yocto. I found
the project when searching for Open Embedded.

My challenge is that I have ancient hardware. A Geode based tablet with
serial touchscreen and other niche items that will require me to build a
custom kernel for proper support. Also worthy of mention is that syslinux
is no longer supporting the hardware. Its not too far from an olpc but its
more proprietary. Made by DT Research. WebDT366 GX1 is the model.

While documentation does provide a great deal of information on what to do
once you get to the stage of building I am just not sure where to start. I
downloaded the build appliance but it only seems to build stock images that
allow for some scripted modification.

Without a great deal of knowledge on bitbake or what would be needed in the
form of scripts I am not sure that this is the right path to take.

Whats lacking in the documentation is an if/then scenario. Like if you need
to build a custom kernel start "here", then move to "here" and so on.

While I can find old mentions of OE-Classic build recipes for Geode I cant
seem to find out weather or not these are supported by Yocto.  The docs
seem to assume a level of knowledge that I do not have on open embedded or
a work flow within. Laying down that many bsp commands with no knowledge of
how to use is daunting.

Can someone help a newb out with where to start if one needed to config a
kernel, add a lot of software from inputattach to evdev, acpid,
xinput-calibrator and others? And how to move to the next step? My hope is
to make a .img that can be dd'd to the target with full hardware support.

Thank you in advance
Daryl

--089e01183c9ef6f2010515811412
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m about 3 weeks=
 in to light reading in documentation on Yocto. I found the project when se=
arching for Open Embedded.=C2=A0</div><div><br></div><div>My challenge is t=
hat I have ancient hardware. A Geode based tablet with serial touchscreen a=
nd other niche items that will require me to build a custom kernel for prop=
er support. Also worthy of mention is that syslinux is no longer supporting=
 the hardware. Its not too far from an olpc but its more proprietary. Made =
by DT Research. WebDT366 GX1 is the model.=C2=A0</div><div><br></div><div>W=
hile documentation does provide a great deal of information on what to do o=
nce you get to the stage of building I am just not sure where to start. I d=
ownloaded the build appliance but it only seems to build stock images that =
allow for some scripted modification.</div><div><br></div><div>Without a gr=
eat deal of knowledge on bitbake or what would be needed in the form of scr=
ipts I am not sure that this is the right path to take.=C2=A0</div><div><br=
></div><div>Whats lacking in the documentation is an if/then scenario. Like=
 if you need to build a custom kernel start &quot;here&quot;, then move to =
&quot;here&quot; and so on.=C2=A0</div><div><br></div><div>While I can find=
 old mentions of OE-Classic build recipes for Geode I cant seem to find out=
 weather or not these are supported by Yocto.=C2=A0 The docs seem to assume=
 a level of knowledge that I do not have on open embedded or a work flow wi=
thin. Laying down that many bsp commands with no knowledge of how to use is=
 daunting.=C2=A0</div><div><br></div><div>Can someone help a newb out with =
where to start if one needed to config a kernel, add a lot of software from=
 inputattach to evdev, acpid, xinput-calibrator and others? And how to move=
 to the next step? My hope is to make a .img that can be dd&#39;d to the ta=
rget with full hardware support.=C2=A0</div><div><br></div><div>Thank you i=
n advance</div><div>Daryl</div></div>

--089e01183c9ef6f2010515811412--
