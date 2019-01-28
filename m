Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE36E00CE2; Mon, 28 Jan 2019 10:14:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70990E006F1
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 10:14:29 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id s8so14237497iob.13
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 10:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YOqpVXW6dLipUa9GjDwTLCGnKMR8PXX/+4e2GGKEfYQ=;
	b=J1en3fIQY6+db4nj2gezafs0zs1z4qBBi5xWA60Pr67enI7ybCgFoLVzlx3JM1x8E4
	F5RV3J7E0Tj+LI8YpYgpymPCUh3ILFMYhABeMA90dCObf80F2jedht8jpR41mHLOp0yg
	quhFyeFa7IdIXq0jpBGkh3OV5OqTB8FenFSYNGY7NNnKZ55H7ATx2pmrGMm1P2YD2BQn
	opb/1gkA6z2ig9NzCKcLJ0jyTgzYUKZ/clwcQ95/qtnghwztL0+GORa7jxA5gUl4upv8
	/ajGd9xdx4xpvAzYKczAHmLNv6ccnhX6Ec7JbEHvg5OW0srPyrK5r19JYpwdVudb0a5X
	baRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YOqpVXW6dLipUa9GjDwTLCGnKMR8PXX/+4e2GGKEfYQ=;
	b=HLNJoX9HMagOA8++vzhhSq4g/zCX8Ebd8td53imMsRYKzV16Gy1eg3YZ76EIrgm8ge
	fTU2rau08OMI/tdGY/stvZlGd1f3xv8Imr1CNq7gg8UQ47Q5oLc3+iOtMfIQR1uHhdTL
	Vz0q7bABnR6z8OeN0NPz56Wwz1zuwe6EKyh0mxucAzAIF2Js1UHoaejXWpa0eoXSiXix
	RDyqwuZucmh5dHFqx94Xu3MQ1Ixfk8MN/3lhmpgUyBaEMN/mi1YiNGBXIJgRZv+Acm0I
	yMin9J7Yoo12QjTIeYOdJztKCVfFeeQnbXFqNJA6g3AG8mE1CsQ4Yo/KjutRPx3T2eqm
	QAFw==
X-Gm-Message-State: AHQUAuZCk0BYUks6PIxBlc94Y0SdTmLcycsvAc4mt2Ivufu1M6A8ooIF
	OscDf6BwIHQ4qVDWNBdOWCT47N8mgutBk8WhWCbxRkM9
X-Google-Smtp-Source: AHgI3IYNKs9Yzp00KgDT8Vm3MpyzeW32QSCvELPYw1eYH0zdU2eoTQqj4skr1sfuacKKsMFsTwG0OnfDp3DDry8/2ME=
X-Received: by 2002:a6b:14c6:: with SMTP id 189mr13192212iou.179.1548699268849;
	Mon, 28 Jan 2019 10:14:28 -0800 (PST)
MIME-Version: 1.0
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 28 Jan 2019 10:14:17 -0800
Message-ID: <CAGMdoFm=08uPEFYp+wXOvzzfwbZHPom1pU3ASDmDtVQ9vGsXvg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SRC URI checksums
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
X-List-Received-Date: Mon, 28 Jan 2019 18:14:39 -0000
Content-Type: text/plain; charset="UTF-8"

I have a recipe that has a SRC_URI retrieving from a mercurial repo:
SRC_URI = "hg://server/project;module=name;rev=tip"
SRC_URI[md5sum] = "xxx"
SRC_URI[sha256sum] = "yyy"

I changed the SRC_URL to retreive from a specific revision instead of tip:
SRC_URI = "hg://server/project;module=name;rev=1234567890"

I went ahead and did a bitbake, expecting it to complain about the
SRC_URI checksums not matching, and I would go ahead and update the
checksums from the error output.

But it succeeded, building with the correct revision.  I thought the
SRC_URI checksums had to be updated when the SRC_URI changes?

Ed

