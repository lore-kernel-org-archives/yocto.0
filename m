Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D324E00BA4; Sat, 31 Oct 2015 14:19:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4475E00B9C
	for <yocto@yoctoproject.org>; Sat, 31 Oct 2015 14:19:21 -0700 (PDT)
Received: by lffz202 with SMTP id z202so48290428lff.3
	for <yocto@yoctoproject.org>; Sat, 31 Oct 2015 14:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bofUUX7mQ19kbrN03mu5FPXAeSloT6FOlmSFP1sAfk8=;
	b=bI/z+XOKJzT49hUfeV1WS4sBYCR4mQsm3f4Otn1wo9CpPUuRXx3faSaolJgoI+if+V
	KrdPe3x+rg20I4MWD1Fdbb4Yk8/Bba6YTn2noUgH/tsJlt8EPHKZOp4QE379GoDEhU3A
	xhxMxkA3odKio5i9sGsW5DC4/a8xHQs7ZCUGRvek7uK7S23kBWrBEqs74r05p2F0skgD
	d2GELGTlrHEUoRq4GNnbYAqt2fc3ln0kQqr+/WkguXouWUsreWvy+7YZ/x/bnO6nVxw3
	wpCZplPJqojHh/zjN4+T9bYMJBWsBtIlXhZcKlRpr00PU66WJv2biEnrP+xqNuVlYqkk
	DUbw==
MIME-Version: 1.0
X-Received: by 10.25.146.12 with SMTP id u12mr4447133lfd.50.1446326360448;
	Sat, 31 Oct 2015 14:19:20 -0700 (PDT)
Received: by 10.25.218.5 with HTTP; Sat, 31 Oct 2015 14:19:20 -0700 (PDT)
Date: Sat, 31 Oct 2015 21:19:20 +0000
Message-ID: <CABatt_ysDd2bjd_CVpXWvCy6JjAQZR=NgXMTRb1MPFGQn7w1Uw@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: populate_sdk and debian packages problem
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
X-List-Received-Date: Sat, 31 Oct 2015 21:19:27 -0000
Content-Type: multipart/alternative; boundary=001a114023d6f1a81205236d1836

--001a114023d6f1a81205236d1836
Content-Type: text/plain; charset=UTF-8

Hi,

I've just moved everything to fido and everything builds fine.  One of the
reasons for moving to Fido was to use the built toolchain and create an SDK
using populate_sdk but it is failing with the following message:
ERROR: Unable to install packages. Command
'/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/sysroots/x86_64-linux/usr/bin/apt-get
install --force-yes --allow-unauthenticated nativesdk-packagegroup-sdk-host
packagegroup-cross-canadian-am43-devboard-aquila' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
W: Unable to read
/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/work/am43_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/preferences.d/
- DirectoryExists (2: No such file or directory)
E: Unable to locate package nativesdk-packagegroup-sdk-host

I checked the nativesdk-packagegroup-sdk-host build and it's empty.

After a bit of searching I found that a similar problem exists in Daisy and
it was down to debian packages which I am using so I chaged to use the
default IPK and the error message disappears.

Is this a regression? or are Debian packages not supported for SDK?

Many Thanks,
Martin.

--001a114023d6f1a81205236d1836
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;ve just mo=
ved everything to fido and everything builds fine.=C2=A0 One of the reasons=
 for moving to Fido was to use the built toolchain and create an SDK using =
populate_sdk but it is failing with the following message:<br>ERROR: Unable=
 to install packages. Command &#39;/home/martin/ws_poweroasis/build/am43-de=
vboard-aquila/bia-tmp-glibc/sysroots/x86_64-linux/usr/bin/apt-get=C2=A0 ins=
tall --force-yes --allow-unauthenticated nativesdk-packagegroup-sdk-host pa=
ckagegroup-cross-canadian-am43-devboard-aquila&#39; returned 100:<br>Readin=
g package lists...<br>Building dependency tree...<br>Reading state informat=
ion...<br>W: Unable to read /home/martin/ws_poweroasis/build/am43-devboard-=
aquila/bia-tmp-glibc/work/am43_devboard_aquila-oe-linux-gnueabi/bia-image/1=
.0-r0/apt-sdk/preferences.d/ - DirectoryExists (2: No such file or director=
y)<br>E: Unable to locate package nativesdk-packagegroup-sdk-host<br><br></=
div>I checked the nativesdk-packagegroup-sdk-host build and it&#39;s empty.=
<br><br></div>After a bit of searching I found that a similar problem exist=
s in Daisy and it was down to debian packages which I am using so I chaged =
to use the default IPK and the error message disappears.<br><br></div><div>=
Is this a regression? or are Debian packages not supported for SDK?<br><br>=
</div><div>Many Thanks,<br></div><div>Martin.<br></div><br></div></div>

--001a114023d6f1a81205236d1836--
