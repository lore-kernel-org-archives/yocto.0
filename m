Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F656E00E0A; Fri, 30 Aug 2019 00:07:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2346E00E01
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 00:07:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7U77MmC001398
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Aug 2019 00:07:23 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Fri, 30 Aug 2019 00:07:22 -0700
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1567144722-454944-1-git-send-email-changqing.li@windriver.com>
	<be77c2ec8eec35c8b63532877cb38c7c5894c5c5.camel@intel.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <d8436e17-6771-d3c7-5739-92debc60ffc5@windriver.com>
Date: Fri, 30 Aug 2019 15:07:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <be77c2ec8eec35c8b63532877cb38c7c5894c5c5.camel@intel.com>
X-Originating-IP: [128.224.162.186]
Subject: Re: [meta-dpdk][PATCH] dpdk: support usrmerge
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
X-List-Received-Date: Fri, 30 Aug 2019 07:07:30 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 8/30/19 2:43 PM, Mittal, Anuj wrote:
> On Fri, 2019-08-30 at 13:58 +0800, changqing.li@windriver.com wrote:
>> -export
>> MODULE_DIR="/lib/modules/${KERNEL_VERSION}/kernel/drivers/net"
>> +export MODULE_DIR="${@bb.utils.contains('DISTRO_FEATURES','usrmerge'
>> ,'/usr','',d)}/lib/modules/${KERNEL_VERSION}/kernel/drivers/net"
>>   export RTE_SDK = "${S}"
>>   
> Should this be:
>
> MODULE_DIR =
> "${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/drivers/net"
>
> It should then be handled automatically. Can you please check?
you are right,  it can write like this. I will send a V2
>
> Thanks,
>
> Anuj

-- 
BRs

Sandy(Li Changqing)


