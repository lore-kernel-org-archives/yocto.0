Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C5EE009B2; Mon, 26 Nov 2018 22:39:28 -0800 (PST)
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
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37088E008C6
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 22:39:27 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id h65so32101942ith.3
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 22:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=9WijC83j3Gmbjta+WtdvrLBt4e82bsvffxS2/oXF0Mc=;
	b=hdxw9+9tE5g5z+5u20qFSslSmxB2BVjXLfTQEOWeke0rL+UbooNZMrOxMHq3R+RhVC
	EwrKGJmTs1cJEsxo+KTITxjl6zaEb7xy8lG4cGL3LdULSSOE2/gMx2WUWVGZiQMmWsbg
	SihUze6TPdNojUaDwlijo/xyE4WpSMh83rVdNE8PYgBo6DQGZRx8gj3Qredf7YiFWtrs
	6QSt6F20E2a3DO1kAoaFwV6Dn5FecEq+7PwQVgBNYsA34+r9luG1/FIuxlwzR+7vDQOu
	lw3R7JwBliqJZUuCjedTILx3gHrCegvDFj3J4h4fjSxK6E4q07DJ0dEJHfeVS/jGnH3I
	jaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=9WijC83j3Gmbjta+WtdvrLBt4e82bsvffxS2/oXF0Mc=;
	b=oOMYmyO6cg8hw4BCpNmvibUs5l0Vq5MOMDLPcWdD1PUeJjN+i8S5jcNnmarSao3NF+
	GGLmyCd9qWM6ZWwjipCpw35kzI/FciXL7VUSZE5n+z/eA4PAWpuTYw3j1FSRFzJcO4Oe
	CtTICy+prFHyc48zrkcln0GBxbWc1zvyU/UwORSlvarjl2e4cip1+3SxusQ8PHL32xLs
	qr19Al+1YEzZPUgfyuBkhCEhxyELUnDVwz6kbEowPhMUzO2V93WYqye3MeMyZQ+e4QMv
	GjYMn3Ue+T+eh7e9uqwLeJG6A0+aiKpLwKV+bqnI4Pu381OgmdumuaMh7ysGikhn4o0D
	yn4A==
X-Gm-Message-State: AA+aEWZtBaEgtnupohPKqDz7NtbvBjMgQlLTsNp/1Y7HpRKSt658tThZ
	gXu5qFsxn2wY2T5slUDTEE6X4sz4
X-Google-Smtp-Source: AFSGD/VQo2PS/lcQ6wmfii1UZsV/wGH/tg4b9Qr63zDUziQyiJS4cPSWamzEqyS/EzYktI47Kl+WoA==
X-Received: by 2002:a02:8c4a:: with SMTP id j10mr19119164jal.129.1543300766299;
	Mon, 26 Nov 2018 22:39:26 -0800 (PST)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	n26sm848261iob.73.2018.11.26.22.39.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Nov 2018 22:39:25 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <53059dca-e9e9-e827-3ea3-a0d159825652@gmail.com>
Date: Tue, 27 Nov 2018 01:39:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Bitbake Recipe Failing
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
X-List-Received-Date: Tue, 27 Nov 2018 06:39:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings All,

I am wondering how to forget about package QA in the best way possible just to get this basic hello world test package to build in a
new layer I created:
SUMMARY = "Simple Hello World Application"
DESCRIPTION = "A test application to demonstrate how to create a recipe \
               by directly compiling C files with BitBake."

SECTION = "examples"
PRIORITY = "optional"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "\
   file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://hello-1.0.tgz"

S = "${WORKDIR}"

do_compile() {
    ${CC} -c helloprint.c
    ${CC} -c hello.c
    ${CC} -o hello hello.o helloprint.o
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 hello ${D}${bindir}
}

This the errors when I run it with bitbake -b recipe name in the layer's folder:

ERROR: hello-1.0-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '/home/nick/poky/build/tmp/work/i586-poky-linux/hello/1.0-r0/packages-split/hello/usr/bin/hello' [ldflags]
WARNING: hello-1.0-r0 do_package_qa: QA Issue: hello rdepends on glibc, but it isn't a build dependency, missing glibc in DEPENDS or PACKAGECONFIG? [build-deps]
ERROR: hello-1.0-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.
ERROR: hello-1.0-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/nick/poky/build/tmp/work/i586-poky-linux/hello/1.0-r0/temp/log.do_package_qa.29042
ERROR: Task (/home/nick/poky/build/layer/hello_1.0.bb:do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 13 tasks of which 7 didn't need to be rerun and 1 failed.


Huge Thanks,

Nick

