Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACC00E00BF7; Mon, 30 Sep 2019 14:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C825E00972
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 14:16:58 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id h144so42140781iof.7
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 14:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HZPWpzHtxBu7PEpXg2xCOtPQuzHBK7J5UY9PFevlMI8=;
	b=jdWk8imd4kduv13n78LY2XNxr+iHdhae4n+5HBCTeMQBPJfPTyho5Vc3VWyBGJXvZp
	O/VJyMhb4g/r3RRR99bJIt6N6Qc0ZY/fFrvkIzVoPPthnOMVLVzlAMqdve0RnkIP9NdE
	zgkYK3Z2IWkHbyMfp4bJ3qWvfkGqyCacDbH4Iu4zQeHlccOgXrTqmUH2zwGlHy7RTVsW
	YNRXWcw6nG6sjMX20cc6CSnI2sPvrext1/dTpvcV4fZ0fXKaR+zBd5Vso/MqiP2wceOq
	gmXeQber+Tz9zcv2/i7tMi+HiskMHHDf5XYgtAtR0hcgM2YXPKAJ0rh2J1TTOWoTFlQc
	TnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HZPWpzHtxBu7PEpXg2xCOtPQuzHBK7J5UY9PFevlMI8=;
	b=WaLMrb+IqEjx/DTDzaALZevGaNfL2NvQvEoBU4xMZIFy/PJrMcR4lFF5EgdkSEgBOZ
	EQ06z3yrkx6WZPUZeaJTkV++9V11LAN4tL4b7k2fLjAug6UBEvSUh5NMwq2cqJSG3G+u
	rTG9YM2v62t2kS8dUPedesTUTEYYeHpZ0+bE5JWBt7Q6jfcCq2fFFLMio8d8cE3KpsiT
	mUdmcaLZXvDTOrZr8RZb5nRUsD1zrgppxYAesAMNBHUN8TYkpOlG9xOeYu+5Z4e/PepD
	IwnKcqm1KKWQMpwnaIwEHYXrDizZaoKqCqv999Iow1eEaVG/iZt+tO8/w0mhToomex0k
	Dfbg==
X-Gm-Message-State: APjAAAUAn2gIQ/7IvoVnGj1c4SswCEX+yyYhKeDvQgxprwRcRnFwcESx
	bv7TMIn7luzlhfV5tcAIEE5MhL9BIt+c6CMr5k68Sl+b
X-Google-Smtp-Source: APXvYqyLrLGbG6e+kCwDYphsZuJ4/+fUqaYCEBqVAX5XNx4zdXMDPpXPruO2jzcOc6aQNCVzGKHQiVW3vIoRhWoxW6w=
X-Received: by 2002:a92:91da:: with SMTP id e87mr22682980ill.53.1569878217756; 
	Mon, 30 Sep 2019 14:16:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Mon, 30 Sep 2019 14:16:57
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 1 Oct 2019 07:16:57 +1000
Message-ID: <CAA=hcWQu5_CKpv+iCmMCJQQjgK2UmPyJ0Hf293X+VrRgxsbOVA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: No rule to make target 'zImage'
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
X-List-Received-Date: Mon, 30 Sep 2019 21:16:59 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am building Yocto, it stopped at building kernel "No rule to make
target 'zImage'", what I could be missing?

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 6 HOSTCC=gcc
-isystem/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/usr/include
-O2 -pipe -L/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/usr/lib
-L/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/lib
-Wl,-rpath-link,/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath-link,/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/lib
-Wl,-rpath,/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath,/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native/lib
-Wl,-O1 HOSTCPP=gcc  -E zImage CC=arm-oe-linux-gnueabi-gcc
-mno-thumb-interwork -marm -fuse-ld=bfd
-fdebug-prefix-map=/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0=/usr/src/debug/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0
-fdebug-prefix-map=/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot=
-fdebug-prefix-map=/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/recipe-sysroot-native=
 -fdebug-prefix-map=/build/Kernel5.3/build/tmp-glibc/work-shared/yocto/kernel-source=/usr/src/kernel
  LD=arm-oe-linux-gnueabi-ld.bfd
| make: *** No rule to make target 'zImage'.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/build/Kernel5.3/build/tmp-glibc/work/yocto-oe-linux-gnueabi/linux-yocto/5.3.0+gitAUTOINC+4d856f72c1-r0/temp/log.do_compile.7842)

Thank you.

Kind regards.

