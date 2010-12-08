Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 317B64C811E7
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 19:12:52 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB81CpkH009448;
	Tue, 7 Dec 2010 17:12:51 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 7 Dec 2010 17:12:50 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.17]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 7 Dec 2010 17:12:50 -0800
Message-ID: <4CFEDB90.2080804@windriver.com>
Date: Tue, 07 Dec 2010 20:12:48 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101203 Thunderbird/3.1.7
MIME-Version: 1.0
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <bug-552-84@http.bugzilla.pokylinux.org/><20101207212853.4282620F48496@mail.opensource.intel.com>
	<4CFEAE72.1030401@intel.com>
In-Reply-To: <4CFEAE72.1030401@intel.com>
X-OriginalArrivalTime: 08 Dec 2010 01:12:50.0826 (UTC)
	FILETIME=[0881DEA0:01CB9675]
Cc: yocto@yoctoproject.org
Subject: Re: [Bug 552] autobuild missing the non-x86 realboard images
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
X-List-Received-Date: Wed, 08 Dec 2010 01:12:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-07 5:00 PM, Elizabeth Flanagan wrote:
>
> I wanted to give people a heads up about the addition of a few more
> targets to the nightly build and how they'll effect the nightly (and our
> overall efficency).
>
> This bug asks for the addition of a few targets:
>
> arm: beagleboard: poky-image-sato, poky-image-minimal, poky-image-sdk
> powerpc: mpc8315e-rdb: poky-image-minimal
> mips: routerstationpro: poky-image-minimal
>
> I'm going to put these into nightly after the current build is done, but
> I want to make people aware of a few things.
>
> First, our build times have been between 26 and 31 hours over the past
> month. Adding these builds will increase that time. Depending on how
> long this extends the total build time will depend on how big of an
> effect it has.
>
> It may also introduce new failures to the nightly which will need to be
> dealt with. I know it doesn't mean much for stability since the targets
> already are in master and just aren't build built, but what it does mean
> is that someone needs to QA these targets.

We've been building and testing all the non-x86 targets
@ Wind River. So they really should be fine (or they
were in the 0.9 timeframe and in my recent (local) builds).

Wind River can continue the QA on these, for this defect
the end goal was to simply get them into the builds so the
binaries would be available and to improve the cross arch
capabilities of the recipes.

Cheers,

Bruce

>
> So, like I said, I'll have this in when our next nightly kicks off. If
> folks have any concerns over this, let me know before #141 finishes up.
>
> -b
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


