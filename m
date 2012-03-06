Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEB2AE0044A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 09:32:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q26HWSe5015234
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Mar 2012 09:32:28 -0800 (PST)
Received: from [147.11.117.147] (147.11.117.147) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Mar 2012 09:32:27 -0800
Message-ID: <4F564A2A.7080202@windriver.com>
Date: Tue, 6 Mar 2012 12:32:26 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com> <4F562A34.2020304@gmail.com>
	<4F562B7C.4020105@windriver.com> <4F562C2E.5010604@gmail.com>
	<4F562CE7.4010606@windriver.com>
	<CAMKF1sp0_-zGHu8uWajpj5V=j=C3ynmCuTxTpCQErfxgsaKT9w@mail.gmail.com>
In-Reply-To: <CAMKF1sp0_-zGHu8uWajpj5V=j=C3ynmCuTxTpCQErfxgsaKT9w@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Mar 2012 17:32:33 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-06 12:28 PM, Khem Raj wrote:
> On Tue, Mar 6, 2012 at 7:27 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> Nominally it is to protect them from kernel headers changes and to not
>> require headers or a full tree to be present (or at least this is what
>> I've learned over the years, I may be forgetting other elements).
>>
>
> but thats what linux-kernel-headers are now a days isnt it ?

It definitely is, this probably falls into "if it works .. " so
it stays as-is.

>
>> In the past, I've also removed this duplication of kernel header files
>> as well, and it does work, but it does create a tighter binding to
>> toolchain or kernel sources.
>
> from OE's POV we can assume that we will always have kernel-headers
> so we could prefer them instead ? We are not interested in building it
> standalone but rather with some distro
>

Agreed.

Bruce


>>
>> It is something that can be changed in the package, but as they say
>> "you end up with the pieces, if it breaks" :)
>>


