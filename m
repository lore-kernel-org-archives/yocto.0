Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B906EE00903; Wed,  4 Apr 2018 05:22:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5506E008E4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 05:22:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w34CM7Xg000468
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Apr 2018 05:22:07 -0700
Received: from server.local (128.224.21.146) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 4 Apr 2018 05:22:06 -0700
To: Vincent Daanen <vincent.daanen@orthotaxy.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
	<VI1P192MB0143A7A3AA8AB0E0433F0E738DA10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<21f3437f-9256-d24f-d21a-6b4556c75e27@windriver.com>
	<VI1P192MB014383CA38845AA9DDF6F53B8DA40@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <69c84706-c8ac-58b5-6fa8-9bc009516f4a@windriver.com>
Date: Wed, 4 Apr 2018 08:22:06 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB014383CA38845AA9DDF6F53B8DA40@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Wed, 04 Apr 2018 12:22:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-04-04 5:58 AM, Vincent Daanen wrote:
> Hi,
> 
> On 03/30/2018, Bruce Ashfield wrote
>>
>> Is this using master of oe-core ? Is this a setup that I can configure and build here ?
>>
>> If I can easily reproduce it, I can offer better suggestions.
> 
> I'm using rocko version
> Do you need more info to help me ?

Yes, I need your layers, configurations, etc.

Bruce

> 
> Thanks
> 
> Vincent
> 


