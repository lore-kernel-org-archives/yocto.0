Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE1DE00C81; Fri, 28 Dec 2018 07:01:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7EC6E00C62
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 07:01:37 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id j2so21209485wrw.1
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 07:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=iibr00v+ZKo40bxljlWKfitrdiWX8VpT7an4/dGeVkA=;
	b=JlIULRDtGF0wRVHqy7R1ob/oemDDpt5uF4anlQ8fFv9BXKaM5kzglX+ABe9h0EKhOX
	FwATgaa7Wh09qnF36BWS+rReFFzymfLWqK2ZBkjTkBzbUH8O+uF7PMZd76wpL/vCNy7Y
	7IwZl6yX8bqEOCYU1v06pnPdLPSD8xsaA55vI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=iibr00v+ZKo40bxljlWKfitrdiWX8VpT7an4/dGeVkA=;
	b=dlGCqzr1U0uzabgtF16zRS9Hjf/7e6BEz4uJcnUaIqK5AzlaAJDIONNdWgrI5w0Rxe
	VfW/SjlhqCxrxeUwu3cKcsYxpcxXHre5qSsJOhsZzo4KvLH7GQ6PDIoZ4VAX8JUvKSut
	b5PFNWbHGlVVMoWVumYrZzKSpR+6+6bF+8NV2pv+nnMNxPKpmPY8mmyteAdZGHDL13YK
	lNKrMDUcrqauX10Z8na6QiRNXgdNMF5sZBJi793fXV26VATwyy49MHxh/I6mSzcYtGj4
	d/GDr2r+wSnjX9oHftf2YvxPlWE1q0PaD4L3+zd0mKBpEZDqDWzqjN9AZ6jm2qsaX3lF
	mzEA==
X-Gm-Message-State: AJcUukeiX/tPO2ZLeX/1Rw6+ax7bm2GlEo4SDeLH3gEE9GsQLua89PlL
	BB04NesCyv31ZzcwjY6so7Nnpg==
X-Google-Smtp-Source: ALg8bN4ajXG/FMh1kRPGFurZlQHxzMbv/97Lhc5nq3BlFdmbt3wdbpYxI/gokWdlHjYSMNz5yGrxgQ==
X-Received: by 2002:adf:ef50:: with SMTP id c16mr25494271wrp.198.1546009296740;
	Fri, 28 Dec 2018 07:01:36 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	199sm35762044wmh.21.2018.12.28.07.01.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 28 Dec 2018 07:01:36 -0800 (PST)
Message-ID: <586c764b6d259147f2048d3c22038c1a00defc79.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Zhaolong Zhang <zhangzl2013@126.com>, bruce.ashfield@windriver.com, 
	yocto@yoctoproject.org
Date: Fri, 28 Dec 2018 15:01:34 +0000
In-Reply-To: <8bebf6da-acf1-8f89-d74b-82a1ca0905f7@126.com>
References: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
	<b21e8888f599e9340e91b6a22e0e0c554748ef44.camel@linuxfoundation.org>
	<8bebf6da-acf1-8f89-d74b-82a1ca0905f7@126.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: Accelerate kernel module built in eSDK?
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
X-List-Received-Date: Fri, 28 Dec 2018 15:01:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-12-28 at 22:35 +0800, Zhaolong Zhang wrote:
> On 2018/12/28 19:40, richard.purdie@linuxfoundation.org wrote:
> > On Fri, 2018-12-28 at 18:19 +0800, Zhaolong Zhang wrote:
> > > Hi Experts,
> > > 
> > > Building out-of-tree kernel modules in eSDK will trigger a new
> > > rebuilding of kernel, which consumes lots of time.
> > > Is it possible to cache the do_shared_workdir() task in sstate-
> > > cache
> > > and ship it within eSDK? And how?
> > > 
> > > Or is there other method to accelerate?
> > > 
> > > Thanks in advance.
> > 
> > It is possible but it means creating a tarball of all the kernel
> > source
> > and build artefacts. Usually its just as quick to extract new
> > kernel
> > source and build it than it is to store this and extract it. The
> > sstate
> > object would be huge.
> > 
> 
> Hi Richard,
> 
> Thanks for responding!
> 
> Isn't sstate object also a tarball for them? Creating another
> tarball 
> would be a hacking and how can I let module.bbclass know that the
> kernel 
> source and build artifact are ready, without sstate hashes?

My point is that using sstate for this will be slow and mean there is a
very large sstate object. The performance benefits aren't very clear.
We used to create an sstate object but it got a lot of complaints about
speed/performance.

Cheers,

Richard


