Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B5E4E00CC9; Mon, 15 Apr 2019 09:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD8BE00C37
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 09:12:27 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id s2so9790938vsi.5
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 09:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Wb5z90xI231p+8Zmu87JlpiyXsWoBSliCrWt3QdN0rs=;
	b=L46+uii3nL4IvIuJkZXEfQItggGvcbmckrxnNGY7NdrJd5aIunYSAp6PPvxjWWcCcU
	cVj2WyLvd3BBt0BLR0pLvynK1QKXs2fxeOoODtgcJvEr0MthRj5gbsnLDd8y3YeV2YF+
	FmRd5vINMas8DDQ+1sm0CnwX1xEw43FbOGtBUgupJNuewF+fYP5W344BhqEWE67HMWx6
	eC1rYgY+GlnE36YxCd54YMRgpaJb1+d8EqpFYdJ9zPFQvm1CgNvsl4HuTtuK0QrncatM
	1LozfPNZ0IU4qYtqxMdBG/PMiJk8AIPIw9f++g+S3GqFkc2qHo7Idfdy1/f1W65yxt7M
	hZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Wb5z90xI231p+8Zmu87JlpiyXsWoBSliCrWt3QdN0rs=;
	b=b3ld57bndmRv+mlpHY2RNZZ497e00/+FjcDUUuaBbP9cHUcEf4XX+Ng1QTgpWSqcpd
	veYQi8ICyzZLQmtXVeZ5HcnxIxYWXbyiOaPTlj1Fz+iczmTmW0buFCeIhYkKjhXM97BW
	KkAjPApaIPaxfx6yZn519p57SjS7NEGVFPHiXa9ZN12Idanumsqz3fDJeG63t7NjAjo+
	RvA4dynU0UNxeEOgwy2VWqLaN87eKdoDMmum6SRcjaQeibNeNkYPwBduqru01rIeKD7n
	ZmyGuBbu3yxPPrOeRXe5McbdvCopVuHdbPdisq6Li2AF1t3XclQoi4DCqGbZfwiEl5L3
	8WOg==
X-Gm-Message-State: APjAAAX7hdzPrKREkgzjNiFqFTviNhkxkFClfwUz5lZ7+Kz0n3py4WEt
	iVxJn2wzcR3+UxjuWS9h3PYKUttvobwJPui0+9ODfg==
X-Google-Smtp-Source: APXvYqwIv/Wcqt4hWnVT3N/QcAAFnImx/5s13UBMpJ/FwtPEBZCJXLUapw5y52KaoQGcYjBV0LZuF/vAbjco2kglNek=
X-Received: by 2002:a67:f505:: with SMTP id u5mr39743119vsn.159.1555344746472; 
	Mon, 15 Apr 2019 09:12:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Mon, 15 Apr 2019 09:12:26
	-0700 (PDT)
In-Reply-To: <CADB9fJF21h6c2yhAF0jtDHDf2ek1hyfk0mLuQ=zMrojQj4TjkA@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
	<ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
	<CADB9fJFY+MJsRPYgWzDxqH6LoxrDY9KVEbn92PrJ_KvXY=LPBg@mail.gmail.com>
	<bcc6b9e58a9148d3fa8d3d64732e6cbeba5ca88a.camel@linuxfoundation.org>
	<CADB9fJF21h6c2yhAF0jtDHDf2ek1hyfk0mLuQ=zMrojQj4TjkA@mail.gmail.com>
From: Eric Grunt <gruntblue@gmail.com>
Date: Mon, 15 Apr 2019 23:12:26 +0700
Message-ID: <CADB9fJG=naMkbJDsf4UFeSRSfG6eEV-qkf7gXjTdaSgyEs8ykA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Mon, 15 Apr 2019 16:12:27 -0000
Content-Type: text/plain; charset="UTF-8"

> squashfs-xz (by poky) works,
> squashfs_xz_ubi (custom type) also works

To clarify, squashfs_xz_ubi was named squashfs-xz-ubi before,
I renamed it in order to try to avoid using "-".

