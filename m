Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09B6BE009CA; Wed, 25 Apr 2018 13:49:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E999E005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 13:49:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3PKnQ81008277
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Apr 2018 13:49:27 -0700 (PDT)
Received: from [172.25.44.10] (172.25.44.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 25 Apr 2018 13:49:26 -0700
To: <yocto@yoctoproject.org>, <zoran.stojsavljevic@gmail.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
	<CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <1feca789-bc64-ae02-159f-c75b66bdbd3e@windriver.com>
Date: Wed, 25 Apr 2018 16:49:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
X-Originating-IP: [172.25.44.10]
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 25 Apr 2018 20:49:29 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2018-04-25 03:50 PM, Burton, Ross wrote:
> Jethro doesn't support Yocto 16.* because it is very old (released
Err, Jethro doesn't support _Ubuntu_ 16.*
(Yocto 16.* is a ways off! :)  )
> 2015, it's been unmaintained for six months now).  If you want to use
> Jethro despite the known serious security problems then you'll need to
> dig out the relevant fixes from the newer releases.

Can you use a later release of Yocto such as 2.4 or 2.5
aka rocko/sumo?

If you need to use an older release there are companies, such
as Wind River [1], that can provide commercial support for 5+ years
after the Yocto release date. Send me an email off-list and
I'll help you contact our sales people! :)

../Randy

[1] 
https://www.yoctoproject.org/ecosystem/yocto-project-compatible-product-showcase/

This list is a bit out of date, we release WR Linux 10: LTS last fall.
It's based on YP-2.4/rocko


> 
> Ross
> 
> On 25 April 2018 at 20:36, Oliver Graute <oliver.graute@gmail.com> wrote:
>> On 25/04/18, Zoran Stojsavljevic wrote:
>>>> I try to compile yocto jethro environment which is working
>>>> on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
>>>
>>> What would be the benefit for the successful compiling of YOCTO Jethro on
>>> Kubuntu 16.04 over Ubuntu 14.04???
>>
>> I tried to get my Yocto compiled on a PC of a colleague and his
>> installation was a Kubuntu 16.04. I've made the experience that often
>> only additional packages needs to be installed to step over these
>> compile issues. Sometimes its clear from the debug output but in this
>> case I have no Idea which packages is missing. On my develop PC and our
>> Buildserver with Ubuntu 14.04 everything is fine. But I'am afraid that I
>> can get similar trouble if I update to a newer ubuntu release there too.
>>
>> Best regards,
>>
>> Oliver
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


-- 
# Randy MacLeod
# Wind River Linux

