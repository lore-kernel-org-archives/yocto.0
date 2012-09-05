Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C47E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 08:16:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q85FGDIQ007229
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Sep 2012 08:16:13 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 5 Sep 2012 08:16:13 -0700
Message-ID: <50476CB4.7020901@windriver.com>
Date: Wed, 5 Sep 2012 11:16:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <50450DC6.20303@r-finger.com>	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>	<50451947.2090401@r-finger.com>	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>	<5045C2B7.1070406@r-finger.com>	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
	<50468D68.50608@linux.intel.com> <50475FB7.2080408@ti.com>
In-Reply-To: <50475FB7.2080408@ti.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>, "Dmytriyenko,
	Denys" <denys@ti.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 15:16:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-05 10:20 AM, William Mills wrote:
> On 09/04/2012 07:23 PM, Darren Hart wrote:
>>
>>
>> On 09/04/2012 01:25 PM, William Mills wrote:
>>
>>> Darren: Is it true you can't get @ the Intel BSP's w/o also getting the
>>> poky distro defs? That does seem to mixing things a bit. (I am not
>>> claiming meta-ti is clean yet but I want to understand the Intel
>>> examples.)
>>>
>>
>> It isn't something we test as part of the QA that we perform. I mostly
>> expect people building meta-intel to be building with meta-yocto
>> (although I wouldn't take a hard line on requiring it). That said, I
>> removed meta-yocto from a meta-intel/meta-fri2 build and removed
>> DISTRO=poky from my local.conf and successfully built and booted a
>> core-image-minimal build on an FRI2 this afternoon without any changes.
>>
>
> Thanks! My confidence is restored.
>
> As long as including meta-yocto does not interfere with other BSPs or
> distros etc then there should be no harm in your assumption.
>
> I would be interested to know what Mentor Graphics and Wind River do on
> their products. Do they include meta-yocto? (YP is not all about
> comercial OS support but I know these orginatations have done the due
> diligence on layer compatibility for a non-poky distro.)

Layering flexibility is important, so we work largely on oe-core
vs meta-yocto. That being said, there are elements in meta-yocto that
are of interest, so it can be included in used, but with layers that
get the ordering and priority correct to override/preserve appropriately.

But sorting out exactly what we are talking about in this thread, would
make using meta-yocto (or whatever the elements of it become), that much
easier to do.

Cheers,

Bruce

>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


