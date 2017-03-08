Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2501E00726; Wed,  8 Mar 2017 15:28:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C5FE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 15:28:06 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id p64so94473979qke.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 15:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lo1BG7l8aqkecv0d5fisGoRU7uqGwgQtgvxZhYnI1UI=;
	b=Q5JMSoEXWsTbvVUPVP7Zd0+S/VQDlDYrOYwDI+fv6tP2uWuhZTF9CVK9QX+h+q/abc
	psC4oGGJMJvomwADVRYw7SX4PyV7WVPOqv4YzCvAoogDkEtK3sjo5LJWlQxtuFrpQsks
	IQGTY+GKzFDg3wSvDVhcIFVdP9Z60RuR3acIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lo1BG7l8aqkecv0d5fisGoRU7uqGwgQtgvxZhYnI1UI=;
	b=F4HelDmka7JVuaPETxDqdnlmumCsKZuDjLQrJrgWWXGALL1T942JDpmnc/RrvDwgJt
	qnIgs/f7lojnbgRBCNd6x7ydL60LiYCH8HUxFcM+br3+V8NpForA4O8ia9bqVzFSYtHL
	ZKYoJz9XndScTxTWs+Hs2w8z9J0sKOKJMkL37vGqo5uUCqrL4TsztPZvG5au9kD1tAyI
	//kIxj6jyjmsW9eWdaEmL4Wif6IdxC6WmD42iy4uLVCzVOXKDG0hqBhuS3+JiolbSYyU
	43/nrOU0JIJ5TPEn3B12kq4OfC8sEEJwhIWBC+F3qr0qiOvaICPhVXLUzjU8YRC4ZDqE
	D/3A==
X-Gm-Message-State: AMke39mu3REmehZ6Eh5M0GdlEIlcjASD9tPedE1/Sbq326Kw2z5Qdl05jIWr3sx/2EHSfA==
X-Received: by 10.200.49.76 with SMTP id h12mr10971669qtb.44.1489015686351;
	Wed, 08 Mar 2017 15:28:06 -0800 (PST)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133])
	by smtp.gmail.com with ESMTPSA id v63sm3139353qkc.5.2017.03.08.15.28.05
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 08 Mar 2017 15:28:05 -0800 (PST)
Date: Wed, 8 Mar 2017 18:28:21 -0500
From: Tom Rini <trini@konsulko.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170308232821.GH19897@bill-the-cat>
References: <20170308173147.21841-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170308173147.21841-1-twoerner@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Wed, 08 Mar 2017 23:28:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 08, 2017 at 12:31:47PM -0500, Trevor Woerner wrote:

> openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
> fail to compile:
> 
> 	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N
> 
> Building with -N does fix the issue, so this patch simply adds that flag to
> the build so it succeeds.
> 
> This has been build-tested, as well as run-tested on the firefly.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Unless there's an immediate need I would ask holding off on this for a
bit, I want to track down why this is happening.

-- 
Tom

