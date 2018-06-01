Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEF85E00C99; Fri,  1 Jun 2018 09:34:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEFE4E00843
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 09:34:24 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id m11-v6so29950201otf.3
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 09:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=ZuHFKDAMjysf9LknEn8lAT3l/pETHEB90A/W0gkfeMA=;
	b=r7jSxf08SjaTzS+qlNjV0eE2U9ByXdq8/V/AqulLLJJe9HhP+mrTF7MLuvutt8NpFT
	ZKmrhhSOmFuTqtehQhQBMJmCZ/dFq9SZyzBd+CvFUx6L4bTImd0U1ejF85RRUF3NT5Gy
	oaV6CNY9imJHB5/GRB+YVfkxyxn1qRM8vsmPNENDjZQPZuaaLTwb7C5Q+rwmOtW2IgAV
	1mF3wjGOBejfFEyayXkzR//vR9RpzXNjDbTqOjkWSut6V/d/PF6O4KrayV9jlZhZ5h7F
	0kmjGssnrxbML2AayiJcj92EVZP/j3Q/5r3q4vj06ZP2TfOZkO9dtlaxi7cyAHaeckAk
	GWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=ZuHFKDAMjysf9LknEn8lAT3l/pETHEB90A/W0gkfeMA=;
	b=Rq7sJSBe4BVV4B0oq5Y7k0hMDvIDSOWzCvMLnPVc+U789tDndVBFTy/2TjviCA6/r4
	uZksc1eQyIfDry1Hkloo3EACtpgDHFAxIuQBWY/j+mIfQvlY4CRxTe664PmT8n7tI4/1
	3FE2sv0bzsjUzS8EfzQPSY1L38ToqcxyUhXRdU8UfgpAyEre2vvhfk+kHxqwNVNJ2Zkf
	p21BWxIETHZ7RUUOVlvZ0AszdUVsCgeXeTZbQo2s4G9qqdDTxNdNRHZ00bDrrYbbuzPr
	INwZa9JLGenAl6UuVzpxTTw8mTP3fzy4drjVyLYYNE6nbW9HHVOVUUlIwX9sV6xGo0Sp
	n8JA==
X-Gm-Message-State: ALKqPwf/vqCIkJ/5B1fpMT9bRVQ9TsjzmZj04vyJ2Z4OkRwaMY9eRCUq
	JCFq7Thr7UqSjl0P9aNjtaMHzB1GRilD0olf9h50nYzF
X-Google-Smtp-Source: ADUXVKL4cYUk0w2FtFF4OFFpFhWadzg0MUqRB9Y7SJNG3Fo6Hy1FK+VjeGbkX4OKysS7Hczahw7Dy9P9qFtWW++I3e8=
X-Received: by 2002:a9d:1f23:: with SMTP id
	x32-v6mr3722136otd.201.1527870863729; 
	Fri, 01 Jun 2018 09:34:23 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 09:34:03 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Fri, 1 Jun 2018 11:34:03 -0500
X-Google-Sender-Auth: 4sjyti-uG-wIqyI-D3jks6OlDkg
Message-ID: <CANge7vU376tuKnCGRVAU6i98a-V6nqxN7q8oy=gM0wTjfdn9fQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security] buck-security not found in STAGING_BINDIR_NATIVE
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
X-List-Received-Date: Fri, 01 Jun 2018 16:34:26 -0000
Content-Type: text/plain; charset="UTF-8"

I'm working with the rocko branch of the meta-security layer [1], with the
latest poky rocko branch HEAD on an Ubuntu 17.10 machine (technically an
"untested" distro but otherwise fine with Rocko the past).

From my understanding, all that should be required to run the buck-security
after an image build is adding INHERIT += "check_security" to local.conf. I see
that check_security.bbclass [2] already takes care of appending itself to
EXTRA_IMAGEDEPENDS.

However, when building an image (e.g. core-image-minimal),
check_security.bbclass is failing to find buck-security in
${STAGING_BINDIR_NATIVE}, as indicated by the following error message:

${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.check_security.24976:
  112: ${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.check_security.24976:
     ${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/buck-security:
not found

The above makes it clear what ${STAGING_BINDIR_NATIVE} expands to;
buck-security is indeed not present in this location.

My logs indicate that when buck-security-native recipe's do_install() is
executed [3], ${D} and ${bindir} are defined as follows:

D: ${TMPDIR}/work/x86_64-linux/buck-security-native/0.7-r0/image
bindir: ${TMPDIR}/work/x86_64-linux/buck-security-native/0.7-r0/recipe-sysroot-native/usr/bin

buck-security also appears to be present in the  following location:
${TMPDIR}/sysroots-components/x86_64/buck-security-native/usr/bin/buck-security


After going through the manuals, I'm still a little unclear about when exactly
buck-security-native's files should be copied or linked into the image's
respective sysroot (presumably, during do_populate_sysroot?), and where the
breakdown is happening here.

If anyone else is able to reproduce this or provide some assistance in
resolving or just debugging it, I'd greatly appreciate it.

Thank you,
Jon Szymaniak

Links:
[1] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/
[2] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/tree/classes/check_security.bbclass
[3] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/tree/recipes-security/buck-security/buck-security_0.7.bb#n51

