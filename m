Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5884CE00E65; Mon, 29 Jan 2018 05:58:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5CD2E00DC2
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 05:56:36 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id o35so12684122qtj.13
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 05:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7UH621VH6tFVoMutf4VlATb5Is5vOvkADb1nnXI4DjI=;
	b=Gk9TIOGeIz9R1vL88wkj9/X/vyj/nMpnVQygBK8EXT6owltcLYiGaK/NgZ6RvT/kLH
	kdlXGfg92rkRWd6WzhcDyfoyR4XWIQQaYBL7l2y/2xliixjSxrV1kpjimN/g9YisFGpe
	YCkpUAVeQt4T9V4JpJulJzCkXZd9d1OAknYS2L5QDxcxwLpYbQIuPmxEkiisVN5nMpdR
	L7HFq3f7smnWh5NMtxXcvvDdr3s/jmMgoNz+thMLgL+HT3PayvcEJvON4eOKF7/UBD07
	BqTecxc1E2owVLOPx2ZXtStbTF7Fxh4f4q/XwlvuXj1wV8wdlDQh8UUR5o0mGO5EojIh
	625g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7UH621VH6tFVoMutf4VlATb5Is5vOvkADb1nnXI4DjI=;
	b=U1lBtC/ITs+ikHubAbyRqzq3+RO+NySFXHV1aneZ+Bjg6zob4KST7PSowQfx/MyXuJ
	n/0MP3iVtOoeLcSLM0ndl14r5+glgHRCSUnAqAw4wnGiyTnhO+TAeq7k2lYBxA1UCpQ7
	n9InVZxv68ySHHkUFtyPKUDAH5uC6vK3Qlh6khiWfrYE7Pzqb7udOXwUUrcu9omE41qy
	aVbHm40nBfA/e6xxsui80b38S1cX0ah0AhENBUYOu1rKQDdDzy4G+2ObXfux6Yf5KO0m
	1dc1V5wLzW9xoIEPKH7oiBo64WPeoQhMaTXtQxBPCZoVOlH+aGzyzrbOLi5A01dlI35r
	/UTw==
X-Gm-Message-State: AKwxytc93H7/nmMR0NgcaYqC1wfxQ5z/fAt7sFEzi/ZEdj06skmLqUvm
	GNt9fgdqnmAd6AoDVXNFgMF4dawkzmWFBVKFT5o=
X-Google-Smtp-Source: AH8x225Dg8tvmBKLQXXyQU76jj/zchDDC6ZaW+ANFOn3HnFHnHpqp8Sw7Ek/lb7vJDuuoHwtgUOy+gPec+kjf3MfDUg=
X-Received: by 10.200.44.251 with SMTP id 56mr41096258qtx.55.1517234195712;
	Mon, 29 Jan 2018 05:56:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Mon, 29 Jan 2018 05:56:35 -0800 (PST)
In-Reply-To: <CAJTo0LZqeXy9FPJwi19T6f9haWKHj3nVS6dRnfhMje1KAaD5-g@mail.gmail.com>
References: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
	<CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
	<CAJTo0LZqeXy9FPJwi19T6f9haWKHj3nVS6dRnfhMje1KAaD5-g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 29 Jan 2018 14:56:35 +0100
Message-ID: <CAGAf8Lw-YP-bH21WzYZToSksoqbxGHBHmmN2c9a2rKdqJSQNXg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFT] Glibc 2.27
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
X-List-Received-Date: Mon, 29 Jan 2018 13:58:12 -0000
Content-Type: text/plain; charset="UTF-8"

> Khem Raj writes: This has gotten limited testing.
> Burton Ross writes: This one will be easy to integrate.

Time Will Tell.

Zoran
_______

