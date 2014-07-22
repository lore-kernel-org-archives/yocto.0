Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62D34E00572; Tue, 22 Jul 2014 09:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B35CE00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:26:40 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id j5so7306275qga.15
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Hgxkhlso7oa+CQMONcy4eu0235FZveZyU2p7TYc3JQY=;
	b=k+3fiR0uk9Yi91woTwF2sVm+dE7GGufbfrAKGsmJJoS2JUp2DqLyu15Dh31WXt8dHf
	PdCXc5GnSkYj2UTbZvcpA8xpX+is8IthlyqQ8sTvIsolS5KuORmPB04nXWeFdtKX0zVv
	x2v28QLZRa6BG9AqtaOZqGA8cIPLXd3AFz32Dio954mC/8gIyvdVW19wwAo7yMy5zEVJ
	v1OF3DKlCmRbZkF62YWfgxDEzwhfIHJK4ennpTmlGtr+ZWuSyF2gFte0Ax0NGMYtGO1C
	jI1duk9Gw9qUzWiI/mE/TUJgmfKqxa5h0XyWWqe7HqTe6yvKiG0K4tmKDIbiOE6539Ke
	xYqA==
X-Gm-Message-State: ALoCoQnCyhvwMuSxjTB3mqt230ltneT3XxocbEpk347P0O2buvaUrdrSA/4fouMidhqrefstEKnX
X-Received: by 10.140.19.100 with SMTP id 91mr39997063qgg.32.1406046399918;
	Tue, 22 Jul 2014 09:26:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Tue, 22 Jul 2014 09:26:19 -0700 (PDT)
In-Reply-To: <CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
	<CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
	<CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
	<CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Jul 2014 17:26:19 +0100
Message-ID: <CAJTo0Lb04W409SOt=vofjPyS1xu5AQisY6_f+pEmaJPDgHhkFg@mail.gmail.com>
To: Anooj Gopi <anoojgopi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find the bb file from package name
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
X-List-Received-Date: Tue, 22 Jul 2014 16:26:56 -0000
Content-Type: text/plain; charset=UTF-8

On 22 July 2014 17:19, Anooj Gopi <anoojgopi@gmail.com> wrote:
> But I'm still not able to find out where in yocto PKG variable is configured
> (which changes this rpm file name from the default one).

Packages containing libraries get renamed through debian.bbclass.

I'm not sure why you need to know the recipe name for adding packages
to a SDK though.

Ross

