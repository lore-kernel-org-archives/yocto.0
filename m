Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 439394C803E4
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 09:09:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6TE9GZC002016
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Jul 2011 07:09:16 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jul 2011 07:09:16 -0700
Message-ID: <4E32BF09.5070005@windriver.com>
Date: Fri, 29 Jul 2011 10:09:13 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Andre Haupt <andre@bitwigglers.org>
References: <20110729072359.GA5109@localhost.localdomain>
	<20110729100525.GA26451@localhost.localdomain>
	<4E32B1B6.4010608@windriver.com>
	<20110729140358.GA25648@localhost.localdomain>
In-Reply-To: <20110729140358.GA25648@localhost.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: crownbay-noemgd poky-image-minimal fails to build
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
X-List-Received-Date: Fri, 29 Jul 2011 14:09:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/29/11 10:03, Andre Haupt wrote:
> Hi Bruce,
>
> thanks for your comments. See below
>
> On Fri, Jul 29, 2011 at 09:12:22AM -0400, Bruce Ashfield wrote:
>> I'm trying to dust off my memory here. I know that this has
>> been seen, and I also know that this built fine in the bernard
>> release.
>>
>> The first part of the issue is the:
>>
>> Makefile:508: No libdw.h found or old libdw.h found, disables dwarf
>> support. Please install elfutils-devel/elfutils-dev
>>
>> We may have a missing host dependency in the checks. Have you
>> tried installing the relevant package for F13 ?
> I had elfutils-devel installed.
>
>> As for the second, there's a patch in the 2.6.34 kernel tree
>> that is dealing with it:
>>
>> http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.34/commit/?h=standard&id=72ca49ab08b8eb475cec82a10049503602325791
>>
>> It sounds like there may be a SRCREV problem for the board that
>> isn't picking up that change. Can you confirm that this commit
>> is in your board branch ?  You can check in your build directory
>> for linux.
> This commit is not in the crownbay-standard branch.

Argh. That explains it. You can always cherry pick / apply
it locally. This is intended to be a blanket fix, and
I just double checked and I for some reason *don't* see
it on that one branch either, which means it isn't a SRCREV
error hiding it.

I'm going to merge the patch out to the BSP branch now, but
you'd still need a SRCREV update to see the change in your
build.

Cheers,

Bruce

>
> cheers,
>
> Andre


