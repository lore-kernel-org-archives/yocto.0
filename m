Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34566E0053F; Wed, 13 Mar 2019 21:51:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95EFDE0053F
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 21:51:07 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id m13so3194017lfb.6
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 21:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=EijM8ZvdG6agDkGQsvduNzUZPYeBpdeJKFsfg75zTcU=;
	b=Mpo3fN9ydrg5RPI099OcSaaIkF3RSk1HQzaa8HNdY+lpc01tH2FhwjF8D0NmLAUmCL
	2zEK/ZpG66u5aZGPKPGeLXmjkXi/jyT9DwHups1VzRRdBhIeblpSbZ9ZxeLfH/6zC+RE
	kg9Cj6ViRWuOZUFiyJNE0fvkQaxg5vWwaUfoUtI6Gyv4uqq63TrudqYRN4dkAHdL24bf
	yP1DmcVOHoF4f42PXBtwTTa3LoGuyRUI9718s04XmIQ9Ej2X7KsY/2sBfpDDodogiZpl
	lm93yJpVo0UT6nvRAiUOVILVfARsbXJbQjgmpasK8to7amsyo9s6txFRCpsQjfpsWlz7
	dugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EijM8ZvdG6agDkGQsvduNzUZPYeBpdeJKFsfg75zTcU=;
	b=GzVMjOzj0nIRyd3U3WCrsBH25TCIohfuR3setwDyYvRS7uNPUbhIhvFkmYgqjOW6D8
	XL6eaFs9rs5nspBG6rce2Um/D7fjm5VLZ2JKPHLenlri28YeF2DHXHWAHZaGONVoh172
	ra4+2mPJfobJeYlIqM78LIxZfOFeu46pRCTe5AvIPgL2OQ/yY1V/b6ftw2gSS8CQikx3
	R5QjpiJUZ68G6usiu0lHvzBUH6gL0SIsqT1cHdL6y6rceK4kTc68CBTsyiz8f2uQDQeI
	OKU/oQgTvkfKue0NGAQ4E3FUKhVaay/BTsZjNIijVoSF9Uvy0I5TW11Boy8z12C6A/Gm
	6CWQ==
X-Gm-Message-State: APjAAAU5fNi4Ln5TyMaWV5/omdiDtdhp47ePwaAiUD4uF6VgWmqpbS6o
	3GxBchLukBve/f2CkFekywKSkAmUgjDYU1saxxYbkH8E
X-Google-Smtp-Source: APXvYqwKoG4wKpH17Qsy9HftMJYN5vdaM3tv8A+BYRdF2l4iysnQpidjtZON9DtEI/H/dmKnbANLIed51ydboHoJoNo=
X-Received: by 2002:a19:c209:: with SMTP id l9mr25007361lfc.68.1552539066193; 
	Wed, 13 Mar 2019 21:51:06 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Thu, 14 Mar 2019 06:50:52 +0200
Message-ID: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SDK build fails at latest thud
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
X-List-Received-Date: Thu, 14 Mar 2019 04:51:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I noticed that when trying to build sdk on thud it fails on latest
version. Actually it broke somewhere between commits:

1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)

I'm using it with meta-freescale - layer to build image to iMX8.

I'm using command 'populate_sdk' and it works fine on older version,
but newer version it fails with error:

==
The following packages have unmet dependencies:
 target-sdk-provides-dummy : Conflicts: coreutils
E: Unable to correct problems, you have held broken packages.
==

I'm assuming this is problem in poky - layer and not meta-freescale
since it can be 'fixed' by downgrading to older version of thud.

-Teemu

