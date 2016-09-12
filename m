Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0735DE0044F; Mon, 12 Sep 2016 07:31:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8919E0043B
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 07:31:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8CEVNEv007577
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 12 Sep 2016 07:31:24 -0700
Received: from soho-mhatle-m.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Sep 2016 07:31:23 -0700
To: Zhenhua Luo <zhenhua.luo@nxp.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
Date: Mon, 12 Sep 2016 09:31:22 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Mon, 12 Sep 2016 14:31:33 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 9/12/16 12:07 AM, Zhenhua Luo wrote:
> Hi Mark, 
> 
> Thanks a lot for your comments. 
> 
> Is there plan to support non-MMU targets in Yocto? 
> 

Not that I am aware of.

--Mark

> Best Regards,
> 
> Zhenhua
> 
>> -----Original Message-----
>> From: Mark Hatle [mailto:mark.hatle@windriver.com]
>> Sent: Friday, September 09, 2016 10:37 PM
>> To: Zhenhua Luo <zhenhua.luo@nxp.com>; 'yocto@yoctoproject.org'
>> <yocto@yoctoproject.org>
>> Subject: Re: [yocto] Cortex-M4 build support
>>
>> On 9/9/16 2:58 AM, Zhenhua Luo wrote:
>>> Hi all,
>>>
>>>
>>>
>>> Can Yocto support image build for Cortex-M4 targets? If no, does
>>> somebody know if there is some distro/packaging tool which can support
>> Cortex-M4?
>>>
>>
>> The Cortex-M4 does not have an MMU.  The Yocto Project system, currently,
>> only supports MMU based architectures.
>>
>> If Linux is a requirement for you, you will need to find a non-MMU based
>> uClinux system to work with.
>>
>> Otherwise there are a number of other embedded OSs for MMU-less targets
>> that may be more appropriate to the memory and system constraints of the M
>> series CPUs.
>>
>> --Mark
>>
>>>
>>>
>>>
>>> Best Regards,
>>>
>>>
>>>
>>> Zhenhua
>>>
>>>
>>>
> 


