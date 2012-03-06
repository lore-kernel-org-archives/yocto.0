Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B06BE0132F
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 07:27:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q26FRalG013237
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Mar 2012 07:27:36 -0800 (PST)
Received: from [147.11.118.51] (147.11.118.51) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Mar 2012 07:27:36 -0800
Message-ID: <4F562CE7.4010606@windriver.com>
Date: Tue, 6 Mar 2012 10:27:35 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>	<1331010578.2107.2.camel@elnicho>	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>	<4F55A7D7.8020100@windriver.com>
	<1331016505.2107.37.camel@elnicho>	<4F55D32F.6050705@windriver.com>
	<4F562A34.2020304@gmail.com>	<4F562B7C.4020105@windriver.com>
	<4F562C2E.5010604@gmail.com>
In-Reply-To: <4F562C2E.5010604@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 06 Mar 2012 15:27:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-06 10:24 AM, Khem Raj wrote:
> On 03/06/2012 07:21 AM, Robert Yang wrote:
>>
>>
>> On 03/06/2012 11:16 PM, Khem Raj wrote:
>>> On 03/06/2012 01:04 AM, Robert Yang wrote:
>>>>
>>>> Hi Tom,
>>>>
>>>> Thanks for the update, the root cause is that iptables offers
>>>> a kernel header file include/linux/types.h, but it mis-matches
>>>> the kernel in the sysroot, we can add this:
>>>>
>>>> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>>>>
>>>> to:
>>>>
>>>> iptables-1.4.12.2/include/linux/types.h
>>>>
>>>> to fix this problem.
>>>
>>> find out why iptables has its own copy of linux/types.h that file
>>> should be
>>> deleted if there is no reason to have it.
>>>
>>
>> Here is the reply from Bruce:
>>
>> iptables has always done this .. and it has periodically caused issues
>> like
>> this in the past. Typically something like you have above is done, or
>> iptables is updated to a newer version (I assume we can't do that
>> in this case?), to fix any build issues.
>>
>> I've had iptables in a directory/location with a dependency on a
>> particular
>> kernel version (to show the coupling) in the past to enforce a check
>> before the build breaks.
>>
>
> it still does not say why iptables keeps a copy of its own.

Nominally it is to protect them from kernel headers changes and to not
require headers or a full tree to be present (or at least this is what
I've learned over the years, I may be forgetting other elements).

In the past, I've also removed this duplication of kernel header files
as well, and it does work, but it does create a tighter binding to
toolchain or kernel sources.

It is something that can be changed in the package, but as they say
"you end up with the pieces, if it breaks" :)

Cheers,

Bruce


> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


