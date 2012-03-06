Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97DFEE0132F
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 06:21:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q26ELFRb007237
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Mar 2012 06:21:16 -0800 (PST)
Received: from [147.11.118.83] (147.11.118.83) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Mar 2012 06:21:14 -0800
Message-ID: <4F561D53.60707@windriver.com>
Date: Tue, 6 Mar 2012 09:21:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>	<1331010578.2107.2.camel@elnicho>	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>	<4F55A7D7.8020100@windriver.com>
	<1331016505.2107.37.camel@elnicho>	<4F55D32F.6050705@windriver.com>	<A25F549E4D43CD42B4C02DF47A1913230FCD73D8@SHSMSX102.ccr.corp.intel.com>
	<4F55F7E0.8040602@windriver.com>
In-Reply-To: <4F55F7E0.8040602@windriver.com>
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
X-List-Received-Date: Tue, 06 Mar 2012 14:21:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-06 06:41 AM, Robert Yang wrote:
>
> Hi Dexuan,
>
> After more investigation, I found that the:
>
> -I/path/to/sysroot/usr/include
>
> has been treated as the standard system include directory,
>
> and from gcc's manual:
>
> -I dir
> Add the directory dir to the list of directories to be searched for
> header files. Directories named by -I are searched
> before the standard system include directories. If the directory dir is
> a standard system include directory, the option is
> ignored to ensure that the default search order for system directories
> and the special treatment of system headers are not
> defeated .
>
>
> so whether we put the kinclude_CPPFLAGS at the front or end doesn't
> change the search order, gcc will always search iptables-1.4.12.2/include/
> firstly, if we want to use the those header files consistently from the
> sysroot, we should remove the iptables-1.4.12.2/include/linux directly
> since all the files in this directory are from kernel headers, but after
> I remove the directory, the build failed at:
>
> | In file included from libip4tc.c:118:0:
> | libiptc.c:70:8: error: redefinition of 'struct xt_error_target'
> |
> /buildarea/lyang1/war_8/tmp/sysroots/crownbay/usr/include/linux/netfilter/x_tables.h:69:8:
> note: originally defined here
>
> It seems that iptables keep and use their own kernel header files.

iptables has always done this .. and it has periodically caused issues like
this in the past. Typically something like you have above is done, or
iptables is updated to a newer version (I assume we can't do that
in this case?), to fix any build issues.

I've had iptables in a directory/location with a dependency on a particular
kernel version (to show the coupling) in the past to enforce a check
before the build breaks.

Cheers,

Bruce

>
> I will send a pull request with the fix method:
>
> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>
> // Robert
>
> On 03/06/2012 05:47 PM, Cui, Dexuan wrote:
>> Robert Yang wrote on 2012-03-06:
>>> Hi Tom,
>>> Thanks for the update, the root cause is that iptables offers a kernel
>>> header file include/linux/types.h, but it mis-matches the kernel in
>>> the sysroot, we can add this:
>>> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>>> to:
>>> iptables-1.4.12.2/include/linux/types.h
>>> to fix this problem.
>>>
>>> Another solution is that as Dexuan suggested we change the order of
>>> the include header files, but I'm afraid that may cause other
>>> problems, since I think that the pkg's own header file should have a
>>> higher priority than the system's, so I think that the current order
>>> is correct.
>> My understanding is:
>> Recently the preferred linux-libc-headers was upgraded to
>> linux-libc-headers-yocto-3.2, that introduced a new struct
>> tpacket_hdr_v1 in linux/if_packet.h and the new struct uses
>> __aligned_u64 but __aligned_u64 is not defined in iptables's own
>> linux/types.h
>> Currently in iptables's makefile, its own linux/types.h comes first
>> than that one in our sysroot in the header file search order, and I
>> noticed iptables doesn't have a file linux/if_packet.h. So, with our
>> sysroot's linux/if_package.h and iptables's own linux/types, we get
>> the failure.
>>
>> If we define __aligned_u64 _ in iptables's own linux/types.h, we're
>> still using our sysroot's linux/if_packet.h with iptables's
>> linux/types.h -- I think this is not correct even if the build can
>> pass? I think we should use header files consistently.
>>
>>
>> Thanks,
>> -- Dexuan
>>
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


