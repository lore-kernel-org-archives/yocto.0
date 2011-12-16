Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F8AE013DD
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 17:15:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBG1Exsh001735
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Dec 2011 17:14:59 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.89) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 15 Dec 2011 17:14:59 -0800
Message-ID: <4EEA9B91.9010905@windriver.com>
Date: Thu, 15 Dec 2011 20:14:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.25) Gecko/20111213 Thunderbird/3.1.17
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
	<1323987793.4568.72.camel@ted>
In-Reply-To: <1323987793.4568.72.camel@ted>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Fri, 16 Dec 2011 01:15:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-15 5:23 PM, Richard Purdie wrote:
> On Thu, 2011-12-15 at 21:47 +0000, Chris Tapp wrote:
>> Is anyone on this list considering (or working on) a BSP for the
>> Raspberry Pi (http://www.raspberrypi.org/faqs) ?
>>
>> For those that haven't seen it, it's a credit-card sized 'home pc'
>> aimed primarily at educational users that includes a 700MHz ARM11
>> core, HDMI, OpenGL ES 2.0, ethernet and audio for about $35. It will
>> be supporting Debian, Fedora and ArchLinux at launch.
>>
>> Looks like a good board for people that want to get in to Yocto /
>> embedded linux. Also looks like it's a good platform for some of my
>> stuff...
>>
>> I would be interested in working on a BSP / distro if anyone is
>> working on it or would like to work on it.
>
> I'm not aware of anyone working on this but I like the idea of a BSP for
> it and it shouldn't be too hard to do. I'd be happy to ensure we have a
> repository somewhere on git.yoctoproject.org to support this (and any
> other similar BSP efforts) if that would help?

We can also help here @ Wind River. This board is one that's on my short
list for the BSP refresh covered by:

http://bugzilla.pokylinux.org/show_bug.cgi?id=1634

So I'd like to see it right in the yocto kernel as a hardware reference
platform.

I'm about to finalize a suggested list of boards and after that, we can
see what resources/people want to collaborate on some BSPs.

Cheers,

Bruce

>
> Cheers,
>
> Richard
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


