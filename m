Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-01-ewr.mailhop.org [204.13.248.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 393F5E01370
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:20:14 -0700 (PDT)
Received: from [98.142.71.109] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1T3tzp-000OxM-H3
	for yocto@yoctoproject.org; Tue, 21 Aug 2012 19:20:13 +0000
Received: from [192.168.0.26] ([98.142.71.109]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q7LJK3xw004828
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
	Tue, 21 Aug 2012 14:20:10 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.71.109
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX18RKbdxXcPbJ1lS8BTzEu2JpunwzRSI28w=
References: <7E680CB2A76BB8438D08CF13C09FC53A4851C9C9@ORSMSX101.amr.corp.intel.com>
	<50329F99.6010506@windriver.com> <5032A6EE.3010201@intel.com>
	<50330AE3.5090600@windriver.com> <5033C1F9.1050008@intel.com>
In-Reply-To: <5033C1F9.1050008@intel.com>
Mime-Version: 1.0 (1.0)
Message-Id: <578C9639-CB45-4255-B3F8-3E31D32376D6@familyhonor.net>
X-Mailer: iPhone Mail (9B206)
From: Brian Lloyd <blloyd@familyhonor.net>
Date: Tue, 21 Aug 2012 14:20:00 -0500
To: Yocto Project <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 23 Aug 2012 07:10:10 -0700
Subject: Re: https://bugzilla.yoctoproject.org/show_bug.cgi?id=1649
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
X-List-Received-Date: Tue, 21 Aug 2012 19:20:16 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

FYI: new user stuck having to implement a bps found the description below ab=
out the extra demarcation between groups and partitions helpful.   Now if on=
ly I knew which branches were partitions and which where groups...


Brian A Lloyd

On Aug 21, 2012, at 12:14 PM, Darren Hart <darren.hart@intel.com> wrote:

> On 08/20/2012 09:13 PM, Bruce Ashfield wrote:
>=20
>>>> +Kernel types (ktypes) are the highest level policy containers and repr=
esent
>>>> +a significant set of kernel functionality that has been grouped (and n=
amed)
>>>> +or partitioned.
>>>=20
>>> What are you trying to convey with "partitioned" vs. "grouped" ? The
>>> "or" indicates a functional difference, but it isn't clear what that is
>>> from this reading.
>>=20
>> partitioned means that they are really being kept apart since they won't
>> work together (think BFS vs CFS, or grsec vs another security patch).=20
>> Grouped
>> just means that you have 15 or 20 things that you want to collectively
>> call a "kernel type" and validate that they work together in a particular=

>> configuration. But there's no fundamental incompatibility between these
>> features and others in the system.
>>=20
>> It's a hard vs soft partitioning.
>>=20
>> Would the expansion that I have above help ?
>=20
> Hrm, nah. Let's leave it and address it if someone else raises a
> concern. I might be alone here.
>=20
>>>> + - behaviour. A kernel type defines a default behaviour, which is ofte=
n a
>>>=20
>>> behaviour: a kernel type ...
>>=20
>> You left my Canadian behaviour .. my spell checker thanks you! Fixed.
>=20
> With a UK architect it seemed presumptuous to do otherwise ;-)
>=20
>>>> +named category. These typically are included by kernel types, and are n=
ot
>>>> +meant to implement a defined functionality or be included multiple tim=
es.
>>>> +
>>>> +These often contain bug fixes, backports or other small changes to the=
 kernel
>>>> +tree, and do not typically contain any kernel configuration fragments.=
 patches
>>>=20
>>> typically? How can a patch contain a config change?
>>=20
>> That just means that a directory called 'patches' vs 'features' wouldn't
>> contain associated config fragments to enable that functionality. But sin=
ce
>> the system is flexible, there's no reason they can't, so I went with
>> "typically" :) I can clarify.
>=20
> Yeah... I think we need to kill config vs feature vs patches and merge
> them together into a single term. Having the three seems to add more
> confusion than information.
>=20
> What do you see as the value for maintaining the 3 concepts separately?
>=20
>>>> +Config groups are collections of configuration options that when inclu=
ded
>>>> +enable a specific behaviour or functionality. Configuration groups do n=
ot
>>>> +contain patches, and can be included multiple times by any other featu=
re or
>>>> +kernel type. The impact of configuration groups is additive, and order=

