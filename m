Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8D7BE00AC8; Fri, 21 Sep 2018 13:43:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4722E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 13:43:53 -0700 (PDT)
Received: from [10.17.91.149] (rrcs-70-63-152-218.midsouth.biz.rr.com
	[70.63.152.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4C59E21477;
	Fri, 21 Sep 2018 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537562633;
	bh=9AEvrbMBlcSPo5DeBc3+WsNv3QdE1oKJCvma82zozDw=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=jpeCWH9LrC7Tx07ZXkKM+Wj9lz8wJ1sKsl+khHik6CK5UTqI7izpDqvg12LV66uXh
	xbvz/VvEmKvnQ+T/D2OFC1rnabf30alOe3aPMmZ0X5hH4y79hRnXqVraMW2n7DoVyj
	988/qNt3/hbUcA2OnnFrCPJ7L5Porpf6JnmF/qyc=
To: akuster808 <akuster808@gmail.com>, yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
	<23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <4428d114-d59f-6793-7805-f3a696604018@kernel.org>
Date: Fri, 21 Sep 2018 16:43:51 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
Cc: Sasha Levin <Alexander.Levin@microsoft.com>
Subject: Re: [RFC] CVEs on sumo branch
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
X-List-Received-Date: Fri, 21 Sep 2018 20:43:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/21/2018 4:35 PM, akuster808 wrote:
> For the rest can you sent them to the proper mailing list
> openembedded-core@lists.openembedded.org  via git send-patch.
> 
> I noticed a few of the patches for recipes need some addition information:
> please review
> https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
> 
> In general, we need to make sure Master is not affected before I can
> take them into Sumo.

Sure, I'll work on it. I'm fairly new to working with the yocto upstream.

