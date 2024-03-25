Return-Path: <osfan6313@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BFAC54E58
	for <webhook@archiver.kernel.org>; Mon, 25 Mar 2024 19:38:01 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web11.1203.1711395474918631639
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Mar 2024 12:37:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VeIGd2/d;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: osfan6313@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5a522ae3747so1300555eaf.1
        for <yocto@lists.yoctoproject.org>; Mon, 25 Mar 2024 12:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711395474; x=1712000274; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bTwbHrddyX0uTdJrPZGjU/ySOwvLRRX3NI1i1gScAEY=;
        b=VeIGd2/diwTBRdX8mYPX14eSBnm4VM0d2n7/l1aYk6ojrweqVyHPk7mwG0NnyiC1io
         9HJpTvEJELGTW/iz7n2EmC7Pn+reZfD1Kvil/sl2cyj3UnSQCCfRhlihx0ZO9TxKWwg3
         VPHNvtRo6afXp4KTLcS8qFaiEZCXmte82QQaZHa8C9oKpA0ADHrt4MtOryv40zH4pByd
         RyMnPoUV7wIZUya5SruEWHBTFS84+3vt+1VkNSKRVSAcau64+MBxE395UE6Bmypt9K7T
         zUmhJj9B8QcBWthjdDyfYYcnC4G30Xtw/wxI4TKA1UNU+Y/uo1y0Wgw6ZvEXWfrtRgjN
         erIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711395474; x=1712000274;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bTwbHrddyX0uTdJrPZGjU/ySOwvLRRX3NI1i1gScAEY=;
        b=J2CZ4rfNIUv7dGiVGpmcH0NFl/iHiXQWcgronPrOsg+Q9mIS/9nznO3tR51md6GWH2
         8Of2qn2Zx0odT7Xxpy5O6nrgnl8A9taz7+toykvnUOpE0RpxMLcZhunq3m9QHw4l+IXc
         aYTGLstg4RnE2uTfT/UKvthXUUqKV4AJdpNMNuhb29V6iRhHKPKos6NxFZhyD2yeFHfZ
         R3zH0htvY1/dTcMjzw3dXhqw+zEX/qaImqjiMIw+TjWkJdLKUNyIiIRUqMFaNd7pSata
         +C9qGeY/zdX/WFYnvQYg1YO4N7IQNnC5RqRjBgJpx1EWsYckXNO2S53j/1JcmtaipFXB
         xlBA==
X-Gm-Message-State: AOJu0YzPJ0fFLIEAig/xuuB5Cs8HNJq9fIA+YEA1j2NNtLKqorEaQAfz
	+xk3VMZxOg6+q5KwK6+ZHGkYdlxjzQRDax5MrdTETSCX54LCIvyQPjaeOYkbYc3TCzEBKxWkrT2
	LGFgxbxPqH20c54a1rWAefDYyUbOmjFUBp70=
X-Google-Smtp-Source: AGHT+IH6anDw2H6mE9AJrbr6FhJ/KW1spKb32lVTulRXxEMRCWUNaysgxt3rSeFvrn5HgPrnIC3mfwwyOe6NKV1Qz1k=
X-Received: by 2002:a05:6870:d626:b0:222:6e0e:bca8 with SMTP id
 a38-20020a056870d62600b002226e0ebca8mr3091887oaq.10.1711395473932; Mon, 25
 Mar 2024 12:37:53 -0700 (PDT)
MIME-Version: 1.0
From: Robert Middleton <osfan6313@gmail.com>
Date: Mon, 25 Mar 2024 15:37:43 -0400
Message-ID: <CAKpcJVYfMp5SMshEHLrEDT28N60+AUqP+6RpLqvJsMKu7BEf0w@mail.gmail.com>
Subject: esdk configuration issues
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Mar 2024 19:38:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62837

Hi,

I'm generating an esdk for my project, and I've come across two issues
that I can't seem to find a solution to.

1. I want to install a .sh file that is run when the ESDK environment
file is sourced.  I did the following, which seemed to work for the
normal SDK but not the ESDK:

DESCRIPTION = "SDK Testing"
SECTION = "libs"
LICENSE = "CLOSED"

BBCLASSEXTEND = "nativesdk"

FILES:${PN}:append:class-nativesdk = " ${SDKPATHNATIVE}"

do_configure[noexec] = "1"
do_compile[noexec] = "1"
do_fetch[noexec] = "1"

do_install:append:class-nativesdk () {
mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
echo "PS1=[sdk]\$PS1" >
${D}${SDKPATHNATIVE}/environment-setup.d/add-ps1-variable.sh
chmod 755 ${D}${SDKPATHNATIVE}/environment-setup.d/add-ps1-variable.sh
}

Any ideas as to why this doesn't work properly?  It's very similar to
what the cmake build does:
https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/cmake/cmake_3.22.3.bb?h=kirkstone#n52
The .sh file does exist, it's just not in the correct directory when
the ESDK is installed so it is never sourced.

2. For the main application that needs to be built, I need to manually
deploy a file that is built(so it is not part of the normal 'make
install').  I did the following in my .bb file for the recipe:
do_deploy() {
    install -m 0755 ${WORKDIR}/build/some-binary-file
${DEPLOYDIR}/some-binary-file
}
This works fine when building with bitbake, but when building in the
ESDK the directory paths have changed.  In bitbake, the binaries are
placed in ${WORKDIR}/build, but in the SDK the binaries are placed in
${WORKDIR}/<recipe-name>.  Is there a consistent way to find the build
directory?  This is using CMake if that makes a difference.

-Robert Middleton

