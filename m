Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65517E00B9C; Wed, 25 Apr 2018 06:57:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B31FE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 06:57:29 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id u62-v6so19437035ita.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 06:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zf+e9+63ahO9/YXVXHQnbz8I9PFRxnD5UUx3aly1gNY=;
	b=n6u9iIRKjXPqTBJKUjlO33hcZiyuUxqJR5OBLUkKhjsDi6NTiASKePVJRLFUzCbYhh
	voq7D+8b+X5lMuyF0nb3+bjoEjNArgdkNneqqcpR5PHfAUvSkGPZnh41/tLECTbQOR6I
	Er2DBvbMIHcxAVz/L5bk6mR5UAs0btAx8uWCY5WK3f1KIGCYw77RjQq7FmyqwcYDFkV1
	QrMZpWn9bPr4RwGd9T2hFBRtjjH/jVO1E+ZiFIbFoDbiWYCQyfdIWzRVkQXQDuKKqzRz
	ZcjaQAh9kltktE3wLB+Ys3X0sNKa6YmmJ4T3u/AzTngY1bJPNzisWAE63hUCoB7XTtm4
	GnyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zf+e9+63ahO9/YXVXHQnbz8I9PFRxnD5UUx3aly1gNY=;
	b=UdRKnryxA4NgRWcxMiIcFEVMDfhxInqeztTmq5WgKN7D32B8zReCOv6mFemBUCBhTM
	SaeNYV+45ub2yBfWgyHMgYQwlk9gPsbZsJY0nzJOopPOBawxKeHai5WFCW3ISnn2bR/M
	tsRB5fNWGAhjUlUT2x4+MzlT3v+PruYVd3MMYNP2XS1PPO15RqE+3z9eXY787w70vja+
	ID0oqpfjrxIDnOmny2BuG+b1h0wxot4MtL2r5oSEmp87xzpJeg2jlZHt0W6r7W8nBhoB
	IDKR4CF42AjxMmeTxjFblkNpbmIw24ivER5kblQV3v93WHIIFcPUOhlIvd0bSJaKbfcB
	r7/A==
X-Gm-Message-State: ALQs6tAzoxpVZ+swFXsCEJQ1CO8oXmjrVm9nWXtMo3AYhxb+odKPYj7Y
	cIC1Z0HzA8t76PFE0ZKb1caNIc/FtVyUKfIX+S0Oyg==
X-Google-Smtp-Source: AB8JxZq9mcRwSEl/sEZA2j4UELaVohryj0gTNlEUbPkW0PThrRWYXEuQzJpOlYxV7cLGv6rAUCx+8vjMMzbLF8WFSCA=
X-Received: by 2002:a24:a00a:: with SMTP id
	o10-v6mr22991795ite.34.1524664648664; 
	Wed, 25 Apr 2018 06:57:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 06:57:08 -0700 (PDT)
In-Reply-To: <1524661533.31562.2.camel@gmail.com>
References: <CAJTo0LbOsiLq=0Zz=4fPE-A7Q7Ez_XVgqm8CBkSeAu6Bz=myLg@mail.gmail.com>
	<1524661533.31562.2.camel@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 14:57:08 +0100
Message-ID: <CAJTo0LY_rvayocdJMG=jD0A0KVD4wieM1-rjkwwyw__7iq6u-g@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] GCC 8 hosts
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
X-List-Received-Date: Wed, 25 Apr 2018 13:57:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Joshua,

I do now, they're in poky-contrib:ross/gcc8.  The commit messages need
rewriting before merging to master.

Ross

On 25 April 2018 at 14:05, Joshua Watt <jpewhacker@gmail.com> wrote:
> On Wed, 2018-04-25 at 13:11 +0100, Burton, Ross wrote:
>> Hi,
>>
>> Just thought I'd say that GCC 8 is going to start appearing in the
>> wild, I believe the first distro to ship with it will be Fedora 28.
>> As usual there are changes in behaviour so there are several
>> problems.
>> So far I've identified the following issues:
>>
>> * Python 2 crashes on startup
>> * Kernel tools fail to build
>> * grub fails to build
>> * ovmf fails to build
>>
>> I've patches locally for all but the ovmf failure (which is a pain
>> because the source uses CRLF) so if anyone switches to a GCC 8 host
>> before they're merged and wants to help, you know where to find me.
>
> Do you have a branch with the patches somewhere so we can try them out?
>
>>
>> Ross

