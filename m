Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07C8AE007BA; Wed,  8 Mar 2017 20:42:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 984D5E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 20:42:13 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id h10so122430089ith.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 20:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=uki8nbMx53fW6j9iHw5jpHsuudb8r/QiX2AKb51eGT8=;
	b=tYwu8Eh4GusnthkVfWZe/7AndtXjgNT2IbxrQS7q76ZdZmKCj6qS2PeGKJQFoiyD2D
	SznCpQVDXwFSYCwH8ZtSZme8ADwVIdicd2qxifMirkDEc9tXxI9fY4h8ZroiFZGNd3AA
	+WvlnwgJJW8z6WAnElX4Hi9MVP6GwFsa5rN0kVR35zlvL3X1tP3R2a5JzQQROxmwsEOX
	spbpEIdn++iij/AzzJwKzZyBhY3+qB8M0LAOn486dw0OZ8bVraoe7vs47IgnbN2/0EBQ
	KLG3dwRemXZNz7HOWwChEH0hehLCVqMf9QmEFMwLrQjELRH7WNyZQmk8sq63Q2pP+OCz
	thbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=uki8nbMx53fW6j9iHw5jpHsuudb8r/QiX2AKb51eGT8=;
	b=B0t+/t2CkELcaoSQZoAf7voNoWP8Z2Ly3YIdGZR1zAzFJUz6Cyff86P46iM0oeUwjF
	XsJoaVI+PCpLx4C7FqpUer+9ZlBuMZxM2BHIXVBKNIqVWm8ZxzrppLLU57t0WHZDCjXu
	g+j6oWjMEaWK6vs8Uj0Lt95UaNCZQi5hAmWYN+dM9DZTUSgt76iBEZE1ZQvcdLpJT5EN
	JDxK0ZelAo4/pUXfMewzy32A23RBxb2ZB5j3o95BZ4Voj3TVs3MBZc56VsCserpef1Vt
	2HGz36sle+tzihXFwDex3hsi59+SQCkac9l/FIkwdR5UertM3yaivx8wMK/vbqpWnOly
	g6hA==
X-Gm-Message-State: AMke39mjRpghUwxURAGBhFfWQAmBA/BZie4JSHjsTzKRE9KNTUEpV4OmPnoRZw5MWrpzZg==
X-Received: by 10.36.60.211 with SMTP id m202mr9375484ita.58.1489034532440;
	Wed, 08 Mar 2017 20:42:12 -0800 (PST)
Received: from linux-uys3 ([104.247.246.30]) by smtp.gmail.com with ESMTPSA id
	m100sm2528152iod.14.2017.03.08.20.42.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 20:42:11 -0800 (PST)
Date: Wed, 8 Mar 2017 23:42:09 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20170309044209.GA4366@linux-uys3>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20170308232821.GH19897@bill-the-cat>
User-Agent: Mutt/1.6.0 (2016-04-01)
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
X-List-Received-Date: Thu, 09 Mar 2017 04:42:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2017-03-08 @ 06:28:21 PM, Tom Rini wrote:

Whoa! I didn't know I'd find you here :-) Bravo!

> Unless there's an immediate need I would ask holding off on this for a
> bit, I want to track down why this is happening.

No problem. I really just want people to know I've found a work-around, just
in case.

