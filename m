Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E4F7E0121A
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 01:16:46 -0800 (PST)
Received: from [192.168.0.21] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id A96EE21B85
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 08:45:43 +0000 (GMT)
Message-ID: <4F0AB04C.2060304@communistcode.co.uk>
Date: Mon, 09 Jan 2012 09:15:56 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
	<CADzUK1LC=XDuiC_kf_ScaZrb8A9VPq88OqxA0w1aVoW89F6amw@mail.gmail.com>
In-Reply-To: <CADzUK1LC=XDuiC_kf_ScaZrb8A9VPq88OqxA0w1aVoW89F6amw@mail.gmail.com>
Subject: Re: Does my build disk's filesystem make a difference?
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
X-List-Received-Date: Mon, 09 Jan 2012 09:16:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/01/12 15:16, autif khan wrote:
> You are better off with one of the dual boot OSes in a virtual machine
> that a dual boot situation where you are trying to write to NTFS from
> linux or trying to work with ext2fs tools from windows.
>
> I do not even know if you can create equivalent of symlinks (used
> extensively in yocto) on an NTFS
>
> In theory, it might work, but NTFS was not built for linux, likewise,
> ext4 was not meant to be used for windows. It is a bad idea.
>
> You know - unless this happens to be your master's research thesis :-)
>
> On Fri, Jan 6, 2012 at 6:53 PM, Jeff Osier-Mixon<jefro@jefro.net>  wrote:
>> I am creating a Yocto Project build system. For various reasons, it is a
>> dual-boot system, win7&  linux (probably mint 12, haven't decided). I have a
>> primary boot disk with both operating systems and a large secondary disk to
>> use for build trees etc.
>>
>> Does the filesystem on the big secondary disk matter? Ideally I would like
>> to be able to get to the large data disk from both operating systems. That
>> would necessitate NTFS, as win7 does not speak ext4 reliably, but I don't
>> want to slow my builds down.
>>
>> --
>> Jeff Osier-Mixon http://jefro.net/blog
>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I'm no expert in this either but I am unsure how NTFS handles file 
permissions, something else that could horribly break!

If I were you I would do as suggested earlier and run Win7 in a virtual 
machine then use a shared directory/network shares system.

Otherwise, you could format as ext3 and use the 3rd party drivers 
available to Windows for reading. Again though I don't know how 
permissions are handled or anything like that so it may be ok for 
browsing but I wouldn't recommend major changes through it.

Jack.

