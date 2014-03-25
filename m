Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2B2EAE00B47
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 07:32:13 -0700 (PDT)
Received: from [172.16.141.133] (172.16.141.133) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Tue, 25 Mar 2014 15:32:10 +0100
Message-ID: <5331935A.6060009@enea.com>
Date: Tue, 25 Mar 2014 15:31:54 +0100
From: =?ISO-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, yocto <yocto@yoctoproject.org>
References: <1395676843.24890.7.camel@ted>
In-Reply-To: <1395676843.24890.7.camel@ted>
X-Originating-IP: [172.16.141.133]
Subject: Re: [OE-core] Features in Yocto Project 1.7
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
X-List-Received-Date: Tue, 25 Mar 2014 14:32:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-03-24 17:00, Richard Purdie wrote:
> As development on 1.6 finishes up, its time to think about what we
> should be doing in the 1.7 cycle.
>
> I think from my perspective, in 1.7 I'd like to see us looking at
> "Developer Workflow". Its a generic topic which I think covered multiple
> areas (in no particular order):
>
> * the ADT/SDK and how it intergrates into the rest of the system

> * toaster
> * python devshell
> * exteralsrc.bbclass
> * memory resident bitbake
> * how a standalone app developer might build an image

+1
My wishlist:

1. Assembly of an image from a package repository using the SDK.
2. Ability to easily package multiple kernel flavours(builds with 
different kernel configs) with linux related bbclass:es.

Br,
David


> * locked sstate
>
> and probably more I'm forgetting.
>
> If anyone does have things they plan to work on, or ideas for things
> that should be worked on, please do file enhancement requests in the
> bugzilla:
>
> https://bugzilla.yoctoproject.org/
>
> Cheers,
>
> Richard
>
>
>


