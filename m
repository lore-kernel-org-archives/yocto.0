Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67BF1E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:33:55 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id hr11so3378891vcb.6
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 08:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=WObrS5OPmrEyTJbvhH+DOgGPZE3sWrH2paHhQC2LPxc=;
	b=I+ebuN5IgxoDfUUPbLAxxq+AXQYxHAf0LTzZSVbRszS9o3idwa32dI8XTbeVcmTZz5
	AIMg/gx4fzP2oOfv3WzZobJxL6RfFOjp91GgvFeoctiY51VW/+TwvpQXmcwCk4I/0H8R
	HxD/Y1GixEu4+3/Bti4oe9dCUGLB8irzxA9js09AzKFzbhxCEAxubCKBzjfZ6yR1I+jR
	TIE6+nAdxs1d9vGWkStW9XU2tnC6ePFut72ma4BUuDLrbhlotYHKbhQ0Zk3fou/gVgUe
	bhQxuB0Yf+uDkxELBF3vSXfPTZAAfoEs6BjIC/xu8k4CoS8MWp2x8CXZKxUs5AC/QUbQ
	RpYg==
X-Received: by 10.58.118.70 with SMTP id kk6mr14111674veb.1.1373297634913;
	Mon, 08 Jul 2013 08:33:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 8 Jul 2013 08:33:34 -0700 (PDT)
In-Reply-To: <1373295729-21133-1-git-send-email-andrei.gherzan@windriver.com>
References: <1373295729-21133-1-git-send-email-andrei.gherzan@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Jul 2013 16:33:34 +0100
Message-ID: <CAJTo0LYnob+XE-FbxyP1CshoRw9tY=iMfsLA+mgQq31t1-=UDg@mail.gmail.com>
To: Andrei Gherzan <andrei.gherzan@windriver.com>
X-Gm-Message-State: ALoCoQl/0J8e1qvbIGqwEkaK/IuR+hSRUrQLPQoPHYxXm+asf7JUiQQZQhomEyViY6RpOpfbrxLd
Cc: yocto@yoctoproject.org, theodor.gherzan@windriver.com
Subject: Re: [meta-ivi][PATCH 1/2] busybox: Sync recipe's version with upstream
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
X-List-Received-Date: Mon, 08 Jul 2013 15:33:57 -0000
Content-Type: text/plain; charset=UTF-8

On 8 July 2013 16:02, Andrei Gherzan <andrei.gherzan@windriver.com> wrote:
>  recipes-core-ivi/busybox/busybox-1.20.2/defconfig | 1012 ---------------------
>  recipes-core-ivi/busybox/busybox-1.21.1/defconfig | 1012 +++++++++++++++++++++

I'm curious as to what IVI needs tweaked in busybox and why this can't
go into oe-core.

Ross

