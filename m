Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92A8DE0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:51:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rB5GpNlw003761
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Dec 2013 08:51:23 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 5 Dec 2013 08:51:23 -0800
Message-ID: <52A0AF06.8050407@windriver.com>
Date: Thu, 5 Dec 2013 11:51:18 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Stefan Roese <stefan.roese@gmail.com>, <yocto@yoctoproject.org>
References: <52A0A38E.7020903@gmail.com> <52A0A520.7060103@windriver.com>
	<52A0A974.9080207@gmail.com> <52A0AAF6.2000509@windriver.com>
	<52A0AD72.5080908@gmail.com>
In-Reply-To: <52A0AD72.5080908@gmail.com>
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
X-List-Received-Date: Thu, 05 Dec 2013 16:51:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-12-05 11:44 AM, Stefan Roese wrote:
> On 05.12.2013 17:33, Bruce Ashfield wrote:
>>>> What exactly are you tried to change on a per-board basis ? Assuming
>>>> it is variables, you can use the standard OVERRIDES mechanism to
>>>> have a version specific bbappend, that changes variables on a per
>>>> board basis.
>>>>
>>>> i.e.
>>>>
>>>>         FOO_<machine name> = "bar"
>>>>         FOO_<another machine name> = "bar2"
>>>>
>>>> Assuming the generic recipe uses these variables appropriately, you'll
>>>> be fine.
>>>
>>> Specifically its the SRC_URI / SRC_URI_append variable (e.g. for a linux
>>> kernel and u-boot etc). And since this one is used in many recipes, I
>>> can't just put those settings in the machine conf file.
>>>
>>> Do you have any recommendations how to change this variable (per recipe)
>>> without touching the generic bb file?
>>
>> You can absolutely change the SRC_URI on a per-board basis. Just use
>> the technique that I showed above, and do it in a bbappend to your
>> linux recipe.
>>
>> i.e. something like: SRC_URI_qemux86 += "file://myfancypatch.patch"
>
> Yes, right. But this would mean doing it in a "generic" bbappend file? E.g.
>

Definitions vary. I wouldn't call that generic :)

> recipe:
> linux-xyz_3.12.bb
>
> and its "generic" append file:
> linux-xyz_3.12.bbappend
>
> And thinking about for example 20 boards, this would mean to add 20
> "SRC_URI_fooabc" defines to this bbappend file. Just shifting the
> changes from the bb file to the "common" bbappend file.

Yes that's how variable namespace and override resolution works (at
a high level).

>
> What I was looking for is more a way to do this on a one-file-per-board
> basis. Is this possible somehow?

There are plenty of things you could do, but I'd think of them more as
hacks (or maybe someone else reading has a clean suggestion that I'm
not aware of) with python, etc.

You could also have a layer per board, and each layer have a bbappend
with the boards changes, that's what layers provide already.

On a separate note, if you really are managing this many boards, with
patches, configs and separate changes you really don't want to spread
those patches into many layers, files and rcipes. Maintenance becomes
a big problem, as does patch failures and consistent configuration
management.

Cheers,

Bruce

>
> Thanks,
> Stefan
>


