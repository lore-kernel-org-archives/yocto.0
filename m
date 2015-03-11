Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC359E00777; Tue, 10 Mar 2015 22:25:08 -0700 (PDT)
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
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89BE9E00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 22:25:06 -0700 (PDT)
Received: by obcwp18 with SMTP id wp18so6651888obc.1
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 22:25:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=cgN1BW1ezYuQDmEshxTLT4IXGs5sUwwObDmk76FG1Ls=;
	b=AY1iWPdHKiONGpvoTFn9uy9Axr0FXxNoGkbjokI4En6MX+ikRSXoHVMr3HeY5bXcbk
	9jC/UHllhvb0NlSCPMac4/BDgypK7wQRAmunlN5It8pulkcEQ9jE3Se5nryXHzungkPS
	Jbeae5x0mwGAN1EN+18asXk5DhY/HNJkKz7i78wPmwb8RtU/d64aoUcKHZ32FySRIxsy
	H86BJLJ21ytJtkuf968/Xk/rEOrffOlXfNlgn5DQgsBffZbzMcge5qFeI/HPzTcpPp4O
	pgYUpDiAux0Rb/qaLV7apQUhrXOqW0LdKzzpl04UrKdvsfxZ4/GSnybofVDg3XPs8GLC
	XUfw==
X-Gm-Message-State: ALoCoQlnBh/CiBGY2tZIa1DTs7RQiyEYQ6iStfKNpqxGZKy4UNsyTA0u0YhRZjvNTm/U+JXRFunp
MIME-Version: 1.0
X-Received: by 10.182.88.136 with SMTP id bg8mr13695458obb.86.1426051505816;
	Tue, 10 Mar 2015 22:25:05 -0700 (PDT)
Received: by 10.60.102.106 with HTTP; Tue, 10 Mar 2015 22:25:05 -0700 (PDT)
Date: Wed, 11 Mar 2015 10:55:05 +0530
Message-ID: <CABNKipJq35uppKzerqv=NtT_SJCCr_n1+nz+JjeUCZvJ6NaptQ@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Udev "unable to receive control connection"
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
X-List-Received-Date: Wed, 11 Mar 2015 05:25:08 -0000
Content-Type: multipart/alternative; boundary=089e0111bd766fa0320510fc7dad

--089e0111bd766fa0320510fc7dad
Content-Type: text/plain; charset=UTF-8

i am using yocto-dora-1.5, linux-libc-headers version is 2.6.32-r0, kernel
is linux-dummy and udev-182. while building qt-demo-image i got some
linking error due to udev. then  downgrade udev-182 to ude-164, finally
everything ok about build process. so i went to booting my beagleboard-xm,
while the terminal flooded with following statement

Starting  udev
<30>udevd[456]: starting version 182
udevd[456]: unable to receive ctrl connection: Function not implemented

this message shows udev version 182 but i built udev-164, so what can i do
to overcome this error?
-- 
thanks and regards,
parthiban
      +919790329795

--089e0111bd766fa0320510fc7dad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i am using yocto-dora-1.5, linux-libc-headers version is 2=
.6.32-r0, kernel is linux-dummy and udev-182. while building qt-demo-image =
i got some linking error due to udev. then=C2=A0 downgrade udev-182 to ude-=
164, finally everything ok about build process. so i went to booting my bea=
gleboard-xm, while the terminal flooded with following statement <br><br>St=
arting=C2=A0 udev<br>&lt;30&gt;udevd[456]: starting version 182<br>udevd[45=
6]: unable to receive ctrl connection: Function not implemented<br clear=3D=
"all"><div><br></div><div>this message shows udev version 182 but i built u=
dev-164, so what can i do to overcome this error?<br></div><div>-- <br><div=
 class=3D"gmail_signature"><div style=3D"text-align:right">thanks and regar=
ds,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:right">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div></=
div>
</div></div>

--089e0111bd766fa0320510fc7dad--
