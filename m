Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA81E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:34:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rB5GY2Iw003272
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Dec 2013 08:34:03 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 5 Dec 2013 08:34:02 -0800
Message-ID: <52A0AAF6.2000509@windriver.com>
Date: Thu, 5 Dec 2013 11:33:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Stefan Roese <stefan.roese@gmail.com>, <yocto@yoctoproject.org>
References: <52A0A38E.7020903@gmail.com> <52A0A520.7060103@windriver.com>
	<52A0A974.9080207@gmail.com>
In-Reply-To: <52A0A974.9080207@gmail.com>
Subject: Re: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 16:34:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-12-05 11:27 AM, Stefan Roese wrote:
> Hi Bruce,
>
> On 05.12.2013 17:09, Bruce Ashfield wrote:
>>> I'm trying to add a board specific *.bbappend file to a recipe. To add
>>> board specific informations/settings to this recipe but without changing
>>> the common (generic) recipe (*.bb) file. Something like this:
>>>
>>> recipe:
>>> linux-xyz_3.12.bb
>>>
>>> board-specific append file:
>>> linux-xyz-board-foo_3.12.bbappend
>>>
>>>   From the documentation I read:
>>> "
>>> Append files must have the same root names as their corresponding
>>> recipes. For example, the append file someapp_1.5.1.bbappend must apply
>>> to someapp_1.5.1.bb.
>>> "
>>>
>>> So it seems impossible to "encrypt" the board name into the bbappend
>>> file name. Or am I missing something?
>>>
>>> If not, is there another way to add such board-specific stuff to a
>>> recipe without changing the generic recipe?
>>
>> What exactly are you tried to change on a per-board basis ? Assuming
>> it is variables, you can use the standard OVERRIDES mechanism to
>> have a version specific bbappend, that changes variables on a per
>> board basis.
>>
>> i.e.
>>
>>        FOO_<machine name> = "bar"
>>        FOO_<another machine name> = "bar2"
>>
>> Assuming the generic recipe uses these variables appropriately, you'll
>> be fine.
>
> Specifically its the SRC_URI / SRC_URI_append variable (e.g. for a linux
> kernel and u-boot etc). And since this one is used in many recipes, I
> can't just put those settings in the machine conf file.
>
> Do you have any recommendations how to change this variable (per recipe)
> without touching the generic bb file?

You can absolutely change the SRC_URI on a per-board basis. Just use
the technique that I showed above, and do it in a bbappend to your
linux recipe.

i.e. something like: SRC_URI_qemux86 += "file://myfancypatch.patch"

Cheers,

Bruce

>
> Thanks,
> Stefan
>


