Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6011E00510; Sat,  5 Nov 2016 10:47:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4D3E004E5
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 10:47:43 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id q130so133787465qke.1
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=KHHGDHlg763XSvQsBp+prMnsBbru/u9WgzKZWZjVtIk=;
	b=CxoukM4yYt/8MYBC4RRduPhWE13nEqsRKfgbPcKniwZL60P/4wnIjWRdcsWWxMN1zX
	fOOUwgYGBa+OYa7YY8csTpZh8rWt5AwB0p5jj4Utj/ZQq9r5A4+JE9mPt3iWjEkelAEO
	TR1xYJW4/UBKSX9hZs+RFiVpYab/bshBAZ+jQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=KHHGDHlg763XSvQsBp+prMnsBbru/u9WgzKZWZjVtIk=;
	b=d+bS1l3kKoz/UgSwuR66/58Z0vQohJU/nFP+isginP1hCQFiFFKx7tAsovYpTRB2fC
	hddQiY8HAXy/PuthDiCf/ESMpnHJH1wQyhL95d3ShR1hGAR8pWSarGbyOK60xs44kL4Z
	FLTXY2Nw8EpdjZYtesKaS8H25muw5mUV5k4mx/AsPhiHHHWqbOkrsrWji6zucH2lvcNu
	/S3kNuBNHgN8VSjbgRcQwoNV/NLHCmFuzSvJeHTcMcQWXvCvKdGxPw9976NJ8Zp9xOW/
	ttBZZR9U0J/QuKBteyGzraDgFnli2zaPkyPYt8uwivGTXwukRw2yG6wjqFkoPtQpE42i
	pkbg==
X-Gm-Message-State: ABUngvd17hKXTwBdH0TfJdWubd+8I1VZdOauU9aUDEoGYSVeCOpSmvnL1SQAbCEq1yzuVg==
X-Received: by 10.55.166.77 with SMTP id p74mr18656119qke.113.1478368062686;
	Sat, 05 Nov 2016 10:47:42 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	s22sm11410380qts.11.2016.11.05.10.47.42
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Sat, 05 Nov 2016 10:47:42 -0700 (PDT)
Date: Sat, 5 Nov 2016 13:47:12 -0400
From: Tom Rini <trini@konsulko.com>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161105174712.GD20830@bill-the-cat>
References: <20161105015007.17267-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161105015007.17267-1-net147@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3] u-boot: Simplify boot script
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
X-List-Received-Date: Sat, 05 Nov 2016 17:47:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 05, 2016 at 12:50:07PM +1100, Jonathan Liu wrote:

[snip]
> +++ b/recipes-bsp/u-boot/files/rpi-fdt-addr.patch
> @@ -0,0 +1,77 @@
> +From 0bb380da174f9372a706b5a4914a4c06ad7fbfdf Mon Sep 17 00:00:00 2001
> +From: Jonathan Liu <net147@gmail.com>
> +Date: Sat, 5 Nov 2016 12:43:47 +1100
> +Subject: [PATCH] rpi: Set fdt_addr_r to device tree address from firmware
> +
> +The Raspberry Pi firmware will load a patched device tree blob into
> +memory if a trailer is added to the U-Boot binary indicating it is
> +DT-capable using "mkknlimg --dtok" or if using firmware release 4.4
> +or later and no trailer is present.
> +
> +In this case, U-Boot is executed as if it were the Linux kernel and
> +the r2 register is set to the address of the patched device tree blob
> +in memory. We can check if the blob is loaded by checking for the
> +device tree magic constant 0xedfe0dd0 (little endian equivalent of
> +the big endian 0xd00dfeed constant) at the address stored in r2.
> +If the magic constant is present, the fdt_addr_r variable is set to
> +r2 so that U-Boot scripts can access the patched device tree blob.
> +
> +Upstream-Status: Pending

Please note that upstream we are looking at:
https://patchwork.ozlabs.org/patch/690769/
https://patchwork.ozlabs.org/patch/690770/

-- 
Tom

