Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE71E006C4
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 05:42:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s17DgPMk014436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Feb 2014 05:42:25 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 7 Feb 2014 05:42:24 -0800
Message-ID: <52F4E2BD.1030909@windriver.com>
Date: Fri, 7 Feb 2014 08:42:21 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Adrian Dudau <Adrian.Dudau@enea.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <1391766483.4155.33.camel@sestows129.enea.se>	<1688934.FUjqbafrUe@peggleto-mobl5.ger.corp.intel.com>
	<1391776291.4155.43.camel@sestows129.enea.se>
In-Reply-To: <1391776291.4155.43.camel@sestows129.enea.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: release branches and package upgrades
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
X-List-Received-Date: Fri, 07 Feb 2014 13:42:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-02-07 07:31 AM, Adrian Dudau wrote:
> Hi Paul,
>
> On fre, 2014-02-07 at 10:28 +0000, Paul Eggleton wrote:
>> Hi Adrian,
>>
>> On Friday 07 February 2014 09:47:56 Adrian Dudau wrote:
>>> I would like to understand Yocto Project's policy on the
>>> release/maintenance branches (dora,dylan etc). My understanding was that
>>> these were considered stable branches and only bugfixes and general
>>> fixes that would not affect functionality were merged onto them.
>>>
>>> However, lately, we identified patches that upgrade package versions and
>>> introduced some problems in our distro. We had a hard time identifying
>>> the source of these problems, since we expected the maintenance branch
>>> not to change in this way.
>>>
>>> Here are a couple of these patches as example in poky/dora branch:
>>> 50574e41b882c3f2633f69486593eaea54d8e554
>>> 63335c87c1904287cdd5fd28d0ad6a73e985f2a4
>>
>> Is that second revision correct? I don't see an upgrade of powertop to 2.5 on
>> the dora branch.
>
> My bad. I mixed our branches up and thought that was introduced on dora
> as well. It is not, you are right.
> However, the lttng-modules version upgrade (commit
> 50574e41b882c3f2633f69486593eaea54d8e554) that broke things still
> stands.

If that is the remaining example, the lttng-modules update was
discussed on the mailing list, and since it fixed a deadlock in
the 3.10.x kernel versions the new version was pulled in to fix
the severe issue.

see: [OE-core] [PATCH 1/2] lttng-modules: Update revision to grab last 
bugfix releases

On the oe-core mailing list.

What exactly broke in your case ? The build ?

Bruce

>
>>
>>> My question is: are patches like these normal and should we expect to
>>> get version upgrades for packages on the maintenance branches as well?
>>
>> No, it is unusual to do recipe version upgrades in stable branches. For
>> reference, here is a page I wrote on the wiki which describes how the stable
>> branches should be managed:
>>
>> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
>
> Thank you for the link. It is good to know that this is not normal
> procedure and that we can rely on the stability of the branch.  It makes
> sense to only merge critical fixes. Version upgrades can (and will)
> break things.
>
>>
>> Cheers,
>> Paul
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


