Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C4BFE00D8F; Tue, 19 Dec 2017 05:25:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2207E00D86
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 05:25:37 -0800 (PST)
Received: by mail-ot0-f175.google.com with SMTP id e74so16714975ote.7
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 05:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=jIFfVptzfQpUPk/wPYIIJdi7Kyn/ZWZ6EMP1RO2Gji8=;
	b=U1f2wR3XOjdq/PsdGgs7NF286sfOZO3a6nps5FW8yKqOcCx+4Rixc0kbfkZXZPtS4N
	lcv9Joi49UM884rX/GOQRGAEaELWn/ZLKxz0kq3ZknF/Xcpk/WC+At9IhdSHL2Wnq5Vv
	KuX2vLbDmjCwX8YGyjD3ZeJ5YYXxTc5Q+gZOFC5ZwHRVLAkErlq7ZSLXrTUL/MNRsOk2
	IIBQZ2qNU1+NGE6CPxsiKFvAjU1pc0NVn/GrtGkWsv6HazbXu6c37IvSfqD+eZ0GiKMe
	QO5/O6FLtO2nkUfBOeb7vB44QoEeDt29D7WISdukCfN6PH4k7E1SwwQACONxAcFRq2Hs
	tokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jIFfVptzfQpUPk/wPYIIJdi7Kyn/ZWZ6EMP1RO2Gji8=;
	b=HCcH6d6IvsaQ3tseLUbXeeimyfSOgl5k3a4bhqC5EHxcgrxOwYFefwT/RrbyCgdF0j
	yoJD815vzDvwbBsLLWyMBlwLyxn6Zk0MTZJTwi9sWJEZ+IdUuVS0yqiibUuUfv7MSllD
	a7St6l+swXTUdw6kWeyAjVvEjCqxCyIXHwUnylrPRkj5f5eHS8VPkl0pFWanUGMv6ZbE
	bTtDX70VZQQeOvjC+NXvl14i2cJ4kpCBvlnXtqWtdDI32fF+Hyfya5d1qxNepcj1Rp+l
	QRS4/6CqcSehsfq5Jro/GHtD36kND2ztvdf70f+Ce5VHGExZTp/vDTif2QzZ2l3TyYkJ
	ASvw==
X-Gm-Message-State: AKGB3mKqYnAH9VY7CV6qtvv8/yHyOqj8oc+trSR33Zm0HVq5rj3FPSzi
	556jwVrcDEHfpAHTdXDuPDNABHLiMTrurjwflw33DHiu
X-Google-Smtp-Source: ACJfBouWiZfMHpmHvkHdEErbfESXiY5iGgaVDJ2E8p7Jd7mxExt3usYLoCiFHu8LOzErhxlD+312Ur6my6WDUaxT5HU=
X-Received: by 10.157.16.56 with SMTP id h53mr2446723ote.271.1513689936740;
	Tue, 19 Dec 2017 05:25:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Tue, 19 Dec 2017 05:25:36 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 19 Dec 2017 14:25:36 +0100
Message-ID: <CAOT_U5ZFF3e5nrRRa_zA0SYH5YvFQevTz5LpLzqe_1dfWP52hQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Debugging sstate-cache
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
X-List-Received-Date: Tue, 19 Dec 2017 13:25:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
we have a build server set that is used by multiple
people all working on the same yocto project each
having a clone in their working dir.

The core packages (those coming from meta-openembedded)
 are same of every image we build.

We all share a sstate-cache and a downloads cache.
The download cache works as expected, I only notice
new things being fetched when there were actual changes in
the recipes.

However, all other steps (do_configure, do_compile, do_package)
seem to be executed arbitrarily without a specific order or cause.
Lot of things are reused from the sstate-cache, some get redone
on random, and a few are always build from the ground.

I have synced with everyone and confirmed that we're not stepping
on each others toes by cleaning package caches.

Is there a way to see on what grounds does bitbake chooses
to repeat the steps?

Be Well,
Alan

