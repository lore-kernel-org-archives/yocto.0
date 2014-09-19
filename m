Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1872E00852; Fri, 19 Sep 2014 11:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82576E00844
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 11:40:25 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id x12so3058318qac.30
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 11:40:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=m9Z4TDWtkdp+h8Xz6xvIllk2WsfyHkEnWh+V9F/k7iI=;
	b=mcRd3sks59JWrqYz59TiBAzBPM/iAsZqTMNma2Mm5dV4mx2jjccaiskgTk3+BgqM1T
	57sAnBXaw7o5uLSEf3Xyowj0fnWVUerFMb4w8F0AIIkVsTFpRSuv+uJGPfrXGdXPxVWF
	m0NuZK9h4du31Zt4l1fIcETwPOqCnUC3I8fPBsGMvQQWAmOVSz7zvaFhhpKn64YIuBcP
	Vg2X8dgqLVbOBhv47n8GFef4gby+sBuHv/k5ZA0U8wo2zhiwvYmtlURMGsC6KSfTwY3d
	GTfxzblexepBsX2U6DsxNfx6FkNcDEiJBxBBNQKNeMkw47v3XL3vJ1RPRhjtAM4sPmT+
	xnqQ==
X-Gm-Message-State: ALoCoQmVl/bMqjG1UBm2NWTUMlq98/e0g1XqJ+IVKMwn5nWOQCnXvRnXXOZ1epeXXkZGZGDS8ay1
X-Received: by 10.224.63.140 with SMTP id b12mr2144950qai.22.1411152024749;
	Fri, 19 Sep 2014 11:40:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Fri, 19 Sep 2014 11:40:04 -0700 (PDT)
In-Reply-To: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
References: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 19 Sep 2014 19:40:04 +0100
Message-ID: <CAJTo0LaojbZbjz-io_L3W3tQUPzL0ZMYFA11vjnW8NY6GVemzQ@mail.gmail.com>
To: harsh jain <harshjain32@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Fri, 19 Sep 2014 18:40:28 -0000
Content-Type: text/plain; charset=UTF-8

On 19 September 2014 19:11, harsh jain <harshjain32@gmail.com> wrote:
> I am trying to install python version 2.7.4 after updating recipe file
> of version 2.7.3.There are several other packages in my build system
> which depends upon Python version 2.7.3.When I try to make build these
> dependant packages give warning.
> What I needs to update in build environment so that these packages can
> also included.I am assuming that these dependants packages are also
> compatible with python verson 2.7.4.

What are these warnings, because I can't think of anything off-hand
which will warn when the minor version changes.

Ross

