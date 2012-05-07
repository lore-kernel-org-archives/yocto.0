Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CFB2E0137A
	for <yocto@yoctoproject.org>; Mon,  7 May 2012 12:36:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q47JaaXE019205
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 May 2012 12:36:36 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 7 May 2012 12:36:36 -0700
Message-ID: <4FA82443.10001@windriver.com>
Date: Mon, 7 May 2012 15:36:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
In-Reply-To: <CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: modify a kernel patch
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
X-List-Received-Date: Mon, 07 May 2012 19:36:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-07 03:29 PM, Frans Meulenbroeks wrote:
> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>> On 12-05-07 10:41 AM, Frans Meulenbroeks wrote:
>>>
>>> Hi all,
>>>
>>> Not sure what the best place is to mail this (the YP list or oe-core
>>> or oe-devel or ...)
>>> Apologies if this is the wrong place.
>>>
>>> The problem I'm facing is the following:
>>> I have a kernel with some additional drivers that are not upstreamed
>>> because they are very specifc.
>>> I'm moving from oe-classic to denzil and from 2.6.38 to 3.2.
>>> Now some of the patches do not apply any more.
>>> In oe-classic I would have gone to the kernel work dir, fix the issue,
>>> do a quilt refresh and copy the patch back (there is a patch that
>>> contains our driver)
>>> However, denzil uses guilt instead of quilt
>>>
>>> If I do a devshell of virtual/kernel and want to do with guilt what I
>>> used to do with quilt I run into a problem.
>>> guilt status says: Patches directory does not exist, try guilt-init
>>> and indeed there is no patches dir like there was in oe-classic
>>
>>
>> Do you have guilt installed locally ? You are likely using the
>> native guilt. To keep patch lists separate on a per-branch basis
>> and to be able to capture them on th meta-branch, there are some
>> patches to guilt that move the patch directory location.
>
> Guilt natively complained about a mismatch with the git version (my
> work system is still ubuntu 10.04).
> If I do a bitbake -c devshell virtual/kernel and use guilt there, I
> get the error on the patches directory that I mentioned above.
> It was my idea that I then would get the oe version in my path but I
> did not really verify that. Then again under devshell I did not get
> complaints about the git version. Will verify this tomorrow (I have no
> access to the build system from here).
>>
>> Are you working on top of linux-yocto-3.2 ? Or some other 3.2 tree ?
>
> I downloaded the denzil tarball from yoctoproject.com. I made some
> config changed and added a few local patches (bringing things over
> from my 2.6.38 oe-classic kernel).
>
> Should I have gotten a patches dir in my tmp/work/mymachine/linux* dir
> (I have my own machine mpc8313e based)

The patches are pulled underneath the kernel tree itself, so that
they can be incorporated with other git manipulations of the tree
and shared as appropriate.

So the patches directory exists in ${S}/meta/patches/$branch_name

Cheers,

Bruce

>>
>>
>>>
>>> Hence my question:
>>> What is a good workflow to modify a kernel patch.
>>> Or, what magic incantation do I need to give to guilt to make it working.
>>
>>
>> See above.
>>
>> Bruce
>>
> Thanks! Frans


