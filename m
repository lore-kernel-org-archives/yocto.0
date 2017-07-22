Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 845C2E00BAD; Sat, 22 Jul 2017 16:45:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.181 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7B87E00849
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 16:45:08 -0700 (PDT)
Received: by mail-yb0-f181.google.com with SMTP id g144so4308934yba.5
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 16:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=3X7/mxW5+SEaqVEEy8sCvuqxOCNt40LMjwJFMYkfvJU=;
	b=LxcB7A+dt97nmy+ebSrocssC+VcGDbaZFeQjou3XeD9xe/uloDUJk80Sfx9bGahISE
	9QboMiikzaGMbhzA1xAWZHceTL2IdVmQsai5skEGu4VifgTK86PUB+YcIVHreU6YG34w
	RVIApr+7YCblZph9z3CWnjk70WQzWubID7sDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=3X7/mxW5+SEaqVEEy8sCvuqxOCNt40LMjwJFMYkfvJU=;
	b=oJGZu93MKST7UR2FMLS/AHD7FFGUF5UuaCGl8kDuVdubqQaAVXXgeqfQJDoksLk9uw
	bC3g3uaWB++Ar8ecTYqQrZwxR4VET6RBXCk99BMjq3bA3RZp5SlgfXnOkSla8v30o2B0
	mC04jizv0mZ1lGOYS4aYe3gZrhoh04juMpjTC4wB0kINqpgQ4B/dDNOfnzvKbgWFzA3R
	FN6X0BIZZMBjqTK6grVXAIgn57ORczE5FReHNyfAQvku6EMMnDbwKBoo1osKTUEkUdmd
	QjJBpUGoUhDj+Z3AAm+sPCJHiBB+MRKjL6ZzERWuXM3yquWj1Z/vsnMQEfDmULEVGHwB
	oBhg==
X-Gm-Message-State: AIVw111JhJfzT8+5mQ2RBCDWcfkZ8pI5RwmgfCa0NUXq/D0788KLaHMP
	wsfPMcAL/2aQq2sM
X-Received: by 10.37.252.16 with SMTP id v16mr10156212ybd.101.1500767107795;
	Sat, 22 Jul 2017 16:45:07 -0700 (PDT)
Received: from bill-the-cat (cpe-174-106-0-58.ec.res.rr.com. [174.106.0.58])
	by smtp.gmail.com with ESMTPSA id
	r130sm1466491ywg.47.2017.07.22.16.45.06
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Sat, 22 Jul 2017 16:45:07 -0700 (PDT)
Date: Sat, 22 Jul 2017 19:45:50 -0400
From: Tom Rini <trini@konsulko.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170722234550.GB26163@bill-the-cat>
References: <20170722224032.1963-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170722224032.1963-1-twoerner@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] u-boot-rockchip: update require path
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
X-List-Received-Date: Sat, 22 Jul 2017 23:45:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 22, 2017 at 06:40:32PM -0400, Trevor Woerner wrote:

> The oe-core recipe was updated (2017.05 -> 2017.07), this recipe needed to
> be updated to suit. However, this u-boot (from rockchip) is still at version
> 2017.05.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Not an objection, but, what's missing to move to just using upstream
u-boot?

-- 
Tom

