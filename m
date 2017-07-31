Return-Path: <xpetept@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78988E00C40; Mon, 31 Jul 2017 06:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xpetept[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A171BE00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:27:24 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id v127so126175170itd.0
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jw1gqC8HoyH4khqKiyu4LjpPopLZMIhyrnalRpFODlI=;
	b=JpKb8eDmiTbi/WjjXCDxnou0UyPrQVj19hXSPc7haW7KC5at4uAktxE3qiMbS6QUux
	7OpJJrRasHm77VVVYg27BGb3N6AloEMezBeP/ql5t61cUvMvmMQNCzL+S63PI0luSNky
	Qi+qRsHnX4nDOCDNbVmTKLtohh//QrZogma81wVfqKOXjPOtPoOc7mru7tfipDw1ruE+
	1KOx/OnueJG6m6iWppJ1qgR4zXakxoB4Eu9O2pASoyyF4SwMkQRQwmM8l9Ie+znFEQVH
	SsnZZnz1ZIzbWXLHQYs5Hg2uU6E5d5da2POA5UGB5abx5byG3+1MSMJ9N0ATXao5X/Eb
	gpGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jw1gqC8HoyH4khqKiyu4LjpPopLZMIhyrnalRpFODlI=;
	b=ZTE37C9YYrHoH18wV2DLgOfQ+5Iab8CJLGgvWEycGiNiL8FnImFBLxQsKyJUvTLgI4
	XBOi4DHr6K7BdBmizYagfUWg5kHIi+Hc+Guj8f9B2qP7EuqAtJhzbURPZ7eY8wMcLJRw
	wUDwfOG4EnCCeiSenkr3PcJey3mzhIlPt0o1kHDGurG99JRPBbEQNzjncvrj6eeUcrvx
	3DLbiigqVOJTJUPsODi7eo+MGiDbkq2FCs6JvNGLFKe4rsoNRftiu1K5Zc6+uJ6a1Adb
	9F0MiytvVbMDNViEB/zQu8Ww7IAgrCNy6i0nbN6pEptTH9UDAQK98ITPgS2yxOvkBppI
	/cjQ==
X-Gm-Message-State: AIVw111SVdjLQsXhqRlQ9PjK83jaGPXwUj/HABkdzrpVWwQpFvwkz+Ln
	5KdoMERhi+OIOSBvBKP3eafVX7J/0/Jx0Zw=
X-Received: by 10.36.153.198 with SMTP id a189mr18208768ite.133.1501507643674; 
	Mon, 31 Jul 2017 06:27:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.137.73 with HTTP; Mon, 31 Jul 2017 06:27:03 -0700 (PDT)
From: =?UTF-8?Q?Diogo_Pi=C3=A7arra?= <xpetept@gmail.com>
Date: Mon, 31 Jul 2017 14:27:03 +0100
Message-ID: <CAOWR=gsQoW5FgUvy2vGpQz8aLW7j5PT=TxvMT0bGe-mm-nA1OA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: build problem after upgrade to pyro
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
X-List-Received-Date: Mon, 31 Jul 2017 13:27:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a recipe to build macchina.io that was working with morty but
after updating to pyro i get the error "/lib/ld-linux-armhf.so.3: No
such file or directory".
It's looking fot the file in the wrong place.
I already read the release notes and can't anyting that could have
created this problem.
How can I fix this?

Thanks
Diogo

Log data follows:
| DEBUG: Executing shell function do_compile
| Building V8 for arch arm with flags: library=shared i18nsupport=off
werror=no snapshot=on  arm_version=7
| tools/gyp/v8_external_snapshot.target.arm.release.mk:15: warning:
overriding recipe for target
'/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/JS/V8/v8-3.28.4/out/arm.release/snapshot_blob.bin'
| tools/gyp/v8_external_snapshot.host.arm.release.mk:15: warning:
ignoring old recipe for target
'/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/JS/V8/v8-3.28.4/out/arm.release/snapshot_blob.bin'
| ** Compiling src/Wrapper.cpp (release, shared)
| ** Compiling src/PooledIsolate.cpp (release, shared)
| ** Compiling src/LoggerWrapper.cpp (release, shared)
| ** Compiling src/ConsoleWrapper.cpp (release, shared)
| ** Compiling src/SystemWrapper.cpp (release, shared)
| ** Compiling src/DateTimeWrapper.cpp (release, shared)
| ** Compiling src/LocalDateTimeWrapper.cpp (release, shared)
| ** Compiling src/ConfigurationWrapper.cpp (release, shared)
| ** Compiling src/ApplicationWrapper.cpp (release, shared)
| ** Compiling src/URIWrapper.cpp (release, shared)
| ** Compiling src/TimerWrapper.cpp (release, shared)
| ** Compiling src/BufferWrapper.cpp (release, shared)
| ** Compiling src/JSExecutor.cpp (release, shared)
| ** Compiling src/Module.cpp (release, shared)
| ** Compiling src/ModuleRegistry.cpp (release, shared)
| ** Building shared library (release)
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSCore.so.1
| ** Compiling src/SessionWrapper.cpp (release, shared)
| ** Compiling src/RecordSetWrapper.cpp (release, shared)
| ** Building shared library (release)
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSData.so.1
| ** Compiling src/Serializer.cpp (release, shared)
| ** Compiling src/Deserializer.cpp (release, shared)
| ** Compiling src/TaggedBinaryReader.cpp (release, shared)
| ** Compiling src/BridgeWrapper.cpp (release, shared)
| ** Building shared library (release)
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSBridge.so.1
| ** Compiling src/HTTPRequestWrapper.cpp (release, shared)
| ** Compiling src/HTTPResponseWrapper.cpp (release, shared)
| ** Compiling src/HTMLFormWrapper.cpp (release, shared)
| ** Building shared library (release)
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSNet.so.1
| ** Creating dependency info for src/NetSSLBundleActivator.cpp
| ** Compiling src/NetSSLBundleActivator.cpp (release, shared)
| ** Building dynamic library (release, shared)
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/bin/Linux/armv7l/poco.net.ssl.so
| /lib/ld-linux-armhf.so.3: No such file or directory
| /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/build/rules/dylib:60:
recipe for target
'/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/bin/Linux/armv7l/poco.net.ssl.so'
failed
| make[2]: *** [/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/bin/Linux/armv7l/poco.net.ssl.so]
Error 255
| Makefile:383: recipe for target 'OSP/NetSSL_OpenSSL-libexec' failed
| make[1]: *** [OSP/NetSSL_OpenSSL-libexec] Error 2
| Makefile:78: recipe for target 'clean' failed
| make: *** [clean] Error 2
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/temp/log.do_compile.22044)

