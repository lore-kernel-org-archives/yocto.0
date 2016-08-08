Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98906E00DDE; Mon,  8 Aug 2016 10:16:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C48E00DC9
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 10:16:13 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id 4so245789376oih.2
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 10:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=A75fvGsrtDMyGSbaeKSrOrzWneldvcImFMQCHqqRIHU=;
	b=qVqsDMUw2+4+CbxRNhrTCGpOYnNqCh9YftcCRvCu3v5+/FqsA1S3xcqNregTLqlL9S
	22HIqHffN8hdQY+9dbYOm6n5vF0oTOvRfJhcTDg/iS3oWr05wMUHFOtnz62PqSoaJLej
	EJkuQi8tvfbHhwppC6Dges0GSFqpOXyfGzAoKSeRL7aQ7xfqYaLiiMqrcx4br0DiMtxV
	wk43XQO2Osl61RUBB13F6537ImzXnB/vJYe3tm5AGzdeuOccK/bNRrbDUDAE4mm1u2wz
	lffwQ01Lc8bgr434tUwyisydrYpsXwAnBWQXoUP2rHK6E1bkYxM6whpzq60Mz4SyJHiv
	WJAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A75fvGsrtDMyGSbaeKSrOrzWneldvcImFMQCHqqRIHU=;
	b=XsWod3pbGBHmbBtd3sCCLya0M1Xcci88gbEmmb85YDJN0DN2C9qcWZlP9bdeB3d3pc
	vcRN1SagaKhmAjAU3KHxBmUc14BLbcc3N6NN/StrmON112IPkJMe9Q+7qJenlNU8Cix9
	qb+IY6Ag46VtruzFtl1bIqB4RaNiPv6sLPuhsBbvGL//ZA10fN3ovdtPrUXkMiZy0rHA
	1tTUasq9GyUZir/U/pT54FQI1TYXNCDX4x6WuQrSs4TcDV9Qmyw6S/slj2c4J+nQoZ3a
	otV5ulLWi9ytC7D5DgLg2VczKiWu1ku9Mq3YBnpXQCYXWEsPhANErOc7ZyjvodvCAPZZ
	bb1w==
X-Gm-Message-State: AEkoouuabFKXPTH4qbE/B5x57WOk98Ox/sPiRKSXS1X8kQB8Fw2e4vaQuO4znmbVidQHuGHr75v5l6zVy0lhcg==
X-Received: by 10.202.237.65 with SMTP id l62mr8570666oih.21.1470676572856;
	Mon, 08 Aug 2016 10:16:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.137 with HTTP; Mon, 8 Aug 2016 10:15:42 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 8 Aug 2016 13:15:42 -0400
Message-ID: <CAF_dkJBdaF9JtNmKO=s1Ji61kc1H2a7fhH8wo7LzoSjbB8_nsQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: What is the simplest way to test a new kernel configuration in a Yocto Project?
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
X-List-Received-Date: Mon, 08 Aug 2016 17:16:15 -0000
Content-Type: text/plain; charset=UTF-8

Back story:
I have an Intel Edison board running some form of a Yocto distibution
(from ubilinux-edison-150309.tar.gz).  I want to change the kernel
configuration.  Following Intel's documention, I have downloaded the
Yocto build for this board and have seperately learned that I can run:

$ bitbake virtual/kernel -c menuconfig
# enable some other kernel modules
$ bitbake virtual/kernel -c compile -f
$ bitbake edison-image u-boot

(Yes, this could probably be optimized a bit... but at the moment I
just want to try out my tweaked kernel).

So, how would I try out my tweaked kernel?

I see in tmp/deploy/ipk/edison a set of .ipk files that were just
assembled, including the suggestively usefully named
kernel-image-3.10.98-poky-edison+_1.0-r2_edison.ipk file, but also the
confusingly named kernel-dev_1.0-r2_edison.ipk and
kernel-modules_1.0-r2_edison.ipk files along with 23 files of the form
kernel-module-*.ipk.

I just want to try the new kernel and the new modules compiled with
that kernel.  How might I do that?  I feel like I am going down a path
of copy the .ipk files over to the device (much as I would copy .deb
files over) and run "sudo ipkg -i *.ipk".

But I wonder if I might be sorry just doing that.  So I figured I'd
ask around first.

Any thoughts?

--wpd

