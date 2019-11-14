Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD32E00E42; Thu, 14 Nov 2019 05:17:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B57E00D86
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 05:16:59 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAEDGtmZ008312
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Nov 2019 05:16:55 -0800 (PST)
Received: from [128.224.158.209] (128.224.158.209) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 14 Nov 2019 05:16:48 -0800
To: Paul Barker <paul@betafive.co.uk>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
	<20191114073323.250920-1-hongxu.jia@windriver.com>
	<74db89fb-7e5f-4e88-b786-60a6f68f22bd@www.fastmail.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <86716804-b574-8c66-e387-ba3f69a0a279@windriver.com>
Date: Thu, 14 Nov 2019 21:16:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <74db89fb-7e5f-4e88-b786-60a6f68f22bd@www.fastmail.com>
Subject: Re: [meta-raspberrypi][PATCH V3] wic: support to set /root size and add extra partition
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
X-List-Received-Date: Thu, 14 Nov 2019 13:17:00 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 11/14/19 8:40 PM, Paul Barker wrote:
> On Thu, 14 Nov 2019, at 07:33, Hongxu Jia wrote:
>> - Support to add extra partition, such as add swap partition
>>    to workaround memory limitation
>>
>> - Support to set /root size
>>
>> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> If you want to make changes like this in a distro or local configuration, I think it'd be easier to add a new .wks file and override WKS_FILE.
>
> FYI, for meta-raspberrypi we usually take patches through GitHub pull requests at https://github.com/agherzan/meta-raspberrypi/pulls.
>
OK, I will do it on our own

//Hongxu


