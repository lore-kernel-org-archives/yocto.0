Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9632DE00DE0; Thu, 20 Jun 2019 02:09:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 041A3E00BAF
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 02:09:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5K99Opn001509
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 20 Jun 2019 02:09:24 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 20 Jun 2019 02:09:23 -0700
To: <richard.purdie@linuxfoundation.org>, <yocto@yoctoproject.org>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
	<1556607386-98960-1-git-send-email-changqing.li@windriver.com>
	<d344ac6a-5592-4c0d-6d4d-bb9899412c4e@windriver.com>
	<1fdd6cf809303377f2588b3aa07576e0a2398b86.camel@linuxfoundation.org>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <7bef8b99-893e-9a6a-f8e8-4a2c161a5669@windriver.com>
Date: Thu, 20 Jun 2019 17:09:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1fdd6cf809303377f2588b3aa07576e0a2398b86.camel@linuxfoundation.org>
X-Originating-IP: [128.224.162.186]
Subject: Re: [PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Thu, 20 Jun 2019 09:09:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 6/20/19 3:28 PM, richard.purdie@linuxfoundation.org wrote:
> On Thu, 2019-06-20 at 10:07 +0800, Changqing Li wrote:
>> Please also help to review this patch, Thanks.
> This patch needs to go to OE-Core for the bbclass part. The
> documentation piece needs to be separated out as its a different
> repository. Also doesn't it depend on the change I just made to the
> update-rc.d repo so there will be a SRCREV that needs to be updated
> that this depends on?

I will  split   the oe-core and document part.

without change in update-rc.d.bbclass, new function add in update-rc.d 
repo will not work.

since preinst in update-rc.d.bbclass will delete all the links under  
rcrunlevel.d, this behavior

conflicts with enable/disable options.

and you're right,  I also need to update SRCREV of update-rc.d.bb in 
oe-core repo.

Thanks.

I will send it later.

> Thanks,
>
> Richard
>
>
>
-- 
BRs

Sandy(Li Changqing)


