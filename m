Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B7DE00804
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 03:10:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2014 03:10:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,712,1384329600"; d="scan'208";a="471814663"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2014 03:10:04 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.188]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.210]) with mapi id
	14.03.0123.003; Fri, 24 Jan 2014 11:10:01 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Thread-Topic: [yocto] How to get a list of packages (with versions) used to
	create an image?
Thread-Index: AQHPGPTTZjrb7ktcjkeQ5zjOrVi6ww==
Date: Fri, 24 Jan 2014 11:10:01 +0000
Message-ID: <CF07F9D1.3B9E2%belen.barros.pena@intel.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CAALGJZYWh+7D7C7FKxgWM+FAfhSDA9b4utGANj12bNd7t0aw6Q@mail.gmail.com>
	<CAFZh4h8D1y9-bkr3dM7Z_30FGu=8iUA8u7xMMdO3yquXR_Qbng@mail.gmail.com>
	<CAP71Wjypm1yPcwiEktKH=bN6fUCLtycaPQxNkdF3NbZyUethrw@mail.gmail.com>
In-Reply-To: <CAP71Wjypm1yPcwiEktKH=bN6fUCLtycaPQxNkdF3NbZyUethrw@mail.gmail.com>
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
X-List-Received-Date: Fri, 24 Jan 2014 11:10:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FF7BC6E0A87D804D9DE7121E9A5C1C2C@intel.com>
Content-Transfer-Encoding: quoted-printable



On 23/01/2014 21:09, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
wrote:

>On Thu, Jan 23, 2014 at 9:42 PM, Brian Hutchinson <b.hutchman@gmail.com>
>wrote:
>> Yes, but:
>>
>> 1.  I don't think package-index is image specific ... its just a list of
>> everything that has been bitbaked on the box (which doesn't equate to
>>one
>> particular image ... it's the net of all the packages from all the
>>images
>> that have been built thus far if I'm not mistaken ... it main use is so
>>the
>> feeds work and the the target know what packages are available).
>> 2.  I felt like this was probably something common and a way already
>>existed
>> so I thought I should ask in case I missed something before I wasted
>>time
>> re-inventing the wheel.
>>
>> Based on the responses so far ... it looks like this might not be as
>>common
>> a request as I thought!
>>
>
>no. i think it is very common, and it's the purpose of 'buildhistory',
>as mentioned already. for each image generated, you will get (among
>other things)
>
>installed-package-names.txt
>installed-package-sizes.txt
>installed-packages.txt
>
>list of all packages with version, sizes, ..

I know this will not help, since we are still building Toaster. But is it
something like this

http://www.yoctoproject.org/toaster/image-information-packages.html

you are thinking of? I would be interested in hearing if this would give
you what you need.=20

Cheers

Bel=E9n


>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


