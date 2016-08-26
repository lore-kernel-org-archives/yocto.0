Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DD96E00CBF; Fri, 26 Aug 2016 16:25:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06CF5E00CBA
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 16:24:54 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ez1so5364818pab.3
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 16:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=XTMeaFOS8k4oGgHi4mm9QxC3frk1n7HTP6e8VE1ahkw=;
	b=vp5gfRKerDa5xq7o8aaaljjz3QRHOJoXz7ybjyjxtunwXUAEMq1/B3y3Owqrr1zWjD
	OsPhIpzr3lxHFO40GCgSYrZ+K6AuxRkyZdKU59PFl0sJW+seZDv1W8iXiR7kqWmEHHhI
	jVpkd8LirpzTYYDDHkIbqe/FXOicMLMA3rE7IpeKCpr/clG/E0LytEhk5ARzDIdM5b4R
	zqnJzkKK5fTJkdxlbQKMXr2lQIfzenJWoyzR/gTXqIXYGNMAwzCf2+J55gE0SfcS79Bc
	MXft0ROMyonsYnTa4BH/hr8t0GE4gnVO4C88syjUkFHSXTPjoqfG5lr64Dm8Qslq61H+
	3mSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=XTMeaFOS8k4oGgHi4mm9QxC3frk1n7HTP6e8VE1ahkw=;
	b=H5uxpy068LgkXemfV9Qi/wNSihDdGgH6nCqOa+RdTsIXBAhOev5z+JnOKXHsL3ZS1i
	hytK42fDliL4o2R6gppsgASUfWEJW2BSAzR0cVRns7dURqhgRMaD51pITrAU1xc4eqxy
	zAsAa+1Q0woJDatiUY1IOU2jX4aADcD6mcRULL3KQhMzOlqFFxRMQf1rFCYpKflU4LU1
	nlMBZk5ZHmUDjeIjN3+vMiyiOZRxgmXmPxG5ee8O9/g/WlaXklopPuZaVG/CJ12hlk41
	wrRvqgcl3wasnHin/chQkk0OkRixZF08rWBzlOLIpRYw++fgX6TkZpXJ8OFuHVdLO6Q/
	eMxw==
X-Gm-Message-State: AE9vXwN8TADSEP/pAal+LqgtVjsAm9KpNkB4z0AqIW/dJPkou/hOqjuHjM3GhQuP51xrXw==
X-Received: by 10.66.78.5 with SMTP id x5mr10259037paw.108.1472253894572;
	Fri, 26 Aug 2016 16:24:54 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d8cc:d2a6:73a8:6faf])
	by smtp.gmail.com with ESMTPSA id
	i137sm31220840pfe.64.2016.08.26.16.24.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Aug 2016 16:24:53 -0700 (PDT)
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>, yocto@yoctoproject.org
References: <1472251502-16136-1-git-send-email-jianxun.zhang@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <85d58522-48a1-7bfe-f846-aa9255f2fbbe@gmail.com>
Date: Fri, 26 Aug 2016 16:25:28 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1472251502-16136-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: Re: [PATCH] Makefile: remove static linking in Linux build
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
X-List-Received-Date: Fri, 26 Aug 2016 23:25:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 8/26/16 3:45 PM, Jianxun Zhang wrote:
> The removed static linking was for a desire to make rmc run
> on systems where c libraries are not provided.
> 
> But it is nothing wrong to dynamically link rmc with libraries.
> We also don't have to hardcode the way of linking in Makefile
> since people can specify it in RMC_CFLAGS passed to make command.
> 

have you tested the dynamic version ?

> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index e873af6..f152829 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -17,7 +17,7 @@ RMC_INSTALL_BIN_PATH := $(RMC_INSTALL_PREFIX)/bin/
>  
>  ALL_OBJS := $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
>  
> -CFLAGS := -static -Wall -O2 -Iinc $(RMC_CFLAGS)
> +CFLAGS := -Wall -O2 -Iinc $(RMC_CFLAGS)
>  
>  all: rmc librmcl librsmp
>  
> 

