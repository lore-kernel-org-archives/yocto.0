Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B1C7E0077C
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 14:53:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2BLr5l8017773
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Mar 2014 14:53:05 -0700 (PDT)
Received: from server.local (147.11.116.126) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 11 Mar 2014 14:53:04 -0700
Message-ID: <531F85C0.6050402@windriver.com>
Date: Tue, 11 Mar 2014 17:53:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Andy Ng <andreas2025@gmail.com>
References: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>	<531F5F68.1030207@windriver.com>
	<CAAVaN8zeR1wS4qKqz9L6bti9RP=5isvKz24gbnXHkaT2JU5qaQ@mail.gmail.com>
In-Reply-To: <CAAVaN8zeR1wS4qKqz9L6bti9RP=5isvKz24gbnXHkaT2JU5qaQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Working with a git'ed kernel on the server
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
X-List-Received-Date: Tue, 11 Mar 2014 21:53:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-03-11, 3:22 PM, Andy Ng wrote:
> Thank you,
>
> I've just noticed my bb file has:
>
> SRCREV_pn-${PN} = "${AUTOREV}"
>
> So it should be ok?

That should be all you need.

Bruce

>
>
> On Tue, Mar 11, 2014 at 7:09 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> On 14-03-11 03:07 PM, Andy Ng wrote:
>>>
>>> Hello list,
>>>
>>> I have a git'ed kernel on a server. When I do make "push" changes to the
>>> kernel
>>> and then I try bitbake core-image-minimal on my local host, the build
>>> process does not pick up the
>>> changes from the server. I just do bitbake virtual/kernel -c cleanall
>>> to force it to get my latest kernel from the server.
>>>
>>> Is there any way to make the recipe to sync to the server every time i
>>> make a build?
>>
>>
>> Set your SRCREV to ${AUTOREV}, and you'll get what you want.
>>
>> Bruce
>>
>>>
>>> Best regards,
>>> Andy
>>>
>>


