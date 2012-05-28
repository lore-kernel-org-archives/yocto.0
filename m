Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D09E01428
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 22:34:47 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so2987227bkc.35
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 22:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=oVqMGJ7KvnMcdVb88UjQpUh49LhTAQlO8eTKr2rSO6E=;
	b=BhVbJ+gUrPZiy/a7LDVIlk6UDUcjQRByuxKNY1fb10M0TXOdRCy04+6KD/IjGF36zq
	RNe8MnvGqsB/WRf/GIF4+HlSvLHJVA5CeZTQR1LQ9EHKRNeftQ8gF8m8x4rWKRYLY7KJ
	FHeF1IhotTT8Lt0HpGzy1/WZrAS3JOdliNHN1ehGoxXV8ZqLx3Og/mYxh7FY8t6R1lzv
	ZPLuixJ5ZgmyHgJYpR5MdpG3DmGSsI7H8z+kzH7HWd+/wHJYdaokIM4NLnzaVxkASsVb
	LfBT3h5ZwRcuBjHwkZNRRo9ByXpsuc4lDm6Ct5qNZFI1/h0EBwPWV0vCcKVV4XNGdVLD
	Uk4w==
Received: by 10.204.151.81 with SMTP id b17mr2850509bkw.52.1338183286159; Sun,
	27 May 2012 22:34:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.232.209 with HTTP; Sun, 27 May 2012 22:34:25 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 28 May 2012 11:04:25 +0530
Message-ID: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: navani.srivastava@lnties.com
Subject: Broken SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 May 2012 05:34:47 -0000
Content-Type: multipart/alternative; boundary=0015175cabae6a77fb04c11213bc

--0015175cabae6a77fb04c11213bc
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,



I am working with poky-bernerd-5.0. I have built cross-toolchain for qt
with =93bitbake =96v meta-toolchain-qte=94 for arm1136 architecture.

I got the tool chain =93poky-eglibc-i686-arm-toolchain-1.0.tar.bz2=94 under
build/tmp/deploy/sdk/ directory. On untaring this Toolchain I found that cr=
oss
gcc wasn=92t included in the SDK. Can anyone please help me in recognizing
the problem?





Thanks and Regards

Navani Kamal Srivastava

--0015175cabae6a77fb04c11213bc
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">I am working with poky-bernerd-5.0. I have built=20
cross-toolchain for qt with =93bitbake =96v meta-toolchain-qte=94 for arm11=
36=20
architecture.</p>
<p class=3D"MsoNormal">I got the tool chain =93poky-eglibc-i686-arm-toolcha=
in-1.0.tar.bz2=94 under build/tmp/deploy/sdk/ directory. On untaring this T=
oolchain I found that
<span lang=3D"EN-GB">cross gcc wasn=92t included in the SDK.</span><span la=
ng=3D"EN-GB">
</span>Can anyone please help me in recognizing the problem? <br></p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Thanks and Regards</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal">=A0</p>

--0015175cabae6a77fb04c11213bc--
