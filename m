Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF864E00CED; Fri, 22 Feb 2019 15:58:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0998E00CE6
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 15:58:02 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1MNvp4D001250
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Feb 2019 15:57:52 -0800 (PST)
Received: from [128.224.163.169] (128.224.163.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Fri, 22 Feb 2019 15:57:50 -0800
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, Stephen Lawrence
	<stephen.lawrence@renesas.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "mhalstead@linuxfoundation.org"
	<mhalstead@linuxfoundation.org>, "ross.burton@intel.com"
	<ross.burton@intel.com>, "raj.khem@gmail.com" <raj.khem@gmail.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <90c8bc65-0c6f-c600-14c1-f40fef1e1ec4@windriver.com>
Date: Sat, 23 Feb 2019 07:57:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
Cc: "lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Fri, 22 Feb 2019 23:58:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/2/23 上午4:49, Manjukumar Harthikote Matha wrote:
> Hi Hongxu,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Stephen Lawrence
>> Sent: Friday, February 22, 2019 8:52 AM
>> To: Hongxu Jia <hongxu.jia@windriver.com>; richard.purdie@linuxfoundation.org;
>> mhalstead@linuxfoundation.org; ross.burton@intel.com; raj.khem@gmail.com;
>> paul.eggleton@linux.intel.com; yocto@yoctoproject.org
>> Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
>> Subject: Re: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
>>
>> Hi Hongxu,
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
>>> On Behalf Of Hongxu Jia
>>> Sent: 21 February 2019 11:37
>>> To: richard.purdie@linuxfoundation.org; mhalstead@linuxfoundation.org;
>>> ross.burton@intel.com; raj.khem@gmail.com;
>>> paul.eggleton@linux.intel.com; yocto@yoctoproject.org
>>> Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
>>> Subject: [yocto] Review request 0/13: Contribute meta-tensorflow to
>>> Yocto
>>>
>>> Hi RP and Yocto folks,
>>>
>>> Currently AI on IoT edge becomes more and more popular, but there is
>>> no machine learning framework in Yocto/OE. With the support of Eric
>>> <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com> and
>>> Randy <randy.macleod@windriver.com>, after two months effort, I've
>>> integrated TensorFlow to Yocto.
>> Good work.
>>
>> You might be interested in the yocto layers for tensorflow, tensorflow-lite and
>> caffe2 on github here [1]. I'm not part of the team that developed that work but I
>> forwarded your announcement to them. Perhaps there is the opportunity for some
>> collaboration on the platform independent parts. The maintainer details are in the
>> readme.
>>
> Thanks for the layer Hongxu. I agree with Steve, it would be good if you could collaborate with meta-renesas-ai and introduce the layer as meta-ai under meta-openembedded.

Agree, I will add it to my TODO list, more AI, more machine learning

framework should be integrated to Yocto.


//Hongxu


> Thanks,
> Manju
>
>> [1] https://github.com/renesas-rz/meta-renesas-ai
>>
>> The layers were developed for the industrial focused Renesas RZ/G1 platforms.
>>
>> Regards
>>
>> Steve
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



