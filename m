Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20690E003A8; Wed, 18 Feb 2015 02:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
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
	*      [209.85.216.43 listed in list.dnswl.org]
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC706E0034A
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 02:54:18 -0800 (PST)
Received: by mail-qa0-f43.google.com with SMTP id bm13so201319qab.2
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 02:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=AHQ/tOduM+Hv45emJDg5hMs1LcuMxOY8nOdJs/41b7w=;
	b=G9+8vGk5xvPI3PWxL47UATcUAT1kXRRxfFOQMlsi2cVqMb74bRIhAzSF7Mh57yKnSH
	W6rARZEOCD/pI5uff9I/D5VD3/lb49QKGyPN2SRJzJ0PJnIpw+R1Ygl98V+3DFhf5YsM
	08AhhWSw3NQ8VhGZdvbCGmOmZJmj9bDc7JqxF5QIMf7CGOrGHdHXQ4msgpGYwTHYwxqX
	pdeemDXPfs7YCksZWIM/OetVo6KUb8yoBsx4ZorHA4adZEe1FC0riFqOwOeke2ZuAN8o
	uC+S9Rg5CguzV1m7aNxQQVWbdLrC8yFGKGRWfE7jATxD0P8aAh/nMrr2oA7Vwopi5niW
	oHGw==
X-Received: by 10.140.32.166 with SMTP id h35mr300860qgh.31.1424256857656;
	Wed, 18 Feb 2015 02:54:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.91.165 with HTTP; Wed, 18 Feb 2015 02:53:57 -0800 (PST)
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 11:53:57 +0100
Message-ID: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 10:54:26 -0000
Content-Type: multipart/alternative; boundary=001a11397ec011d551050f5aa497

--001a11397ec011d551050f5aa497
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm working an a meta-wolfson layer to add the wolfson audio card support
to the meta-raspberrypi layer.

It's a very simple set of patche, but they apply to linux kernel 3.10.*

And the PREFERED_VERSION of the machine configuration (raspberrypi.conf)
is  :
PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"

I would like to build my images using
linux-raspberrypi_3.10.38.bb
instead of
linux-raspberrypi_3.12.26.bb

What is the most "best practice" whay to achive this ?

Best regards

Valentin

--001a11397ec011d551050f5aa497
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi all,<br><br></div>I&#39;m=
 working an a meta-wolfson layer to add the wolfson audio card support to t=
he meta-raspberrypi layer.<br><br></div>It&#39;s a very simple set of patch=
e, but they apply to linux kernel 3.10.*<br><br></div>And the PREFERED_VERS=
ION of the machine configuration (raspberrypi.conf) is=C2=A0 :<br>PREFERRED=
_VERSION_linux-raspberrypi ?=3D &quot;3.12.%&quot;<br></div><br></div>I wou=
ld like to build my images using <br><a href=3D"http://linux-raspberrypi_3.=
10.38.bb">linux-raspberrypi_3.10.38.bb</a><br></div>instead of <br><a href=
=3D"http://linux-raspberrypi_3.12.26.bb">linux-raspberrypi_3.12.26.bb</a><b=
r><div><div><br></div><div>What is the most &quot;best practice&quot; whay =
to achive this ?<br><br></div><div>Best regards<br><br></div><div>Valentin<=
br></div><div><div><br></div></div></div></div>

--001a11397ec011d551050f5aa497--
