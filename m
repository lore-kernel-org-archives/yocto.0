Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32F7FE00DC6; Thu, 25 Jan 2018 20:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E86ECE00CF1
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 20:08:47 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id c6so7418327pfi.8
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 20:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=8nHsTt1zrftoNiop1BJm8dEoSImgjHciG7TExtzMKIE=;
	b=lPZWjtuT6xdH8uReUmcBH+D9y0z7OzwLlmbYzEJyA0oEd0ho18NXjEzYm3Bz5vmpn/
	Hfzp5w89gahSFY2FMUspuD5w0K0zCOj7p2ARoVdiRm76WGYV7LPxncYxDU9jAsWRaY4B
	WfIXcxcc9c3wSptXDZPTFL6QRvBqnuCkKQ/HRjVlaYRJDxiqQlseDoEmcEw8UbLfwCqg
	wACXY/GYpGUFZBmekM8rhJZTcGLMTnpQfgYUt4Ii9ACPJNwaQXJx/EFtF59FX2C96+Y8
	7vCUnyy8viQY1BHAP1EEIsuNrq5Wamps5jAD6GbUs0UNF0eIywUYKwyncJfWirovznOK
	osPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=8nHsTt1zrftoNiop1BJm8dEoSImgjHciG7TExtzMKIE=;
	b=einq9+zKd7P/iEBOx8etnSKJVuh78pBP5f6m8itB/AOmQf35sQNCG7Zoi6U+ofhwzy
	VpRxkJDYGOHd6rkP+QrASL56uhovRCD4+8NWaGjUiI3bRt9EtOy633iUwjMKCF3/51Wd
	paJ6nqwPzRilwbvdvCrF6jcKwmmuPsmiaMixy/FIYi6B8BWUKG7gBU7PhCorKrKV1+Zz
	7nroPByrN0DKLr7ElsBWc1eN8Lgjk+Per/+0mfAgQeHPZ85tGRLK4p5sOVCQpASk+Di5
	Jc6ERFfMphTgVkDlmC8KEV5eQUF5nhrlln/4N0o1RSb3F8XLn9/yh9FZMhA4ocAPxhhg
	BDaw==
X-Gm-Message-State: AKwxytdlxC3NR3C3d92cSIyQBFmo+pEy4wAdOAMBG1e9YNP2YdxDQ5rm
	byimSW2MWdHumoOY77u60GhIzaT1
X-Google-Smtp-Source: AH8x225DxKt+8E1ofWyHM8l/UAoTIeq+MvLZ26Hb29AY+A05pqtP0I6Kh78cxIoxu/Awe3kWKgEQoQ==
X-Received: by 10.98.215.30 with SMTP id b30mr18163736pfh.50.1516939727109;
	Thu, 25 Jan 2018 20:08:47 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:3012:7af4:dd04:6cda])
	by smtp.gmail.com with ESMTPSA id
	r30sm19256433pff.16.2018.01.25.20.08.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 20:08:46 -0800 (PST)
To: yocto@yoctoproject.org
References: <ab571079-b4fe-7ae0-8c36-9dea76d5cb2b@smartpal.de>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e808775e-2bb3-1cfd-811b-d9698c15eb37@gmail.com>
Date: Thu, 25 Jan 2018 20:08:45 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <ab571079-b4fe-7ae0-8c36-9dea76d5cb2b@smartpal.de>
Subject: Re: /usr/lib/x86_64-linux-gnu/libdl.so: file not recognized: File format not recognized
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
X-List-Received-Date: Fri, 26 Jan 2018 04:08:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/30/17 5:11 PM, cc_Smart wrote:
> Greetings all.
> 
> Beating my own expectations it seems i got past the compile step for 
> pylonGPS.
> 
> However, now i get an error that seems to indicate linking to reach for 
> host files instead of cross compiled. My understanding was that bitbake 
> handles that... what do i have to look for ?
> 
> Thanks for your support...
> 

see -L/usr/lib/x86_64-linux-gnu  in you commandline there, thats a 
problem you need to look into. Its possible that pylongps's own build 
system hardcodes it into linker flags, which is a problem for cross 
compiling.

> 
> | [ 90%] Linking CXX shared library lib/libpylongps.so
> | 
> /workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/cmake 
> -E cmake_link_script CMakeFiles/pylongps.dir/link.txt --verbose=1
> | 
> /workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ 
> -fPIC  -march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard 
> -mcpu=cortex-a7 
> --sysroot=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0=/usr/src/debug/pylongps/0.1.0-r0 
> -fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot= 
> -fvisibility-inlines-hidden  -march=armv7ve -marm -mfpu=neon-vfpv4 
> -mfloat-abi=hard -mcpu=cortex-a7 
> --sysroot=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot 
> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -shared 
> -Wl,-soname,libpylongps.so -o lib/libpylongps.so 
> CMakeFiles/pylongps.dir/src/library/NMEAGGASentence.cpp.o 
> CMakeFiles/pylongps.dir/src/library/SOMException.cpp.o 
> CMakeFiles/pylongps.dir/src/library/SOMScopeGuard.cpp.o 
> CMakeFiles/pylongps.dir/src/library/caster.cpp.o 
> CMakeFiles/pylongps.dir/src/library/casterDataSender.cpp.o 
> CMakeFiles/pylongps.dir/src/library/commandLineArgumentParser.cpp.o 
> CMakeFiles/pylongps.dir/src/library/connectionStatus.cpp.o 
> CMakeFiles/pylongps.dir/src/library/event.cpp.o 
> CMakeFiles/pylongps.dir/src/library/fileDataReceiver.cpp.o 
> CMakeFiles/pylongps.dir/src/library/fileDataSender.cpp.o 
> CMakeFiles/pylongps.dir/src/library/messageDatabaseDefinition.cpp.o 
> CMakeFiles/pylongps.dir/src/library/randomStringGenerator.cpp.o 
> CMakeFiles/pylongps.dir/src/library/subMessageDatabaseDefinition.cpp.o 
> CMakeFiles/pylongps.dir/src/library/tcpDataReceiver.cpp.o 
> CMakeFiles/pylongps.dir/src/library/tcpDataSender.cpp.o 
> CMakeFiles/pylongps.dir/src/library/tranceiver.cpp.o 
> CMakeFiles/pylongps.dir/src/library/utilityFunctions.cpp.o 
> CMakeFiles/pylongps.dir/src/library/zmqDataReceiver.cpp.o 
> CMakeFiles/pylongps.dir/src/library/zmqDataSender.cpp.o 
> CMakeFiles/pylongps.dir/jsoncpp/jsoncpp.cpp.o 
> -L/usr/lib/x86_64-linux-gnu 
> -L/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/lib 
> -L/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/./messages 
> -Wl,-rpath,/usr/lib/x86_64-linux-gnu:/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/lib:/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/./messages 
> -ldl -lPocoFoundation -lPocoNet -lPocoUtil -lsqlite3 
> lib/libpylonGPSMessages.a -lzmq -lprotobuf -lpthread -lsodium
> | 
> /workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.2.0/ld: 
> warning: library search path "/usr/lib/x86_64-linux-gnu" is unsafe for 
> cross-compilation
> | /usr/lib/x86_64-linux-gnu/libdl.so: file not recognized: File format 
> not recognized
> | collect2: error: ld returned 1 exit status
> 

