Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E31FE00BFF; Wed, 23 Oct 2019 15:29:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA7EE00BA2
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 15:29:50 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id r141so511160wme.4
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 15:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=4SGHUyHIbaanIopX2XdRK1316CgKcnWpzafHnb3gRo4=;
	b=RoWWIrPFy055Y68Ea1qT44b/BYBHYyhjI8DLAMHilb6IMtfCPTRhJ0oXT4UZZZ97JW
	nKPEkaFN4oMCPzb+3VIvfE5MSZ1o37WB+O9wO6qBbpOnYCjvKv82CkFeebzTxnLlEnW0
	bFStKUCcASjmsYfkDwjpNKUJHRx0VKGPYgk0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=4SGHUyHIbaanIopX2XdRK1316CgKcnWpzafHnb3gRo4=;
	b=oviK3+p2xdw4URPUO2dZ3/sG0WVODySckFoo+212thoLyKR5XdSKn3Nt75DpzgwTid
	2ihRRU17nJ4DJn5RI/CyEr6jLqY9GfZjXJr1BO751Jt/tvozoh0NMouIYO0sOhlpbHSH
	CYItGA3UETwpSryt8mUsNzH7hjA4fYc6IfYxnRsyhl178XxMhn0cIVBFYoF955d71T7P
	pXTG1BQJ6f707RaTC8O4QO1tQns2U7ZuUU5TtP5o/nQSY0/QllM8JNGhZw50BB+K3oA8
	QHOeik9Ne3up+vI5GnP/5PAk+oPtpgIhN5PkUF6FjyclCvaVGPqMtDnPsveqkDGP18VM
	fHTw==
X-Gm-Message-State: APjAAAVVxQN+q8DjQNLMlWzDIUdkxzQfBGCyMu0/YTaFLxcIQh/rongB
	/TVX67709/LJxSP9fys8xxB9VA==
X-Google-Smtp-Source: APXvYqyAsrppgBNO2yqPWDpZMnX4Oy6V/15eSyZ6SoMgN2MYMA0p6ZxblabEeKk6puYgjCQS2BJe3g==
X-Received: by 2002:a1c:a516:: with SMTP id o22mr2042745wme.116.1571869790150; 
	Wed, 23 Oct 2019 15:29:50 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t123sm736356wma.40.2019.10.23.15.29.48
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 23 Oct 2019 15:29:49 -0700 (PDT)
Message-ID: <f341de689b79396ee9d405ce52baace0ab83206f.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 23 Oct 2019 23:29:47 +0100
In-Reply-To: <CY4PR11MB1879D36BFFD921ECB8929D57E36B0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
	<BN7PR11MB2721D442E4925D6788AC41E6C86C0@BN7PR11MB2721.namprd11.prod.outlook.com>
	<CY4PR11MB1879D36BFFD921ECB8929D57E36B0@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
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
X-List-Received-Date: Wed, 23 Oct 2019 22:29:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-23 at 08:00 +0000, Jain, Sangeeta wrote:
> Hello all,
> 
> This is the full report for 2.6.4 RC2:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects.  
> No new defect found in this cycle.
> The stap test case failure on beaglebone still exists in this release
> (BUG id:13273). 
> 
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273
> 
> Thanks & Regards,
> Sangeeta Jain

Thanks Sangeeta and team!

Rather than respin the release we're thinking we should perhaps release
and then add the fix for the stap issue to the branch. The TSC will
make a decision on that, hopefully tomorrow. We're hoping to get the
warrior point release sorted ASAP but the remaining issue is proving
tricky to resolve.

Cheers,

Richard




