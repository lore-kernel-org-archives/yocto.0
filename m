Return-Path: <sam.vr.lewis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B21FCE00C25; Thu, 22 Aug 2019 22:47:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sam.vr.lewis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A5FFE00BA1
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 22:47:03 -0700 (PDT)
Received: by mail-pg1-f169.google.com with SMTP id e11so5136203pga.5
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 22:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y7AEsEcuQ6a3G8C9yaCLX0wHPIq514mRwBkfYsFLrM0=;
	b=GvMUT7Jw90QXoi9VExP5fLKqIFzfFPUEccmbLbLWern2Q0w70+Ky5Tdrx7rhw9kerC
	gost6E6PMymlcDqQdDBYmcfJD/aA1VBW2FNJT+CThOr4twq6AXk0rp+FFd1xmP93bRlu
	PBBTUxsABmr9ehBggvfM7Sz5fNXq1fbNPESK9oyCJEVB7SmnCf4tBrrT/l0q9YP833Mm
	9juVE5PeUvT+yRJkinTXSZ7LDe2ZfBReo6GLZNio5cS6t5JIUWCT/HUAsSttWqNk6KxY
	/PkB3F1TX4SfLis8ppZW9AfjpZCZwlSi2Bk/28LNxZ1CWe52YZrrc3VbCvlHyL+8CMUy
	4oqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y7AEsEcuQ6a3G8C9yaCLX0wHPIq514mRwBkfYsFLrM0=;
	b=VNbQsEOphdQTNoWpTtDfKqrZL+vVqfsqYx6E2ReGD99EEk/MlL4STbxyWBDRa0MmN2
	oZg3bvyiF0Ij5q47SnoGf1U2vvgjsrRJZEPqmX8i28ceh+yX3TQnhghPHW4OwxMk1Hgs
	/ch+nZOY+0BfCP0dBxFRnXO+X/2bttzmSwQuD124b1irYBg1aPauAaAM5590Y0BdyGCZ
	zl4fu+NZlCu8qm2ZVCrMlnew7BTh0EbSNjoA2Zphl3g0OEB/Zn5vSQtdBjqETycsTWvS
	gnFyjY91imqNdze+jcjm7gADDAhpgHvBvvVK9h/plMGOi+qpbyE70YviqqyPCIVby/Ga
	Igjw==
X-Gm-Message-State: APjAAAXELNH9/QvxUXqL42mWLCqs1riu1JbG7RHhQYRsWblIEqmiU1Sb
	130e9zp46MDg40mTA7ziAJglsrMUX3z6Zw3ysbgoHnykM1Y=
X-Google-Smtp-Source: APXvYqymjXXFpDzwYK+BZSLLFcqhMXOU2knCeRwtUUP5K/NPSmlTZpu2c9S9+UfATC5VZxImJ8ILzDV5PtfRK1e5AkY=
X-Received: by 2002:a17:90a:bb0c:: with SMTP id
	u12mr1632475pjr.132.1566539222710; 
	Thu, 22 Aug 2019 22:47:02 -0700 (PDT)
MIME-Version: 1.0
From: Sam Lewis <sam.vr.lewis@gmail.com>
Date: Fri, 23 Aug 2019 15:46:51 +1000
Message-ID: <CA+ZLECuBBf7PsoKisB3aCuLeKyB-TxJsLWALKoqYMcSN9iVEfw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating fitImage output images
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
X-List-Received-Date: Fri, 23 Aug 2019 05:47:04 -0000
Content-Type: multipart/alternative; boundary="000000000000e57ed70590c255ca"

--000000000000e57ed70590c255ca
Content-Type: text/plain; charset="UTF-8"

For my use case, I'd to generate an fitImage that contains a kernel, dtb &
squashfs rootfs.

The existing `kernel-fitimage.bbclass` class can be hacked to do what I
want but it is tricky and doesn't feel quite right, as I'm not really using
an initramfs. It also requires patching the kernel-fitimage.bbclass file to
allow non cpio initramfs file types to be included in the resulting
fitimage.

Would the approach of adding a new, more customisable, fitImage image class
be a better method to achieve this? Or is sticking with the kernel-fitimage
the correct approach?

I noticed xilinx had a xilinx-fitimage image class in their meta-xilinx
repo that appears to be much of what I want, so could prove to be a good
starting place if the separate image type is a better way of proceeding:
https://github.com/Xilinx/meta-xilinx/blob/61e3825585a5616a01de9a2570b81cf9c8a91bb3/classes/xilinx-fitimage.bbclass

--000000000000e57ed70590c255ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-:41n" class=3D"gmail-a3s gmail-aXjCH"><di=
v dir=3D"ltr"><div>For my use case, I&#39;d to generate an fitImage that co=
ntains a kernel, dtb &amp; squashfs rootfs. <br></div><div><br></div><div>T=
he
 existing `kernel-fitimage.bbclass` class can be hacked to do what I=20
want but it is tricky and doesn&#39;t feel quite right, as I&#39;m not real=
ly=20
using an initramfs. It also requires patching the=20
kernel-fitimage.bbclass file to allow non cpio initramfs file types to=20
be included in the resulting fitimage.<br></div><div><br></div><div>Would
 the approach of adding a new, more customisable, fitImage image class=20
be a better method to achieve this? Or is sticking with the=20
kernel-fitimage the correct approach? <br></div><div><br></div><div>I=20
noticed xilinx had a xilinx-fitimage image class in their meta-xilinx=20
repo that appears to be much of what I want, so could prove to be a good
 starting place if the separate image type is a better way of=20
proceeding: <a href=3D"https://github.com/Xilinx/meta-xilinx/blob/61e382558=
5a5616a01de9a2570b81cf9c8a91bb3/classes/xilinx-fitimage.bbclass" target=3D"=
_blank">https://github.com/Xilinx/meta-xilinx/blob/61e3825585a5616a01de9a25=
70b81cf9c8a91bb3/classes/xilinx-fitimage.bbclass</a></div></div></div></div=
>

--000000000000e57ed70590c255ca--
