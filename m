Return-Path: <gvandenbosch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 790F8E00953; Tue, 23 May 2017 00:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gvandenbosch[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6627E0080F
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 00:04:26 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id z52so50736507wrc.2
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 00:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BAG3a7JATCCqmnSoHIlKurS7qUWU721Q4DH/wPXH/lQ=;
	b=M0EKqfIWj5qBThyWf+RI6/wqfbKOWSAMmXiMNIoOPhVb/FTopv2jIe4c7TVPcUKEI4
	Lbq2AWXJwMm+0ed/Q4c4cA3SSpKX1iT04wxcwPgNyutvQTva6HrWHzsMdhWbHc3oBcy6
	YUyF/kXkMjF3c4a+PasAZoiM+tmlWdeTFkzk0o6QdfCIHOpn4Oiu+7ytTC0zwC9AveS4
	Jgo61SDYEOukMurpek1R7Qo9rAFIXXb8GsMXiIE2DSl1zM1zq/ekJV6MCEQscjxLtx4/
	+EHyJBTFg+9Mo+6ZyfEuGQc5tq7gEAmgMiZWnmY+IhgllfGETuGnly3lVqtF5n6r11QI
	kKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BAG3a7JATCCqmnSoHIlKurS7qUWU721Q4DH/wPXH/lQ=;
	b=gTKLCnOpgaVJwrj2nRiQwGogZ1uTC/l1ELcZnj3OdOfpwutkMl/JRpw8KWEoO6BwGt
	/+76yTzPD/Rd5xFfgDzOa2ta5cqLH7WFPrwMuL4UWRtBf3liLhrghThkgMAfqkNa81D+
	Q2AVkMWyzk77+M3SzWD+j83bIYeJ1tryK2lnuqOsF+iurOlDGd7zShq9xecBOCg1tuOZ
	x72AJuOd1tqPzSDRB1Z2wRAWhRbD5ajek8U2+o11r7qG9rCkaZG2BJU3tU/N+4/Azpvl
	7/IOu4gHmIWvEsOgV4XzS2QcGr1xNILa4ZX8TyppR4ejs5SGjfNPalWuQ96BVRc0qJc4
	Ldmw==
X-Gm-Message-State: AODbwcAtyeiAzbCzCHv2nmmtllHkRg4VP3FSKzTL5RvYrkIz6akOEWFc
	+I3k0F9mFHUW8biiUqv1F2XB3xo6ynp9
X-Received: by 10.223.166.43 with SMTP id k40mr5553638wrc.187.1495523065390;
	Tue, 23 May 2017 00:04:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.73.139 with HTTP; Tue, 23 May 2017 00:04:04 -0700 (PDT)
From: Gerard van den Bosch <gvandenbosch@gmail.com>
Date: Tue, 23 May 2017 15:04:04 +0800
Message-ID: <CADqNDzo0VM02knUFp3iNzLVwmOkAW7kq=26YnNEsH9ygVkjP9Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: kernel 2.6.20 no rule make target vmlinux.lds
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
X-List-Received-Date: Tue, 23 May 2017 07:04:28 -0000
Content-Type: multipart/alternative; boundary="f403045cf0c210eb9c05502b9954"

--f403045cf0c210eb9c05502b9954
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to compile a custom kernel from vendor for an arm processor.
Linux version is 2.6.20.

However at the moment the build breaks at:
make[3]: *** No rule to make target 'arch/arm/kernel/vmlinux.lds', needed
by '__build'.  Stop.

However in the main Makefile in the kernel-source folder it has this target:
vmlinux-lds  := arch/$(ARCH)/kernel/vmlinux.lds

I have trouble to find why this is going wrong, does anyone have a pointer
what it could be?

Cheers.
Gerard

--f403045cf0c210eb9c05502b9954
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to compile a custom =
kernel from vendor for an arm processor.</div><div>Linux version is 2.6.20.=
</div><div><br></div><div>However at the moment the build breaks at:</div><=
div><div>make[3]: *** No rule to make target &#39;arch/arm/kernel/vmlinux.l=
ds&#39;, needed by &#39;__build&#39;.=C2=A0 Stop.</div></div><div><br></div=
><div>However in the main Makefile in the kernel-source folder it has this =
target:</div><div><div>vmlinux-lds =C2=A0:=3D arch/$(ARCH)/kernel/vmlinux.l=
ds</div></div><div><br></div><div>I have trouble to find why this is going =
wrong, does anyone have a pointer what it could be?</div><div><br></div><di=
v>Cheers.</div><div>Gerard</div></div>

--f403045cf0c210eb9c05502b9954--
