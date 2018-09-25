Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59DBDE00BA2; Mon, 24 Sep 2018 22:24:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12684E00B9D
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 22:24:11 -0700 (PDT)
Received: from [192.168.0.106] (cpe-174-109-247-98.nc.res.rr.com
	[174.109.247.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5B22120877;
	Tue, 25 Sep 2018 05:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537853050;
	bh=4ERnUzFca7vmdnlPgP8xr4MEDqBa7Lm1yaJZjiV6HvQ=;
	h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
	b=zgKylWu8+jKCTubOwP51gBVbjsInCtgepNJCIBJkahjHvHXTGlAgGDv/q+oy8nQDF
	VXrz9UUzttNA3i6icrzZXtExEYF2YCNqWlyTCp5nCXwly6FXQZSLRZ6lrTVo7MIt0I
	CDHC/wJfSf10y79KRFsrX+b4NWYpQ/8/5fCRSJWQ=
From: Sinan Kaya <okaya@kernel.org>
To: akuster <akuster@mvista.com>, akuster808 <akuster808@gmail.com>,
	yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
	<23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
	<3d9fa759-08a4-319d-bc78-dcc86ece44ce@kernel.org>
	<1ad18ccd-6f59-cfa3-f920-256db4c6cd6e@mvista.com>
	<b70a9d8e-0245-1788-9607-56ed20f213ae@kernel.org>
Message-ID: <91d585bd-c381-86db-28cc-7e90aba7da83@kernel.org>
Date: Tue, 25 Sep 2018 01:24:09 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b70a9d8e-0245-1788-9607-56ed20f213ae@kernel.org>
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
X-List-Received-Date: Tue, 25 Sep 2018 05:24:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/24/2018 10:27 AM, Sinan Kaya wrote:
> Here is another one.
> 
> https://patches.openembedded.org/patch/154290/

I see you pulled this into rucko-nmut. It is also needed for the sumo
branch.

