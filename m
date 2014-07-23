Return-Path: <amatthew@3drobotics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92AC8E006DB; Wed, 23 Jul 2014 15:26:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2975CE006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 15:25:57 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id et14so2542925pad.23
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 15:25:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=8u/iNqjw76DWp8KnH9u/F2clV1Ijj16kEEDxbvtrq7w=;
	b=E28BAewSSU1j32rwCvuFsYxVZ1/UyI2Hz+q+U8sHTBbMfs7luexOF+KJ1PHZNJujrk
	xIIfYlzszWZRIeG9lBcnDJQ3QL0I2XT7s7I+xBWfiDMSmUUq/v4fsCbS+DJu6ANaADn+
	8i/67iFzc2JTfrfphZtoEmhChQvtwi1xplHxaUf+lC5nSbB/+cbdRPnOALGGGs/tdMEd
	4YtsysA+3mM0vCjB5kWlnx+JFWb9OIYeMmbE4UHDVRiHwy1s5g63fy9F25rb1ofVOw7D
	RPxuTsOGCbcmHRL5xTw5+we8xc/G8nWwlL+LH/lT6537JzanAcqyh0YSb1Yeciza5/JJ
	pTdw==
X-Gm-Message-State: ALoCoQkOxO4feTnWfu/ZhpZrqu3jRT5Yd540hgKdxmENax0T4yZyV7LlMouhPlE87sYyuwNyKQFh
X-Received: by 10.66.139.164 with SMTP id qz4mr5373102pab.151.1406154357300;
	Wed, 23 Jul 2014 15:25:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.251.35 with HTTP; Wed, 23 Jul 2014 15:25:37 -0700 (PDT)
From: Allan Matthew <amatthew@3drobotics.com>
Date: Wed, 23 Jul 2014 15:25:37 -0700
Message-ID: <CAPHXWevvh+YjeCThqNUmAdc5yaoSnXm8e2KvTmaNpSQ0Vh0X_w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: interfaces file on a per-image basis
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
X-List-Received-Date: Wed, 23 Jul 2014 22:26:02 -0000
Content-Type: multipart/alternative; boundary=047d7b5d6774f772d304fee3d25d

--047d7b5d6774f772d304fee3d25d
Content-Type: text/plain; charset=UTF-8

I have two separate images, call them server and client.  The client will
have one /network/interfaces file and the server will have another.  I can
successfully override the init-ifupdown in my own bbappend in my layer and
use one of my interface files, but I can't figure out how to pick between
two interface files depending on the image I'm building.  Is there a
variable I should be able to examine to determine which interfaces file I
should use in my .bbappend?

The only other option I've found is to use two separate machines, which is
not a great option for me because the hardware and almost all of the
packages are identical between my client and server, so I'd like to just be
able to build two separate images instead of changing machine types as well.

Thanks!

--047d7b5d6774f772d304fee3d25d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:12.7=
27272033691406px">I have two separate images, call them server and client. =
=C2=A0The client will have one /network/interfaces file and the server will=
 have another. =C2=A0I can successfully override the init-ifupdown in my ow=
n bbappend in my layer and use one of my interface files, but I can&#39;t f=
igure out how to pick between two interface files depending on the image I&=
#39;m building. =C2=A0Is there a variable I should be able to examine to de=
termine which interfaces file I should use in my .bbappend? =C2=A0</span><d=
iv style=3D"font-family:arial,sans-serif;font-size:12.727272033691406px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:12.727272033=
691406px">The only other option I&#39;ve found is to use two separate machi=
nes, which is not a great option for me because the hardware and almost all=
 of the packages are identical between my client and server, so I&#39;d lik=
e to just be able to build two separate images instead of changing machine =
types as well.</div>

<div style=3D"font-family:arial,sans-serif;font-size:12.727272033691406px">=
<br></div><div style=3D"font-family:arial,sans-serif;font-size:12.727272033=
691406px">Thanks!</div>
</div>

--047d7b5d6774f772d304fee3d25d--
