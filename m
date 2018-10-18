Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C868AE00994; Thu, 18 Oct 2018 13:48:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F138E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 13:48:36 -0700 (PDT)
Received: from [10.80.45.152] (unknown [71.69.156.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8B3A62145D;
	Thu, 18 Oct 2018 20:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539895716;
	bh=h9vLzrc8jTBslYAufs4u3QlGmX/MbR3BBU43lSQAVfs=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=B9gm/pCepX+2JD1gnp17LQgdLIkXOi7RX/wCjHU5ZWB/04PM3tUWVvmI6lhHEz1Sx
	p2NHcDG0KF3xKR3jMQ2UH9nZ9NFj7nqWIYMWfTBYLbZ16Uk+nGPj9XyFH8LpSBoAzU
	EYxp+Q0e5txpW3vsD9gA1lfkMkiWwy3YHf4rJHbw=
To: Joe MacDonald <Joe_MacDonald@mentor.com>,
	Mark Hatle <mark.hatle@windriver.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <da77004b-e0df-82c1-7f87-9ccba1a33ea3@kernel.org>
Date: Thu, 18 Oct 2018 16:48:34 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181018190803.GB25172@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Thu, 18 Oct 2018 20:48:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/18/2018 3:08 PM, Joe MacDonald wrote:
>> Sorry, I thought it had been created.  I'm going to be traveling the
>> next few days to ELC-E, but I will try to get to it if someone else
>> does not first.
> Yeah, Mark and I are both going to be at ELC-E this week, we'll get it
> sorted out.

thanks.

