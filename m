Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B6FCE00C58; Mon, 31 Jul 2017 11:52:08 -0700 (PDT)
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
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E68E00C2C
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 11:52:07 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id v189so12334635pgd.2
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 11:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=F3fefxSVtr9ttLzUHhmGHCXXr83ZUPCR4IRfhkFzQ+Y=;
	b=H+uWnIX46q+HEQpLqPpuAhOqZizJwZvHLmgqT+2uHR24ZY01ynSNhsF7U5G2cg3GOY
	OymWSpGUgEA9NUsou3wcuzQdby24d1HqLX6HkS8UjEIy94xBqGxH+4HQh33+w1epKINm
	RNo7ta6NSCzg1zpFS/qaNXYk5vu2Dv0NsG5FpMYVFU9U69u27ZLbb9VvJj5qA1FvmrQQ
	lqy/HCW53K2mR3kQkIicVy7yDbFch+5pd4pQsHxfKnaDA9Wfg3G66CWIWBGX3b2KzYVc
	cpYVnENMevyS/OekT5u6cb6YS26qRy3KdaCk3rWb4jb0Xl6OqgOIXb14xwQDS2E2Qihs
	cQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=F3fefxSVtr9ttLzUHhmGHCXXr83ZUPCR4IRfhkFzQ+Y=;
	b=H0P1KCAnJTZhfAfZWSEreSgjI3mzGOMDON2af5tXj+m/Ex9BCAAcFeAPzAGODgOczC
	lyYSr1iX94T5sKCGKc1tFfYXLAu8SLLksGH3JPyoiOdmoP5j/qRdiT0M/6en6KOzrWO3
	sAcsJcGobTXqH3bUz6dooQeIjfz57I47xP1r5Lo07EzLuS0G9ZdfAH4N+vni6PegGmXo
	aSPn8rcNcn/17VoGB7CAKUjvcXFKov4283ocyTz4jtTPJiTDHdJl99a+pVa3Hcb5OsQ8
	6UabM1Ssu3eW6OG4zoFDYu6iX6icN8G6b6xtftv0fxSUcSHETGIbg+WKcfCnBPZjTaZs
	tRLQ==
X-Gm-Message-State: AIVw1117nU8Ixkie3NNDdexu99L1CVHLR80DvKR4Noo1mI32BTeqp+X1
	MQJ95ascka/sbTPRKsU=
X-Received: by 10.84.131.71 with SMTP id 65mr17851716pld.35.1501527126541;
	Mon, 31 Jul 2017 11:52:06 -0700 (PDT)
Received: from Khems-MacBook-Pro.local
	([2601:646:8882:b8c:30be:1361:6ee4:77cc])
	by smtp.gmail.com with ESMTPSA id
	f64sm20536597pfb.83.2017.07.31.11.52.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Jul 2017 11:52:05 -0700 (PDT)
To: =?UTF-8?Q?Diogo_Pi=c3=a7arra?= <xpetept@gmail.com>, yocto@yoctoproject.org
References: <CAOWR=gsQoW5FgUvy2vGpQz8aLW7j5PT=TxvMT0bGe-mm-nA1OA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <66df2809-66e8-c7fe-2205-644b67f8b6b9@gmail.com>
Date: Mon, 31 Jul 2017 11:52:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:55.0)
	Gecko/20100101 Thunderbird/55.0
MIME-Version: 1.0
In-Reply-To: <CAOWR=gsQoW5FgUvy2vGpQz8aLW7j5PT=TxvMT0bGe-mm-nA1OA@mail.gmail.com>
Subject: Re: build problem after upgrade to pyro
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
X-List-Received-Date: Mon, 31 Jul 2017 18:52:08 -0000
X-Groupsio-MsgNum: 37244
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="HvHNaitggMjCqc9jRhUEw4TBNgCeQTLWM"

--HvHNaitggMjCqc9jRhUEw4TBNgCeQTLWM
Content-Type: multipart/mixed; boundary="GxvE1SqWXI5C6oik35vOjqFX1lMSaSJRh";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?Q?Diogo_Pi=c3=a7arra?= <xpetept@gmail.com>, yocto@yoctoproject.org
Message-ID: <66df2809-66e8-c7fe-2205-644b67f8b6b9@gmail.com>
Subject: Re: [yocto] build problem after upgrade to pyro
References: <CAOWR=gsQoW5FgUvy2vGpQz8aLW7j5PT=TxvMT0bGe-mm-nA1OA@mail.gmail.com>
In-Reply-To: <CAOWR=gsQoW5FgUvy2vGpQz8aLW7j5PT=TxvMT0bGe-mm-nA1OA@mail.gmail.com>

