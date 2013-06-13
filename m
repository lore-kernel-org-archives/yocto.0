Return-Path: <hans.beckerus@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC54E01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 01:20:42 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so3421843vcb.21
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 01:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=5kuT6aoyI+T9dGmJaUaBHjRVcmnYOFl1w8gwDV42oT0=;
	b=SKdkvmpynzNX1NJ62Ikde5mH24cb7gnXILRSRRzq3Euz44/yRhqMvdBBWCmx56qYta
	Q7Edc1Dr6B4HKY+q98FHvyVr1s+5jOZg1ef3y3/BQScw/xmCQHschsY0c8OjdqCOzYmX
	qPIQgT5h/N8q+pZCrf5Lr2dzPpEOGVE9NqjvXZjNDG8Z0XlPwvlLddypBbRpfTIq8RjN
	W1iHtVOshM7L+NzALB7P0efucvW2UgMi/kYNFBcpHmPizibr4FvKMENKiVu6HSjBchJC
	G/fWbV9HKf0wxyZd9pRU0XdbcUd3Wi0rmqFqUPFyZsa1EWMFvcEMKJnuSTO5JIu55aGQ
	/oHg==
MIME-Version: 1.0
X-Received: by 10.221.5.7 with SMTP id oe7mr215289vcb.20.1371111641669; Thu,
	13 Jun 2013 01:20:41 -0700 (PDT)
Received: by 10.52.162.105 with HTTP; Thu, 13 Jun 2013 01:20:41 -0700 (PDT)
In-Reply-To: <CAPhnLPC7kOo8jgVx5KK=ZT2xNibR60K7XzVESr+wGDEdFAwCAg@mail.gmail.com>
References: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
	<CAPhnLPBsH=Oibe5X3vDeVn9gxq3Msjn_ogZaU6dRm4W0uGYRCw@mail.gmail.com>
	<51B8D4BA.2020109@gmail.com>
	<CAPhnLPC7kOo8jgVx5KK=ZT2xNibR60K7XzVESr+wGDEdFAwCAg@mail.gmail.com>
Date: Thu, 13 Jun 2013 10:20:41 +0200
Message-ID: <CAFyqS9qYEahDAzkRj_70+OG_kW__jXNRsZcfmE6GAe38vKAqAA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yet another LIC_FILES_CHKSUM question
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
X-List-Received-Date: Thu, 13 Jun 2013 08:20:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2013 at 10:38 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On Wed, Jun 12, 2013 at 1:06 PM, Hans Beckerus <hans.beckerus@gmail.com> =
wrote:
>> On 2013-06-12 7:55, Flanagan, Elizabeth wrote:
>>>
>>> On Wed, Jun 12, 2013 at 6:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.c=
om>
>>> wrote:
>>>>
>>>> In what way does LIC_FILES_CHKSUM correlate to what is specified in
>>>> LICENSE?
>>>> LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
>>>> But, what if the package does not itself provide a license type file?
>>>> Is it then ok to simply leave LIC_FILES_CHKSUM =3D "" ?
>>>
>>> That's kind of a tricky situation. I'm not a lawyer, but I haven't
>>> actually seen an actual instance where there was a stated open source
>>> license that wasn't also in the source. If there is then the correct
>>> path is to probably put actual license text in the upstream as I can
>>> imagine all sorts of legal issues with this. Any lawyers care to field
>>> this on?
>>>
>>> -b
>>
>> Hi Elizabeth, I understand you are not a lawyer ;) I did not really expe=
ct
>> one either.
>> Let's tweak the question into something slightly different. Assume that
>> LICENSE is saying eg. GPLv2, but the COPYING file provided by the packag=
e
>> says GPLv3? Iow, there is a mismatch between the what the recipe says an=
d
>> what the package tells you.
>
> Ah, in that case, the LICENSE is obviously incorrect and the recipe
> should be patched, right?
>
>> I am a little bit confused to how LICENSE and LIC_FILES_CHKSUM really wo=
rks
>> together? Why do we need two different ways of telling what license we u=
se
>> or actually expect?
>
> This is a way for us to tell that the LICENSE may have changed. If the
> text of the license files in LIC_FILES_CHKSUM change, something
> happened that needs to be looked at.
>
>> Or is LICENSE checked against the files pointed to by
>> LIC_FILES_CHKSUM? Should it not always be the file(s) stored in the upst=
ream
>> package that dictates what license should be applied?
>
> They are, but there are a few problems with this....
>
> 1. Figuring out license automatically is an interesting and kind of
> time consuming issue. COPYING isn't *always* the license information.
> We've got source that has license information in headers, in COPYING,
> in LICENSE, in a lot of places and figuring out is a file contains
> license information without a common portable data exchange is kind of
> hard (license people see where I'm going here ;) )......
> 2. This is one of the reasons that Matt Germonprez and a team of
> people at the University of Nebraska Omaha are working on implementing
> some tooling around SPDX within the project (for more on SPDX see:
> www.spdx.org). We need a way to do deep inspection of source as well
> as recognize when the upstream has implemented an SPDX file. This
> should be implemented in the 1.5 time frame.
>
> So, in a nutshell, scanning for license during every build is time
> consuming. We want to do it once, improve the LICENSE data where we
> can, and utilize LIC_FILES_CHKSUM to help maintain it, running our
> SPDX utilities now and then to be able to find new licenses added that
> LIC_FILES_CHKSUM may not know about.
>
> -b
>
Great! Thanks for the elaborate answer. No confusion there ;)
Btw, would it be possible to apply the patch in some later Yocto
release. We currently do a lot of work in Erlang and the Erlang Public
License is used in many packages. Would be nice to be able to
reference the license with a similar syntax as for e.g. GPL.

