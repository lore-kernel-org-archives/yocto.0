Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E01EE00CDF; Thu, 17 Jan 2019 13:05:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32555E00CAD
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 13:05:41 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id j2so12682956wrw.1
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 13:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=g6rY7h6WV+x5byItWvvgFW1m+PZqfdEYDamN2x69Yn4=;
	b=X5YJMovRbBWwH8bp6CyPoJeNwklcgm9FYQvY0kPmZ54VH7GkBAi0wBlnSKYJlXA1fv
	kSWZG8quE+DsM6/ayn89tAHf+0xL8if5XbnzEZHs11CwA2Lt9JdkWfEifhX9ClJSU2BE
	mcZi7KwScrwmLLpWYUq62DhBu1zOZswxIPe94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=g6rY7h6WV+x5byItWvvgFW1m+PZqfdEYDamN2x69Yn4=;
	b=Ymac5A0ARDqTMOqLdANH9zXhxco761h7KQhxuVsG/R1ForUW/Aiavu61bEQnsTbCXU
	jA17wmtJX7ufx+NcbQ5bZlMaPgE1YKUWULy3uJ402S9PJItjOA4YGP4jQVx104zteul2
	gl1Cjt0AEZo/ZUwlaFBDkirJuSPbPY7VzBnwelrM7wEBZ+20e99NdYxNlSrtum6o5T/F
	RXT0KpQb/BXZyTV3B/uMJrOfn+Ac7a4lRKLnegXQZcbDmnxTBxGA7QPFdH2YZdhl4nRz
	yUq1XhfCveiWdgdIFgBwSYnAYjhq3OapL3t7KIM3CtKI77QmPyZWnp3Ytqpt8OcUxgcR
	AbmA==
X-Gm-Message-State: AJcUukfuL7CdUWcsq5VtCAGrOmFQUeAISpvRnQVemQGllxq+qyFmaOUR
	FnzJ3HDZC2nECWPIJuakmWUv7Q==
X-Google-Smtp-Source: ALg8bN5umu6ZUU54OKO2hZ3niVCB2BoB6QBrYLi04wotIg27fmylWu+CJeziJD7uXmrQ+9Fuem25cw==
X-Received: by 2002:adf:f504:: with SMTP id q4mr14099065wro.321.1547759141063; 
	Thu, 17 Jan 2019 13:05:41 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	f2sm73932667wru.14.2019.01.17.13.05.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 17 Jan 2019 13:05:39 -0800 (PST)
Message-ID: <a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ulf Samuelsson <yocto@emagii.com>, yocto@yoctoproject.org
Date: Thu, 17 Jan 2019 21:05:38 +0000
In-Reply-To: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Subject: Re: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Thu, 17 Jan 2019 21:05:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-01-17 at 19:15 +0100, Ulf Samuelsson wrote:
>  From 864e49bedbdab480c5ada9588ce8f980f23919dd Mon Sep 17 00:00:00
> 2001
> From: Ulf Samuelsson <ulf@emagii.com>
> Date: Thu, 17 Jan 2019 19:07:17 +0100
> Subject: [PATCH] bb.build.addtask: add simple check for circular
> dependency

We really can't hardcode a list of tasks like this in bitbake :(

The list is also incorrect (at a quick look its packagedata and
populate_sysroot is missing).

We'll need to come up with a better algorithm than this. From
experience with circular task dependencies within bitbake's runqueue,
this is a hard problem though.

Cheers,

Richard

> Signed-off-by: Ulf Samuelsson <ulf@emagii.com>
> ---
>   bitbake/lib/bb/build.py | 48 
> ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
> index 3e2a94e..887ced1 100644
> --- a/bitbake/lib/bb/build.py
> +++ b/bitbake/lib/bb/build.py
> @@ -43,6 +43,25 @@ logger = logging.getLogger('BitBake.Build')
> 
>   __mtime_cache = {}
> 
> +KNOWN_TASKS = {
> +    'do_fetch' :           1 ,
> +    'do_unpack' :          2 ,
> +    'do_patch' :           3 ,
> +    'do_configure' :       4 ,
> +    'do_compile' :         5 ,
> +    'do_install' :         6 ,
> +    'do_package' :         7 ,
> +    'do_package_data' :    8 ,
> +    'do_rootfs' :          9 ,
> +    'do_image_qa' :       10 ,
> +    'do_image' :          11 ,
> +    'do_image_tar' :      12 ,
> +    'do_image_ubifs' :    12 ,
> +    'do_image_jffs2' :    12 ,
> +    'do_image_complete' : 13 ,
> +    'do_build' :          14
> +}
> +
>   def cached_mtime_noerror(f):
>       if f not in __mtime_cache:
>           try:
> @@ -820,7 +839,34 @@ def add_tasks(tasklist, d):
>       # don't assume holding a reference
>       d.setVar('_task_deps', task_deps)
> 
> +def circular(after, before):
> +    if after == None:
> +        return False
> +    if before == None:
> +        return False
> +    for a in after.split():
> +        if a in KNOWN_TASKS:
> +            for b in before.split():
> +                if a == b:
> +                    return True
> +                if b in KNOWN_TASKS:
> +                    if KNOWN_TASKS[b] < KNOWN_TASKS[a]:
> +                        return True
> +                    else:
> +                        # tasks OK
> +                        pass
> +                else:
> +                    # b is unknown
> +                    pass
> +        else:
> +            # a is unknown
> +            pass
> +
>   def addtask(task, before, after, d):
> +    if circular(after, before):
> +        logger.error("addtask: %s cannot be after %s and before %s"
> % 
> (task, after, before))
> +        raise
> +
>       if task[:3] != "do_":
>           task = "do_" + task
> 
> @@ -909,3 +955,5 @@ def tasksbetween(task_start, task_end, d):
>           chain.pop()
>       follow_chain(task_start, task_end)
>       return outtasks
> +
> +


