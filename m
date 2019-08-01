Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B195E00D75; Thu,  1 Aug 2019 11:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45D3E00C87
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:34:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x71IYeGr000619
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Aug 2019 11:34:40 -0700 (PDT)
Received: from [128.224.56.213] (128.224.56.213) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 1 Aug 2019 11:34:40 -0700
To: Anibal Limon <anibal.limon@linaro.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
	<20190717183530.24893-4-Randy.MacLeod@windriver.com>
	<CA+_AqivTCYrO01kHZ0SKxH6XK84D5DZSWF-cH0G=8GfSeVeKrQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <d9abcc4c-806b-cc19-9dc7-77e3e734f704@windriver.com>
Date: Thu, 1 Aug 2019 14:34:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+_AqivTCYrO01kHZ0SKxH6XK84D5DZSWF-cH0G=8GfSeVeKrQ@mail.gmail.com>
X-Originating-IP: [128.224.56.213]
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner][PATCH 4/4] Fix additional warnings when using clang
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
X-List-Received-Date: Thu, 01 Aug 2019 18:34:46 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

On 8/1/19 2:19 PM, Anibal Limon wrote:
> Hi Randy,
>
> Just push your clang fixes to master and created v2.3.2 tag, feel free 
> to send a recipe upgrade.
>
> Regards,
> Anibal

Hi Anibal,

Excellent! I will send a recipe update.

Thanks,

-- 
# Randy MacLeod
# Wind River Linux


