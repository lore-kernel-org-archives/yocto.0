Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AD8CE00CD1; Thu, 12 Oct 2017 20:32:03 -0700 (PDT)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7459E00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:32:02 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id l188so7957056pfc.6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0gvdCzADLkPKRc2bcCuYN1q2RnWmOjAW/vNCgoqseI4=;
	b=LsjEoiEfjjdvsU6FlxVSGZGJZ7nUP/n8N1bXVMIBIeFiuVYJB2AyO+EKI6bltrYS7L
	190p2n97c4oHqwu7k7Ks/98ZPHz+l6pnxOGAZyeMqKn7e00TdW4+Yit3yl7hxpl81Vp+
	BF0KKjYO+8D7ePdBQVD/U0sa11zEWXRPX7Z/2vcWe9ify5q1ovxawq3cc7MSAUuKMFKZ
	XVGr+0WOK3mAw1rqg+7JNW1PKXn7uQssWOZOO6h7D/mu96qYChqVfHqRVSZ1JFyvY0rv
	SCSnSRn9W2BYkczxruKLn/17ziVYPBfpKCLzDidj0VZz6Yugg6cd29y31oCoxkFsRxlS
	8GPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0gvdCzADLkPKRc2bcCuYN1q2RnWmOjAW/vNCgoqseI4=;
	b=BNNjNGio+SXby9/Ud5sx3oOFAN7Hmrv6nj6Od9z3RHhq1HiywZq335vfNqpTYofcsa
	r1tJ1V0qkWpXHRm326woQ7py6Bzmv3v4ghejlPl0+fF1f/MF49r0mTmFcs0vOuFVdy3m
	hoBJBCq47T2MNS0Vfnebix/+vRl9Ac4ZZvJGwh3CPjPYEgiiqXg2ajbvJVpCLW69Coho
	EKaL8MbdDXQaEiu4FJbuyk1k2njdX3k0mU5kQ7X6tiuyY2ZXd5xZNmIo+UjbZaZdYySG
	DjPfbpT3M6Sm0XY0HPDidJpnW8ODA1eyWDlMzRtvP2bURqv96ybwSAiMHUIQS//BZZLw
	Yx5g==
X-Gm-Message-State: AMCzsaVqx7BsjR/zPG9sTIbmo8yAJyBhhEn0E+I2FYN8/hdIPAQIESPU
	xLdsv/mtYED3HmhnnUIrPEnFpw==
X-Google-Smtp-Source: AOwi7QB9NgXMfbeqmh1HUZb9173LbBl9CZkm6oBBKFQKOKgdUGEV8+9HOlYFSbGitxwgUlrN3eC6QQ==
X-Received: by 10.98.65.218 with SMTP id g87mr56697pfd.105.1507865522173;
	Thu, 12 Oct 2017 20:32:02 -0700 (PDT)
Received: from apollo ([2601:646:8882:b8c::74e7])
	by smtp.gmail.com with ESMTPSA id e84sm43891pfd.1.2017.10.12.20.32.01
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 12 Oct 2017 20:32:01 -0700 (PDT)
Date: Thu, 12 Oct 2017 20:32:00 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20171013033200.vkrdd6jiq2lqaooj@apollo>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
MIME-Version: 1.0
In-Reply-To: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
User-Agent: NeoMutt/20170912 (1.9.0)
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 03:32:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 12, 2017 at 06:23:03AM +0000, Paul D. DeRocco wrote:
> I found a bug in the GNU assembler that makes it produce corrupted
> listings, reported it on sourceware bugzilla, and it has been fixed. Now
> I'd like to take those small patches and apply them to the assembler that
> winds up in the SDK. The patches are shown here:
> 
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=39865a7f420ab4c
> a4dec6ed27339618a5d5dc366
> 
> The only recipe I found in Pyro that seemed appropriate was
> meta/recipes-devtools/binutils/binutils-crosssdk_2.28.bb, so I created a
> binutils-crosssdk_%.bbappend in my layer with a FILESEXTRAPATHS_prepend
> and a SRC_URI listing the patches, which I put into a binutils
> subdirectory.
> 
> When I ran the populate_sdk task, the patches failed because they didn't
> find the source files, which are supposed to be in a subdirectory called
> gas.
> 
> So I'm wondering, is this the wrong recipe? Does something else build gas?
> Or am I just doing this wrong? The workings of the build system are pretty
> opaque and mysterious.

You can apply the patch to all binutils variants, its fine. Send a patch or if you
want, file a ticket in bugzilla and we will take care.

> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

