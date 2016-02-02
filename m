Return-Path: <kumarshubham365@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A114E00B66; Tue,  2 Feb 2016 05:14:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumarshubham365[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C49E00AD8
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 05:14:09 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id o11so146649676qge.2
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 05:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nL8GVWOghiR55kgJR22XeUgDcLn2Du83Pp/EM5GE12I=;
	b=y5d4JhZNvQnNsLnsI6zMkAlReiQGIrqvOTQNX6sBYlD/9tZ1fW5CaV5EYxJK99ILSj
	KjHiDp7EVVf+DcVwNlwn/snfiIKkJCc8PdF7vKrXl9MNyWWe8kH/4Qj2H5xME99U7d47
	QzIB//AFoje9kaW/SB5VQsKZgPemPAoeL7/WScdbec5MZvQrjzQOYYxMVK+pBqkVHhmR
	H/2KwwS6qr8M66QqFSk7pZjrDRs9fs3HFBme7EhkB1u6GP9LibOCzLNY13vsEQXkvMFE
	BFXZjaptK3i64FeXWq2OIR+a+RpVPOWHRrmW9r+7g3qscacO4vJm37kGTvgsud5Pjfsh
	AlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=nL8GVWOghiR55kgJR22XeUgDcLn2Du83Pp/EM5GE12I=;
	b=WAkTd4qJk0i3y/AA3WuDkSsSXny0nPse/fNL5eAx0tWqM2fYH4eiTrdMbE7dyTlPEd
	H1MNeDWcSs4j+MQJNYCo8z6jkBCHtBN7IIdY2N45J9LvX8TBoIhyKjr6DgnzOhWYSKr7
	eeOAoCoTmNuuBaIXfdnC+pTtTi3wa+3FnQ2evTuWFRYx1k8AD3s4Tvl5OK5lQa+9McjV
	qe8nUJEZsycI5Gmp7T1mccDOefDXLIVc1QEJf56iZU+TxrHhllZXWS2spaaJUBoYeuX9
	ZKMkURh4/X8DuMgGiZN2TKZRj5IWFdRlKUUp3qd+P/UIdgt61jfsEGI6f3fbP25/X9Ze
	EATA==
X-Gm-Message-State: AG10YOQeMgJAJMpBZiarTOUYhvuZUL+HwtEsFHuj1CYuMzPcMYFIMCK9B08+yeK9pKy5V5NVu7DSR2BzP9mMTw==
MIME-Version: 1.0
X-Received: by 10.141.1.2 with SMTP id c2mr10239302qhd.32.1454418849093; Tue,
	02 Feb 2016 05:14:09 -0800 (PST)
Received: by 10.140.16.65 with HTTP; Tue, 2 Feb 2016 05:14:09 -0800 (PST)
Date: Tue, 2 Feb 2016 18:44:09 +0530
Message-ID: <CAG3Vg4h3S+ANL3dx522vT0RLuvSxty75huamSZx3MSaeFrkK2g@mail.gmail.com>
From: Shubham Kumar <kumarshubham365@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 10 Feb 2016 07:08:11 -0800
Subject: [meta-intel]: Grub file not created after building the image with bitbake -k linux-yocto
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
X-List-Received-Date: Tue, 02 Feb 2016 13:14:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm new to Yocto build environment . I have been following the
documentations to start building my own image with various
customizations. So, my below question may seem very basic to you, for
which I apologize in advance :).

I am working on Intel Galileo Gen2
I cloned the Jethro layer in my local repository, and I also cloned
"meta-intel" layer. First I gave a try on core-image-minimal using wic
tool. The generated image contained the required grub file and The
hardware was successfully able to boot with this image.

After all this, I tried to generate the full Linux image using
"bitbake -k linux-yocto". I added a custom layer just for the purpose
of learning, and also included a few packages to be built like
strace,,tools-sdk,tools-debug,etc. I followed the Yocto documentation
for all this.

It took very less time since the no. of tasks that needed to be run
were comparatively very less as those during core-image-minimal.I did
all this in a different build directory from the one I used for
core-image-minimal. The images were then created in
tmp/deploy/images/intel-quark.

But this folder didn't contain any Grub file. Why was this grub file
not created during this image creation? Did I miss anything in the
steps followed??
Waiting for your responses .

Thanks,
Shubham_K

