Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBCF4E00746
	for <yocto@yoctoproject.org>; Sat,  3 Mar 2012 20:01:07 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2440skl012358
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 3 Mar 2012 20:00:54 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.27) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 3 Mar 2012 20:00:54 -0800
Message-ID: <4F52E8F4.80903@windriver.com>
Date: Sat, 3 Mar 2012 23:00:52 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<52339f4d415098f5903b6bce50206d404b12bb8d.1330644090.git.darren@dvhart.com>
	<4F513892.6020106@windriver.com> <4F513E38.2050102@linux.intel.com>
In-Reply-To: <4F513E38.2050102@linux.intel.com>
Cc: Darren Hart <darren@dvhart.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/6] eg20t: Enable serial console for the pch_uart
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 04 Mar 2012 04:01:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-02 4:40 PM, Darren Hart wrote:
>
>
> On 03/02/2012 01:16 PM, Bruce Ashfield wrote:
>> On 12-03-01 06:59 PM, Darren Hart wrote:
>>> From: Darren Hart<dvhart@linux.intel.com>
>>>
>>> The FRI2 uses the pch_uart driver for the serial console. Enable the console
>>> driver.
>>
>> It this safe for all eg20t users ? I see the crownbay also
>> uses this.
>
> It is safe. The new code that this enables is machine specific. The
> console code would only kick in if the console is set to ttyPCH1, which
> it obviously isn't as that didn't work before. Shouldn't be a problem.

Perfect. Thanks for the confirmation.

Bruce

>
> --
> Darren
>
>
>> Bruce
>>
>>>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> ---
>>>    meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    1 +
>>>    1 files changed, 1 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>> index ff2f6fd..3d4969c 100644
>>> --- a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>> +++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>> @@ -3,6 +3,7 @@
>>>    CONFIG_PCH_DMA=y
>>>
>>>    CONFIG_SERIAL_PCH_UART=y
>>> +CONFIG_SERIAL_PCH_UART_CONSOLE=y
>>>    CONFIG_SERIAL_CORE=y
>>>
>>>    CONFIG_SPI=y
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


