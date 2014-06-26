Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E486FE00524; Wed, 25 Jun 2014 19:51:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B256EE003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 19:51:03 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5Q2p06a008317
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Jun 2014 19:51:00 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 25 Jun 2014 19:51:00 -0700
Message-ID: <53AB8A92.4010105@windriver.com>
Date: Thu, 26 Jun 2014 10:50:58 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <9AD1F2A584A7644C9605656D538412FEAA78E9@G08CNEXMBPEKD03.g08.fujitsu.local>
	<53AB7E9C.1000805@windriver.com>
	<9AD1F2A584A7644C9605656D538412FEAA7918@G08CNEXMBPEKD03.g08.fujitsu.local>
In-Reply-To: <9AD1F2A584A7644C9605656D538412FEAA7918@G08CNEXMBPEKD03.g08.fujitsu.local>
Subject: Re: seek help: I want to get SRC_URI, SRC_URI[md5sum] and SRC_URI[sha256sum] of compiled recipes
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
X-List-Received-Date: Thu, 26 Jun 2014 02:51:07 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 06/26/2014 10:45 AM, yaoxp@cn.fujitsu.com wrote:
>>
>> On 06/26/2014 09:44 AM, yaoxp@cn.fujitsu.com wrote:
>>> Hi everyone
>>>
>>> I want to get SRC_URI,SRC_URI[md5sum] and SRC_URI[sha256sum] of
>> compiled recipes.
>>> How to achieve it?
>>>
>>> e.g.
>>> # bitbake core-image-minimal
>>>
>>> I want to get SRC_URI,SRC_URI[md5sum] and SRC_URI[sha256sum] of
>> compiled BB files, including native BB files.
>>
>> I think that you can get them one by one, perhaps you can add something like:
>>
>> d.getVar('SRC_URI', True)
>> d.getVarFlag('SRC_URI', 'md5sum', True)
>> d.getVarFlag('SRC_URI', 'sha256sum', True)
>>
>> to the base_do_fetch in meta/classes/base.bbclass.
>
> I see. Thank you very much.
>
> Will Yocto add this functionality?

I think no:-) since this is not a common function.

>
> I think Yocto should achieve the following functions:
> 1. Allows the developmenter to easily know which recipes were compiled and the information of compiled recipes.
>    Such as all the information listed in a file.

Maybe you can try the archiver.bbclass, check
meta-yocto/conf/local.conf.sample.extended

for more info.

> 2. Which recipes will be compiled before really compile.

bitbake -g core-image-minimal

Then I think that the pn-buildlist is what you need.

// Robert

>
> Thanks
> Yao Xinpan
>
>>
>> // Robert
>>
>>>
>>>
>>> ----------------------------------------------
>>> NAME: Yao Xinpan
>>> TEL:8559
>>>
>>>

