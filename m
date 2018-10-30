Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FA4E00950; Tue, 30 Oct 2018 09:38:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7324E008D7
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 09:38:24 -0700 (PDT)
Received: by mail-it1-f169.google.com with SMTP id f16-v6so6951828ita.3
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 09:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=lWW1V54oC9D9Tp0+wAZLWlPGrScWGXB3mXMnj0uRMak=;
	b=QM83XuMBd3K5/lLQSPSqIaxKx81cUaSTeCwBWJ2n+HXoot/NO8J+gy2rBOxMIDbDlx
	S2gDN5i1UYJDd90km9fpuNpyhLBZb89uKWBeuVzzSEeijVqRLiEAJOyHLtNorVQoT3Mu
	q+A90iTazysVFaQXZaAD0T8NqGNNtlaPdzoUpepSRRgG3ehNo4kwODupccEeJ+WhY1/q
	s0Te/ItupXoGjCeywuh89DKeFurwUD8WhK5RQmBim3xq5rYOdFnadQwLVqklv2+m1Jm7
	XxUuz9au1pJcxjmydMnsMriNi+20rl6XitL2vRO63HT2uae4Q7PRTSgcZhsdHXslBfay
	671w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=lWW1V54oC9D9Tp0+wAZLWlPGrScWGXB3mXMnj0uRMak=;
	b=elslDly5FYtSjEE0/SEIgTAYoHctkKmeD6hEbipN8sLLWhCWTzZtZGlclTO7KzDA9s
	cYEtBCHBTaabXXjtjiFBoj/tc2KizI8Y/6ej7wzrlXYXfCcx/D4SoQEZCakAjB/Mg7BA
	tJ36F1EDyYPSZvkA6nbcomFeF9VVNONGUKe78YGZ/tqJQercqsxoya4iRigtRfGSA0O9
	QCGPLrz7HXr/sefaWAhKNB1DjYNe20GH8NJdwvjSybvCvmfHuFjzVa9RsLW2CpqtyLlq
	ZJhw5bhbhbmad3no0JTTzfeXMVDG+mnIiDKcXWmJsnTrA6/VZ2wKH2WCVqVeqQk+62ht
	1Gkw==
X-Gm-Message-State: AGRZ1gI3zcwpQp0f99+/HOEDaX/tlHi1S/rcKFYlzrRa5Wwac7YGxTg1
	pue8TGhiY9vsSX62GF3z6jdTpPvM
X-Google-Smtp-Source: AJdET5cW1Y5tfagzC0imCPw72rYrJZZzk79moTMSvmSXk2YgWxa+slsPhiz5GvCPHI5Gg2rwm6BIHA==
X-Received: by 2002:a24:4605:: with SMTP id
	j5-v6mr1908290itb.164.1540917503503; 
	Tue, 30 Oct 2018 09:38:23 -0700 (PDT)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	y190-v6sm7604169itg.3.2018.10.30.09.38.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Oct 2018 09:38:23 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <28fb384c-5521-f1d9-076e-f25c9c04b125@gmail.com>
Date: Tue, 30 Oct 2018 12:38:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Help with Nano Recipe
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
X-List-Received-Date: Tue, 30 Oct 2018 16:38:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings All, 
I am trying to get the below recipe to build:
SUMMARY = "Recipe to build the 'nano' editor"

PN = "nano"
PV = "2.2.6"
LICENSE="GPLv3"

SITE = "http://www.nano-editor.org/dist"
PV_MAJOR = "${@d.getVar('PV',d,1).split('.')[0]}"
PV_MINOR = "${@d.getVar('PV',d,1).split('.')[1]}"
LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"

SRC_URI = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/${PN}-${PV}.tar.gz"
SRC_URI[md5sum] = "03233ae480689a008eb98feb1b599807"
SRC_URI[sha256sum] = \
"be68e133b5e81df41873d32c517b3e5950770c00fc5f4dd23810cd635abce67a"
LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949


python do_fetch() {
    bb.plain("Downloading source tarball from ${SRC_URI} ...")
    src_uri = (d.getVar('SRC_URI', True) or "").split()
    if len(src_uri) == 0:
       bb.fatal("Empty URI")
    try:
       fetcher = bb.fetch2.Fetch(src_uri, d)
       fetcher.download()
    except bb.fetch2.BBFetchException:
       bb.fatal("Could not fetch source tarball.")
    bb.plain("Download successful.")
}

addtask fetch before do_build

python do_unpack() {
    bb.plain("Unpacking source tarball ...")
    os.system("tar x -C ${WORKDIR} -f ${DL_DIR}/${P}.tar.gz")
    bb.plain("Unpacked source tarball.")
}

addtask unpack before do_build after do_fetch

python do_configure() {
    bb.plain("Configuring source package ...")
    os.system("cd ${WORKDIR}/${P} && ./configure")
    bb.plain("Configured source package.")
}

addtask configure before do_build after do_unpack

python do_compile() {
    bb.plain("Compiling package...")
    os.system("cd ${WORKDIR}/${P} && make")
    bb.plain("Compiled package.")
}

addtask compile before do_build after do_configure

do_clean[nostamp] = "1"
do_clean() {
    rm -rf ${WORKDIR}/${P}
    rm -f ${TMPDIR}/stamps/*
}

addtask clean

And am working why this error is occuring:
ERROR: ParseError at /tmp/bbhello/meta-hello/recipes-editor/nano/nano.bb:15: unparsed line: 'LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949' 

I looked through the logs already and it was reported but only changed the file number seemed to change it. I am wondering if there is a better
solution or why that's a bad CHSUM variable according to bitbake.

Thanks,
Nick

