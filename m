Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4014DE0070C
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 02:05:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q26A5JhX002599
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Mar 2012 02:05:19 -0800 (PST)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Mar 2012 02:05:19 -0800
Message-ID: <4F55E15D.9070709@windriver.com>
Date: Tue, 6 Mar 2012 18:05:17 +0800
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
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com>
	<A25F549E4D43CD42B4C02DF47A1913230FCD73D8@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <A25F549E4D43CD42B4C02DF47A1913230FCD73D8@SHSMSX102.ccr.corp.intel.com>
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
X-List-Received-Date: Tue, 06 Mar 2012 10:05:22 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 03/06/2012 05:47 PM, Cui, Dexuan wrote:
> Robert Yang wrote on 2012-03-06:
>> Hi Tom,
>> Thanks for the update, the root cause is that iptables offers a kernel
>> header file include/linux/types.h, but it mis-matches the kernel in
>> the sysroot, we can add this:
>> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>> to:
>> iptables-1.4.12.2/include/linux/types.h
>> to fix this problem.
>>
>> Another solution is that as Dexuan suggested we change the order of
>> the include header files, but I'm afraid that may cause other
>> problems, since I think that the pkg's own header file should have a
>> higher priority than the system's, so I think that the current order is correct.
> My understanding is:
> Recently the preferred linux-libc-headers was upgraded to linux-libc-headers-yocto-3.2, that introduced a new struct tpacket_hdr_v1 in linux/if_packet.h and the new struct uses __aligned_u64 but __aligned_u64 is not defined in iptables's own linux/types.h
> Currently in iptables's makefile, its own linux/types.h comes first than that one in our sysroot in the header file search order, and I noticed iptables doesn't have a file linux/if_packet.h. So, with our sysroot's linux/if_package.h and iptables's own linux/types, we get the failure.
>

Yes, you are right:-)

> If we define __aligned_u64 _ in iptables's own linux/types.h, we're still using our sysroot's linux/if_packet.h with iptables's linux/types.h -- I think this is not correct even if the build can pass?  I think we should use header files consistently.
>

Yes, I agree with you ,I was going to change the older of the header files
at first, but after thought for a while, I don't know why iptables carries
part of the kernel header files, I don't know whether change the order of
the headers would cause other problems. I checked the linux/if_packet.h when
MACHINE=qemux86, it is different from the crownbay's, it doesn't have the
__aligned_u64, so I choose the simple and impact less way to fix it:-)

Anyway, if you insist on changing the order, I will try to do it.

// Robert

>
> Thanks,
> -- Dexuan
>
>

