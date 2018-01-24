Return-Path: <xpetept@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86E29E00D41; Wed, 24 Jan 2018 12:26:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xpetept[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06500E00A75
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 12:26:41 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id w14so6662962itc.3
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 12:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=snRlOjNQWLgo+ZDRbXdZHUgHUlwBQ5HdvlCedeAudYU=;
	b=pH49U9/c8MD7nK0jMpK341dNnmuddSLGz6NcyCmBDTop4PpsJYA0j9EPF5QZz16n7C
	aOy88RmvjkhtbSHSKvbnc9+Je5K9+2Ro7wqlD3VLqPiTaROxDD7IdCCpuS8Vv6JxNTca
	PXWUAliwsdJFPGmV+5RwbSQTUZQyIdKl10mNZpPGUK43wjM8mtl/e/GOVRt259fRTFy+
	pnkWsWktHvWmiUyJpKyDvAn4Om2rM7Xlpgd0cCosIpkCI5AOBxZZRGcfVda6b0DxmtwS
	wpbsxg/pps/1o9D9GKqmZWa+eBM6VMulLmTS+CsqisAS1gnHoex882TeAcZ3xc5XOzEy
	NK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=snRlOjNQWLgo+ZDRbXdZHUgHUlwBQ5HdvlCedeAudYU=;
	b=P3E9/J8JecuBAyTbTWt8pDykm8yoA5pHsGylAf0emf3TTaEbA4PpCDN6CSKV5L4eLW
	2M3wbm5DGwJqNFc74GsWgnxcfUq5yZlnxgLnQxV8lWK4F+kJrmw8usUOlHnWAXvLJ3mw
	5WIgWKX2NivpniulLD5xXJNuXvgPTpSVPM5P5c8vKg8ZR4+2lNdDVXgxdJHeJbcaCxam
	PFThPXzqRJq/pfA0+tI/TywujBRRtmZUuMstzRyCEdk+fyNijv0JnLBbam+YJAa2I5vT
	6acKL0hIHPuctwTzL4zm9nYtL1gIBj0davJQutuMrM/vGwGy8EwNS4TNZ2ueoCZssfx6
	kV4Q==
X-Gm-Message-State: AKwxyteA6cb8ENQ6zp8dE5NdbMLCha51LM1pws+g0lXueMrM7YkE1aGd
	Rsy8CB8R+c19t9XjmsQaZ47A5z7jw9GxcYuYl3YBz7+K
X-Google-Smtp-Source: AH8x226as6oBvEAegKqXXmQMIPTQyQPjy/RFY4CfxqihAV+UXKbnJu4XIu5w4lZ/AwliIN0crrl1s56rRfW/dUJKxJs=
X-Received: by 10.36.13.209 with SMTP id 200mr6464413itx.25.1516825600943;
	Wed, 24 Jan 2018 12:26:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.77.11 with HTTP; Wed, 24 Jan 2018 12:26:20 -0800 (PST)
From: =?UTF-8?Q?Diogo_Pi=C3=A7arra?= <xpetept@gmail.com>
Date: Wed, 24 Jan 2018 20:26:20 +0000
Message-ID: <CAOWR=gtWnmRkg=UTEWv6W4EX+_mS0yVbg4OX5j6jvVxOZmuf6w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Linking problem after upgrade to rocko
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
X-List-Received-Date: Wed, 24 Jan 2018 20:26:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a recipe to build macchina.io that was working with pyro but
after updating to rocko the compile task fails after the following
warning: error:/home/username/Projects/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.2.0/ld:
warning: libPocoJSON.so.51, needed by
/home/username/Projects/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/macchina.io/git-r0/git/platform/lib/Linux/armv7l/libPocoUtil.so,
not found (try using -rpath or -rpath-link)

The compile task is the following:
do_compile() {
    POCO_CONFIG=Yocto LINKMODE=SHARED make -s
DEFAULT_TARGET=shared_release 'CXXFLAGS=${CXXFLAGS} -v
-DHAVE_EXPAT_CONFIG_H' CC='${CC}' 'CFLAGS=${CFLAGS}' CXX='${CXX}'
STRIP='' BUNDLE_TOOL='${TMPDIR}/work/x86_64-linux/macchina.io-native/git-r0/recipe-sysroot-native/usr/bin/bundle'
PAGECOMPILER='${TMPDIR}/work/x86_64-linux/macchina.io-native/git-r0/recipe-sysroot-native/usr/bin/cpspc'
}

The files libPocoJSON.so.51 and libPocoUtil.so are in the same folder.
I already tried to set -rpath-link, -rpath and LD_LIBRARY_PATH. Nothing worked.
I already read the release notes and can't find anyting that could have
created this problem.
How can I fix this?

Thanks
Diogo

