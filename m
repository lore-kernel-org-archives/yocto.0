Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48638E0134D
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 08:33:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0AGX2ih002053
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jan 2012 08:33:02 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Jan 2012 08:33:02 -0800
Message-ID: <4F0C6836.6030409@windriver.com>
Date: Tue, 10 Jan 2012 11:32:54 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@gmail.com>
References: <CANFv2Emzgi2GqXGbLCJ4Ej+umyPHsNmJQ_eMj-6A0XAcVeFtyg@mail.gmail.com>
	<4F0C5E5F.1050709@windriver.com> <4F0C67E9.7040307@gmail.com>
In-Reply-To: <4F0C67E9.7040307@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto on Acer Aspire One NAV50
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
X-List-Received-Date: Tue, 10 Jan 2012 16:33:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-10 11:31 AM, Jim Abernathy wrote:
> On 01/10/2012 10:50 AM, Bruce Ashfield wrote:
>> On 12-01-10 10:47 AM, James Abernathy wrote:
>>> I created a core-image-sato using the meta-n450 BSP hoping I could work
>>> with it on the Acer Aspire One 532h-2588. However, that netbook uses the
>>> Atheros AR5B95 wireless NIC and the Atheros AR8132 wired NIC, which are
>>> not recognized. Is there anything already in Yocto that could be turned
>>> on to support these devices, or am I left with porting the drives?
>>> Since Ubuntu 11.10 with it's kernel 3.0.0 supports these devices and
>>> runs on the netbook, I'm guessing it's a matter of configuring the
>>> kernel to include these modules.
>>> Does this sound right??
>>
>> That should be all that is required. If the drivers you need are
>> indeed in 3.0 (I didn't go check explicitly), then you can create
>> a bbappend for the BSP in a layer, and add a configuration fragment
>> that enables the drivers you need (as modules or builtin, your
>> choice).
>>
>> Examples of config fragments are in the BSP/kernel guides found on
>> the yocto project pages.
>>
> If I'm only making changes to the .config parameters, do I still need to
> create
> a local bare clone of the yocto kernel and also git the poky-extras
> repository as mentioned
> in the Developers Manual appendix B?

Nope. You can just have your config fragment appended to the SRC_URI
and it will be applied to the existing BSP. Only if you were creating
a completely new board, and wanted to work with a local tree would you
need those clones.

Cheers,

Bruce

>
> Jim A
>
>
>> Cheers,
>>
>> Bruce
>>
>>> Jim A
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>


