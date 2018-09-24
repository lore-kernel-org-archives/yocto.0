Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CCBE00A9C; Mon, 24 Sep 2018 07:27:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0848E00566
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 07:27:56 -0700 (PDT)
Received: from [10.80.45.152] (unknown [71.69.156.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C3C121480;
	Mon, 24 Sep 2018 14:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537799276;
	bh=aRkNkKdPsOtRqIXA/DLHIOWguecoJXtgQ5Y/85youOA=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=EDhdmCupBTZVw/+C0tGXvCza8gJSMuOTcWBm9F+4469SHuHySt8uyKutTRfcNcC/4
	bVUEXtJaJjJ6c/SIxJfnYJ8tRqJh3tFEjU5wirXpqd+vMEDFhe5G0CmDoMMtSdQ/58
	DseTmhANLVMBpSXnXnn2AW8UeGUS5kFbcOJscnyo=
To: akuster <akuster@mvista.com>, akuster808 <akuster808@gmail.com>,
	yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
	<23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
	<3d9fa759-08a4-319d-bc78-dcc86ece44ce@kernel.org>
	<1ad18ccd-6f59-cfa3-f920-256db4c6cd6e@mvista.com>
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <b70a9d8e-0245-1788-9607-56ed20f213ae@kernel.org>
Date: Mon, 24 Sep 2018 10:27:54 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1ad18ccd-6f59-cfa3-f920-256db4c6cd6e@mvista.com>
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
X-List-Received-Date: Mon, 24 Sep 2018 14:27:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/22/2018 10:46 AM, akuster wrote:
>> Signed-off-by: Zheng Ruoqin<zhengrq.fnst@cn.fujitsu.com>
>>      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> What does it take to move this in the right direction?
> bring it to my attention like you have.
> 
> backported it for the next build round.

Here is another one.

https://patches.openembedded.org/patch/154290/

I'll post

gnupg: CVE-2018-9234

shortly.

