Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6079E00B6F; Sat, 27 Feb 2016 05:02:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB592E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:02:32 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p65so17190993wmp.1
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Hsh+6smh9TjHAB9Yb8RlPqxWlkAv/mHiWEPAYfet7PI=;
	b=cmHbsZynB4uUQvNlIOAm8EXqEoaDkMOWeldbCBueulooKhVQ4umI4832kCr+cMaV+O
	YrVzQkfJZ/elUxgvEEk11PEJLGNubJfKpX5sjpoP6lwx4avMZ7jUKYNza8n1mjuPYkXQ
	K0MY1F5Cn0KtcwDUj6cUtVPBPl2SsfiaRMJMZf1AERzdk+Xz1EW0QuChZyVA8ntzaJP4
	j42vu80jWQEd5FUcIcgnF4L4BWVoCsx1vhN8Q2YSgsGMMF+SaxKLHQE7Yhv5JXK+hL2s
	HsduyTLo5UK+4VprYulyKB0Lm8Nw9Y0ww9RaaNB8J8Hz/Kt/zBQuhOUA6M1LdjSPzBQh
	/R/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Hsh+6smh9TjHAB9Yb8RlPqxWlkAv/mHiWEPAYfet7PI=;
	b=EfzmI4ETwdAbzs30KgdP+Tt+qMGQbhuimxCDFilFli+vd04TaBD7ntyBACLJjEa73q
	I/TXFHXqeErjFTv7+gS/dKUiE6CBnQejEZ8EP1pLO62dEznyyxBKRA6smgMZTXubyalr
	ppzcjUhJEp2/WkgHh5kZz2RHWnsZ/lT2tEgDfyP/hMHtg2PhF/sy+omGVlJghEpvCbpj
	2KhzpgfhEZ3XYVk7fCv/GRm360On21Xe1paUvc4Nmk0hqnr8tSCtCcHBsZYexazePb2J
	kNkdoHEOUdkb/bKwrdopQwWtoa9Z0uAsavAQKT8MrO5NwH9omnvIqFQFLQCw5tWY2VUv
	X+sQ==
X-Gm-Message-State: AD7BkJLMk474b1zl/qfo+Ef+J/cQTlW22mw0Z/F8ZAedugYTEPUMqVmTh48EgnRdkRo5rg==
X-Received: by 10.28.137.148 with SMTP id l142mr2779034wmd.40.1456578151615;
	Sat, 27 Feb 2016 05:02:31 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id 3sm7142368wmp.14.2016.02.27.05.02.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 05:02:30 -0800 (PST)
Date: Sat, 27 Feb 2016 14:02:28 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160227130228.GC28071@resin.home>
References: <1456487748-11307-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456487748-11307-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: bump revision
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
X-List-Received-Date: Sat, 27 Feb 2016 13:02:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 26, 2016 at 10:55:48PM +1100, Jonathan Liu wrote:
> Fixes compile errors with ffmpeg 3.0.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index 2f45fb0..a0690a0 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>  DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
>  PR = "r4"
>
> -SRCREV = "d99bd86c9fd80ea01f98761e130d7ac9a2bb7588"
> +SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"

Merged to master. Thanks.

--
Andrei Gherzan

