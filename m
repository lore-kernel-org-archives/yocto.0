Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EEEE01572
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 15:57:40 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id m1so1520197ves.41
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 15:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=x1QGohOjZN9/uZfgcAEEUOykr81CmfBWS4IYVQItrGY=;
	b=c4l63k9jjg3IwOJtmrLXwA6uU4uCnfq6colea1jBKmnmKM3c8Ww1D7y4x/u65IsWLL
	HiAm8KS/WlZRplZPnwyDZlUBKUiba5b9GUtewzwqjzm3rx7V2TE6JmVXXjlByxvniuIn
	UH7RNRwfZ8IxEwi+lidaIqW8IhDo6I5kFYdANAfWyuX4/fHYQTnKfewotZ3r7kLWPjtC
	6aZWaXtN/u6JqwhTh0kFibhtBGicY3YWpJz8hpim0XVM13jt740KQrPWM01XezKtHtxZ
	QKmeHXYy/Gscq48L+LZZhj4AI5qbBojjhrH4y/6eAY/6pDaV3+b05Dp0vF71tBqkO/67
	p5+A==
MIME-Version: 1.0
X-Received: by 10.220.98.68 with SMTP id p4mr12215505vcn.28.1375311459455;
	Wed, 31 Jul 2013 15:57:39 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Wed, 31 Jul 2013 15:57:39 -0700 (PDT)
In-Reply-To: <CAPhnLPCBvA21qDdJhT-wUqEJYBvvJYo0jBe6+G3pM76g4H5qkw@mail.gmail.com>
References: <CAPhnLPCBvA21qDdJhT-wUqEJYBvvJYo0jBe6+G3pM76g4H5qkw@mail.gmail.com>
Date: Wed, 31 Jul 2013 15:57:39 -0700
Message-ID: <CAPhnLPCFG0_PgPB=49TaWDZL1xrW=a-6+PM+ijY8FB4g+uzF+A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlUNToiAWewH3AwPBR+c1qizlIcaaT4W7mltBE4XiO+uTwmhO8IPbENJOH8EkOiiE7cy6bU
Subject: Re: 1.5_M3.rc1 is being built
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
X-List-Received-Date: Wed, 31 Jul 2013 22:57:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

This release candidate had a few failures some of which I've fixed due
to them being autobuilder issues:

build-appliance: was including meta-intel (which it shouldn't have
been) which failed. We've rebuilt the BA and updated it in the
download directory
eclipse-plugins: all failed. This was caused by the updated buildset.
I've corrected them and rebuilt. Kepler fails but it's relatively new.
Juno passed and I copied it over.

Assorted sanity failures. There were systemd failures, but the ones
I'm really concerned about only happened on ab06 and was due to being
unable to access a free tapdev. I've not had time to look at this, but
will try to look at it tomorrow if someone else doesn't get to it
first.

-b

On Wed, Jul 31, 2013 at 1:00 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> We should have artifacts in a few hours at
> autobuilder.yoctoproject.org/pub/nightly/20130731-1
>
> meta-fsl-arm    fdf3fe6296790b0c0817a58c064d7da1cca7dd0a
> meta-fsl-ppc    399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4
> meta-intel      ce8f48d28c8d6d99b860e3f6480d9d3a6fc0b301
> meta-minnow     a1cfe0e7fc59eb1e430db07840d6b6d54b8733e2
> meta-qt3        b73552fb998fd30a01dbee5a172e432a16078222
> poky    9de0ad47462c13ac4a2d73e12e92be6c1b4e0415
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

