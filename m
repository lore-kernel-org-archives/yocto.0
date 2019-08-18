Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10DC0E00C46; Sun, 18 Aug 2019 13:35:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B859FE00A93
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2019 13:35:01 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id p28so9523987edi.3
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2019 13:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QuuKq0sDmM7eQsHdCYrYDke6nX4btYL0ECpuC3gHn2M=;
	b=sMh5GP0J/tMZPVbSJNvabriiAgdIhN7p1qHpHLbO/fj734CTl0JbWXq5kgSBaNGIA9
	4O0jKPGoa01OnuJcJmxx3NwzklvLiZf6pA5guIhPLnDARDBHwVpArJ8/jhL7ECntEcdc
	+ura5oCz0nR/iA94uu9gW8EKJ6JOEES3/+dACqvgTLRWdGAC3Fpl6HjiwaWDNpNNP6ZM
	vbuL3YsGZQ2KlAUBAnepc1K1kHBdYdUeFqM8Bi7P/jQfIQEMy31wacM8t5tnGFp8gevs
	J4meYjiAKlSJgJwH0zT19ApoPBi4/6v/Jbp3++FuOGMpIIWOWYeQUoGsDG92zkuXjvM1
	ps+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QuuKq0sDmM7eQsHdCYrYDke6nX4btYL0ECpuC3gHn2M=;
	b=Dc18o1iFBHCpB0OjdJE/ZfDfJUHnrkP3MvxNQs/MBqIIRVpcQlZhZRtLFjHGjjc2pa
	m8QhFEo2tj+AJ4zTl3lPfB3GqNjxCGG6I2o6D+pwuaOglw6WyIBwKJWx/b7yT4l/NIoV
	PsvxvupToXfkbsdhQzW4UehNwcSIFWXfqm4+nsuymGfo/iES1UM3eZ8S0UtZK68niVdc
	R0W+FAsJT9RlqbZatkyW7M6IyGdrlW8Xyr7gfuSFN+8HYE0DV9w0fnY/tFyQLFZQBl6t
	qMELitcsVA/bwSlSkdAozjCZgAUEmcFFebg6G95YtP0imjGjRUCYtYWAKUxCJnWuM1+I
	Scww==
X-Gm-Message-State: APjAAAUk5aizreiNBt+HarEVTPL6evtT3qLsDi7wsdBuekUq3TLJ5508
	RjUt7iPbaTZZJBeYjiCY9PyH5kZq1ftIfU3uBk8Kvkb4q/8=
X-Google-Smtp-Source: APXvYqxkknfKNqcDmF53qEezk24rAUedXCTCNyxVknQ2rhJ7JZW+XWRhPMhA/bXaUwZhVsKgXYm42C1ai6CJxnLR6+U=
X-Received: by 2002:a17:906:65c5:: with SMTP id
	z5mr12669695ejn.282.1566160500526; 
	Sun, 18 Aug 2019 13:35:00 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sun, 18 Aug 2019 22:34:49 +0200
Message-ID: <CAAfyv35J5sqHu7PCezDd_iFznUcOj=Bf+RiYpkM-5W635kdf=g@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: building SDK artifacts with external toolchain
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
X-List-Received-Date: Sun, 18 Aug 2019 20:35:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have an dilema to solve. I have an SDK from vendor which contains
scripts to build u-boot + kernel + some kind of application and create
initramfs out of that and this can be flashed to NOR device and boot.
But setup and using is really horrible. Idea is to port this process
to yocto and have possibility to be used as yocto SDK for development.
Issue is that u-boot and kernel are obsolete (u-boot 2010 and kernel
3.18) and after few fixed I was able to buld and run u-boto with 7.3
arm ggc but when building kernel I got some issue with asm and I'm
kind of lost ;). So idea was to use toolchain which SDK provide but
it's again 4.9.4 (some linaro clone). Target is to use poky rocko with
this setup. I tried to build minimal image with external toolchain but
got some QA issues like:

gmp-6.1.2-r0 do_package_qa: QA Issue: libgmpxx rdepends on
external-linaro-toolchain-dbg [debug-deps]
 ERROR: gmp-6.1.2-r0 do_package_qa: QA Issue:
/usr/lib/libgmpxx.so.4.5.2 contained in package libgmpxx requires
libstdc++.so.6(CXXABI_1.3), but no providers found in
RDEPENDS_libgmpxx? [file-rdeps]
 ERROR: gmp-6.1.2-r0 do_package_qa: QA Issue:
/usr/lib/libgmpxx.so.4.5.2 contained in package libgmpxx requires
libstdc++.so.6(CXXABI_ARM_1.3.3), but no providers found in
RDEPENDS_libgmpxx? [file-rdeps]
 ERROR: gmp-6.1.2-r0 do_package_qa: QA Issue:
/usr/lib/libgmpxx.so.4.5.2 contained in package libgmpxx requires
libstdc++.so.6(GLIBCXX_3.4), but no providers found in
RDEPENDS_libgmpxx? [file-rdeps]
 ERROR: gmp-6.1.2-r0 do_package_qa: QA Issue:
/usr/lib/libgmpxx.so.4.5.2 contained in package libgmpxx requires
libstdc++.so.6(GLIBCXX_3.4.11), but no providers found in
RDEPENDS_libgmpxx? [file-rdeps]
 ERROR: gmp-6.1.2-r0 do_package_qa: QA Issue:
/usr/lib/libgmpxx.so.4.5.2 contained in package libgmpxx requires
libstdc++.so.6, but no providers found in RDEPENDS_libgmpxx?
[file-rdeps]

I can workaround those but to me it looks like it's somehow not
compatible or so (was using 4.9.4 linaro toolchain). My idea was to
maybe use older poky (when 4.9 toolchain was used) but I'm not sure I
like this approach. Other ideas? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

