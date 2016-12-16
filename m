Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 202F9E00E4A; Fri, 16 Dec 2016 09:04:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4FD6E00E44
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:04:55 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id i88so15085503pfk.2
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=hgckpyPP5Ry4f+0XSVF94976Q8pc98kstQ6XLnKYdgk=;
	b=JG7nFxjB7nuOPhcNX3l4X0hV2IjVlbnNUhflMZQAJ4gVag1gvrL8MrF9cmMMjVmoe8
	+N5CHroGq93VDjO2C0RMt+pUE2JxPLSiLh41ZrAn99MwNL8Mw+bB7kPmjgEfcMQgwOR3
	CcvJ2czl9HQiXssgJZSWGixD2haik5prVD0Ph+25wa/XPDza5Tz1j7d5UeycIHEa0Ioa
	L0lW8JO6J4ynOMMYugi7ihzBGzwecqWsROpwks7ss3bq8yWQhj+nuLSYK1HSkDkk7lWC
	kvWsDkHyo12IwJ9Q8fM+MXOQlNV4bQqI+4DUBCPiQxQdL5YCLE70ml3Z/ZRZx8M27SDK
	vjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=hgckpyPP5Ry4f+0XSVF94976Q8pc98kstQ6XLnKYdgk=;
	b=UB2x74OdYpdxWjhttrm9Gy+WB/knEsm3ighYmR9iHFZuztcWqMbFj2Vtd03vw64B0O
	eUprtnmHf6BtdrIrTe4IXl/1Kxs8xHt2duhDCnHfN6XQPrknvT7f99R6oVA+clvUkfCz
	V59kDPqORlezPMJNZOsrP5u+qYytWudoDRsdSFZo33VK6BnS0cYmNBkR3BgVPkoSZB2m
	vzFqCpu/aeFJt9V9PwgwOd3VLsmWYEQycRSHKaMoQyirSU12i+w08zZHIe40yI/9V02k
	N8mvVSAOi2x1lau0hOT4+oU7JrCUBVS0N0l1OBobHCUny1TfJp/+O7gPcaaRTf7O2Rsa
	8UFQ==
X-Gm-Message-State: AKaTC0291Nmm8ZG+vZjjEqVlKmGbzmnWPbi/n+D31I/R60dnaszbWY04A1ph98EXH1XURQ==
X-Received: by 10.84.136.164 with SMTP id 33mr8889302pll.148.1481907894968;
	Fri, 16 Dec 2016 09:04:54 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:8035:ba73:d6e2:ea72?
	([2601:646:8882:b8c:8035:ba73:d6e2:ea72])
	by smtp.gmail.com with ESMTPSA id
	o126sm13256062pga.34.2016.12.16.09.04.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Dec 2016 09:04:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAF3SDA5aT3hw-52qMVe+ZLgJ2ZSBv1MTPPdTru=u7aoPUgR7Ow@mail.gmail.com>
Date: Fri, 16 Dec 2016 09:04:53 -0800
Message-Id: <E47AA1F4-25C4-4B12-AC01-44F803A817B7@gmail.com>
References: <CAF3SDA5aT3hw-52qMVe+ZLgJ2ZSBv1MTPPdTru=u7aoPUgR7Ow@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: distutils break my shebang, what to do?
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
X-List-Received-Date: Fri, 16 Dec 2016 17:04:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


> On Dec 15, 2016, at 5:49 PM, Daniel. <danielhilst@gmail.com> wrote:
> 
> Hi,
> 
> I've been trying to install cxxtest to nativesdk. After done I went to
> run`cxxtestgen` and got a "bad interpreter" error from bash. I look at
> the script and there was "#! python" at first line.
> 
> I know that this is something that distutils does. I also know that
> SDK ships its own python interpreter. So what is the right way to
> approach this problem?

sed it out to right location when doing nativesdk build.

> 
> Regards,
> 
> -- 
> "Do or do not. There is no try"
>  Yoda Master
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


