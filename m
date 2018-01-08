Return-Path: <ml@embed.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0881BE00DE1; Mon,  8 Jan 2018 05:37:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.82.101.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2306 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jan 2018 05:37:56 PST
Received: from legacy.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05565E00C78
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 05:37:56 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
	<CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
	<CAOLNbFa3bmtTmUEszDF4OQABgY411ieT3+0iJC1zkekk80CWfg@mail.gmail.com>
	<CAJTo0LZzwePmfR1jMFaE30i-963GJrd90bTBwa7pOnxuiWaZxQ@mail.gmail.com>
	<CAOLNbFZQKNih2yhYFpDg_nK3=Znka1g-cK4aVMjVvv3RLttC7Q@mail.gmail.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <f70d4955-55d8-4f9a-308f-f921405acf23@embed.me.uk>
Date: Mon, 8 Jan 2018 12:59:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAOLNbFZQKNih2yhYFpDg_nK3=Znka1g-cK4aVMjVvv3RLttC7Q@mail.gmail.com>
Subject: Re: running autoreconf during a configuration step
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
X-List-Received-Date: Mon, 08 Jan 2018 13:37:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 04/01/18 20:39, Rail Shafigulin wrote:
> Ross,
> 
> Thanks for the help. Really appreciate it.
> 

There is also already a recipe for libsoc in meta-oe.

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/libsoc/libsoc_0.8.2.bb?h=master

Regards,
Jack.

> On Thu, Jan 4, 2018 at 8:35 AM, Burton, Ross <ross.burton@intel.com> wrote:
>> If you look at autotools.bbclass you'll see it already passes -i.
>>
>> Ross
>>
>> On 4 January 2018 at 16:20, Rail Shafigulin <rail@esenciatech.com> wrote:
>>>
>>> How do I add parameters to it? I need to run autoreconf -i. Didn't
>>> find any EXTRA_OE<something> variables.
>>>
>>> On Thu, Jan 4, 2018 at 8:15 AM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>> On 4 January 2018 at 15:45, Rail Shafigulin <rail@esenciatech.com>
>>>> wrote:
>>>>>
>>>>> I'm somewhat new to Yocto. Trying to build libsoc,
>>>>> https://github.com/jackmitch/libsoc. The steps are outlined here,
>>>>> https://github.com/jackmitch/libsoc#manually-building. The first one
>>>>> is to run autoreconf -i. I've been looking through documentation but
>>>>> didn't find anything on how to do it. Is there an EXTRA_OE<something>
>>>>> variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
>>>>> that is remotely related to it is EXTRA_OECONFIG, but it is for
>>>>> ./configure step. I would appreciate any help with it.
>>>>
>>>>
>>>> The autotools class will run autoreconf and then configure, so you just
>>>> need
>>>> to inherit that class.
>>>>
>>>> Ross
>>>
>>>
>>>
>>> --
>>> Rail Shafigulin
>>> Software Engineer
>>> Esencia Technologies
>>>
>>> --
>>>
>>>
>>>
>>>
>>> *ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
>>> Santa Clara CA 95054
>>> ________________________________________________________
>>>
>>> Phone: +1 408 736 8284 Fax: +1 408 519 3475
>>> http://www.esenciatech.com | http://www.lnttechservices.com
>>>
>>>
>>
> 
> 
> 