>>>> +matters, since the last included config group can override the behavio=
ur of
>>>> +previous includes.
>>>=20
>>> Is this the same thing as "config fragment"? If so, we should pick one
>>> and be consistent. If not, how do they differ?
>>=20
>> I was more thinking about the "cfg" subdir and the .scc file that include=
s
>> a .cfg when I wrote this. The foo.cfg is the config fragment, the named
>> group is the .scc file + the .cfg.
>>=20
>> I'm not sure it is worth splitting the hair here. I can just go with
>> configuration fragment. How does that sound ?
>=20
> You're right, the config .scc file is not a config fragment, the .cfg
> files are. So a config group includes one or more config fragments. Got it=
.
>=20
>=20
>>>> +Note: Depending on the architecture of the meta data, configuration gr=
oups
>>>> +can be complete, or partitioned. Complete config groups contain all th=
e
>=20
>                    ^ comma should be removed
>=20
>>>> +options required to enable functionality, partitioned configurations r=
ely on
>>>> +multiple includes to build up a set of non overlapping options to enab=
le
>>>=20
>>> non-overlapping
>>>=20
>>>> +functionality. Complete groups are simpler to include, but make it mor=
e
>>>> +difficult to remove or disable an option (since it can appear multiple=

>>>> +times),
>>>=20
>>> If a config fragment includes another one - isn't the end result the sam=
e?
>>=20
>> which part ? The appear multiple times ? Yes, you can end up with thing
>> via fragments that include others, but not if you've partitioned them
>> all.
>=20
>=20
> complete.scc
>  include complete.cfg
>=20
> complete.cfg
>  CONFIG_A=3Dy
>  CONFIG_B=3Dy
>=20
> partitioned.scc
>  include partitioned_a.cfg
>  include partitioned_b.cfg
>=20
> partitioned_a.cfg
>  CONFIG_A=3Dy
>=20
> partitioned_b.cfg
>  CONFIG_B=3Dy
>=20
> This is how I understood your description. Assuming I have this right,
> there is no difference between including compelte.scc or
> partitioned.scc. Each will pull in all the same CONFIG* options and
> modify/overwrite/etc any existing settings in exactly the same way. This
> is what I meant by "same end result".
>=20
> I guess what you're saying is the partitioned approach is more modular
> and allows for changing a specific option in one place (CONFIG_A in
> partitioned_a.cfg which will roll up into partitioned.scc) rather than
> having several scc's similar to complete.scc which all need to be
> modidfied to change CONFIG_A.
>=20
> That could probably be made clearer.
>=20
>>>> +supports and is the typical entry point of a build system to the
>>>> +configuration data of the meta branch.
>>>=20
>>> For whatever reason, that reads as very abstract and is rather difficult=

>>> to parse. I understand it... but _I_ needed to read it several times,
>>> and I know the system fairly well...
>>=20
>> .. I'll try something easier on the head, I was trying to stay out
>> of .scc file syntax, which is probably why it reads hard. Maybe this ?
>>=20
>>  The machine is the top-level description of a board, and the hardware
>>  that it supports. A machine/BSP .scc file is found by a build system
>=20
> I would stick with machine or BSP, but not confuse the issue by using
> both. In the case of the linux-yocto meta data, the term BSP is more
> discoverable as it maps to the directory name.
>=20
>>  to start the processing of a particular machine and kernel type
>>  combination. =46rom the machine description, all the source code changes=

>>  (patches, features) and configuration changes that are used to
>>  configure and build the kernel are located.
>=20
> It's still a bit round about. How about:
>=20
> The BSP .scc files combine the policy from the kernel type with the
> hardware requirements of the machine into a single place. This file
> describes all the source code changes from patches and features and the
> configuration changes that are used to configure and build the kernel.
>=20
>=20
>> Changes made and pushed to the yocto-kernel-cache, we can continue to=20
>> iterate,
>> but this review was very helpful!
>=20
> Great. Thanks for doing the write-up Bruce.
>=20
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

