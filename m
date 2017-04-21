Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 671EFE00A0A; Fri, 21 Apr 2017 11:50:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30209E0083C
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 11:50:34 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id p80so11943416iop.3
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 11:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=5XA7u/jGjXfz7T6Isb8c7M1ccf/DIsAXbr9pHj/wITw=;
	b=eAojyCB6sYguaaYzUUnuPXqFyf4bXTcbnXm+B7XS2m7+YpoKl+cebZOQTiyqFNGGAz
	mxJZzNsqXWb4N1cd0Mq7zSU96PZ3EP5M+Nfv9lSl6VfT9aI2ytgzjD4r2msBE4e/tJkm
	/x3ebI+OpEaTSPTMATogO18bQNIYzCTFYdVxEMIREMd/5c1LuPyH0nC7c/tf072mzSRz
	wZ0vyAVKxCMTpVzc4QG7sPHHUb3YrlIl+UwEdmibLS8EivQGlLH3UMU8j9IdeO7UQ/Nl
	TVmP4mDn3l30sS3Z/YuehNOiLxjvncscIg8whvOQqzddT6UE/iZX0h04mnhOT8dNmZGd
	5UMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=5XA7u/jGjXfz7T6Isb8c7M1ccf/DIsAXbr9pHj/wITw=;
	b=MI31csaUV2mTtwowMu0mIiJXR8t1vdHhyvRz5d4RFaxyg9V43VTf04BDgcCUY9dIAo
	mEPbePvGNmFmW1LQbbiqClyRsaz7yxW+s/AeOvQ7RdbwqyPhomKiw2wP9ZQ71XJ0r5y0
	Eetrsy+3ZM89Sq4aJz1YHf2yCAn7x/SqGZfDsQ8LcuiTxFCdt0+EGvjAuOhTmNzO7dSq
	bA97O+sDdiRZ5yyFLJQO8RJdnedGK6zSTTCoiZTXswU0j681vwdd2sr8YGnckv9C8P63
	4PXVRaKvJZhHPtZ7oyX/U1yLcs5MANydl+/HR0gKW3tRo2I4t5K5D9VY+As6QDsxQGyz
	EoVQ==
X-Gm-Message-State: AN3rC/77varbcWryICWO02qkQuUtc0MUiyjFiqghQxyGTHKC7RGza+WO
	39nUsAeN1z/Wwg==
X-Received: by 10.107.135.71 with SMTP id j68mr17145600iod.171.1492800629294; 
	Fri, 21 Apr 2017 11:50:29 -0700 (PDT)
Received: from linux-uys3 (157-52-27-174.cpe.teksavvy.com. [157.52.27.174])
	by smtp.gmail.com with ESMTPSA id c95sm941137itd.7.2017.04.21.11.50.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Apr 2017 11:50:28 -0700 (PDT)
Date: Fri, 21 Apr 2017 14:50:26 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: David Bensoussan <dbensoussan@synapticon.com>
Message-ID: <20170421185026.GA8444@linux-uys3>
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Fri, 21 Apr 2017 18:50:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:
> I wanted to generate an sdk and met these errors while executing:
> $ bitbake core-image-base -c do_populate_sdk

Does adding the "do_" work? Is there any difference if you type:

	$ bitbake core-image-base -c populate_sdk

?

