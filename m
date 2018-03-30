Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF716E00C40; Fri, 30 Mar 2018 08:18:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E7DE00BAA
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 08:18:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2UFI1iq000433
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Mar 2018 08:18:01 -0700 (PDT)
Received: from server.local (128.224.21.75) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 30 Mar 2018 08:18:00 -0700
To: Vincent Daanen <vincent.daanen@orthotaxy.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
	<VI1P192MB0143A7A3AA8AB0E0433F0E738DA10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <21f3437f-9256-d24f-d21a-6b4556c75e27@windriver.com>
Date: Fri, 30 Mar 2018 11:18:00 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB0143A7A3AA8AB0E0433F0E738DA10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
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
X-List-Received-Date: Fri, 30 Mar 2018 15:18:06 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-03-30 9:08 AM, Vincent Daanen wrote:
> Hi
> 
>> On 03/29/18 16:12 PM, Bruce Ashfield wrote:
>> [cut]
>> Do you have all of the CAN* Kconfig dependencies in your defconfig ?
> No only the ones I need
> 
>> If you don't, the kernel config subsystem will turn them off.
>>
>> Also note that a 'defconfig' translates to a merge config run (yes, even with just a defconfig) of 'allnoconfig', so that can also be turning off dependencies if they were only valid via their default and were not explicitly specified.
>>
>> You can set KCONFIG_MODE="alldefconfig" in a linux-yocto bbappend to change what mode merge-config uses.
> I tried this but got the same result ☹!
> Do you think I have to set all the "CAN*" dependencies?

Is this using master of oe-core ? Is this a setup that I can
configure and build here ?

If I can easily reproduce it, I can offer better suggestions.

Bruce

> 
> 
> Vincent
> 
> 


