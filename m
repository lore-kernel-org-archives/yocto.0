Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7632FE01527
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 10:36:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q87HZkJv028674
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Sep 2012 10:35:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 7 Sep 2012 10:35:46 -0700
Message-ID: <504A3069.2050600@windriver.com>
Date: Fri, 7 Sep 2012 13:35:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<CAHUNapQs-i9hAjxz9vj5kR17CiT4y3VRZiEejjef_9ga+ZwOOg@mail.gmail.com>
	<50491060.5030300@balister.org> <50492183.7030101@windriver.com>
	<5049D8FA.8050600@balister.org>
	<CADkTA4OCi8KF_QOALu1LTyT1it6ozvM3jD6Z6bmoFedT+HaWMQ@mail.gmail.com>
	<1347034751.8619.7.camel@ted> <504A2113.8030100@windriver.com>
	<504A2F0A.8080402@balister.org>
In-Reply-To: <504A2F0A.8080402@balister.org>
Cc: Vlad Lungu <vlad.lungu@windriver.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Zhong Hongbo <hongbo.zhong@windriver.com>
Subject: Re: meta-zynq, was Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Fri, 07 Sep 2012 17:36:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-07 01:29 PM, Philip Balister wrote:
> On 09/07/2012 12:30 PM, Bruce Ashfield wrote:
>> On 12-09-07 12:19 PM, Richard Purdie wrote:
>>> On Fri, 2012-09-07 at 08:27 -0400, Bruce Ashfield wrote:
>>>> On Fri, Sep 7, 2012 at 7:22 AM, Philip Balister<philip@balister.org>
>>>> wrote:
>>>>> On 09/06/2012 06:19 PM, Bruce Ashfield wrote:
>>>
>>>>>>>
>>>>>>> Speaking of zynq, I have a simple BSP here for the zc702 board:
>>>>>>>
>>>>>>> https://github.com/balister/meta-zynq
>>>>>>
>>>>>>
>>>>>> We have a namespace collision, there is also:
>>>>>>
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/
>>>>>
>>>>>
>>>>> Before creating the layer I checked:
>>>>>
>>>>> http://www.openembedded.org/wiki/LayerIndex
>>>>>
>>>>> This is where layer information is collected. If a layer is not
>>>>> listed here,
>>>>> yo can expect namespace collisions.
>>>>
>>>> Sure, I don't argue with that, but I wasn't the original owner of the
>>>> layer so
>>>> I can't say why it was or wasn't put into the wiki .. I'm not really
>>>> concerned
>>>> about the minor oversight. They layer I pointed to was done under
>>>> contract
>>>> by xilinx themselves, and contributed to be maintained as a yocto
>>>> BSP, so
>>>> the layers name is not something that I control or can change.
>>>>
>>>> Other similar layers can use the same name if they want, I was
>>>> pointing it
>>>> out for reference, since I've had the same thing pointed out to me in
>>>> the past ;)
>>>
>>> The bigger question is whether that layer is getting maintained. If it
>>> isn't, it will likely get removed. I'd prefer it to get added to the
>>> layer index and the namespace collision getting fixed.
>>>
>>> I was going to cc the maintainer but there isn't one listed in the
>>> README which is a really bad start. The feedback I gave when this was
>>> added has not all been acted upon either (multi-dtb.inc,
>>> layencytop/sysprof nastiness).
>>>
>>> This puts it right at the top of my "likely to get removed soon" list.
>>
>> It is being maintained, updates are pending.
>>
>>>
>>> Bruce: Since you have an idea who wrote it, could you find out whether
>>> its going to get fixed (at the very least fix the README, add to the
>>> index and resolve the namespace) or whether I should be deleting it.
>>
>> Don't delete it. Work is being done. This was supposed to be a primary
>> repository for work, and it is the basis for spin off BSPs. There was
>> a handoff issue between Wind River and Xylinx .. but I don't have all
>> the details.
>>
>> And it's something that I'll be carrying forward and pulling kernel
>> patches into linux-yocto on the next kernel bump.
>>
>> I'll do the simple updates to the README and put it in the layer index.
>
> I'm concerned the kernel version is the yocto project version is based
> off 3.2 and the code in git.xilinx.com is based of 3.3 now.

True. But the work I mentioned is happening is to move this to 3.4.
3.2 is the version that Xilinx requested for initial integration as a
yocto BSP, so that's where it sits for now.

>
> I do not like either situation :)

Niether do I.

>
> But, working with vendors who provide git repos of their work, it is
> easier for people using the boards to track the vendor tree, and not
> spend time figuring out how to get from linux releases to the vendor tree.

In this case, they were hoping to track the yocto kernel versions to
not make version skew or spread the version landscape anymore. As far
as I know, this is still the case, since it makes the route to commercial
support simpler in some cases.

>
> I'd like to see the layers unifed, since we need to reduce confusion,
> but have some reservations about the layer on the Yocto Project server.

I'm sure we can work through them, I'm raising the right people at
Xilinx to discuss as well, since in the end, their voice carries the
most weight.

Cheers,

Bruce

>
> Philip
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>


