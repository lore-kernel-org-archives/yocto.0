Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A38E00AC8; Fri, 21 Sep 2018 14:07:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1CADE00AB9
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 14:07:09 -0700 (PDT)
Received: from [10.17.91.149] (rrcs-70-63-152-218.midsouth.biz.rr.com
	[70.63.152.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 457442154C;
	Fri, 21 Sep 2018 21:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537564029;
	bh=EiPCQkqeG23xmWSee1g70PUGhW+D3re8Jt0T4tv9MFY=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=o0YtK7F3/UOTc7SBrRiFTH4NrEQwt00lvpPQhffF0tyZ327Yx251N139IjnROrJQ9
	qsEbsoMfGDFWxthU2GijEsfyraksZcvvdXad6v1WPxhTEYlzPeNfA2OMs6WvSf319D
	oJztrQSzEiizkhxqnDlvlSm+Ca75Okwoxnsmsu/I=
To: akuster808 <akuster808@gmail.com>, yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
	<23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <3d9fa759-08a4-319d-bc78-dcc86ece44ce@kernel.org>
Date: Fri, 21 Sep 2018 17:07:08 -0400
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
X-List-Received-Date: Fri, 21 Sep 2018 21:07:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/21/2018 4:35 PM, akuster808 wrote:
> I already have in my sumo-next
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=stable/sumo-next
> libcroco: patch for CVE-2017-7960
> <http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&id=c02364a464d2e96ca663018d5266c68751f2c335>
> 
> libarchive: CVE-2017-14501
> <http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&id=8d7f5e76cad2127e477056ce42d1be06b4df5b5c>
> 
> For the rest can you sent them to the proper mailing list
> openembedded-core@lists.openembedded.org  via git send-patch.

Actually, I took this from open-embedded master branch.

https://github.com/openembedded/openembedded-core/commit/b9b254da08c1db94ac9ded5f67d7e2e82e3b9be7

commit b9b254da08c1db94ac9ded5f67d7e2e82e3b9be7
Author: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
Date:   Tue Jun 26 13:44:17 2018 +0800

     glibc: fix CVE-2018-11237

     glibc: fix CVE-2018-11237

     Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

What does it take to move this in the right direction?

I'll take care of the remaining 3.

