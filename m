Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B584DE00879
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 08:00:50 -0800 (PST)
Received: from [192.168.1.11] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id D93A1225740E;
	Mon, 20 Jan 2014 15:59:26 +0000 (UTC)
Message-ID: <52DD47DD.8080706@mindchasers.com>
Date: Mon, 20 Jan 2014 10:59:25 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <52B879B7.8000808@mindchasers.com>
	<CADkTA4Pxv1hnjxMW4b7yy3Q1-xn2scMROyU2ZaLmZ_i_R+VLQQ@mail.gmail.com>
In-Reply-To: <CADkTA4Pxv1hnjxMW4b7yy3Q1-xn2scMROyU2ZaLmZ_i_R+VLQQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Development of Yocto Project Kernel outside of Intel?
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
X-List-Received-Date: Mon, 20 Jan 2014 16:00:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/23/2013 09:10 PM, Bruce Ashfield wrote:
> I can add a few thoughts.
>
> We obviously have the reference BSPs to represent the major architectures, and
> on the linux-yocto mailing list, we've been looking at BSPs from LSI as well as
> some other pending boards (I'm waiting on them to be submitted, so I
> won't mention
> them here). The xilinx boards also have some yocto-style support in
> their repository
> with us working to adopt and integrated version of them as we move
> into Yocto 1.6+.
>
> It's generally a slow process to get kernel versions aligned, but with
> the LF LTSI
> kernel(s), it helps create a neutral version that the Yocto project,
> OSVs, semis and
> others can use as a synchronization point. LTSI is part of the
> linux-yocto kernel
> trees as an integrated baseline, and LTSI has recently picked up more
> attention ..
> which has a byproduct of more BSPs being available in a similar
> format, version and
> configuration.
>
> Obviously we'd also love to see all relevant BSPs completely
> mainlined, with short
> stays in the Yocto tree (or others) as a BSP is developed, stabilized
> and eventually
> upstreamed.
>
> There's obviously a place for cutting edge trees, semi trees for the
> latest and greatest,
> stable trees .. and integrated staging grounds for all of the above.
> So navigating that
> mix, takes time, and we are getting there.
>
> Cheers,
>
> Bruce


Hi Bruce (& other yocto developers),

Thank you for the information.  Below is a related follow on question, 
as I try to sort out who's doing what with kernel patches for the 
varying embedded system chips / SoCs:

To what extent do kernel patches exist for Intel chip sets that are 
released to embedded Intel customers but aren't yet posted as patches in 
the yocto kernels?  I assume there are proprietary drivers for IP 
covered under NDA.  Is this the case?  Does an Intel customer find 
themselves picking some kernel patches from the linux-yocto branches and 
others from login protected Intel sites?

Thank you,

Bob




