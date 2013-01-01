Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE871E0144A
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 10:58:06 -0800 (PST)
Received: from mail-ob0-f198.google.com ([209.85.214.198])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 01 Jan 2013 10:58:06 -0800
Received: by mail-ob0-f198.google.com with SMTP id un3so58064468obb.9
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2013 10:58:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:message-id:date:from:user-agent:mime-version
	:to:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=R7f9A3p1Dyd0d0V165iIvBcXFPcZlod5BPQ4f4xle3w=;
	b=YerGYDzogcFBU0So8rYHTESba2uZCrL3KdkD3+nTqjBjoK35l4FFumHaQvN/Qa+57N
	mgpnekmz5mCP0SsAkZv6BZNAiy0PMLqNx4o/CsOW8W6UNBb2WgI30jgL5IgHN6Fzw+qL
	/+FhynyKQErpi7RDbAjpwLc49pQWJbR1cDSTt9TygeITzfzUDo9bes9qJvZg8X4TEmxj
	hESl27b7okHZdCYG8XAN0fmyxX6NnxKx3f8F5Wb/vDVvNosA7NXTmtCoH5bQoCaqHrD2
	GeBNQ7vCgI2tT6lqbfCwizknEWbljOhIGabELySsL7JOqs+Vs3mNUTu8Elyjquhvmweb
	UG4g==
X-Received: by 10.50.196.198 with SMTP id io6mr38575054igc.39.1357066685048;
	Tue, 01 Jan 2013 10:58:05 -0800 (PST)
X-Received: by 10.50.196.198 with SMTP id io6mr38575048igc.39.1357066684956;
	Tue, 01 Jan 2013 10:58:04 -0800 (PST)
Received: from [10.0.0.188] ([12.70.159.234]) by mx.google.com with ESMTPS id
	lu10sm29769235igc.15.2013.01.01.10.58.03
	(version=SSLv3 cipher=OTHER); Tue, 01 Jan 2013 10:58:04 -0800 (PST)
Message-ID: <50E331BE.1020302@intel.com>
Date: Tue, 01 Jan 2013 10:58:06 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1212300440460.11647@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212300440460.11647@oneiric>
X-Gm-Message-State: ALoCoQk1znpaMM51rt4gLs5+K5Fv/KEC4fJfxAhF8Rc0NiUsATcHjyJ38g7jHrkVPHQt/yKHyQFsRnR8LeTwHyj27YOh9RT27LVkz01n0hsevt0AmhmMXLXCNVXixZGF11jTvypDYv0OwqDrSxAGHB0Ad133RnwjSA==
Subject: Re: discussion of layers in dev manual uses a *really* bad example
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
X-List-Received-Date: Tue, 01 Jan 2013 18:58:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2012 01:45 AM, Robert P. J. Day wrote:
>
>    more pedantry -- dev manual, section 5.1.2 talks about creating a
> new layer and recommends using the meta-yocto layer.conf as a starting
> point, which contains:
>
>       # We have a conf and classes directory, add to BBPATH
>       BBPATH := "${LAYERDIR}:${BBPATH}"
>
>    the problem is that almost every other layer *appends* LAYERDIR to
> BBPATH, not the other way around, so that example is spectacularly
> unrepresentative.  (i'm unaware of any other layer that sets BBPATH in
> that order, and i recall tom zanussi (?) explaining once why that
> was.)
>
>    perhaps a different example, and a short explanation about why the
> meta-yocto layer is the exception here?

ScottR:

As some background on this issue, please take a look at this thread from 
almost exactly a month ago:

https://lists.yoctoproject.org/pipermail/yocto/2012-December/013041.html

https://lists.yoctoproject.org/pipermail/yocto/2012-December/013057.html

I agree that we shouldn't recommend using the meta-yocto layer.conf as a 
starting point, due to the BBPATH append ordering difference.

And maybe a note about why we order the BBPATH append as we do in 
meta-yocto (see Thomas' concise explanation in the second link above) 
would be appropriate.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

