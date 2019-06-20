Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87613E00DE0; Wed, 19 Jun 2019 19:06:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E6FBE00CD5
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 19:06:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5K25ECB014913
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Jun 2019 19:05:35 -0700
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 19 Jun 2019 19:05:03 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	<yocto@yoctoproject.org>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
	<1556607386-98960-1-git-send-email-changqing.li@windriver.com>
	<1556607386-98960-2-git-send-email-changqing.li@windriver.com>
	<9c91416162466b6f8c7990804a9fd9c6689ad131.camel@linuxfoundation.org>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <a6437aa9-d76f-b05c-2d3f-9d04a1520dae@windriver.com>
Date: Thu, 20 Jun 2019 10:05:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9c91416162466b6f8c7990804a9fd9c6689ad131.camel@linuxfoundation.org>
X-Originating-IP: [128.224.162.186]
Subject: Re: [update-rc.d][PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Thu, 20 Jun 2019 02:06:02 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 6/19/19 10:43 PM, Richard Purdie wrote:
> On Tue, 2019-04-30 at 14:56 +0800, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Add support of enable/disable options, refer
>> https://manpages.debian.org/wheezy/sysv-rc/update-rc.d.8.en.html
>>
>> With support of these options, the usr can never change an existing
>> configuration even after upgrading a package. The program will only
>> install links if none are present, otherwise, it will keep
>> the previous configuration.
>>
>> preinst in update-rc.d.bbclass will delete all the links under
>> rcrunlevel.d, this behavior now conflicts with enable/disable
>> options. so remove preinst from the update-rc.d.bbclass
>>
>> [Yocto 12955]
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> Merged, thanks, sorry about the delay.
>
> Richard
>
>
Thanks, Richard.

I see this patch have merged into repo update-rc.d.  But in this patch 
series,  there are

2 patches,  please also help to review the other one.  Maybe this patch 
series seems a little messy

in the mail.  I will reply on the other patch for you to pick it out easily.

-- 
BRs

Sandy(Li Changqing)


