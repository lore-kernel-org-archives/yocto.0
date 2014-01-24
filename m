Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B1D0E008E0
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 06:12:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2014 06:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,712,1384329600"; d="scan'208";a="471875829"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2014 06:12:11 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.188]) by
	IRSMSX101.ger.corp.intel.com ([163.33.3.153]) with mapi id
	14.03.0123.003; Fri, 24 Jan 2014 14:10:39 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Thread-Topic: [yocto] How to get a list of packages (with versions) used to
	create an image?
Thread-Index: AQHPGQ4ONfolAKaeK0WXY2pZ/Srr+A==
Date: Fri, 24 Jan 2014 14:10:38 +0000
Message-ID: <CF0822F9.3BA30%belen.barros.pena@intel.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CAALGJZYWh+7D7C7FKxgWM+FAfhSDA9b4utGANj12bNd7t0aw6Q@mail.gmail.com>
	<CAFZh4h8D1y9-bkr3dM7Z_30FGu=8iUA8u7xMMdO3yquXR_Qbng@mail.gmail.com>
	<CAP71Wjypm1yPcwiEktKH=bN6fUCLtycaPQxNkdF3NbZyUethrw@mail.gmail.com>
	<CF07F9D1.3B9E2%belen.barros.pena@intel.com>
	<CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
In-Reply-To: <CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.9.131030
x-originating-ip: [10.237.224.31]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 24 Jan 2014 14:12:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4E2BFF467B8FB1409F525698FD5CF1A2@intel.com>
Content-Transfer-Encoding: quoted-printable



On 24/01/2014 13:46, "Brian Hutchinson" <b.hutchman@gmail.com> wrote:

>
>On Fri, Jan 24, 2014 at 6:10 AM, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>
>
>
>On 23/01/2014 21:09, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
>wrote:
>
>>On Thu, Jan 23, 2014 at 9:42 PM, Brian Hutchinson <b.hutchman@gmail.com>
>>wrote:
>>> Yes, but:
>>>
>>> 1.  I don't think package-index is image specific ... its just a list
>>>of
>>> everything that has been bitbaked on the box (which doesn't equate to
>>>one
>>> particular image ... it's the net of all the packages from all the
>>>images
>>> that have been built thus far if I'm not mistaken ... it main use is so
>>>the
>>> feeds work and the the target know what packages are available).
>>> 2.  I felt like this was probably something common and a way already
>>>existed
>>> so I thought I should ask in case I missed something before I wasted
>>>time
>>> re-inventing the wheel.
>>>
>>> Based on the responses so far ... it looks like this might not be as
>>>common
>>> a request as I thought!
>>>
>>
>>no. i think it is very common, and it's the purpose of 'buildhistory',
>>as mentioned already. for each image generated, you will get (among
>>other things)
>>
>>installed-package-names.txt
>>installed-package-sizes.txt
>>installed-packages.txt
>>
>>list of all packages with version, sizes, ..
>
>
>
>I know this will not help, since we are still building Toaster. But is it
>something like this
>
>http://www.yoctoproject.org/toaster/image-information-packages.html
>
>you are thinking of? I would be interested in hearing if this would give
>you what you need.
>
>
>
>
>
>
>Hi Bel=E9n,
>
>
>That is VERY nice!  I like it.

Thanks, Brian. That is very encouraging :)

>I'm looking for something a bit simpler though ... just want to be able
>to have a text file with the package names and their versions that we can
>either include as a file or copy paste in our release
> notes since we have to keep up with this (and license info.) for every
>release we do.
>
>How did you generate the html for that?

What you looked at is only a prototype of the Toaster interface. Toaster
is an utility you can run alongside the build system. It collects
information about the build process and the artefacts generated, stores it
in a database, and presents it in a web interface. We are currently
building the web interface, but the back end of Toaster is already in
place. The back end comes with a rest API which in theory you could use to
collect the package, package version and license for a certain image, as
long as you had Toaster running during the build.

The API specification is here:

https://wiki.yoctoproject.org/wiki/Analysis_REST_API_Contracts

Instructions on how to Toaster are here:


>Looks like buildhistory is what I need to be looking into from the
>responses so far.
>
>
>
>Regards,
>
>Brian
>
>
>


