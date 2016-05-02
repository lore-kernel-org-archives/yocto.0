Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7356E00D64; Mon,  2 May 2016 03:44:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F540E00D58
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 03:44:23 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id x201so184391350oif.3
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 03:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tdtLFbbI0BtZpw+ySVJxDGLJLHnPomxefpnHA1ZLzPc=;
	b=ZQOql3DtwQ8R62hCDXTbO74iNQ5n7CEL38uOZk0IfTbrWHF0np04UPzaB8YvE76jzJ
	OI116um/aTOgH7LV2cw1LIzipXAQuj5h7xMzetgekp+X6anaKQDp9utc9VW1KzaA9bd2
	ee16+dYujqdC1rsxUqco3tTy3Zk5NtvEsosagxjEZYJ7yM1EKMkm4J9t7LRDc+HL0rWO
	nNviKYHmc8FlwabCedjOatR+SjNq7hLeoslBJWTW/Qnwiyj2BH7qj6G1QhqzDC567RfF
	jHQ5vJvdmlGOf5qz6GLK4/oPnVkpwzUVApJUpFqkHmg9XqLGXLV7QkUbQxv093iVdFn8
	2k7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tdtLFbbI0BtZpw+ySVJxDGLJLHnPomxefpnHA1ZLzPc=;
	b=RHWSIEt8IMad53PvCdXD0iHNYFozvdRNhb/33n9gUGi+Pf+YxUoaEsFjvwKwdWV/Ht
	NE7hGW8uGJJbFgag3h9US96eBMiOjy9Shc5yH3RNAqBN4q62ect4bIS7EZJ4UAQSS26a
	q2g1mllSltifKC7GyOQPq6Z2h0LieGnnU7ZB2owFvoFjrGLt8ixgpc3jvp/nhZ/GYve8
	o0aHb9HXyqUc8MuoDLP3cBGrYq+w9k+B/L07ph1r9KQOavrOLlFAgbOeaxE9TK20XaOL
	wvNaPT8kHngqTnbjpzoNCTRt8FyVOEq9mJvF4LqkKMoJWKkGNYZ6YYkGcK3eSvAPOa3b
	SmEg==
X-Gm-Message-State: AOPr4FWwtxm8a1IP6ED6rda9luNc73yc6BcD/sfNjmFOD2Ybwz590O2UkhBDXkSWcm7FS5Fa33c7LsNrqyKmvhxK
X-Received: by 10.202.60.138 with SMTP id j132mr12958298oia.201.1462185862606; 
	Mon, 02 May 2016 03:44:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.173.193 with HTTP; Mon, 2 May 2016 03:43:53 -0700 (PDT)
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 2 May 2016 13:43:53 +0300
Message-ID: <CAHiDW_GebR2LB8Jous2VS+ADdmzO0AMt8aZZXRBRdWc4Y7Zy5A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [matchbox-desktop-2][PATCH 00/16] Upgrade to GTK+3
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
X-List-Received-Date: Mon, 02 May 2016 10:44:26 -0000
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 16:02, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:
> Code still uses some deprecated API, but nothing that I expect to be
> removed in the next GTK+ releases.

I'll have a another go at fixing these deprecation warnings and will
let you know : feel free to review the other patches though.

Jussi

