Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFC8E0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:42:55 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id ia10so2385734vcb.34
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=eP8yBGibwBCb94IWmpsMpuImkFqm9s8fVm6HX4FBGaU=;
	b=V0sfp+/1MQpIljCe95d2tFzU3BU46mNfalXMqdR5FuISeS6tFuaQu6W+8LzNQMQOgT
	IzaywtmW7JIOev7INS+QqVKrXcihqF+/y7ogbQgDtRMh9xc5Z0c5yiSooxGAArguToaj
	cpP7YvMfarLjXPlTLeuecJy644zuXDf/mWxzt6jqAD2oFRfZ6oLdtgIm37wMQA5vX6h5
	+O3T+urvlq5ejZzjWr/AKHHfdS+jA1hZvpWRAVkc3JB7y/faBWAV6bk8D74fOQgcCRGR
	OwmhoLv28TC3xYjg20buibgV4EmDw9pErt7SXfeOmyTunmslmbW8UntOT5LFnwCHeMEb
	+4fA==
X-Received: by 10.58.233.8 with SMTP id ts8mr25837178vec.44.1375123374846;
	Mon, 29 Jul 2013 11:42:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 29 Jul 2013 11:42:34 -0700 (PDT)
In-Reply-To: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
References: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jul 2013 19:42:34 +0100
Message-ID: <CAJTo0LaoBhuOaDVXKGQssE-sL7SvRTq6R4f3aQga-vTm=AmX=A@mail.gmail.com>
To: James Nuss <jamesnuss@nanometrics.ca>
X-Gm-Message-State: ALoCoQmtf28FT63tu2q33QSuiZe6MZVdAKe622Dp0M1hFD9NYRPzWXkIjIXez/+LXfF8jnIIzgFK
Cc: yocto@yoctoproject.org
Subject: Re: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Mon, 29 Jul 2013 18:42:56 -0000
Content-Type: text/plain; charset=UTF-8

On 29 July 2013 19:20, James Nuss <jamesnuss@nanometrics.ca> wrote:
> Does anybody know if eglibc is supported as a libc implementation for
> Oracle's embedded JRE?
> Since Yocto only supports eglibc rather than GNU glibc [1], I'd like to know
> if there are any issues running Oracle's embedded JRE on a Yocto build.

eglibc is/was a fork of glibc so I'd be surprised if there were any
problems using JRE on eglibc.  Note that several major desktop
distributions (Debian, for example) have been using eglibc for quite
some time.

Ross

