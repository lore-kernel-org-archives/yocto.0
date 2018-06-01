Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38960E00CC2; Fri,  1 Jun 2018 03:38:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
Received: from mail-ot0-f180.google.com (mail-ot0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F89E007D4
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 03:38:44 -0700 (PDT)
Received: by mail-ot0-f180.google.com with SMTP id 101-v6so6263289oth.4
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 03:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8ycFLFREEfxcVX+ORyjxOQnd/JpVh/bzljbjisu8cV8=;
	b=E99JbEIuly7CaAxPU0C6yb1lTt+ROZ3g2oClNWB5IJaN9Y+h9oIM+Vz8V8kxNeYEOD
	7fbo9vsmUoZpOXaXx3XDua/UrX6fIKDKJslkgBDFLloU+7YAEBDszLNkhkogZQ5Ssx6P
	vuGUK/0NSRrqJnwrC0UtsqDKCKJlHm+lLC6jxmfIPqZfsfjI3PgmUHqKPZSVV8LJERK8
	TjMREsCgAToWCSh7stnMH5JeofQz1YcJiCu559M4UnH0Se861lgawvwahVrWvy7gfE7Q
	8xz5LreaeF/m+ABM7m4yIdAezbZsYti2AU0nFNG1zXcnPayViweZ/59UgDdFhCgB5oeW
	8AKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8ycFLFREEfxcVX+ORyjxOQnd/JpVh/bzljbjisu8cV8=;
	b=iX0ANkEyIspbWEVtuJ/7yNJyljQOCIP6a0KWiLmSOJ0EM46/OvWamSNzLHQHjmPA6b
	59aughWQRqLycI3yE80uNkXK4/5W7H8It3MsZc/tQkVFr8la4Xtf/VYap3awQaiv1Wfu
	Xor+BuIEeiRxG14NjNffirvAieTTrEuHS9+uOor95+vsFpc20gRKr30Mwu+7cOROY6M0
	wtGazyOnwya4jGvdNhElkbDf0igAaLO3HMGAymiece7YwLIB2WeMQtmXsmm5ByIECgmq
	pJwwIciLBAons2cT6Vy9jCD/Ke83v/EZbD9wYop9nF2gY4igJ+Lkge13ig/4DY91J5BL
	PoDw==
X-Gm-Message-State: APt69E3iuTv6bYoJykinYTbf2dH+BlIWU5yxwTwLQMJsufCjOFM1biZ2
	hca0gNu7lB0xOLI77AGzhvqPsZK1DCxDqHO88XwBk3y4
X-Google-Smtp-Source: ADUXVKKUN1Is/+3vHluZrXc4Wo7e6fUbYg81mqVRsvjHQowhSH9gxu2J122Ugl/Hbi9nh+wbm2/Nww1a9DEyMesfDZI=
X-Received: by 2002:a9d:705d:: with SMTP id
	x29-v6mr7289751otj.308.1527849524173; 
	Fri, 01 Jun 2018 03:38:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 03:38:43 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 12:38:43 +0200
Message-ID: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: wic appending ".1" to a file name on multiple images build
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
X-List-Received-Date: Fri, 01 Jun 2018 10:38:46 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm creating two images with the single bitbake command and
on inherits the other (production, and a dev which "require production").

Building them at the same time causes an issue:

Traceback (most recent call lastd):
  File "/home/alan/workspace/senic-os-dev/oe/scripts/lib/wic/filemap.py",
line 120, in _open_image_file
     self._f_image = open(self._image_path, 'rb')
  FileNotFoundError: [Errno 2] No such file or directory:
'/home/alan/workspace/senic-os-dev/build/tmp-glibc/deploy/images/senic-hub/u-boot-sunxi-with-spl.bin.1'


The cause of the issue seems to be that `wic create`,
even though it gets the correct file path through the
wks file ("u-boot-sunxi-with-spl.bin")
somewhere in the execution of wic create that
fiile gets renamed (to "u-boot-sunxi-with-spl.bin.1")
and results in an above issue.

This only happens when the images are built in parallel,
running each separately gives no errors.

Am open for suggestions on how to approach this. :)


Be Well,
Alan

