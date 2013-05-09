Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10BDEE01480
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 06:02:58 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ia10so2664133vcb.13
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 06:02:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=x1SlfDpyEj55apri6v1xegAvTlEw8R7atY/a5r41dao=;
	b=nKOk0S3t6llDXmFgmKxHDz6mDcCuoYzAYi2OAY58sWD8L1J7Z3Aavo9uQPCMcPJ1Re
	Hz8046K3ZnNnhGagt6BTpOOQq901pKnjKzbHrcVtGwpxZvjqLG/O/2Og4Oi18YQsNZaz
	BoZVJJptVO2/pGhqyHaEwADg9fw+JEA+5OwTzEA6wHYTIvvIO3w4gD2xsqI6Kp3q12Gw
	GfRDN2EMvGjWYOKrNld8BpJrtOah060l2IXsvOwdn7bWzDETlheS88jPsMXuuz2BeWiU
	B6qqz5g+M+oXIKkgC7FF4gxlPvUZmeOEIUwU8nWTw2S8jPzZ3Q+3+dh2dzTwrT6eyC4Z
	G1ow==
X-Received: by 10.220.78.131 with SMTP id l3mr7801790vck.54.1368104578327;
	Thu, 09 May 2013 06:02:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Thu, 9 May 2013 06:02:38 -0700 (PDT)
In-Reply-To: <CAPhnLPCLuA2W1kiZagXJx0XBrqMABvj47XHkQ--9DUHZqnD_+A@mail.gmail.com>
References: <CAPhnLPCLuA2W1kiZagXJx0XBrqMABvj47XHkQ--9DUHZqnD_+A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 May 2013 14:02:38 +0100
Message-ID: <CAJTo0LYCAPrSBnp3sBVwDBBUN2wPwLzthbubt7Qs_XghMvAJ8A@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
X-Gm-Message-State: ALoCoQm30SFGAOcCMkE2B9SpxPzw465w1w31n3/WyB+qbz8FgX/ao6PR/ivYo5W7MtG7uR9SoBOR
Cc: yocto@yoctoproject.org
Subject: Re: 1.3.2_rc1 respin (failing)
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
X-List-Received-Date: Thu, 09 May 2013 13:02:59 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2013 01:15, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
> I've respun 1.3.2_rc1 per request. So far, there are a few known
> issues that I've been opening bugs for: gnome-desktop fails
> do_install, powertop fails do_compile and a still more sanity test
> failures mainly around connman and shutdown.

The gnome-desktop failure is due to a concurrent (presumably SDK) task
staging sed at the precise time that gnome-desktop wants to run sed.
Shockingly rare so I don't see the use in patching the makefile to use
/usr/bin/sed as this is just whack-a-mole - a proper fix is in master.

The connman sanity test is the same old one, but this instance did
have some more information in the log.  We can ignore this as it's
knwon.

The shutdown failure should have been fixed. :(

powertop is a simple dep missing, fixing now.

There were also two failures at copying the artifacts, I've filed a
bug for this.

Ross

