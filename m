Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C3CE004D2
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 07:16:27 -0800 (PST)
Received: by yhfq46 with SMTP id q46so2822752yhf.35
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2012 07:16:27 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.60.4.227 as permitted sender) client-ip=10.60.4.227; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.60.4.227 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.60.4.227])
	by 10.60.4.227 with SMTP id n3mr9533573oen.67.1331046987184 (num_hops =
	1); Tue, 06 Mar 2012 07:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ONh1ONBg5acWskDwK51Wu2pHMXevJxEG+MIFcRrjkgg=;
	b=omeqQl2Rau7M5RVUNzZ0jIpoLG0JV8hKNmnRwsEUDFUY1tAZH1fcCozeF0nvkqIcUs
	K32mmfwE87GrLoOuw7rCY+ijkQHQ7fwSpb56T0AEW6jO8H0qSpEeWqr4LjB/eguwW2qS
	gvAdiMEONSziM9ZFwtXT9tQ5BBqtshvJsHOOnc360hD/Xd2a45oIlUYzbbx/9rvr0piS
	dRNQoEICScdv3Zzy1gPtFWYJNK64PRzCFZCT9aMbqdIUHBiOvjncQwYAG0pmyGFSHi2P
	leZkdeUQTUxA97Qf9enQoqUIspsC9vzLcuCbLdJ4bA88wgZMIse7ZDjzVmDM9lUcmx35
	+W2Q==
Received: by 10.60.4.227 with SMTP id n3mr8415122oen.67.1331046985986;
	Tue, 06 Mar 2012 07:16:25 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id y18sm17658257obq.21.2012.03.06.07.16.09
	(version=SSLv3 cipher=OTHER); Tue, 06 Mar 2012 07:16:14 -0800 (PST)
Message-ID: <4F562A34.2020304@gmail.com>
Date: Tue, 06 Mar 2012 07:16:04 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120302 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com>
In-Reply-To: <4F55D32F.6050705@windriver.com>
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
X-List-Received-Date: Tue, 06 Mar 2012 15:16:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2012 01:04 AM, Robert Yang wrote:
>
> Hi Tom,
>
> Thanks for the update, the root cause is that iptables offers
> a kernel header file include/linux/types.h, but it mis-matches
> the kernel in the sysroot, we can add this:
>
> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>
> to:
>
> iptables-1.4.12.2/include/linux/types.h
>
> to fix this problem.

find out why iptables has its own copy of linux/types.h that file should 
be deleted if there is no reason to have it.

>
> Another solution is that as Dexuan suggested we change the order of
> the include header files, but I'm afraid that may cause other problems,
> since I think that the pkg's own header file should have a higher priority
> than the system's, so I think that the current order is correct.
>
> I will send a pull request after enough testing.

> https://lists.yoctoproject.org/listinfo/yocto


