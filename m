Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5771FE00D86; Sat, 19 Oct 2019 08:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C9BE0097D
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 08:10:56 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id i16so8955279wmd.3
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 08:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=NVIl7KlAhmmvrqKzHnkeJ+LkUnW4kkR57vdsjZsAENQ=;
	b=QonXQL86/4t0Z7nwxA8PQh0W98vk46L54krWTnKYqeMPv1oPLoqoH0uD8IzqM0ZiSe
	mYOQVtJjVtCMsLrdetsUhCb5l5knZpDhJtJLpTy2kXgp87nYc8rKKPmLun93leLEVBM6
	otbLUbT+/oOm8GT2tqzNnSAD11HnErOSXeKu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=NVIl7KlAhmmvrqKzHnkeJ+LkUnW4kkR57vdsjZsAENQ=;
	b=LDPU/mE9ZVnfkIxSI7CvA2GIFi3Wq3YKrOmSpVK8tX7N4w5jf9jkIaqVHnO1TaSuqN
	mYug8ZbPKAAJwqrAlsjzek9VmC29jwPCjcM9uAKIqDOv0MbVE4R4oP+7+j73kcVDOBp4
	EeLmlz2tCqfWyxvbuHo4xWXvcMvL0ksVDKYJPC5M38t47yVUdz9xtmPwMfwTHYovV8v8
	tL8FabRgzMNCL+jtkhSg0S0AmfPfpRj1pn83U8DCvXxcR6zkK5vVgtoLgkQGKMlnkti/
	sNhyxxeBdVwIYkW0l/RdD8QgYoB6lAobFlHwpMp32Mi2WhpzTt7G4YF4qm4KhIvc7VLf
	MKQQ==
X-Gm-Message-State: APjAAAUGYEJPQhSQDY9iN2DFCohRKY9nGA8NmZVKtYF6cZ9rmw4FMsbX
	Ft6+NrdHOAZhgaKMHrctsmCmVg==
X-Google-Smtp-Source: APXvYqwiUMBLgeBVrxJZdkUksF4i2XPj1Tg49yFWU/t9Gvi9vDa5TW/k3lmrw2QakbQy1U5juCVpsg==
X-Received: by 2002:a1c:ac02:: with SMTP id v2mr11401529wme.85.1571497855887; 
	Sat, 19 Oct 2019 08:10:55 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id l7sm8743458wrv.77.2019.10.19.08.10.54
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 19 Oct 2019 08:10:55 -0700 (PDT)
Message-ID: <e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Abhi Arora <abhiarora4@live.com>, Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Oct 2019 16:10:54 +0100
In-Reply-To: <MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	, <CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	,<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
	<MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sat, 19 Oct 2019 15:10:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2019-10-19 at 14:55 +0000, Abhi Arora wrote:
> Thanks your for the suggestion. 
> 
> From where I can find out what modules and packages python3-misc
> downloads and installs? I am new to yocto and Don't know where to
> look for. I tried grep but didn't help me.

python3-misc is a package. You can look at its dependencies to see what
it adds to the image.

> And how about optimization using pyc file? Is it doable?

Start simple. If you have python3-misc installed its using a lot of
space and is the sensible place to start with trimming things down.

Optimising to just pyc files is an optimisation further than most
people find they need and will be much harder to do.

Cheers,

Richard




