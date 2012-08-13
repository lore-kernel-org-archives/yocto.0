Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 124CBE002AB
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:41:53 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.298.4;
	Mon, 13 Aug 2012 15:41:51 +0200
Message-ID: <50290485.8020205@enea.com>
Date: Mon, 13 Aug 2012 15:43:33 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50042C06.70900@linux.intel.com>
	<CAEsOVNfEw9sDfLVGCAM6AwQjzGrVNxuvrL4vcS=1kDEMaePK3g@mail.gmail.com>
	<50043429.4070204@linux.intel.com>
	<CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
	<CDED78A957032E45B3239CDDA7642D151C8BF274@ORSMSX105.amr.corp.intel.com>
	<CAEsOVNfa=eM0FsGp=6EiizOOgz6y4+uKM7dq0Sr41xR4DprcsQ@mail.gmail.com>
	<5005D6D1.4010006@ti.com>
	<CAEsOVNfivJYXpHOkby07M+iw2mSoseuYY2eTrdzh=4gZEic4jw@mail.gmail.com>
In-Reply-To: <CAEsOVNfivJYXpHOkby07M+iw2mSoseuYY2eTrdzh=4gZEic4jw@mail.gmail.com>
X-Originating-IP: [172.16.140.132]
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
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
X-List-Received-Date: Mon, 13 Aug 2012 13:41:54 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/23/2012 09:59 PM, McClintock Matthew-B29882 wrote:
> On Tue, Jul 17, 2012 at 4:19 PM, William Mills <wmills@ti.com> wrote:
>>
>> On 07/17/2012 04:43 PM, McClintock Matthew-B29882 wrote:
>>> On Tue, Jul 17, 2012 at 3:18 PM, Stewart, David C
>>> <david.c.stewart@intel.com>  wrote:
>>>> Hey Matthew -
>>>>
>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>> bounces@yoctoproject.org] On Behalf Of McClintock Matthew-B29882
>>>>> Sent: Monday, July 16, 2012 9:01 AM
>>>>> I understand. I'm fine with adding stuff to the edison branch for now
>>>>> and we can worry about another official release sometime in the future
>>>>> (or never). I'm mostly wanting a place I can tell people to get the
>>>>> (working) code from for our targets. And ideally it's on
>>>>> yoctoproject.org and not github.com or git.fsl.com
>>>> This comes down to a resource trade-off, which is why I'm replying. :-)
>>>>
>>>> As an open source project and not a product, we have to set some
>>>> boundaries on how long we will put effort on a given release. It also seems
>>>> prudent to treat our release branches consistently as well. Besides tagging
>>>> branches when we release them, I think we want to leave the head of the
>>>> release branches in some known good state. That known good state has always
>>>> been "passed our release criteria" which includes QA, release notes, etc.
>>> This is coming up on a year old, and we released our SDK based off
>>> edison late too so that eats up some of the time that this release was
>>> officially supported. But I would encourage us to support releases for
>>> more than 1 year given the typical embedded product development life
>>> cycle - and support can be arbitrary, I'm not 100% sure it should mean
>>> it's been through a full QA process... but maybe it does too. Maybe we
>>> should time the releases too so they are 4 and 8 months after the
>>> release to get max overlap for that full year.
>>>
>>>> So what if we create a separate branch off of edison, something like
>>>> edison-fsl? Then you could base your patches against it, but we leave edison
>>>> in the known good state?
>>> That's perfectly fine with me. See my other suggestion below too.
>>
>> Each company/group still using an old release could create its own branch as
>> you suggest.  However, it might make sense to create a generic branch of
>> branch so any remaining stranglers could attempt to cooperate even w/o
>> official yocto-project resources.
>>
>> e.g. edison-community-maint
>>
>>
>>
>>>>> Just for some more context, we just release our SDK off of edison and
>>>>> I expect plenty of activity around bugfixes and back porting commits.
>>>>> I would like this work to be available to all attempting to build
>>>>> edison as well.
>>>> I know... I'm in agony that we have run out of resources to continue to
>>>> put effort into edison (or "Eddie" as I call him now). Hopefully the above
>>>> compromise serves your needs and keeps our resource commitment and known
>>>> good state assumptions in check.
>>>>
>>>> Whatcha think?
>>> I know resources are tight, I also see the appeal of having the head
>>> of edison point at the last release, but... edison proper will miss
>>> out on all our fixes we backport over the next few months as this is
>>> our primary SDK until our next release based off denzil. This does not
>>> seem to be as big as an issue for edison since I don't think many
>>> (any?) others have based an SDK/BSP off this release.
>>>
>>> It may become more prudent for denzil if we have multiple interested
>>> parties in maintaining these older releases for longer... I know I
>>> would like to pull in others fixes for denzil for as long as possible.
>>> But how do these other interested parties initiate a QA cycle within
>>> Yocto? Obviously having done their own QA for their own stuff and the
>>> other interested parties did more QA on the others work but never the
>>> full official Yocto QA cycle?
>>>
>>> Maybe an official strategy for a staging to release branches is in order?
>>>
>>> edison-{staging,experimental,next}
>>>
>> This is another good approach.  However I think after yp has moved on, I
>> doubt there is any resources to promote from the last stage to the
>> "official".
>>
>>
>>> Then folks can possibly see some potential fixes for their issues in
>>> the experimental branch?
>>>
>>> Just sharing my thoughts, I'm not insisting on any particular method
>>> but I would like my edison fixes available somehow on yp.org.
>>>
>>> -M
>>
>> I think Matthew's current need will not be unique.  It would be good to
>> think this through and have a published stand-down policy.
> Any more comments?
>
> I'm fine with a edison-community branch.
I think there has to be a common community maint branch, as discussed 
above, otherwise the good intentions around the layer structure will
fall apart if (in a worst case scenario) a Yocto OSV has one poky 
repo/branch per BSP provider. Possibly with conflicting patchsets.

Regarding maintenence resources, I think there are many interested 
parties to assume maintenance of old community maintained branches in 
which OSV:s has commitments towards customers against.

Br,
David

> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