--GxvE1SqWXI5C6oik35vOjqFX1lMSaSJRh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 7/31/17 6:27 AM, Diogo Pi=C3=A7arra wrote:
> Hi,
>=20
> I have a recipe to build macchina.io that was working with morty but
> after updating to pyro i get the error "/lib/ld-linux-armhf.so.3: No
> such file or directory".
> It's looking fot the file in the wrong place.
> I already read the release notes and can't anyting that could have
> created this problem.
> How can I fix this?
>=20
> Thanks
> Diogo
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Building V8 for arch arm with flags: library=3Dshared i18nsupport=3Do=
ff
> werror=3Dno snapshot=3Don  arm_version=3D7
> | tools/gyp/v8_external_snapshot.target.arm.release.mk:15: warning:
> overriding recipe for target
> '/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-g=
nueabi/macchina.io/git-r0/git/platform/JS/V8/v8-3.28.4/out/arm.release/sn=
apshot_blob.bin'
> | tools/gyp/v8_external_snapshot.host.arm.release.mk:15: warning:
> ignoring old recipe for target
> '/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-g=
nueabi/macchina.io/git-r0/git/platform/JS/V8/v8-3.28.4/out/arm.release/sn=
apshot_blob.bin'
> | ** Compiling src/Wrapper.cpp (release, shared)
> | ** Compiling src/PooledIsolate.cpp (release, shared)
> | ** Compiling src/LoggerWrapper.cpp (release, shared)
> | ** Compiling src/ConsoleWrapper.cpp (release, shared)
> | ** Compiling src/SystemWrapper.cpp (release, shared)
> | ** Compiling src/DateTimeWrapper.cpp (release, shared)
> | ** Compiling src/LocalDateTimeWrapper.cpp (release, shared)
> | ** Compiling src/ConfigurationWrapper.cpp (release, shared)
> | ** Compiling src/ApplicationWrapper.cpp (release, shared)
> | ** Compiling src/URIWrapper.cpp (release, shared)
> | ** Compiling src/TimerWrapper.cpp (release, shared)
> | ** Compiling src/BufferWrapper.cpp (release, shared)
> | ** Compiling src/JSExecutor.cpp (release, shared)
> | ** Compiling src/Module.cpp (release, shared)
> | ** Compiling src/ModuleRegistry.cpp (release, shared)
> | ** Building shared library (release)
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSCore.so.1
> | ** Compiling src/SessionWrapper.cpp (release, shared)
> | ** Compiling src/RecordSetWrapper.cpp (release, shared)
> | ** Building shared library (release)
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSData.so.1
> | ** Compiling src/Serializer.cpp (release, shared)
> | ** Compiling src/Deserializer.cpp (release, shared)
> | ** Compiling src/TaggedBinaryReader.cpp (release, shared)
> | ** Compiling src/BridgeWrapper.cpp (release, shared)
> | ** Building shared library (release)
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSBridge.so.1
> | ** Compiling src/HTTPRequestWrapper.cpp (release, shared)
> | ** Compiling src/HTTPResponseWrapper.cpp (release, shared)
> | ** Compiling src/HTMLFormWrapper.cpp (release, shared)
> | ** Building shared library (release)
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/recipe-sysroot/lib//libPocoJSNet.so.1
> | ** Creating dependency info for src/NetSSLBundleActivator.cpp
> | ** Compiling src/NetSSLBundleActivator.cpp (release, shared)
> | ** Building dynamic library (release, shared)
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/bin/Linux/armv7l=
/poco.net.ssl.so
> | /lib/ld-linux-armhf.so.3: No such file or directory

its possible that its setting up its own compiler variables CC/CXX etc,
with pyro we have recipe specific sysroots instead of a global staging
area. So earlier if you did not specify --sysroot option on
compiler/linker cmdline it was forgiving since build time sysroot and
runtime sysroot for cross compiler were same. This wont happen with
pyro and may be thats the reason for your problem.
Fixes for such issues are generally in letting the packages respect
the CC/CXX varibles coming from environment

> | /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-=
gnueabi/macchina.io/git-r0/git/platform/build/rules/dylib:60:
> recipe for target
> '/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-g=
nueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/bin/Linux/armv7=
l/poco.net.ssl.so'
> failed
> | make[2]: *** [/home/username/yocto/build/tmp/work/cortexa7hf-neon-vfp=
v4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/OSP/NetSSL_OpenSSL/=
bin/Linux/armv7l/poco.net.ssl.so]
> Error 255
> | Makefile:383: recipe for target 'OSP/NetSSL_OpenSSL-libexec' failed
> | make[1]: *** [OSP/NetSSL_OpenSSL-libexec] Error 2
> | Makefile:78: recipe for target 'clean' failed
> | make: *** [clean] Error 2
> | WARNING: exit code 2 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/username/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/macchina.io/git-r0/temp/log.do_compile.22044)
>=20


--GxvE1SqWXI5C6oik35vOjqFX1lMSaSJRh--

--HvHNaitggMjCqc9jRhUEw4TBNgCeQTLWM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAll/fFMACgkQuwUzVZGdMxRNxQCfWvil+ppC9wFv9yzW6wMrFhs6
n+oAoI+1BFN4WEHq/sBfgBgfCncROER7
=Soqi
-----END PGP SIGNATURE-----

--HvHNaitggMjCqc9jRhUEw4TBNgCeQTLWM--
