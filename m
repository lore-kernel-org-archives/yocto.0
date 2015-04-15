Return-Path: <heliatck@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 594DBE009BD; Wed, 15 Apr 2015 06:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (heliatck[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f43.google.com (mail-vn0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 048EFE00954
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 06:26:54 -0700 (PDT)
Received: by vnbg62 with SMTP id g62so14944836vnb.7
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 06:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HhD2srFvC0RgVQxkrvniTTmClREq2wJC9Is31k6Eyec=;
	b=i4MFZNVu2O0w/FaH8cyzp7vwdAuzaggBnars8esPSEox442AnqNK6HDrc4xUcg7Nk8
	wBwL5Jfsk6O5Ps95KOy427zbUzOxM32yazEx9uO6RXiGDbGI8laA1+/JXEslyBDYv1D2
	FDHLAHSWpCmEvu7AS9GlXOdBuX9XKstuuI8B+k9Dq2ojsG8VleOhtgbeAR8V/JLSgjV/
	2X345dnvcYXVchswRgC4matYInIM2nSG7SWxiDSzNb9/33aSxGpy3NPj84p17PSBVL0G
	kn8HZIaQAAgIdWxt3LFEoWK3gbdM7/U2cSjQF0iIcYIoHq+EpoVLYA7lGyEuTQVit6X3
	sjpA==
MIME-Version: 1.0
X-Received: by 10.60.139.1 with SMTP id qu1mr20717625oeb.83.1429104413729;
	Wed, 15 Apr 2015 06:26:53 -0700 (PDT)
Received: by 10.202.44.3 with HTTP; Wed, 15 Apr 2015 06:26:53 -0700 (PDT)
Date: Wed, 15 Apr 2015 15:26:53 +0200
Message-ID: <CADUpHn8Dt=CSM8=3-qJB8QtSvvgO8MTzK9GzWnC8J-s8Kmzicw@mail.gmail.com>
From: heli Atck <heliatck@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbaking fails at do_compile gcc-cross-initial
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
X-List-Received-Date: Wed, 15 Apr 2015 13:26:56 -0000
Content-Type: multipart/alternative; boundary=047d7b472436ed69fd0513c34c40

--047d7b472436ed69fd0513c34c40
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to get a simple build for the beagleboard with Yocto, but I'm
getting some errors during the bitbaking. I'm running a virtual Ubuntu
14.04 on a 64-bit host.

The build seems to fail at this point:
ERROR: Task 381 (/home/spe/yocto/poky/meta/recipes-devtools/gcc/
gcc-cross-initial_4.8.bb, do_compile) failed with exit code '1'

The full log file for a 1.6.2 build is at http://pastebin.com/80FbkCP1

I tried different versions of Yocto (1.7.1 and 1.6.2 in seperate
directories), but I'm getting the same result.

I also googled the error and some people seem to suggest certain versions
of make or gcc are incompatible with this bitbake release. Is that
possible? My make is version 3.81 and gcc is 4.8.2.

--047d7b472436ed69fd0513c34c40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello all,<br><br></div>I&#39;m trying=
 to get a simple build for the beagleboard with Yocto, but I&#39;m getting =
some errors during the bitbaking. I&#39;m running a virtual Ubuntu 14.04 on=
 a 64-bit host.<br><br></div><div>The build seems to fail at this point:<br=
>ERROR: Task 381 (/home/spe/yocto/poky/meta/recipes-devtools/gcc/<a href=3D=
"http://gcc-cross-initial_4.8.bb">gcc-cross-initial_4.8.bb</a>, do_compile)=
 failed with exit code &#39;1&#39;<br></div><div><br></div><div>The full lo=
g file for a 1.6.2 build is at <a href=3D"http://pastebin.com/80FbkCP1">htt=
p://pastebin.com/80FbkCP1</a><br></div><div><br></div>I tried different ver=
sions of Yocto (1.7.1 and 1.6.2 in seperate directories), but I&#39;m getti=
ng the same result.<br><br></div>I also googled the error and some people s=
eem to suggest certain versions of make or gcc are incompatible with this b=
itbake release. Is that possible? My make is version 3.81 and gcc is 4.8.2.=
</div><div><br></div></div>

--047d7b472436ed69fd0513c34c40--
