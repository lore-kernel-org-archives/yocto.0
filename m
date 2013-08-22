Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2898BE00406
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:10:18 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id o6so3712615oag.13
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pXOl0PRN5rFBX9GAdkLxCs/JFLvjD6+f9HNWKXdvKRQ=;
	b=tV1TsWFypAJKnEqGgx900vJfpNQEwqur5Y9NNhBnqVzCE0jUa8OjpodmO+IHbqGFWp
	pp9s2a/XobUH5OPgrWP7Aw6b/KQ6I5mDkEKNzxsqgfWKSudIJHrZb6cpDOGj7Ia5sOzk
	e18pMaasneBvYNVfu8I1lh9+I/sDbHkGHUN9m1yUz3zM3RHuPhY6rYvx5sgJzA2mXUqj
	gHO8W4//j3tFhhFj4V/O/hh+EgyYG68WGbzfyZWMXJ6dRf8FAlU2zlWk+JoVL8qXyHcH
	aSgeML3uirEhIChXZBrzd1Kx5iDAdVUYKCd9r4EoLkSXKyS0K7mT7DyiTg9lR3gMoLG2
	0wqw==
MIME-Version: 1.0
X-Received: by 10.60.44.240 with SMTP id h16mr14790541oem.2.1377184217534;
	Thu, 22 Aug 2013 08:10:17 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Thu, 22 Aug 2013 08:10:17 -0700 (PDT)
Date: Thu, 22 Aug 2013 17:10:17 +0200
Message-ID: <CAFyqS9pM4d+HffKvW9NfFBSnqYVkTRuNMTx_pU2BsdOdwFd-_g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: cross-compilation of kernel does not work with the generated toolchain?
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
X-List-Received-Date: Thu, 22 Aug 2013 15:10:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I am trying to build a kernel using our bitbaked and populated
toolchain. It works fine for user-space application but when trying to
compile the kernel we get

  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/srcpos.o
In file included from scripts/dtc/dtc.h:25,
                 from scripts/dtc/srcpos.c:24:
/usr/include/string.h:546: error: expected declaration specifiers or
'...' before '__locale_t'
/usr/include/string.h:547: error: nonnull argument with out-of-range
operand number (argument 1, operand 3)
/usr/include/string.h:550: error: expected declaration specifiers or
'...' before '__locale_t'
/usr/include/string.h:551: error: nonnull argument with out-of-range
operand number (argument 1, operand 4)
make[2]: *** [scripts/dtc/srcpos.o] Error 1
make[1]: *** [scripts/dtc] Error 2
make: *** [scripts] Error 2

/usr/include/string.h ??? That must be wrong, or? I expected it to
pickup the standard headerfiles from our toolchain, not the ones on
the build host. That will surely clash with the version of the
compiler being used.

Any ideas what might be wrong here?

Thanks.
Hans

