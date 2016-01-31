Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A8FE00B9D; Sun, 31 Jan 2016 09:41:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 761ADE00B66
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 09:41:47 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id f81so134426877iof.0
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 09:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=7tkp6wzH5HjvUW9/EDxKTLtlKFSF5VIcDZZoTEPlvOg=;
	b=aIHjuJOUEsPJTwBJ5Ik5Bdxcp1PC+K7c9uxw4c0P4uy9uNpzGuuJbhH4VdUhQX5M1s
	H02wQp8Y7N+Ml3C5XsqiMumsB6/eQARUWUGzOmJHtL/5fRn5OpU7BlwdBigxhyZ8+Wuo
	Gw533w+MN/BxCZQwfIcz9IdPuNylCusk46x5ch9NVhWXimSh6vpoSKE+bFSR8HadE119
	f1GRzn9vDvhz2l1BFfpQbZPQ5s9be72dGZY1d4uset7k0nj0bQ5dxxbdtGkStiQAgAFs
	aAZco7m48Q/m+GgyBHU4ROz8kg2KIM+qiqdXVWq6tBk+8oIzu4F+9lukgeb783Q/XeIc
	x18w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=7tkp6wzH5HjvUW9/EDxKTLtlKFSF5VIcDZZoTEPlvOg=;
	b=NYQj44jq3AXfntN20zDX9AjtN6QAeiCu4VWsfQpJ69PQ+gZ4xsI4oGCKGMC58caFul
	CqPaGcj+5eWGppqSmPSf+23ftgcnUPfjEQf6d8ulRvEiG3pOrhJZvL9s+plooPfAEnJY
	rlPjOdrQ9bDdQR+e8apQ5pfvLovv+JKSBg43GicOT4m90622AwqNeT1Tls0VX5WLqfyS
	jegHQ5jlpOLXiwVgCqw2NKZm/hU9aDtKk2lUbyQcg4nj34L0QrDwyT0Jzbbr7perWzuA
	6ftiTQuNI14HILQkvb/sQKhqIlXZKYCHxQ/PbvibJ63qI7hNsrUH/xdmTpYWprv6XsB+
	CCMA==
X-Gm-Message-State: AG10YOSavfih70oiF0fiBypchdFjqlLHOpQwgnyW5VxLay4hPGxuF/gj9mMh9dIOZHxcgm6L9WhvzIIZZARukA==
X-Received: by 10.107.9.211 with SMTP id 80mr12824375ioj.112.1454262107172;
	Sun, 31 Jan 2016 09:41:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Sun, 31 Jan 2016 09:41:17 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 31 Jan 2016 09:41:17 -0800
Message-ID: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
To: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Glibc 2.24 _might_ require minimum kernel version 3.2
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
X-List-Received-Date: Sun, 31 Jan 2016 17:41:52 -0000
Content-Type: text/plain; charset=UTF-8

Hi

This is FYI, as I have sent a RFT for glibc 2.24, there might be another change
coming which is under discussion on glibc mailing lists which is on
supported minimum
kernel version bump to 3.2 since 2.6.32 will be EOLed this summer [1]

If anyone is planning on using upcoming yocto/OE release and sticking
to kernels older than  3.2 then please plan for upgrading your kernel.

Thanks
-Khem

[1] - https://sourceware.org/ml/libc-alpha/2016-01/msg00885.html

