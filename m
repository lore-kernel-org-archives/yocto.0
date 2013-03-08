Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EEA7E00429
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:45:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r28HjF6u028935
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 09:45:15 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 8 Mar 2013 09:45:14 -0800
Message-ID: <513A239D.1090201@windriver.com>
Date: Fri, 8 Mar 2013 12:45:01 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: =?UTF-8?B?SGFucyBCZWNrw6lydXM=?= <hans.beckerus@gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<513A1C1A.4030506@windriver.com>
	<D967AA79-E5DE-44D1-9268-D47506B6BD21@gmail.com>
In-Reply-To: <D967AA79-E5DE-44D1-9268-D47506B6BD21@gmail.com>
Cc: "<yocto@yoctoproject.org>" <yocto@yoctoproject.org>
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 17:45:19 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-08 12:40 PM, Hans Beckérus wrote:
>
>
> 8 mar 2013 kl. 18:12 skrev Bruce Ashfield <bruce.ashfield@windriver.com>:
>
>> On 13-03-08 07:08 AM, Hans Beckérus wrote:
>>> Hi. I have built some custom kernel modules (.ko) using a .bb that
>>> inherits from the module.bbclass. There is one main kernel module and
>>> the rest are dependent on the first. Building and installing the
>>> modules to the rootfs works fine. Next question is how do I control
>>> what actual modules are loaded at boot, or actually how do I control
>>> this through Yocto? To my surprise one of the kernel module loaded
>>> automatically!? How could this happen? I did not have an entry for it
>>> in /etc/modules. And what do I need to do to actually add entries to
>>> /etc/modules? Or is there some other mechanism that I should use. I
>>> tried going through the module.bbclass but must admit I lost it
>>> somewhere in the middle ;) Any guidance would be appreciated.
>>
>> module_autoload_<module package name>, in your module recipe, will
>> trigger the load on boot.
>>
>> Cheers,
>>
>> Bruce
>>
> Great! But there must be a catch? My actual module package builds six modules. One mandatory and the rest are optional. How can it know which modules that should actually be loaded? For some to me unknown reason the mandatory one was loaded on boot even though I did nothing to my    .bb?

I'd assume that udev or some other kernel -> userspace event triggered
the load of the required module.

If you need more advanced logic than modprobe or udev/systemd can provide,
then custom startup scripts for the services would be in order.

Cheers,

Bruce

>
> Hans
>
>>>
>>> Hans
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>


