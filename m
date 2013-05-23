Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5074E014A9
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 03:38:10 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id cz11so2203433veb.6
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 03:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=gbPlV0CXzS1oaS/u45Q0hD+UHk9aSpeH5XRL5hchISY=;
	b=hZs9LIElFOyjzTUEyQZ6SrltY09HlEY2oFbojSd4KJokG+EcfWU0E60Am1T9FsZTRW
	2S77hrdViwzFtJey++harxT5xhQycLmpMQSRZMg0ekR3IbIGgZ2LTRFRKlw5KBGlb8Ad
	WhQjc0Ic1FuMbbTuzaL4Ei7NEXeuar3PHyJoZMH+bV0/qLePnPQHcqj7wyFBXV0bM9Sq
	7mlS3D2qVC+jKa6dhQ+iOdoPwcaFD+AqB0nAJiYprYZzurPjKunMByFk8/9mzhAhoe7X
	hONEtKCfXmoKBQkn0DTrnxyjbBWCcPgAayN0I2+mXitDOCjakmirFMsJLnVT7h31UsEx
	RGYA==
X-Received: by 10.52.37.196 with SMTP id a4mr4047905vdk.82.1369305489881; Thu,
	23 May 2013 03:38:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Thu, 23 May 2013 03:37:49 -0700 (PDT)
In-Reply-To: <C7D08B87-2D4D-4CBD-BC91-379B187C2AEE@spidercloud.com>
References: <C7D08B87-2D4D-4CBD-BC91-379B187C2AEE@spidercloud.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 11:37:49 +0100
Message-ID: <CAJTo0LY8Toagve-1A0JC7Qg_p5ptp6Q2SOgH3=_+CuxgPrrBzg@mail.gmail.com>
To: Ben Warren <Ben.Warren@spidercloud.com>
X-Gm-Message-State: ALoCoQlD7dIs+ULepcY1IN+d9SNxv0LmIaFp4NI4WYIuQ7BTZQdND8X504JyRwNSnLdqv8p/WfC+
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python in pre-built SDK
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
X-List-Received-Date: Thu, 23 May 2013 10:38:11 -0000
Content-Type: text/plain; charset=UTF-8

On 16 May 2013 22:53, Ben Warren <Ben.Warren@spidercloud.com> wrote:
> I'm having other Yocto problems using the stock Ubuntu x86_64 toolchain, so decided to install
> one using the instructions in section 2.1.2 (Using a Cross-Toolchain Tarball) of the "Yocto
> Project Application Developer's Guide".

What are these other problems?  Ubuntu should work fine as a host.


> ImportError: No module named fcntl
> ========
>
> So it looks like the Python included with the SDK is crippled or mis-configured:

Yeah, the Python we build is split up massively, so clearly the SDK is
missing the packages that are needed to run bitbake.  But as I said,
using our SDK to build is over-complicating things as Ubuntu should
work fine.  What problems were you seeing?

Ross

