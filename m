Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67525E01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:16:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5CLGJKC024558
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Jun 2013 14:16:19 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.64) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Wed, 12 Jun 2013 14:16:19 -0700
Message-ID: <51B8E522.3040707@windriver.com>
Date: Wed, 12 Jun 2013 17:16:18 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
	<CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC2EA@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B910EC2EA@pluto.melinkcorp.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 21:16:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-12 4:54 PM, Bryan Evenson wrote:
>
>
>> -----Original Message-----
>> From: Trevor Woerner [mailto:twoerner@gmail.com]
>> Sent: Wednesday, June 12, 2013 4:42 PM
>> To: Bryan Evenson
>> Cc: Bruce Ashfield; yocto@yoctoproject.org
>> Subject: Re: [yocto] Problems fetching branch for linux-yocto-custom
>>
>> On Wed, Jun 12, 2013 at 3:37 PM, Bryan Evenson
>> <bevenson@melinkcorp.com> wrote:
>>> # Added KBRANCH spec
>>> KBRANCH = "linux-3.9-at91"
>>>>> # Override SRC_URI in a bbappend file to point at a different
>>>>> source
>>>> #
>>>>> tree if you do not want to build from Linus' tree.
>>>>> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=linux-
>>>> 3.9-
>>>>
>> at91;tag=dcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=git;nochec
>>>> ko
>>>> ut=1"
>>>
>>> # Changed SRC_URI to following
>>> SRC_URI = "git://github.com/linux4sam/linux-
>> at91.git;branch=${KBRANCH};protocol=git;nocheckout=1"
>>
>> It looks like all you did was to define the string "linux-3.9-at91" in
>> its own variable, put that in your SRC_URI string, and remove the
>> "tag=..." field. Would your original recipe have worked if all you did
>> was remove the "tag=..." field?
>>
>> Is KBRANCH being used somewhere else? Doesn't bitbake's "git" fetcher
>> already have a generic way of specifying a branch? Why would a kernel
>> recipe need to also define a branch variable? Do non-kernel recipes
>> also need to define some kind of branch variable too?
>
>  From looking through meta/classes/kernel-yocto.bbclass, I see KBRANCH being used a lot in reference to the specific branch to be checked out.  KBRANCH_DEFAULT defines the default branch (which defaults to "master") so if you don't specify KBRANCH, then it'll checkout the KBRANCH_DEFAULT branch.
>
> With that said, I'm wondering what would happen if I specified KBRANCH but didn't put the "branch=${KBRANCH}" in the SRC_URI.  Is this branch= variable from the SRC_URI being used for the kernel?
>

There are compatibility checks that will pick up branch, and set
KBRANCH on your behalf if you only use branch= in the SRC_URI, but
there are limitations since clobbering a KBRANCH variable isn't
always possible due to when they are expanded (i.e. recipe parse
time).

Cheers,

Bruce

> -Bryan
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


