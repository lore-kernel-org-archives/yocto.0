Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF8DDE00DC9; Tue, 10 Jul 2018 01:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29417E00812
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 01:24:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6A8OCpn006412
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jul 2018 01:24:12 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 10 Jul 2018 01:24:11 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
	<1909416.gzoZmKSdQq@localhost.localdomain>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <77623ed2-1163-2412-7cda-6bfe74d5bbfa@windriver.com>
Date: Tue, 10 Jul 2018 16:27:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1909416.gzoZmKSdQq@localhost.localdomain>
X-Originating-IP: [128.224.162.218]
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Tue, 10 Jul 2018 08:24:16 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2018 02:18 PM, Paul Eggleton wrote:
> On Tuesday, 10 July 2018 3:32:56 AM CEST ChenQi wrote:
>> I usually use the following steps when I need to modify source for some
>> purpose.
>>
>> 1. bitbake A (or at least bitbake A -c configure)
>> *2. cd tmp/work/xxxxx/A/<source dir>**
>> **3. make the modification*
>> 4. bitbake A -c compile -f
>> 5. bitbake A
>>
>> If you find the modification useful, make a patch from it.
> This is the old way of doing it which can under some circumstances result in
> you losing your changes to the source tree, since the sources under tmp/work/
> are only ever intended to be there temporarily. Devtool (as recommend by
> others on this thread) is designed to enable this workflow in a much safer
> manner.
>
> Cheers,
> Paul
>
Thanks Paul. I'll turn to use devtool.

Best Regards,

Chen Qi


