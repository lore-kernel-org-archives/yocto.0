Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918A2E00348
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 09:22:33 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 16 Jul 2012 09:22:32 -0700
Received: by pbbro8 with SMTP id ro8so10463106pbb.25
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 09:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=y8ZBvDjBUufE4/zxIvOtEx+aQItoHIXnzEuBMxdO5AU=;
	b=J3hdrnRBBUMMJrn3b0X7W0jwoGI6KTsVCy99zZBa5q0Liy8r2ku0prQGRObyqGirPJ
	aiawA5eih6i6aKytSaqQ1S+qL4XxEUP/0H5Qvw80XLnhaeLGpuxsg20+/P6XBfkiWyuL
	+6kbFgInpqijXWnatJN4tzmD4x7pHTYVN4PnHezX2RboJItgRjnxfBFgTOjg+swJ3nk1
	+03ZIkOel+qEoHuhNtpMFUp4Qf8lcbwJ3JnJlVRjY+o1uFgZ4q3Hgs8ndAxkCKZi0V/0
	PqpNjKacOkYhVWgM11YvOzE1qa817cSgmx7DwCcAG+ZnueU91ycKsGeD6hm4cjA0lnvL
	vzLQ==
Received: by 10.68.231.10 with SMTP id tc10mr27664889pbc.107.1342455752055;
	Mon, 16 Jul 2012 09:22:32 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id tq4sm12170672pbc.11.2012.07.16.09.22.29
	(version=SSLv3 cipher=OTHER); Mon, 16 Jul 2012 09:22:30 -0700 (PDT)
Message-ID: <50043FC4.3040800@intel.com>
Date: Mon, 16 Jul 2012 09:22:28 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
In-Reply-To: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
X-Gm-Message-State: ALoCoQn2boGM8xGICiaTJmm2bYrZOCwE6H1/BwuWjK22lGgSYLc2cCUnKDgY71Bpy/2mnma/O5tI
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Jul 2012 16:22:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/12/2012 10:43 AM, McClintock Matthew-B29882 wrote:
> Josh, Scott:
>
> I've pushed a set of patches for edison/denzil branch - and I may push
> a few more still to:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/edison
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/denzil
>
> These are all cherry-pick's and most applied cleanly and a few had
> some minor cleanups. Please consider these for after the point
> releases. I will continue to push to these branches and rebase these
> branches off the official upstream trees as well.

Cool, this is a fairly convenient way for me to merge in these commits. 
Like Joshua has pointed out, as long as they are bugfixes and don't 
introduce significant feature additions or create backward compatibility 
problems, we are likely to accept them.

I'm back from vacation and am catching up on a massive email backlog. 
Please feel free to ping me in a few days if you don't see these merged 
into my sgarman/denzil-next-1.2.2 branch.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center



