Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24247E0044D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 21:59:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q265xspC005454
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Mar 2012 21:59:54 -0800 (PST)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 5 Mar 2012 21:59:53 -0800
Message-ID: <4F55A7D7.8020100@windriver.com>
Date: Tue, 6 Mar 2012 13:59:51 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: iptables not building on master
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
X-List-Received-Date: Tue, 06 Mar 2012 05:59:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Hi Dexuan,

I will take the bug and work on it.

// Robert

On 03/06/2012 01:35 PM, Cui, Dexuan wrote:
> Hi all, I got the same issue 3 days age and reported a bug https://bugzilla.yoctoproject.org/show_bug.cgi?id=2053
>
> I did some analysis and I tend to think we need to fix iptables's makefile.
> I have been in a business traval since then so I can't continue the debugging.
> It would be great if somebody can help on this.
>
> Thanks,
> -- Dexuan
>
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Tom Zanussi
>> Sent: Tuesday, March 06, 2012 1:10 PM
>> To: Autif Khan
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] iptables not building on master
>>
>> Hi Autif,
>>
>> I'm sure it's nothing to do with crownbay or meta-intel, but I'll fire off a
>> build anyway.  I only have my laptop available, so it may take all night,
>> but will let you know what I find.  FWIW I normally build on master of
>> both meta-intel and poky and haven't seen this, so it must be very recent.
>>
>> Tom
>>
>> On Mon, 2012-03-05 at 17:44 -0500, Autif Khan wrote:
>>> Interesting - core image minimal builds fine - it does not actually
>>> build iptables. So the point is moot.
>>>
>>> I did a clean build for core-image-sato and it failed at the same
>>> place for the same error.
>>>
>>> I am no sure how meta-intel + meta-crownbay can interact with iptables
>>> - there is no recipe for iptables in meta-intel anywhere.
>>>
>>> Tom - If you have the bandwidth - can you please see if you can
>>> replicate my woes.
>>>
>>> I do not know anyone else who is on master and crownbay. If there -
>>> please let me know if things work for you.
>>>
>>> This broke for me when I moved from M2 to master.
>>>
>>> Thanks
>>>
>>> Autif
>>>
>>> On Mon, Mar 5, 2012 at 4:27 PM, Autif Khan<autif.mlist@gmail.com>
>> wrote:
>>>> I love working with master:
>>>>
>>>> work/i586-poky-linux/polkit-0.104-r4/temp/log.do_configure says:
>>>>
>>>> configure: error: Could not find pam/pam-devel, please install the
>>>> needed packages.
>>>>
>>>> It seems like pam/pam-dev is needed in the target environment and
>>>> not in the host environment.
>>>>
>>>> Although, iptables seem to have built. I can't imagine how it will
>>>> be affected by meta-intel and meta-crownbay - they do not do
>>>> anything with iptables.
>>>>
>>>> Trying to build core-image-minimal for crownbay now. Will report
>> when done.
>>>>
>>>> On Mon, Mar 5, 2012 at 4:03 PM, Autif Khan<autif.mlist@gmail.com>
>> wrote:
>>>>> I was working with M2 until recently and had to switch to master.
>>>>> After I switched to master, I tried to bitbake core-image-sato for
>>>>> machine crownbay. The build fails with the following error:
>>>>>
>>>>> unknown type name '__aligned_u64'
>>>>>
>>>>> The file in question is extenstions/libxt_pkttypes.c
>>>>>
>>>>> After a bit of investigation (thanks Khem) it seems like instead of
>>>>> /usr/include/linux/types.h, the include/linux/types.h from iptables
>>>>> source is being included. These a bit incompatible - specifically -
>>>>> the definition for __aligned_u64 is not in the latter.
>>>>>
>>>>> I am building core-image-sato for qemux86 and will report when the
>>>>> build reaches that point.
>>>>>
>>>>> Is this a known issue?
>>>>>
>>>>> *** This issue should be hitting anyone doing a clean build on
>> master.
>>>>> Or at the very least someone who builds iptables recipe***
>>>>>
>>>>> I looked at the recent change (post M2) that iptables was updated
>>>>> to
>>>>> 1.2.12.2 (from 1.2.12.1). There was a patch included for
>>>>> extensions/GNUmakefile  which does not build "check" target. I
>>>>> looked at what it does and realized that someone more experienced
>>>>> that I am should look into this.
>>>>>
>>>>> Thanks
>>>>>
>>>>> Autif
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

