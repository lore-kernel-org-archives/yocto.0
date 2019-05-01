Return-Path: <mabnhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 917FEE00D32; Wed,  1 May 2019 03:44:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mabnhdev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
	[209.85.222.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA14E00D14
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 03:44:12 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id u34so3850257uau.7
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 03:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Tlw4wU1iud0ynMre9fVgUUqfVrxu/flurFOqD3k2JRU=;
	b=Xeo9y77kY8KRvj7PTulm0svBiUiuBGbzfNIrmmDD4Vreo/xMA7dF10SYp/yvm87OZ/
	+rMcVSjBCvPmk8IAz/7swryCIgvYwexeAXPkDU3BuKmp9ySepeUOiPHsxwJxlOWTDq9x
	tU9A7Uc8MF/fvznrwmlLMxDeNaXoZVbOGSkf4mUpLaZym1dMbwocicq8np+9s9LLSv8Q
	ADcBEPnWe6n1AB5oh9E0MSI38dUP7scCqOgchXwW6z3ewwGcx04A0/Dxm6yj5rsO7L4i
	/or7nmLgqFWtWqwhs1MsKnjHRzG2DkaJiLfN9Ztu0COOu58wULoA1gIZdHj2p2Q5lK4w
	Rjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Tlw4wU1iud0ynMre9fVgUUqfVrxu/flurFOqD3k2JRU=;
	b=SZt6mJjfsV4FQeDuseeGBhCtb/Ca1nJHzzuTTONa2HEner3SOLKmz45q6a1IJg8BkN
	5pVzqMNeHrM7z30PDhhCvhBoX+B6O+jQrM7C5Iq+F+/ilh2fvy/tt9/FGuBgb/NPzjRa
	JCGVC37vdtFOW0qNe3KIBknFLxj7itOLWoSC3Wi8b9yv9I8up7JzZe2sUWW2PEaJLxHb
	XLvKMn48VYN2CCuIuUpGaM7yD/BOhilyMHXEMrNsyFVHuruxM/9jJRJ/ZXLfRi8VWdNY
	0YDdSgkVnaPL9b97281vv6BWtUDFQ2zjibagrOY0ZDwHeCxAveSGY5A0O5ouLorYWbYH
	rcIg==
X-Gm-Message-State: APjAAAVUdTKa1WRpJuP+K6SUSl8x8swvAUvgOjaAb3YueG+EfxARrQ40
	NW36plTRqh6iKTOPiKO4sgq+z8DxLf9WER8cO/T4pi40
X-Google-Smtp-Source: APXvYqw0WkgmGoRbMGRatNdOtHvIg+OtbSvP7q23MjiMpPE5DQYAZzqcA6oQw0ZzFQI81FGA+aV9K4LC9lcbLxnNrac=
X-Received: by 2002:ab0:5609:: with SMTP id y9mr3214057uaa.131.1556707451861; 
	Wed, 01 May 2019 03:44:11 -0700 (PDT)
MIME-Version: 1.0
From: MikeB <mabnhdev@gmail.com>
Date: Wed, 1 May 2019 06:44:00 -0400
Message-ID: <CAAuRgKAVvk9q=ztMGnH7F5As18xr-vRYgav7Jf=B2hgXbm1PHA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Boost build failure for x32 target in thud
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
X-List-Received-Date: Wed, 01 May 2019 10:44:13 -0000
Content-Type: text/plain; charset="UTF-8"

I'm trying to upgrade my project from sumo to thud.

I'm targeting an x86_64 machine with the x32 ABI.

Boost do_compile() fails with several instances like the following.

| /home/mabnhdev/boost-issue-x32-repro/build/tmp/work/x86_64_x32-poky-linux-gnux32/boost/1.68.0-r0/recipe-sysroot/usr/include/bits/long-double.h:60:10:
fatal error: bits/long-double-64.h: No such file or directory
|  #include <bits/long-double-64.h>
|           ^~~~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| ...failed updating 6 targets...
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/mabnhdev/boost-issue-x32-repro/build/tmp/work/x86_64_x32-poky-linux-gnux32/boost/1.68.0-r0/temp/log.do_compile.15399)
ERROR: Task (/home/mabnhdev/boost-issue-x32-repro/meta/recipes-support/boost/boost_1.68.0.bb:do_compile)
failed with exit code '1'

The failure can be reproduced by trying to build boost for an
'intel-corei7-64' machine with 'x86-64-x32' default tuning.

The attached simple bash script will reproduce the problem.

https://gist.github.com/mabnhdev/42d4775f51df4bbe675ce0a0c9c4c4b0

I'd appreciate some guidance towards fixing this issue.

Regards, Mike

