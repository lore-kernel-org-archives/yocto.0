Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96171E0084A; Mon, 26 Jun 2017 16:26:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5867FE00524
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:26:38 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id b184so11033421wme.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 16:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CCbn2XnQC3DmEPZxl+3FIuYx4ujyyivyrAqpsytrQAo=;
	b=UReD5UYUrk65VZhEi7dAJ/JuHckarPU6AcY/tFck+FVPjeoBdZ1So53jipzpsYSPS8
	lg4vtoBvUKp7E/Kf4z2sPeMVcdazWT/i0YChtGUbjbRmM62IsO2bj2tJXBYDP3sBx7Yt
	69Epye3LE4ElGg5cdJ7INTaoqkEyBM5k2DKAnkI4e7Rnl6cqPvSHNfoEh6vIJPZQYp26
	20dnNXJ5glNeKtx68dXZKrM2XgPxXY7asWyoOVZNnog6HVSxLZFKiWxHQB53W2AfQGRr
	YrXL0Y9g+NYUC5M1tOhVIkTFSo4sklY0XNxtEgkFMfIxN27KIHEzyuYyidNsBvzK9Qy4
	p8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CCbn2XnQC3DmEPZxl+3FIuYx4ujyyivyrAqpsytrQAo=;
	b=qGe0IiY6X8UfCH8aIgM5qsQAdIMItznwcsfa8bpbbz30fv0Ga6NGF3rJlX620lA6IA
	4Xa4jdk8dhwXTAXnbEW3gltmdJgQ0b4AeUJpE4xwD4kl5zUPYAikGwmk5Qkj5h7pPvpl
	5jNdAQImobi0XTubiy9KYgHOmzumI/aBvfCtsJ861NZhUxU2OJlHmjREHhIxSbrsy7aK
	FLxD/AWaZQf+CtaBFNLFhmepKHwAx3mbXTmEeRmDNPcNYSPO+7SBaLei03A4ILUiEyrB
	mylAqfxCQHXKB7ejnqq6Kpz0+LoXXX483h4gVy+MD0ttAqnMGt7/ZV9fhaTYLmGxlKsr
	iIbQ==
X-Gm-Message-State: AKS2vOxeDqAxMhPcopC7hrUiw2mr/FEYX40Ig9WxVV+UdcAC5m2+hNja
	EFmAa7AEGLerSEbMTRc3SsizoKHqcg==
X-Received: by 10.80.137.45 with SMTP id e42mr1641792ede.67.1498519597410;
	Mon, 26 Jun 2017 16:26:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Mon, 26 Jun 2017 16:26:06 -0700 (PDT)
In-Reply-To: <f1a19479-9b91-cf94-b19c-3d3cd59480e1@gmail.com>
References: <f1a19479-9b91-cf94-b19c-3d3cd59480e1@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Jun 2017 16:26:06 -0700
Message-ID: <CAMKF1sqRoiY2w65NHkTDBpqjrKMU=ZqC+8_fZ+1SXOz_RQwF3w@mail.gmail.com>
To: Jimi Damon <jdamon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How can I add a library to my SDK
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
X-List-Received-Date: Mon, 26 Jun 2017 23:26:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 26, 2017 at 12:21 PM, Jimi Damon <jdamon@gmail.com> wrote:
> TOOLCHAIN_HOST_TASK_append = " zeromq"

you need to add the package meant for sdk host.

TOOLCHAIN_HOST_TASK_append = " nativesdk-zeromq"

also make sure that zeromq recipe has BBCLASSEXTEND   for nativesdk
if not you might have to fix that first.

