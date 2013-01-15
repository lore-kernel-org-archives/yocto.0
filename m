Return-Path: <thomas.besemer@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED2C1E002AB
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 16:26:12 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id qd14so6091423ieb.6
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 16:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=btV3XljbE48SV0E+Cgc+Ht+1k5fS/fzGlnm1IX6K8Dw=;
	b=vh690IpvfiE2BB40U9uagJxiqp1LK2xCVKSMBxP5TS/i1i62nZibcxbfdQOL9QVUKu
	Z7YDlhVCKSzeNRuc5OCJs00OMbgYpDngQ+JnIKQg/BwlLI/1mK3qsBBdIt5D4t7yJx2T
	/P7YJUr05KJYLMp9v1nrDg4VD+G/2ckZTNr5YUEdTXK7Bbo3pN4vnzfpH2XPMWHE5stI
	O09vzyetdMsvbyIGtEi9GUtqaiHQLuiehq6mkA81sUIZYMSn716XV/zS+SCJ+arPAKYF
	cLAhRH6FxoHeq/zVT3CwOgY+8xpi9B4ZhDa4IZJ9CMKmpy4ECGZrZMyKky07UfdHjmRy
	9QrQ==
MIME-Version: 1.0
X-Received: by 10.50.219.233 with SMTP id pr9mr301824igc.19.1358209572381;
	Mon, 14 Jan 2013 16:26:12 -0800 (PST)
Received: by 10.50.87.5 with HTTP; Mon, 14 Jan 2013 16:26:12 -0800 (PST)
Date: Mon, 14 Jan 2013 16:26:12 -0800
Message-ID: <CAO7m3AnhP6hxnNvQ_n5CP2Jgq=rG4SOVm5zizgZrdoeR=NQD8A@mail.gmail.com>
From: Thomas Besemer <thomas.besemer@gmail.com>
To: yocto@yoctoproject.org
Subject: librt within Yocto Recipe (beagle)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Jan 2013 00:26:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm working with Beagleboard right now, stock top of tree from Yocto
pull.  GCC 4.7.2 builds fine.

I am able to use tools built during this process to link with librt
(-lrt) (as librt is in), but can't figure out how to do it from within
a Yocto/OE recipe.  I created a recipe to build my application, but it
complains that I don't have dependencies for librt (wants something).
My recipe:

DESCRIPTION = "GCPY Server application"
SECTION = "gcsim"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PV = "1_0"

SRC_URI = "file://gcpy.tar"

S = "${WORKDIR}"

do_install() {
	install -d ${D}${base_libdir}
	install -m 0755 libgcpy_gc6016.so ${D}${base_libdir}
	install -d ${D}${bindir}
	install -m 0755 gcpy_gc6016_server ${D}${bindir}
}

There is a Makefile within tarball, and when I use the Yocto generated
tools outside of Yocto, builds fine.  Thus, I know librt is present
(and I see it).

What do I need in recipe to make this work?

