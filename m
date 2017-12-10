Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 582CFE00D20; Sun, 10 Dec 2017 09:14:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9E0CE008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 09:14:24 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id k19so32540904qtj.6
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 09:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y43wpWSD73sdv4egtCdyxTR4Hf3/scHjPAMd5cb+d20=;
	b=ajXvsarDh3YpyTowIIOjVmTHjoq1pKTykLRgXs8C9aMRgrNjpxudCkrfETmm1vAFw8
	oJYImeluN6EBx62MzQwNk4O4u8yXOSqNHXWQiKg/qvnNfVJ4dk9ukRxUdbnf/zTUIOhz
	yHiH/ioFRXcHWZGOmtdWcKJJAm4lpHT0ird8V8AyzuF0cFs0jXqUGUQAPE6jcoQ8WzYa
	LX0UCkABiFlbGrW9uHDF3LqvdPw2sSdYOWDEgM+8m3CmXN68lVJT5Ji5KhJWFL8Y+XrX
	b8lf/gLAh+zLvFBL62umevckMei2SK7VH1ZgryqERo7JHGxhg57Hl8RnlwpLnsriGzjC
	DLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y43wpWSD73sdv4egtCdyxTR4Hf3/scHjPAMd5cb+d20=;
	b=XLFa1xiQuujlS0uzquqg2GdyNKRq9Tei7sn2K/QQz2CX6LBgvWoCd2eejSql/hNNZp
	uJ54ruuvF6OXCmUWDFXyP6Lpv8uis8qL5ynHjEBHahTzfD41io6ycFIT6waXFplSqa7M
	fznBo8CLIwaB7c0zhbg0yr1OvnDtvP1cuxW+6stJwfVJCcJxbBFgoeqnax8gNzmzsCZR
	SRX4L6KkLji78DabZv3AMVyfHW4lLVKqCTjlStBjuA4AbI7h2GHo+QqqGSwfUYgLcfd3
	cFhSxg7Ecj0YEw1F30PgE7uhCrHCYmOrThNiHBC84+tsyVKaP5x59JAmsDcoOPoCnkcR
	RJ4g==
X-Gm-Message-State: AKGB3mI3n1d02m+w5Y1/b7CeKrTCGuzIsc3U9tVlpMo95gAPjEpgHSJn
	XprBgca6sVTUCuvYWcTIJQFVSgF1qbKAJwRYBSspHA==
X-Google-Smtp-Source: AGs4zMbWUOVw52zDBJwKUxXnLvDcCIxp9FSo/QIush9yoXfs+I91QR/WkiaTBvHiY3q9ytWC4e9CPTCOn5NEEuT2pJc=
X-Received: by 10.200.0.131 with SMTP id c3mr24976716qtg.49.1512926063707;
	Sun, 10 Dec 2017 09:14:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Sun, 10 Dec 2017 09:14:23 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 10 Dec 2017 15:14:23 -0200
Message-ID: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Sun, 10 Dec 2017 17:14:25 -0000
Content-Type: multipart/alternative; boundary="f403045f3010994c2c055fff8cce"

--f403045f3010994c2c055fff8cce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing the
build for the first time and faced an error at
linux-raspberrypi:do_kernel_configme. I found that .kernel-meta/configs
folder was missing, so I fired a devshell and created it. After that
everything works as expected and linux-raspberrypi build fines.

The solution I got is palliative, what would be the real solution and what
is this .kernel-meta folder? I had never seem this folder before.

Regards,

--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--f403045f3010994c2c055fff8cce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi everybody,<br></div><br></div>I&#39=
;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;m doing th=
e build for the first time and faced an error at linux-raspberrypi:do_kerne=
l_configme. I found that .kernel-meta/configs folder was missing, so I fire=
d a devshell and created it. After that everything works as expected and li=
nux-raspberrypi build fines.<br><br></div>The solution I got is palliative,=
 what would be the real solution and what is this .kernel-meta folder? I ha=
d never seem this folder before.<br><br></div>Regards,<br clear=3D"all"><di=
v><div><div><div><div><div><br>-- <br><div class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature">=E2=80=9CIf you&#39;re going to try, go all th=
e way. Otherwise, don&#39;t even start. ...&quot; <br>=C2=A0 Charles Bukows=
ki</div>
</div></div></div></div></div></div></div>

--f403045f3010994c2c055fff8cce--
