Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5702.1588597919072528358
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 06:11:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: vading.se, ip: 140.211.169.56, mailfrom: einar@vading.se)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9282BE01ADB; Mon,  4 May 2020 06:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.175 listed in list.dnswl.org]
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A6ECE01A56
	for <yocto@yoctoproject.org>; Mon,  4 May 2020 06:11:56 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id t9so9148901ybo.8
        for <yocto@yoctoproject.org>; Mon, 04 May 2020 06:11:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yC3qHsYthnqJnXfR0HIRF7TroUlfm8rtwoDz0EQJ3ZI=;
        b=eZOrJ+9kxEOIlM6YFD+UAV2/E1fnMsNrZIaAMXW3Tsa2l82WBrag0pakRJqFQxsGCf
         KVFOYOH+UdzSrT6bh9VuPCeUeIYh/c0LxQzBuEVDiCL9P2zketGbkYnPRGVOYWop98fA
         GVErZfWYqwZqvpfptuT+159TruAqPIJIV20zOEDgf/xwTOkwdgGoJGwJEsuiQCypMT0W
         9/Qo0VtpfcrCCxnG95GfEvvga31SoSYsoNbsFXi2yl83y5Yfiua7wVqw0IlVxQRwv+Ox
         Z+VoHZPG0WBtbxqOrmMQYfAuSdnMQwS7jPZcaHtwuuHHajOyz20fs/rcohrOwbkAFpUS
         y/GQ==
X-Gm-Message-State: AGi0PuYvoB1LZTFi+YJF0HaAjDmFqoNxIv7hogtPjAoXWoi7kv/f+uhG
	ZY82dlwsYvRh+8QjCS/OhB9yzrFMPCo6X826A02f8cQWHN3Xog==
X-Google-Smtp-Source: APiQypLVdk60Vcq0VXxEEpDOAXRZchXwOdsbqGf8PSuB3AXve7euP997H/9Z7o6u74MFp1gn+sknzxiVpyJuLFj7ZR0=
X-Received: by 2002:a25:ef52:: with SMTP id w18mr13207393ybm.191.1588597915308;
 Mon, 04 May 2020 06:11:55 -0700 (PDT)
MIME-Version: 1.0
From: "Einar Vading" <yocto-ml@vading.se>
Date: Mon, 4 May 2020 15:11:44 +0200
Message-ID: <CAB6-VtKeO-kOdN9jdoFdA9ZuPEaCdrtagzrtRN5aipO6YR_sZw@mail.gmail.com>
Subject: Building cython based module with numpy dependency in SDK
To: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello!

I've been trying to build a python package which has a component
written in c that is used through cython.

But when I try to build in the SDK I first got:

#error "LONG_BIT definition appears wrong for platform (bad gcc/glibc config?)."

I figured it had to do with
"-I/home/einar/tmp/sdk/poky/3.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/site-packages/numpy/core/include"
since that points to my native sysroot instead of the target sysroot.

So I added:

numpy_incdir = numpy.get_include()
python_incdir = '.' # Just some harmeless directory
try:
    native = os.environ['OECORE_NATIVE_SYSROOT']
    target = os.environ['OECORE_TARGET_SYSROOT']
except KeyError:
    pass
else:
    rel_path = Path(numpy_incdir).relative_to(native)
    numpy_incdir = target / rel_path
    python_incdir = target + '/usr/include/python3.7m/'

to my setup.py and got passed the first compiler error.

So now my extension module is built ok but after that there is a step
that fails:

creating build/lib.linux-x86_64-3.7
x86_64-pokysdk-linux-gcc -shared -Wl,-O1 -L -Wl,-O1 -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong
-Wl,-z,relro,-z,now -O2 -pipe -g -feliminate-unused-debug-types
build/temp.linux-x86_64-3.7/myext.o
build/temp.linux-x86_64-3.7/extlib.o
build/temp.linux-x86_64-3.7/myextmodule.o
-L/home/einar/tmp/poky/3.0.2/sysroots/x86_64-pokysdk-linux/usr/lib
-lpython3.7m -o
build/lib.linux-x86_64-3.7/bbfit.cpython-37m-x86_64-linux-gnu.so -lm
unable to execute 'x86_64-pokysdk-linux-gcc': No such file or directory
error: command 'x86_64-pokysdk-linux-gcc' failed with exit status 1

And I can't get passed this error and I think it's weird that it's
trying to use x86_64-pokysdk-linux-gcc since my extension module is
built with

CC=arm-poky-linux-gnueabi-gcc  -mthumb -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 -fstack-protector-strong
-D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/einar/tmp/poky/3.0.2/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi

Should building a cython extension in the SDK work? Any ideas why ming
won't compile. Or why it's trying to use a compiler for host instead
of target in the end?

Best regards,
Einar
