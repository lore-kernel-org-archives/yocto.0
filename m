Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972F3E00E0A; Mon,  5 Feb 2018 10:11:04 -0800 (PST)
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
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 148B3E0085E
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 10:11:03 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id 141so8622473pgd.8
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 10:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=s/Ho+29yJ9Myi7s7b8lqg9BKF8CqIkowKOafo+aZneU=;
	b=PDBSyd0erlV8yM5csdAV/bEFOHMZNUVfvtWDOxQhzHknxnrMzLL0vwa8SjFeacZoqu
	l25whdSsxsZ4xvNLB2n5XX/iKMPminz3Vp7fUwHa209NdHLDsFswBBbPHtQR6PQqyQ/H
	2jBBQXPTBJetQK/8QiRoLVX1x1TU7Tq0SVj+dwRBmnrRPFWGgD1c45GX3ivDy1UGNEw1
	UpzUx4pgOKRZIYy3amh7ULlC+5Soz40T2ytCQclbmvQ/PZ1qSDuFPoAQ7Hj85z0vQeNV
	nOV/Pu2DKR0e6C+kW5Kq1++8bLAWHe0/4y8sifjOFqb68ZXQC5FZ/AwcqBl4Xnb08SzQ
	jKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=s/Ho+29yJ9Myi7s7b8lqg9BKF8CqIkowKOafo+aZneU=;
	b=IDzedJIdT7CuAyzQ0MNZ8i7cukbTdcrH6a5ELCTmD2i3hxSC/U0e/FEC/D5sH27Bzq
	MSrH9wYByuPgFuf1WJAjEenakIL3HyCI0Uasrez1bRrzT6fv9K7wd6KImPRgmTAO3YMB
	QrkBxGXfaBBlaaGJo4t5nSWvrzdaXF0ELppWxkM9SsSWTLT2QNjZMuQ3NYEKuST2RFk6
	r9cB9go67JfAxaoWp4wSzQ/eLtWEucqrvTctwq78cwNnOr1wcM+mf1VO7kmHby4Nn5Fw
	7eF1ifqiqCu1f6GV0myhDmhBd+TpZV1VN6pT87N1Dx0tyWgV0jwToHdxVP4VPW/iLbiX
	VmPA==
X-Gm-Message-State: AKwxytcdfbLk2DlKzQijqR2+KiUGSdgEyvu0b0bEnOAebaz7V5BpNOgT
	Cua3QYkICdoJabX5XIxAKoKGmOI2
X-Google-Smtp-Source: AH8x2247c3juJIeZ8paqF7AcnG+O7NExAKVzt90Ks0ww9P2uAmDnZxOWRzOLzrzk2PTKImopNzRqsQ==
X-Received: by 10.101.64.139 with SMTP id t11mr11988135pgp.162.1517854263129; 
	Mon, 05 Feb 2018 10:11:03 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:8c68:858d:e4d9:273b?
	([2601:647:4c00:6cf9:8c68:858d:e4d9:273b])
	by smtp.gmail.com with ESMTPSA id
	z6sm13724360pgu.49.2018.02.05.10.11.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Feb 2018 10:11:02 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAAm399QPwZssmXYXCh7RYQeZ7O3+1RobA5oRFOzXh-HcGOCjSg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <509c47f9-1ffa-2466-b8ac-d79009704bef@gmail.com>
Date: Mon, 5 Feb 2018 10:11:01 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CAAm399QPwZssmXYXCh7RYQeZ7O3+1RobA5oRFOzXh-HcGOCjSg@mail.gmail.com>
Subject: Re: Build directory toolchain
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
X-List-Received-Date: Mon, 05 Feb 2018 18:11:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2/5/18 3:25 AM, Gigi Work wrote:
> What is the correct/official way to setup a toolchain derived from the
> build directory - if it has everything in there and my app compiles fine
> using bitbake, I don't want to create a toolchain installer and install
> separately.

I think SDK is the standard way of exporting the build environment for
external compilations. I would like to understand why would you not want
doing that.

> 
> My recipe compiles successfully using "bitbake my-recipe", but compiling
> outside, fails:
> 
> First I run "bitbake meta-ide-support" and then source the environment
> (build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi)
> It fails because it cannot find cmake.


you can also use the devtool workflow to compile your application while
you are in the build environment.

http://www.yoctoproject.org/docs/2.5/sdk-manual/sdk-manual.html#using-devtool-in-your-sdk-workflow

> 
> I'm using the rocko branch.
> 
> Any help is appreciated !
> Thanks
> 


