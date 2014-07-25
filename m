Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00565E0043F; Fri, 25 Jul 2014 09:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E82E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:07:45 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so4718486qab.8
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gpnfxLABOKNkFh3WjZxsC1WMbiULvsEibvOo03OXKFM=;
	b=BxhpB6bOkMvdbPiyZJh+yIYYw3FWIhctbG18O6VntAzgEQpL5K1/pPmBMI8AUcx80J
	UQwr4Aoqz3grrGA3HGwj4POfCyMlmNEXMg8x4yiYS/qFQvW9MINmhakq6VpOu9JoTMVY
	OqU1lRK8pZWpVPbZ9JAPX8ApnRtRYMmGRFstjXBs0PDleDDhn0wldF8WxEiExngbfycS
	p3z55417wE+ZBG30YIN5bZ7zFHTxbAfNpydD0jjHFeKCjr1DcXhDHk4PVrkdkVCu68ov
	1CEi6Pz3NxhQUszOOh8AGekHe/7+62fm/ar5DBBwl6WUQ3B1+2H61JJ8G9kHIZmfF+d8
	wRpw==
X-Gm-Message-State: ALoCoQljHq4XgEDOBrGyTKoSQmU+v28xj2iKvp5D1Dx5SsBspXdEO1s5pHhJTZhRXAkzV2toEvyh
X-Received: by 10.224.43.77 with SMTP id v13mr28506826qae.34.1406304464684;
	Fri, 25 Jul 2014 09:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Fri, 25 Jul 2014 09:06:08 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407251200050.6809@localhost>
References: <alpine.LFD.2.11.1407251200050.6809@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 25 Jul 2014 17:06:08 +0100
Message-ID: <CAJTo0LYgJu2NkbtROmDEj85adyJ1MF4p5HGCrAmhiQ_0Z7cUYw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: don't all core images use openssh instead of dropbear?
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
X-List-Received-Date: Fri, 25 Jul 2014 16:07:58 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2014 17:03, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> IMAGE_FEATURES_REPLACES_ssh-server-openssh = "ssh-server-dropbear"
>
> so wouldn't *all* image recipes derived from core-image replace
> dropbear with openssh?

That means that the image feature ssh-server-openssh replaces
ssh-server-dropbear, so if both are present dropbear is removed.

Ross