>>
>> Hans
>>
>>
>>>> Also, I could see that there was an Erlang Public License file
>>>> available in poky. But the file is named ErlPL-1.1 and there were no
>>>> maps attached to it, this patch will add that.
>>>>
>>>> Hans
>>>>
>>>> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
>>>> index 3cb143c..ffed997 100644
>>>> --- a/meta/conf/licenses.conf
>>>> +++ b/meta/conf/licenses.conf
>>>> @@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] =3D "AFL-1.2"
>>>>   SPDXLICENSEMAP[AFLv2] =3D "AFL-2.0"
>>>>   SPDXLICENSEMAP[AFLv1] =3D "AFL-1.2"
>>>>
>>>> +#Erlang variations
>>>> +SPDXLICENSEMAP[ErlPLv1.1] =3D "ErlPL-1.1"
>>>> +SPDXLICENSEMAP[ErlPL1.1] =3D "ErlPL-1.1"
>>>> +
>>>>   #Other variations
>>>>   SPDXLICENSEMAP[EPLv1.0] =3D "EPL-1.0"
>>>>
>>>> +
>>>>   # Additional license directories. Add your custom licenses
>>>> directories this path.
>>>>   # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release


On Wed, Jun 12, 2013 at 10:38 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On Wed, Jun 12, 2013 at 1:06 PM, Hans Beckerus <hans.beckerus@gmail.com> =
wrote:
>> On 2013-06-12 7:55, Flanagan, Elizabeth wrote:
>>>
>>> On Wed, Jun 12, 2013 at 6:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.c=
om>
>>> wrote:
>>>>
>>>> In what way does LIC_FILES_CHKSUM correlate to what is specified in
>>>> LICENSE?
>>>> LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
>>>> But, what if the package does not itself provide a license type file?
>>>> Is it then ok to simply leave LIC_FILES_CHKSUM =3D "" ?
>>>
>>> That's kind of a tricky situation. I'm not a lawyer, but I haven't
>>> actually seen an actual instance where there was a stated open source
>>> license that wasn't also in the source. If there is then the correct
>>> path is to probably put actual license text in the upstream as I can
>>> imagine all sorts of legal issues with this. Any lawyers care to field
>>> this on?
>>>
>>> -b
>>
>> Hi Elizabeth, I understand you are not a lawyer ;) I did not really expe=
ct
>> one either.
>> Let's tweak the question into something slightly different. Assume that
>> LICENSE is saying eg. GPLv2, but the COPYING file provided by the packag=
e
>> says GPLv3? Iow, there is a mismatch between the what the recipe says an=
d
>> what the package tells you.
>
> Ah, in that case, the LICENSE is obviously incorrect and the recipe
> should be patched, right?
>
>> I am a little bit confused to how LICENSE and LIC_FILES_CHKSUM really wo=
rks
>> together? Why do we need two different ways of telling what license we u=
se
>> or actually expect?
>
> This is a way for us to tell that the LICENSE may have changed. If the
> text of the license files in LIC_FILES_CHKSUM change, something
> happened that needs to be looked at.
>
>> Or is LICENSE checked against the files pointed to by
>> LIC_FILES_CHKSUM? Should it not always be the file(s) stored in the upst=
ream
>> package that dictates what license should be applied?
>
> They are, but there are a few problems with this....
>
> 1. Figuring out license automatically is an interesting and kind of
> time consuming issue. COPYING isn't *always* the license information.
> We've got source that has license information in headers, in COPYING,
> in LICENSE, in a lot of places and figuring out is a file contains
> license information without a common portable data exchange is kind of
> hard (license people see where I'm going here ;) )......
> 2. This is one of the reasons that Matt Germonprez and a team of
> people at the University of Nebraska Omaha are working on implementing
> some tooling around SPDX within the project (for more on SPDX see:
> www.spdx.org). We need a way to do deep inspection of source as well
> as recognize when the upstream has implemented an SPDX file. This
> should be implemented in the 1.5 time frame.
>
> So, in a nutshell, scanning for license during every build is time
> consuming. We want to do it once, improve the LICENSE data where we
> can, and utilize LIC_FILES_CHKSUM to help maintain it, running our
> SPDX utilities now and then to be able to find new licenses added that
> LIC_FILES_CHKSUM may not know about.
>
> -b
>
>>
>> Hans
>>
>>
>>>> Also, I could see that there was an Erlang Public License file
>>>> available in poky. But the file is named ErlPL-1.1 and there were no
>>>> maps attached to it, this patch will add that.
>>>>
>>>> Hans
>>>>
>>>> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
>>>> index 3cb143c..ffed997 100644
>>>> --- a/meta/conf/licenses.conf
>>>> +++ b/meta/conf/licenses.conf
>>>> @@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] =3D "AFL-1.2"
>>>>   SPDXLICENSEMAP[AFLv2] =3D "AFL-2.0"
>>>>   SPDXLICENSEMAP[AFLv1] =3D "AFL-1.2"
>>>>
>>>> +#Erlang variations
>>>> +SPDXLICENSEMAP[ErlPLv1.1] =3D "ErlPL-1.1"
>>>> +SPDXLICENSEMAP[ErlPL1.1] =3D "ErlPL-1.1"
>>>> +
>>>>   #Other variations
>>>>   SPDXLICENSEMAP[EPLv1.0] =3D "EPL-1.0"
>>>>
>>>> +
>>>>   # Additional license directories. Add your custom licenses
>>>> directories this path.
>>>>   # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release

