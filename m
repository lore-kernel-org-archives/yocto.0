Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 075BAE00771
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 08:34:01 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 526225AE518; Thu,  4 Aug 2011 09:34:09 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5AC801660133;
	Thu,  4 Aug 2011 09:34:08 -0600 (MDT)
Message-ID: <4E3ABBF0.4050903@mlbassoc.com>
Date: Thu, 04 Aug 2011 09:34:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>	<1312469410.14274.0.camel@rex>
	<4E3AB3B3.7050103@mlbassoc.com>	<2016626.y3nmSzkdEa@perseus>
	<CABcZANkaSU5v6hKW_vvyDwcE377iRc17-A_50nwc21_UHWWATQ@mail.gmail.com>
In-Reply-To: <CABcZANkaSU5v6hKW_vvyDwcE377iRc17-A_50nwc21_UHWWATQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Thu, 04 Aug 2011 15:34:01 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-04 09:29, Chris Larson wrote:
> On Thu, Aug 4, 2011 at 8:06 AM, Khem Raj<raj.khem@gmail.com>  wrote:
>> On Thursday, August 04, 2011 08:58:59 AM Gary Thomas wrote:
>>> On 2011-08-04 08:49, Richard Purdie wrote:
>>>> On Wed, 2011-08-03 at 23:59 -0500, Kumar Gala wrote:
>>>>> On Aug 3, 2011, at 10:12 AM, Richard Purdie wrote:
>>>>>> On Wed, 2011-08-03 at 09:50 -0500, Kumar Gala wrote:
>>>>>>> On Aug 3, 2011, at 9:22 AM, Richard Purdie wrote:
>>>>>>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>>>>>>>>> Bug submitted:
>>>>>>>>>
>>>>>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
>>>>>>>>>
>>>>>>>>> My question still stands even w/o it being in formal docs.
>>>>>>>>
>>>>>>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core
>>>>>>>> changes.
>>>>>>>> I'd be interested to know where we've missed the references to
>>>>>>>> it and
>>>>>>>> get to get those references fixed.
>>>>>>>
>>>>>>> Ok, but how does one use TCMODE?  :)
>>>>>>>
>>>>>>> is there an example around anywhere?
>>>>>>
>>>>>> I'll explain on the condition that someone actually documents this
>>>>>> ;-).
>>>>>>
>>>>>> TCMODE determines which of the files in
>>>>>> meta/conf/distro/include/tcmode-* is used. It defaults to "default"
>>>>>> and
>>>>>> our default toolchain definition is in tcmode-default.inc.
>>>>>>
>>>>>> There is another example there which is "external-csl2008q3". As you
>>>>>> can see from the tcmode-external-csl2008q3 file, it sets up the
>>>>>> system to use an external toolchain instead.
>>>>>>
>>>>>> So you can define one of these files in your layer and then the
>>>>>> system
>>>>>> can select alternative toolchain configurations.
>>>>>>
>>>>>> Does that help? :)
>>>>>>
>>>>>> There is a similar TCLIBC variable which controls which libc is used
>>>>>> (eglibc or uclibc).
>>>>>
>>>>> Yes that helps.  So it looks as if today there is not a means to point
>>>>> to SDK prebuilt toolchain via this means.
>>>>
>>>> We have supported this in the past but it got messy and I'd really
>>>> prefer people to use sstate for this.
>>>
>>> That would be great, if only it worked for this purpose.  Sadly, I've not
>>> had much luck with sharing toolchains like this.
>>>
>>> Here's my problem - I have a number of different target platforms (MACHINE),
>>> all of which are really the same ARM SoC (OMAP/3530==armv7a).  When I try
>>> to share the sstate between them, the toolchain always rebuilds from
>>> scratch.
>>
>> can you post bitbake -e of say gcc-cross gcc-runtime and eglibc
>> for both machines ? We somehow need to figure what changes the signatures
>
>
> No need to use bitbake -e, just use bitbake-diffsigs.

How do I use this?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

