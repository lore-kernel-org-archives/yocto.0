Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C679EE00D2E; Wed, 25 May 2016 08:33:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2871E00D26
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:33:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u4PFXeS7022494
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 25 May 2016 08:33:43 -0700
Received: from server.local (147.11.119.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 25 May 2016 08:33:39 -0700
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<5745BE14.7030402@mvista.com>
	<42df50f9-fb6f-1b5d-cea8-b34cbf0b2a31@windriver.com>
	<alpine.LFD.2.20.1605251123240.30452@localhost.localdomain>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5fe07471-c5cd-acf6-02c3-c6636663bfa2@windriver.com>
Date: Wed, 25 May 2016 11:33:39 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1605251123240.30452@localhost.localdomain>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 15:33:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-05-25 11:26 AM, Robert P. J. Day wrote:
> On Wed, 25 May 2016, Bruce Ashfield wrote:
>
>> On 2016-05-25 11:00 AM, akuster wrote:
>>> Robert,
>>>
>>>
>>> On 05/25/2016 03:18 AM, Robert P. J. Day wrote:
>>>>
>>>>   specifically in the context of powerpc systems, are there any
>>>> suggestions for an image that could be used to boot an older
>>>> powerpc system, running completely out of ram, and using that as
>>>> an install utility which would then be responsible for
>>>> detecting/formatting a hard drive, creating/formatting
>>>> filesystems, downloading/installing the OS, post-install
>>>> configuration and so on?
>>>
>>> This sounds like an installer MV has and that I have been given
>>> approval to release (just haven’t had the time to submit it).
>>> Its X86 centric ie uses grub and support efi
>>>
>>> It boots up from an iso image and runs a ncurses based interface
>>> that allows you to select HD, create partitions and filesystem
>>> types. It will install what ever image you built. It creates grub
>>> conf and installs it. The installer bit is written in python.
>>
>> If you do end up releasing it, I have some "installer tech" that
>> runs on non-x86 that I can see how it fits together.
>
>   if any of that "installer tech" is relevant for powerpc, that would
> be most excellent. would that be related to WRL's "Installer Image"?

In this case no. It is something simpler for a container OS, but it
does run from a bootable USB and has a simple backend that you can
customize for a given platform. The only trick is getting the right
bootable USB for non-x86.

Bruce

>
> rday
>


