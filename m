Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8D9D4C800A1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 08:30:19 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6RDUBNu006978
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Jul 2011 06:30:13 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 27 Jul 2011 06:30:01 -0700
Message-ID: <4E3012D8.3080106@windriver.com>
Date: Wed, 27 Jul 2011 09:30:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
In-Reply-To: <66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 13:30:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/11 08:40, Kumar Gala wrote:
>
> On Jul 27, 2011, at 3:45 AM, Richard Purdie wrote:
>
>> On Wed, 2011-07-27 at 00:21 -0500, Kumar Gala wrote:
>>> Who is the best person to ask about adding new BSPs into yocto.  What
>>> I mean by this is having a meta layer hosted on git.yoctoproject.org
>>> like meta-intel and the mechanics associated with this (getting new
>>> repo on git server, autobuilder support, webpage details, etc.).
>>
>> This list is as good a place as any! :)
>>
>> Its relatively easy to arrange for a git repository. The main things we
>> ask are that it has clearly defined maintainership (a clear maintainer
>> and submission process) and a clear scope. Do you have any specific BSPs
>> in mind?
>
> Maintainership would be straight forward.  Not sure about submissions process, what is done for meta-intel today?
>
> BSP would be for Freescale PowerPC SoC and the reference designs produced by FSL for them.

Hi Kumar,

As you know, I've been working on several kernel efforts
around the FSL parts as well (in particular the ones that
have enough pieces upstream to work out of the box).  I
definitely don't want to overlap in a way that doesn't
create complimentary efforts.

What are your current thoughts around kernels and the
(nearly religious) kernel version question ? It would be
great to get some alignment on features (-rt, tracing,
boot, footprint reduction, etc, etc) and save some effort
on maintenance and validation. Also if we want to create
some yocto reference BSPs, having a kernel version and feature
set match is important as well (i.e. what we've done for
the intel ones).

To that end, do you have an thoughts about using linux-yocto
as a base to any BSP work ? That statement doesn't do it
justice though, since when I say 'use linux-yocto as a base',
it really means that linux-yocto uses your BSPs as an
upstream/official reference and can pull support for them
into branches, and have the configuration and other tooling
get them any functionality that is being developed.

No control over BSP content, or anything like this, is being
suggested or asserted here. Just looking to all push in the
same direction (embedded features and BSPs to upstream) and
re-use the work of BSPs available in the community. If the
base is the same (and hence kernel version), then this relationship
and workflow is very simple.

... and as a bonus, if the workflow doesn't work easily, then
there's a problem with it and we can work on something that
is suitable (change tools, etc).

Thanks,

Bruce

>
>> The wiki is available to host information and we can work out links on
>> the website as the specific needs come up. Autobuilder support is
>> something we need to figure out since its a finite resource but we can
>> likely figure something out there once we understand what kind of BSPs
>> we're talking about.
>>
>> Beth Flanagan<elizabeth.flanagan@intel.com>  is the person who'd handle
>> the mechanics of setting up the repository, the name is likely the
>> hardest bit!
>
> meta-fsl-ppc ;)
>
> - k
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


