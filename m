Return-Path: <lbxlbxlbxlbxlbx@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E589E00CAB; Tue, 11 Dec 2018 23:01:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_NOVOWEL,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.5 FROM_LOCAL_NOVOWEL From: localpart has series of non-vowel
	letters
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lbxlbxlbxlbxlbx[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA92E00CA3
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 23:01:06 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id w12so10151316qkb.9
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 23:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VvBUNVNTSXPMzGK7z3mnzFw6AUH88ttDh+vFvQcKxXI=;
	b=uguBJvILqogR//e7w0R5hZ2c0XHSXfzejGWtUO3X5yhSl3u6SeieD2H/8xolH44S5U
	otcX0ZeUno40XjjYbvzzw405FIcyHJjju9oT+69AKsHPvyd/+pruCltWlCa2f2hJXmfK
	0YgwApNGjyoLhIgaeTqHr04gketjQH9uaucIFlJO48rJUC+/PwIr5tvTfeCWxE94PtgC
	sg5uAnsCTY56uuyoKWrLtwQrhLgz9DY18OS4piTVgZdy7J8jG7cLpkKnMKQfAB4G930S
	q043ElMAotHTe9Xzm8AHIXyM6jFlyiC9HgoPi8rzQwRlKIWc/LfrNUfnmC/c2sSUgYAZ
	Po6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VvBUNVNTSXPMzGK7z3mnzFw6AUH88ttDh+vFvQcKxXI=;
	b=oTkeudKUqqTUFNHQrUzFrK8uAtxf7svX4NROT7p2MztAMRBjDqNV5IOWu9DpbW5eu5
	+cn2QckJneAy39jmO0x8n6tknLQH04fA+A6EFC7px22oZnwmBsQU3VgOpy6qNT+19RV4
	frWi5t4PfpT8IjBE6yRg+UXeEEGHrTOgTLxy2P27wT3nKtzDOOKXjTkJPUL4Ixkc8oc9
	orVoJBBd36qnl1su9feSF9Sr7A+IVNcWqEStm2jIk7uSVH1owQiEl+AD7VSrn2wKnZkr
	PegUhSx2rjz3loggb22Vsg+HTL7JfKe0JY25OP/iaFLKMR+Sx0yf6mHd8d3frbCcyUq7
	/zwA==
X-Gm-Message-State: AA+aEWaMJZ3j+UAMHQgb+ixVbSEkJJhp3jd37WLxSnG2j1FlgjrrfnM1
	MSU5lmLsqrnX1ogP5kgImC9CFLyqcxSjbuV3Q2Vh6pyx
X-Google-Smtp-Source: AFSGD/Wn7LSiNDVV3ofxgMEq+PQym3Pkbceu+/qkxHDx2f9szTvXAbphGYdvYfHiMvWoU/FP2r+12XInTZUIz8n3IjY=
X-Received: by 2002:a37:6f45:: with SMTP id k66mr17649755qkc.313.1544598066224;
	Tue, 11 Dec 2018 23:01:06 -0800 (PST)
MIME-Version: 1.0
From: bx L <lbxlbxlbxlbxlbx@gmail.com>
Date: Wed, 12 Dec 2018 15:00:54 +0800
Message-ID: <CAJjZs0nTX5jTbv6Kijx+ZGuyB6AgCuifpBCkYzOPuDFQYx0w3A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 11 Dec 2018 23:09:54 -0800
Subject: Can I use busybox-init on raspberrypi3?
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
X-List-Received-Date: Wed, 12 Dec 2018 07:01:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
    I see that poky-tiny use busybox as the init system, and I'm
trying to use busybox-init (instead of sysvinit) on my raspberrypi3.
   I Add the following code to my local.conf:
   VIRTUAL-RUNTIME_init_manager = "busybox"
   VIRTUAL-RUNTIME_initscripts = "initscripts"
   DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
   However, my raspberrypi3 can never boot and only shows black screen
without any message.
   Do you have any ideas? Thanks!

