Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE67E007D5
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 02:42:54 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id f11so467341qae.31
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 02:42:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=67Rzr9oEBNHvt2hReQtybh0+H3jaLOjp7gxeLo1ZtSs=;
	b=BgFhIGMoD7o0vNS5R46fo0BnvbL3hjeRL/etr/ylWwkQkCuF0v4jlEYy7eE1aQhSlO
	npDyx2TvLx2rATvkOn4v+hQciwaDU3rgiAEL1+2/B7n+XBtduNmvsHyAfDSIYkX9h79l
	T3T+tRqv6Wc8tw7bIAc0lk3kWHaazp5MrZ/u8pXKQwvB2Zo2Rd58lJxRXgQ5xmvbRmnE
	6iHDAG+sdy/IvscXhqfMALSRait/M7Jc7prUfWHp1UCct0bwtggGXX7/67pyhG7ap8vr
	9Jpvt7em/iOVr+4D8uNdnoBiNbHLk6NXAUNjiBFt7RPm5k1JCt0oBAi/M7GviHr2Q1M1
	2tvA==
X-Gm-Message-State: ALoCoQlWR/I2oQQzC3oY5EfaDV7OXORe+yUJE/C0xPbslEkfgb7dMqUzYhs5tMf/ApcDo/p56lSc
X-Received: by 10.224.127.129 with SMTP id g1mr2605960qas.22.1393584173982;
	Fri, 28 Feb 2014 02:42:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 28 Feb 2014 02:42:33 -0800 (PST)
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C8148CF9D9@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
References: <5D833673AB94D9489A7F7F73E9E611C8148CF9D9@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 28 Feb 2014 10:42:33 +0000
Message-ID: <CAJTo0LZBNKyXdYmwcoeuvvupHvWsbbjbEtVT4+7oHyBnh9aH+Q@mail.gmail.com>
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling Wayland and QT5 without X11 server support in Dora
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
X-List-Received-Date: Fri, 28 Feb 2014 10:42:55 -0000
Content-Type: text/plain; charset=UTF-8

On 28 February 2014 10:33, Sathish Kumar Balasubramaniam -ERS, HCL
Tech <b-sathishkumar@hcl.com> wrote:
> Please can anyone let me know the configuration to be done in Dora for
> enabling Wayland and QT5 without X11 server.

Remove 'x11' from you DISTRO_FEATURES (the _remove operator will help here).

Ross

