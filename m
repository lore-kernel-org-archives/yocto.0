Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C09D3E00B4A
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 16:19:20 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id j7so1668982qaq.38
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 16:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=7eUwy3I/4yTH5B2YivE0q9SLVqYZzfhulYraP2dBTmQ=;
	b=PSsIwoJn+sFnlOisIP3igmJZ7E46Hn5hhVzez0Ot+1inWbazkfYc3tjwovUBCHPuEx
	3YtVA/SG3Z1Y+C071pgPVH8pqNEbdwbQlBpE00uaMw7vWXADBOl4NEXBXmb4APPSavaP
	28569moyLbr1DBH/FaJwM8ufPFPyRkwRTnxcc0/hXf9OoU0doiCHmiXWrT3mkED43cXl
	BF1KlFpg1tjQvu3Uw81BRL4LM/HblrCu6hMWRCKxK2jAhesBQCYhppkTCfIWBUYe30R5
	Ukz2zzqD4vJiDv2PrZelhoLFBGnINXEiZfnfxxUHvFKGFabG7wiqHhzJf44bp90wULoG
	POjQ==
X-Gm-Message-State: ALoCoQlDFLBTOKCg3Ooy7jWNW8R90saFLw0DQiWG9iFzhBAWQVkmHA9SchKGLxyW+16qteBWAxc+
X-Received: by 10.229.193.136 with SMTP id du8mr53860849qcb.11.1395357559338; 
	Thu, 20 Mar 2014 16:19:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 20 Mar 2014 16:18:59 -0700 (PDT)
In-Reply-To: <1c5954b6a863bb3d6d306b16ce750e1aa9f431f1.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
	<1c5954b6a863bb3d6d306b16ce750e1aa9f431f1.1395261635.git.elizabeth.flanagan@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Mar 2014 23:18:59 +0000
Message-ID: <CAJTo0LYUcfSi44dHPDOGXijW-BoadA=8sUUPxbr64a0NEZC25g@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 22/22] yoctogit.py: sync on mv
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
X-List-Received-Date: Thu, 20 Mar 2014 23:19:21 -0000
Content-Type: text/plain; charset=UTF-8

On 19 March 2014 20:51, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
> On systems with very high load sometimes the system still thinks the
> build dir is there. I've only seen this once, but a sync here ensures
> that the system knows that build has been moved.

That smells like a race in the AB code instead of the kernel being
confused over the state of the file system, and the best a sync can do
is reduce the window of failure at the cost of a potentially very
heavy IO burst.

I'd say drop this and if the problem occurs again, attempt to diagnose
where the race is.

Ross

